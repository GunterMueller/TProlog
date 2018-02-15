
IMPLEMENTATION MODULE Parser;

(* FROM SYSTEM IMPORT VAL; *)

FROM AtomTable    IMPORT atom, term, prec, optype, MaxPrec, newatom, 
                         consA, nilA, questionA, endA, curlyA, commaA, cutA, semiA,
                         StartAtom, AtomChar, LookUp;
FROM ErrorHandler IMPORT Report, error;
FROM PFiles       IMPORT Recover, GetChar, LineEnded, FileEnded, charpos, errpos,
                         class, CharClass;
FROM Terms        IMPORT MakeFunc, MakeInt, MakeBros, MakeVar, ListRep;
FROM OpSystem     IMPORT SubPrec;

CONST
   ReadSize = 100               (* Size of stack in ReadIn. *);
   ReadDepth = 20               (* Max. nesting depth in ReadIn. *);


TYPE opset = SET OF optype;
     cset  = SET OF class;
 
PROCEDURE Lprec(a: atom): prec;
BEGIN
   RETURN a^.oprec - VAL(prec,ORD(a^.oclass IN opset{xfO, xfxO, xfyO}))
END Lprec;
  
  
PROCEDURE Rprec(a: atom): prec;
BEGIN
   RETURN a^.oprec - VAL(prec,ORD(a^.oclass IN opset{fxO, xfxO, yfxO}))
