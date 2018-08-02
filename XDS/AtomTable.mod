
IMPLEMENTATION MODULE AtomTable;

FROM SYSTEM IMPORT TSIZE;

FROM Storage IMPORT ALLOCATE, CreateHeap;
FROM Terminal IMPORT Write;

FROM ErrorHandler IMPORT ExecError, error;

CONST
  
   HashSize = 500               (* Size of hash table. *);

VAR
   atomhwm: strindex            (* Top of permanent entries. *);

   atomcount: INTEGER           (* Number of distinct atoms. *);
   hashtable:                   (* Hash table for atom names. *)
      ARRAY [1 .. HashSize] OF atom;
  
  
PROCEDURE StartAtom;
(* Prepare to accept characters of an atom. *)
BEGIN
   WITH newatom DO
      index := atomhwm;
      length := 0
   END 
END StartAtom;
  
  
PROCEDURE AtomChar(c: CHAR); 
(* Store c as the next char of an atom. *)
BEGIN
   WITH newatom DO
      IF index + length >= StringSpace THEN ExecError(atomspaceE) END;
      INC(length);
      stringbuf[index + length] := c
   END 
END AtomChar;
  
PROCEDURE SameString(s1, s2: astring): BOOLEAN;
(* Test whether s1 and s2 are the same string. *)
   VAR 
      j: CARDINAL;
      same: BOOLEAN;
BEGIN
   IF s1.length <> s2.length THEN
      RETURN FALSE 
   ELSE
      j := 0; same := TRUE;
      WHILE same AND (j <> s1.length) DO
         INC(j);
         same := stringbuf[s1.index + j] = stringbuf[s2.index + j]
      END;
      RETURN same
   END 
END SameString;
  
  
PROCEDURE LookUp(): atom; 
(* Enter an atom and return its value. *)
   VAR 
      h: [1 .. HashSize];
      a: atom;
      found: BOOLEAN;
      
      PROCEDURE GetCh(i: CARDINAL): CARDINAL;
      BEGIN
        RETURN ORD(stringbuf[newatom.index+i])
      END GetCh;
      
BEGIN
   (* Compute hash function: care needed to avoid overflow on some machines. *)
   WITH newatom DO
      IF length >= 1 THEN
         h := (8 * GetCh(1) + GetCh(length) + length) MOD HashSize + 1
      ELSE
         h := 1
      END
   END;
   a := hashtable[h];
   
   found := FALSE; 
   WHILE (a <> NIL) AND NOT found DO
      IF SameString(a^.ident, newatom) THEN
         found := TRUE
      ELSE
         a := a^.chain
      END
   END;
   
   IF NOT found THEN
      ALLOCATE(a,TSIZE(atomentry));
      INC(atomcount);
      WITH a^ DO
         ident := newatom; 
         atomno := atomcount;
         chain := hashtable[h];
         oclass := nonO;
         oprec := 0;
         sys := FALSE;
         pclass := normP;
         proc := NIL
      END;
      atomhwm := atomhwm + newatom.length;
      hashtable[h] := a
   END;
   RETURN a
END LookUp;
  
  
  
PROCEDURE InitAtoms;
(* Initialise the character heap and define a few useful atoms. *)

VAR j: INTEGER;
  
   PROCEDURE R(w: ARRAY OF CHAR; VAR a: atom);
   (* Bind a to the atom with name w. *)
   VAR i: CARDINAL;
   BEGIN
      StartAtom;
      i := 0;
      WHILE w[i]#' ' DO
         AtomChar(w[i]);
         INC(i);
      END;
      a := LookUp()
   END R;
  
   PROCEDURE S(w: ARRAY OF CHAR; m: evalarity; p: evalpred);
   (* Associate the evaluable predicate p with the functor of
      name w and arity m. *)
   VAR a: atom;
   BEGIN
      R(w,a);
      WITH a^ DO
         sys := TRUE; 
         pclass := evalP;
         routine := p;
         arity := m
      END
   END S;
  
BEGIN (* InitAtoms *)
   atomhwm := 0;
   atomcount := 0;
   FOR j := 1 TO HashSize DO hashtable[j] := NIL END;
  
   R(", ",     commaA);       R("; ",      semiA);
   R(". ",     consA);        R("! ",      cutA); 
   R("[] ",    nilA);         R(":- ",     arrowA);
   R("?- ",    questionA);    R("call ",   callA); 
   R("fail ",  failA);        R("repeat ", repeatA);
   R("end ",   endA);         R("fx ",     fxA);
   R("fy ",    fyA);          R("xf ",     xfA); 
   R("yf ",    yfA);          R("xfx ",    xfxA);
   R("xfy ",   xfyA);         R("yfx ",    yfxA);
   R("+ ",     plusA);        R("- ",      minusA);
   R("* ",     timesA);       R("/ ",      divideA);
   R("mod ",   modA);         R("- ",      negA);
   R("{} ",    curlyA);       R("$top ",   topA);
   R("true ",  trueA);        R("user ",   userA); 
   R("--> ",   gramA);
   
   S("$read ",  2, readR);     S("$write ",  2, writeR);
   S("get0 ",   1, get0R);     S("put ",     1, putR);
   S("eoln ",   0, eolnR);     S("eof ",     0, eofR); 
   S("nl ",     0, nlR);       S("$op ",     3, opR);
   S("$flag ",  2, flagR);     S("$setflg ", 2, setflgR);
   S("atom ",   1, atomR);     S("integer ", 1, integerR);
   S("var ",    1, varR);      S("halt ",    0, haltR);
   S("is ",     2, isR);       S("< ",       2, ltR);
   S("$addcl ", 2, addclR);    S("functor ", 3, functorR);
   S("arg ",    3, argR);      S("abort ",   0, abortR);
   S("$clenv ", 2, clenvR);    S("$getcl ",  4, getclR);
   S("$advcl ", 1, advclR);    S("$zap ",    1, zapR);
   S("call ",   1, callR);     S("! ",       0, cutR);
   S("name ",   2, nameR);
   S("see ",    1, seeR);      S("seeing ",  1, seeingR);
   S("tell ",   1, tellR);     S("telling ", 1, tellingR);
   S("close ",  1, closeR);    S("$ucode ",  1, ucodeR);
   S("$nonsp ", 1, nonspR);
   
   (* new built in predicates:  *)
   S("time ",     1, timeR);       S("infers ",  1, inferencesR);
   S("showterm ", 0, showtermR);   S("showvar ", 0, showvarR);
   S("listing ",  1, listingR);    S("consult ", 1, consultR);
   S("reconsult ",1, reconsultR);  S("ccompile ",1, ccompileR);
   
END InitAtoms;

BEGIN
  IF CreateHeap(300*1024,FALSE) THEN END;
  InitAtoms
END AtomTable.
