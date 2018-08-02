
IMPLEMENTATION MODULE WriteOut;

(*FROM SYSTEM IMPORT VAL;*)

FROM InOut IMPORT WriteString, WriteLn;

FROM PFiles      IMPORT filedesc, PutChar, PutNum, StandFD, class, CharClass;
FROM AtomTable   IMPORT atom, term, prec, localF, optype, MaxPrec, 
                        nodetag, stringbuf, 
                        commaA, semiA, consA, nilA, curlyA, cutA;
FROM Stacks      IMPORT env;
FROM OpSystem    IMPORT SubPrec, flag, debugging;
FROM Parser      IMPORT Lprec, Rprec;
FROM Terms       IMPORT Deref, IsFunc;

CONST
   WriteDepth = 100             (* Max. nesting depth in WriteOut. *);
   WriteLength = 100            (* Max. list length in WriteOut. *);

TYPE 

   opset = SET OF optype;
  
  
PROCEDURE WriteAtom(fd: filedesc; a: atom; literal: BOOLEAN); 
(* Write an atom to file fd.  If literal is false and the atom
   contains weird characters, put it in single quotes. *)
   
TYPE  cset = SET OF class;
   
VAR 
   n: CARDINAL;
   fashion: cset;
   quote: BOOLEAN;
BEGIN
   WITH a^.ident DO
      IF literal OR (a = semiA) OR (a = cutA) OR
            (a = nilA) OR (a = curlyA) THEN 
         quote := FALSE
      ELSIF (length = 0) OR (a = consA) THEN 
         quote := TRUE
      ELSIF NOT (CharClass[ORD(stringbuf[index + 1])] IN
            cset{smallC, specialC}) THEN
         quote := TRUE
      ELSE
         n := index + 2; quote := FALSE;
         CASE CharClass[ORD(stringbuf[index + 1])] OF
             smallC: fashion := cset{smallC, largeC, digitC};
         | specialC: fashion := cset{specialC}
         END;
         WHILE (n <= index+length) AND NOT quote DO
            IF CharClass[ORD(stringbuf[n])] IN fashion THEN
               n := n + 1
            ELSE
               quote := TRUE
            END
         END
      END;
      IF quote THEN PutChar(fd, "'") END;
      FOR n := index + 1 TO index + length DO
         IF quote AND (stringbuf[n] = "'") THEN
            PutChar(fd, "'"); PutChar(fd, "'")
         ELSE
            PutChar(fd, stringbuf[n])
         END
      END;
      IF quote THEN PutChar(fd, "'") END
   END 
END WriteAtom;
 