END Rprec;
  
  
PROCEDURE ReadIn(VAR termread, vtable: term): BOOLEAN;
(*
   Input and parse a Prolog sentence and build a term
   from it, returning true if successful and assigning the term
   to termread.  Return false if a syntax error is found.
  
   The finite state part of the parser is characterized by the variables 
   'context' and 'expected'.  'context' indicates the construct being
   parsed: 
  
      outerK       The outermost level of a sentence.
      innerK       An expression in parentheses.
      funcK        The arguments of a functor.
      listK        The elements of a list.
      endlistK     A list continuation (between '|' or ',..'
                   and ']' in a list).
      curlyK       An expression in curly brackets.
      finalK       None. The expression is complete.
  
   'expected' indicates whether the next symbol is to be an operator
   (opX) or an operand (randX).
  
   Two stacks are used: one, represented by the array 'stack', to hold
   parts of incompletely parsed terms, the other, represented by the
   array 'statestack', to hold contextual information during parsing of
   nested constructs. In fact, the parsing algorithm corresponds to a
   stack machine with  a single stack, and two stacks are used only as a
   matter of convenience.
*)
  
   TYPE
      readstate = (outerK, innerK, funcK, listK, endlistK, curlyK, finalK); 
      stateset = SET OF readstate;
      elemtag = (termL, opL, funcL, markL);
      atomtag = [opL .. funcL];
  
   VAR 
      ch, lastch: CHAR;
      context: readstate;
      expected: (opX, randX);
      hiprec, loprec: prec;
      result: BOOLEAN;
  
      top: [0 .. ReadSize];
  
      stack: ARRAY [1 .. ReadSize] OF
         RECORD
             CASE tag: elemtag OF
                termL: tval: term;
             |  opL, funcL: 
                       aval: atom;
             |  markL: dumch : CHAR
             END
         END;
      statetop: [0 .. ReadDepth];
      statestack: ARRAY [1 .. ReadDepth] OF
         RECORD
            Scontext: readstate; 
            Shiprec: prec
         END;
  
  
   PROCEDURE SyntaxError(e: error);
   (* Report a syntax error and recover. *)
   BEGIN
      Report(e);
      Recover;
      result := FALSE;
   END SyntaxError;
  
   PROCEDURE Push(t: elemtag);
   (* Push a new element onto the stack. *) 
   BEGIN
      IF top >= ReadSize THEN SyntaxError(readstackE); HALT END;
      INC(top);
      stack[top].tag := t
   END Push;
  
   PROCEDURE ShiftTerm(x: term);
   (* Push x onto the stack. *)
   BEGIN
      Push(termL);
      stack[top].tval := x
   END ShiftTerm;
  
   PROCEDURE Shift(t: atomtag; a: atom);
   (* Push a onto the stack, either as an operator or as a functor. *)
   BEGIN
      Push(t);
      stack[top].aval := a
   END Shift;
  
   PROCEDURE Pop(): term;
   (* Pop a term off the stack. *)
   VAR  item: term;
   BEGIN
      item := stack[top].tval;
      DEC(top);
      RETURN item
   END Pop;
  
   PROCEDURE Reduce(p, lp: prec): BOOLEAN;
   (*
      Collapse items on the stack. Before each reduction step, the
      operator a on top of the stack is 'balanced' against the
      precedences p = b^.oprec and lp = Lprec(b) of a new operator b,
      to see IF a could be a left operand of b, or b a right operand of 
      a. If neither is possible or both are possible, a precedence
      conflict is reported.  If only the first is possible, a reduction
      step is taken. If only the second is possible, reduction is
      complete.
   *)
      VAR
         x: term;
         a: atom;
         reduced: BOOLEAN;
   BEGIN
      x := Pop(); 
      reduced := FALSE;
      WHILE (stack[top].tag = opL) AND NOT reduced DO
         a := stack[top].aval;
         IF (Rprec(a) >= p) AND (a^.oprec > lp) THEN
            reduced := TRUE 
         ELSIF (Rprec(a) < p) AND (a^.oprec <= lp) THEN
            top := top - 1;
            CASE a^.oclass OF
               fxO, fyO: 
                  x := MakeFunc(a, 1, x);
             | xfxO, xfyO, yfxO: 
                  x := MakeFunc(a, 2, MakeBros(Pop(), x))
            END
         ELSE
            SyntaxError(precE);
            RETURN FALSE
         END
      END;
      ShiftTerm(x);
      RETURN TRUE
   END Reduce;
  
   PROCEDURE CheckDelim(s: stateset; e: error): BOOLEAN;
   (*
      Attempt to force the state required for a delimiter.
      This state must satisfy the predicate
  
         (expected = opX) and (context in s).
  
      If initially (expected = randX) and the top item on the stack
      is a prefix operator, this operator is converted to an atom.
      This allows for constructions such as (?-) in which a prefix
      operator occurs as an atom.
   *)
   VAR a: atom;
   BEGIN
      IF expected = randX THEN
         IF stack[top].tag <> opL THEN SyntaxError(needrandE); RETURN FALSE END;
         a := stack[top].aval;
         IF NOT (a^.oclass IN opset{fxO, fyO}) THEN SyntaxError(needrandE); RETURN FALSE END;
         top := top - 1;
         ShiftTerm(MakeFunc(a, 0, NIL));
      END;
      IF NOT (context IN s) THEN SyntaxError(e); RETURN FALSE END;
      IF NOT Reduce(MaxPrec, MaxPrec) THEN RETURN FALSE END;
      RETURN TRUE
   END CheckDelim;
  
   PROCEDURE EnterContext(k: readstate; h: prec);
   (* Save the current context and set up a new one. *)
   BEGIN
      IF statetop >= ReadDepth THEN SyntaxError(readstackE); HALT END; 
      statetop := statetop + 1;
      WITH statestack[statetop] DO
         Scontext := context;
         Shiprec := hiprec 
      END;
      context := k; expected := randX; hiprec := h
   END EnterContext; 
  
   PROCEDURE ExitContext(x: term);
   (* Return from an inner context, leaving its value x on the stack. *)
   BEGIN
      top := top - 1;
      ShiftTerm(x);
      WITH statestack[statetop] DO 
         context := Scontext;
         hiprec := Shiprec 
      END;
      statetop := statetop - 1;
      expected := opX; loprec := 0
   END ExitContext;
  
   PROCEDURE GetFunc(): term;
   (*
      Assemble a functor and arguments. On entry, the stack
      holds a funcL element, followed by one termL element for
      each argument.
   *)
      VAR
         x: term;
         n: INTEGER; 
   BEGIN
      x := Pop(); 
      n := 1;
      WHILE stack[top].tag = termL DO
         x := MakeBros(Pop(), x);
         n := n + 1
      END;
      RETURN MakeFunc(stack[top].aval, n, x)
   END GetFunc; 
  
   PROCEDURE GetList(): term;
   (*
      Assemble a list. On entry, the stack holds a markL
      element, followed by a termL element for each list
      element, THEN a termL element for the list continuation.
   *)
      VAR x: term;
   BEGIN
      x := Pop(); 
      REPEAT
         x := MakeFunc(consA, 2, MakeBros(Pop(), x))
      UNTIL stack[top].tag <> termL;
      RETURN x
   END GetList; 
  
   PROCEDURE StowAtom(a: atom): BOOLEAN;
   (* Process an atom. *)
  
      PROCEDURE SquashRand(): BOOLEAN;
      (* Check precedence and reduce a left operand. *)
         VAR p, lp: prec;
      BEGIN
         p := a^.oprec; lp := Lprec(a);
         IF (lp < loprec) OR (p > SubPrec) AND NOT
            (context IN stateset{outerK, innerK, curlyK}) THEN 
              SyntaxError(precE); RETURN FALSE 
         END;
         RETURN Reduce(p, lp)
      END SquashRand;
  
   BEGIN (* StowAtom *)
      CASE expected OF
         randX: 
            IF ch = '(' THEN
               (* '(' follows an atom with no space: a functor in
                  standard notation. *)
               Shift(funcL, a);
               EnterContext(funcK, SubPrec);
               GetChar(ch)
            ELSIF a^.oclass IN opset{fxO, fyO} THEN
               (* A prefix operator. *)
               IF a^.oprec > hiprec THEN SyntaxError(precE); RETURN FALSE END;
               Shift(opL, a);
               expected := randX; hiprec := Rprec(a)
            ELSE
               (* An atom, i.e. a functor of arity 0. *)
               ShiftTerm(MakeFunc(a, 0, NIL));
               expected := opX; loprec := 0
            END; 
  
       | opX: 
            CASE a^.oclass OF
               xfO, yfO:
                     (* A postfix operator. *)
                     IF NOT SquashRand() THEN RETURN FALSE END;
                     ShiftTerm(MakeFunc(a, 1, Pop()));
                     expected := opX; loprec := a^.oprec
                     
             |  xfxO, xfyO, yfxO:
                    (* An infix operator. *)
                     IF NOT SquashRand() THEN RETURN FALSE END;
                     Shift(opL, a);
                     expected := randX; hiprec := Rprec(a)

            |  fxO, fyO, nonO:  
                  SyntaxError(needopE); RETURN FALSE
            END
      END;
      RETURN TRUE
   END StowAtom;
  
   PROCEDURE ScanInt(): INTEGER;
   (* Read a positive integer starting with ch. *)
      VAR n: INTEGER;
   BEGIN
      n := 0;
      REPEAT
         n := 10 * n + VAL(INTEGER,ORD(ch) - ORD('0'));
         GetChar(ch)
      UNTIL CharClass[ORD(ch)] <> digitC;
      RETURN n
   END ScanInt; 
  
   PROCEDURE ScanQuote(q: CHAR);
   (* Read an atom or string quoted by 'q' and store its characters
      in the atom table, translating pairs of embedded quotes. *)
      VAR done: BOOLEAN; 
   BEGIN
      StartAtom;
      done := FALSE;
      REPEAT
         IF LineEnded() THEN
            errpos := charpos;
            SyntaxError(needquoteE);
            HALT
         END;
         GetChar(ch);
         IF ch = q THEN
            GetChar(ch);
            done := ch <> q
         END;
         IF NOT done THEN AtomChar(ch) END
      UNTIL done
   END ScanQuote;
  
   PROCEDURE EnterVar(): term;
   (* Enter a variable and return it as a term. *)
      VAR
         newname: atom;
         v, p: term;
         found: BOOLEAN;
   BEGIN
      newname := LookUp();
      p := vtable; found := FALSE;
      WHILE (p^.info.name <> nilA) AND NOT found DO
         IF p^.info.son^.info.name = newname THEN
               found := TRUE
            ELSE
               p := p^.info.son^.brother
         END
      END;
      IF found THEN
         RETURN MakeVar(p^.info.son^.info.son)
      ELSE
         v := MakeVar(NIL);
         WITH p^.info DO
            name := consA;
            arity := 2; 
            son := MakeBros(MakeFunc(newname, 1, MakeVar(v)),
                            MakeFunc(nilA, 0, NIL))
         END;
         RETURN v
      END
   END EnterVar;
  