PROCEDURE WriteOut(fd: filedesc; x: term; e: env; style: INTEGER);
(* Write a term to file fd. *)
  
   PROCEDURE WriteVar(x: term);
   (* Write a variable. *) 
   BEGIN
      PutChar(fd, '_');
      IF x^.field = localF THEN PutChar(fd, '_') END;
      PutNum(fd, x^.scope) 
   END WriteVar;
  
   PROCEDURE WriteTerm(x: term; p: prec; depth: INTEGER);
   (* Write a term with maximum precedence p. *) 
  
      VAR y: term;
  
      PROCEDURE WriteStand;
      (* Write a complex term in standard notation. *)
         VAR s: term;
      BEGIN
         WITH y^.info DO
            WriteAtom(fd, name, style = 1);
            PutChar(fd, '(');
            WriteTerm(son, SubPrec, depth + 1);
            s := son^.brother;
         END;
         WHILE s <> NIL DO
            PutChar(fd, ','); PutChar(fd, ' ');
            WriteTerm(s, SubPrec, depth + 1);
            s := s^.brother
         END;
         PutChar(fd, ')')
      END WriteStand;
  
      PROCEDURE WriteOp;
      (* Write an operator expression. *)
      BEGIN
         WITH y^.info DO
            CASE name^.oclass OF 
               fxO, fyO:
                     WriteAtom(fd, name, style = 1);
                     PutChar(fd, ' ');
                     WriteTerm(son, Rprec(name), depth + 1)
                 
           |   xfO, yfO:
                     WriteTerm(son, Lprec(name), depth + 1);
                     PutChar(fd, ' ');
                     WriteAtom(fd, name, style = 1) 
                 
           |   xfxO, xfyO, yfxO:
                     WriteTerm(son, Lprec(name), depth + 1);
                     IF (name <> commaA) AND (name <> semiA) THEN
                        PutChar(fd, ' ') END;
                     WriteAtom(fd, name, (style = 1) OR (name = commaA));
                     PutChar(fd, ' ');
                     WriteTerm(son^.brother, Rprec(name), depth + 1) 
                
            END
         END
      END WriteOp;
  
      PROCEDURE WriteSolo;
      (* Write an atom on its own: parentheses are needed to protect
         prefix operators. *)
         VAR bracket: BOOLEAN;
      BEGIN
         WITH y^.info DO
            bracket := (depth > 0) AND (name^.oclass IN opset{fxO, fyO});
            IF bracket THEN PutChar(fd, '(') END;
            WriteAtom(fd, name, style = 1);
            IF bracket THEN PutChar(fd, ')') END
         END
      END WriteSolo;
  
      PROCEDURE WriteList;
      (* Write a list in square bracket notation. *)
         VAR
            n: INTEGER;
            z: term;
      BEGIN
         PutChar(fd, '[');
         WriteTerm(y^.info.son, SubPrec, depth + 1);
         n := 1;
         z := Deref(y^.info.son^.brother, e); 
         WHILE (n < WriteLength) AND IsFunc(z, consA, 2) DO 
            PutChar(fd, ',');
            WriteTerm(z^.info.son, SubPrec, depth + 1);
            z := Deref(z^.info.son^.brother, e);
            n := n + 1
         END;
         IF NOT IsFunc(z, nilA, 0) THEN
            IF n < WriteLength THEN
               PutChar(fd, ' '); PutChar(fd, '|'); PutChar(fd, ' ');
               WriteTerm(z, SubPrec, depth + 1)
            
            ELSE 
               PutChar(fd, ','); PutChar(fd, ' ');
               PutChar(fd, '.'); PutChar(fd, '.'); PutChar(fd, '.')
            END
         END;
         PutChar(fd, ']')
      END WriteList;
  
      PROCEDURE WriteFunc;
      (* Write a complex term. *) 
      VAR bracket: BOOLEAN;
      BEGIN
         WITH y^.info DO
            IF arity = 0 THEN WriteSolo
            ELSIF style = 3 THEN WriteStand
            ELSIF (arity = 1) AND (name = curlyA) THEN
               PutChar(fd, '{'); PutChar(fd, ' ');
               WriteTerm(son, MaxPrec, depth + 1);
               PutChar(fd, ' '); PutChar(fd, '}')
           
            ELSIF (arity = 2) AND (name = consA) THEN WriteList
            ELSIF (arity = 1) AND 
                       (name^.oclass IN opset{fxO, fyO, xfO, yfO}) OR
                    (arity = 2) AND
                       (name^.oclass IN opset{xfxO, xfyO, yfxO}) THEN
               bracket := name^.oprec > p;
               IF bracket THEN PutChar(fd, '(') END;
               WriteOp;
               IF bracket THEN PutChar(fd, ')') END
            
            ELSE
               WriteStand
            END
         END
      END WriteFunc; 
  
   BEGIN (* WriteTerm *)
      IF depth = WriteDepth THEN
         PutChar(fd, '.'); PutChar(fd, '.'); PutChar(fd, '.')
      
      ELSE 
         y := Deref(x, e);
         WITH y^ DO
            WITH info DO
               CASE tag OF
                  funcT: 
                     WriteFunc;
               |  intT: 
                     IF ival >= 0 THEN
                        PutNum(fd, ival)
                     ELSE
                        PutChar(fd, '~'); PutNum(fd, -ival)
                     END;
               |  varT: 
                     WriteVar(y);
               |  anonT: 
                     PutChar(fd, '_')
               END
            END
         END
      END
   END WriteTerm;
  
BEGIN (* WriteOut *)
   WriteTerm(x, MaxPrec, 0)
END WriteOut;
  
  
PROCEDURE SysPred(a: atom): BOOLEAN;
(* True IF a is a System predicate, i.e. has the 'sys' flag set
   or BEGINs with '$'. *)
BEGIN
   IF a^.sys THEN
      RETURN TRUE
   ELSIF a^.ident.length > 0 THEN
      RETURN stringbuf[a^.ident.index + 1] = '$' 
   ELSE
      RETURN FALSE
   END
END SysPred;
  
  
PROCEDURE Trace(m: tracemessage; x: term; e: env);
(* Output a trace message. *)
   VAR y: term;
BEGIN
   y := Deref(x, e);
   (* Don't trace evaluable predicates unless debugging interpreter. *)
   IF (flag[debugging] = 1) OR NOT SysPred(y^.info.name) THEN
      CASE m OF
         goalD:   WriteString('GOAL:   ');
      |  provedD: WriteString('PROVED: ')
      END;
      WriteOut(StandFD, y, e, 2);
      WriteLn
   END 
END Trace;

BEGIN
END WriteOut.