BEGIN (* ReadIn *)
   top := 0;
   statetop := 0;
   result := TRUE (* Default value. *);
   vtable := MakeFunc(nilA, 0, NIL);
   Push(markL);
   context := outerK; expected := randX; hiprec := MaxPrec;
   ch := ' ';
  
   REPEAT
      IF FileEnded() THEN
         (* End of file - represented by ?- END. *)
         termread := MakeFunc(questionA, 1, MakeFunc(endA, 0, NIL));
         context := finalK 
      ELSE
         errpos := charpos;
  
         CASE CharClass[ORD(ch)] OF
            smallC: 
                  StartAtom;
                  REPEAT
                     AtomChar(ch); GetChar(ch)
                  UNTIL NOT (CharClass[ORD(ch)] IN cset{smallC, largeC, digitC});
                  IF NOT StowAtom(LookUp()) THEN RETURN FALSE END
             
         |  stropC:
                  ScanQuote("'");
                  IF NOT StowAtom(LookUp()) THEN RETURN FALSE END
          
         |  quoteC:
                  IF expected = opX THEN SyntaxError(needopE); RETURN FALSE END;
                  ScanQuote('"');
                  ShiftTerm(ListRep(newatom));
                  expected := opX; loprec := 0
              
         |  specialC:
                  lastch := ch; GetChar(ch);
                  IF (lastch = '/') AND (ch = '*') THEN
                    (* A comment. Comments don't nest. *) 
                    GetChar(ch); 
                    REPEAT
                       lastch := ch; GetChar(ch)
                    UNTIL (lastch = '*') AND (ch = '/');
                    GetChar(ch)
                    
                  ELSIF (lastch = '~') AND 
                       (CharClass[ORD(ch)] = digitC) THEN
                    (* A negative number. *)
                    IF expected = opX THEN SyntaxError(needopE); RETURN FALSE END;
                    ShiftTerm(MakeInt(-ScanInt()));
                    expected := opX; loprec := 0
                    
                  ELSIF (lastch = '.') (* AND
                       (CharClass[ORD(ch)] = spaceC) *) THEN
                    (* A full stop. *)
                    IF NOT CheckDelim(stateset{outerK},baddotE) THEN RETURN FALSE END; 
                    termread := Pop();
                    context := finalK;
                    
                  ELSE
                    StartAtom;
                    AtomChar(lastch); 
                    WHILE CharClass[ORD(ch)] = specialC DO
                       AtomChar(ch); GetChar(ch)
                    END;
                    IF NOT StowAtom(LookUp()) THEN RETURN FALSE END
                 END;
          
         | largeC:
                 IF expected = opX THEN SyntaxError(needopE); RETURN FALSE END;
                 lastch := ch; GetChar(ch); 
                 IF (lastch = '_') AND NOT
                       (CharClass[ORD(ch)] IN cset{smallC, largeC, digitC}) THEN
                    (* An anonymous variable: replaced by a unique
                       ordinary variable. *)
                    ShiftTerm(MakeVar(NIL))
                 ELSE
                    StartAtom;
                    AtomChar(lastch); 
                    WHILE CharClass[ORD(ch)] IN cset{smallC,largeC,digitC} DO
                       AtomChar(ch); GetChar(ch)
                    END;
                    ShiftTerm(EnterVar())
                 END;
                 expected := opX; loprec := 0
            
         | digitC:
                 IF expected = opX THEN SyntaxError(needopE); RETURN FALSE END;
                 ShiftTerm(MakeInt(ScanInt()));
                 expected := opX; loprec := 0
           
         | lparC:
                 IF expected = opX THEN SyntaxError(needopE); RETURN FALSE END;
                 Push(markL);
                 EnterContext(innerK, MaxPrec);
                 GetChar(ch)
            
         |  rparC:
                 IF NOT CheckDelim(stateset{innerK,funcK},badketE) THEN RETURN FALSE END;
                 CASE context OF
                    innerK: ExitContext(Pop());
                 |  funcK:  ExitContext(GetFunc())
                 END;
                 GetChar(ch)
         
         |  braC:
                  GetChar(ch);
                  IF ch = ']' THEN
                     (* The empty list []. *)
                     GetChar(ch);
                     IF NOT StowAtom(nilA) THEN RETURN FALSE END
                  ELSE
                     IF expected = opX THEN SyntaxError(needopE); RETURN FALSE END;
                     Push(markL);
                     EnterContext(listK, SubPrec)
                  END
          
         |  ketC:
                  IF NOT CheckDelim(stateset{listK,endlistK},badketE) THEN RETURN FALSE END;
                  IF context = listK THEN ShiftTerm(MakeFunc(nilA, 0, NIL)) END;
                  ExitContext(GetList());
                  GetChar(ch)
             
         |  lcurlyC:
                  GetChar(ch);
                  IF ch = '}' THEN
                     (* The 'curly' atom. *)
                     GetChar(ch);
                     IF NOT StowAtom(curlyA) THEN RETURN FALSE END
                  ELSE
                     IF expected = opX THEN SyntaxError(needopE); RETURN FALSE END;
                     Push(markL);
                     EnterContext(curlyK, MaxPrec)
                  END
            
         |  rcurlyC:
                  IF NOT CheckDelim(stateset{curlyK},badketE) THEN RETURN FALSE END;
                    ExitContext(MakeFunc(curlyA, 1, Pop()));
                  GetChar(ch)
             
         |  commaC:
                  GetChar(ch);
                  IF ch = '.' THEN
                     (* Hope to find ',..', which is punned to '|'. *)
                     GetChar(ch);
                     IF ch <> '.' THEN SyntaxError(badcddE); RETURN FALSE END;
                     ch := '|'
                  ELSE
                     IF context IN stateset{outerK, innerK, curlyK} THEN
                        IF NOT StowAtom(commaA) THEN RETURN FALSE END
                     ELSE
                        IF NOT CheckDelim(stateset{funcK,listK},badcommaE) 
                           THEN RETURN FALSE 
                        END;
                        expected := randX; hiprec := SubPrec
                     END
                  END
             
         |  cutC: 
                  GetChar(ch);
                  IF NOT StowAtom(cutA) THEN RETURN FALSE END
             
         |  semiC:
                  GetChar(ch);
                  IF NOT StowAtom(semiA) THEN RETURN FALSE END
             
         |  vbarC:
                  IF NOT CheckDelim(stateset{listK},badvbarE) THEN RETURN FALSE END;
                  context := endlistK;
                  expected := randX; hiprec := SubPrec;
                  GetChar(ch)
             
         |  spaceC: 
               GetChar(ch);
  
         |  weirdC: 
               SyntaxError(weirdchE); RETURN FALSE
        END
     END
   UNTIL context = finalK;

   RETURN result
END ReadIn;
  
PROCEDURE InitRead;
(* Set up table of character classes. *)
  
   CONST n = 28;
  
   TYPE list = ARRAY [0 .. n-1] OF CHAR;
  
   VAR c: CHAR;
  
   PROCEDURE P(s: list; t: class);
      VAR i: INTEGER;
   BEGIN
      i := 0;
      WHILE s[i] <> ' ' DO
         CharClass[ORD(s[i])] := t;
         i := i + 1
      END
   END P;
  
BEGIN
   FOR c := CHR(ordminchar) TO CHR(ordmaxchar) DO
      CharClass[ORD(c)] := weirdC
   END;
   
   P('ABCDEFGHIJKLMNOPQRSTUVWXYZ_ ', largeC);
   P('abcdefghijklmnopqrstuvwxyz  ', smallC);
   P('0123456789                  ', digitC);
   P('^$%&*+-./:<=>?@\\?~`        ', specialC);           (* ??? *) 
   CharClass[ORD("'")] := stropC;
   CharClass[ORD('"')] := quoteC;
   CharClass[ORD('(')] := lparC;
   CharClass[ORD(')')] := rparC;
   CharClass[ORD('[')] := braC;
   CharClass[ORD(']')] := ketC;
   CharClass[ORD('{')] := lcurlyC;
   CharClass[ORD('}')] := rcurlyC;
   CharClass[ORD(',')] := commaC;
   CharClass[ORD('!')] := cutC;
   CharClass[ORD(';')] := semiC;
   CharClass[ORD('|')] := vbarC;
   CharClass[ORD('^')] := vbarC;
   CharClass[ORD(' ')] := spaceC;
   (* Add the next line to allow ASCII TABs as spaces: 
   CharClass[9] := spaceC
   *)
END InitRead;

BEGIN
  InitRead
END Parser.
