
IMPLEMENTATION MODULE Terms;

(*FROM SYSTEM       IMPORT VAL;*)

FROM OpSystem     IMPORT MaxDepth;
FROM Stacks       IMPORT NewGlobal, env, locstack, display, TrailVar;
FROM AtomTable    IMPORT atom, heapF, term, nodetag, trueA, nilA, consA, commaA, 
                         astring, stringbuf;
FROM ErrorHandler IMPORT ExecError, error;

PROCEDURE MakeFunc(a: atom; m: INTEGER; s: term): term;
(* Construct a functor node on the global stack. *)
   VAR x: term;
BEGIN
   NewGlobal(x);
   WITH x^.info DO
      tag := funcT;
      name := a;
      arity := m;
      son := s 
   END;
   RETURN x
END MakeFunc;
  
PROCEDURE MakeInt(i: INTEGER): term;
(* Construct an integer node on the global stack. *) 
   VAR x: term;
BEGIN
   NewGlobal(x);
   WITH x^.info DO
      tag := intT;
      ival := i
   END;
   RETURN x
END MakeInt;
  
PROCEDURE MakeVar(v: term): term;
(* Construct a variable node on the global stack. *) 
   VAR x: term;
BEGIN
   NewGlobal(x);
   WITH x^.info DO
      tag := varT;
      val := v 
   END;
   RETURN x
END MakeVar;
  
PROCEDURE MakeBros(x, y: term): term;
(* Return x after making y its brother. *)
BEGIN
   x^.brother := y;
   RETURN x
END MakeBros;
  
  
PROCEDURE IsFunc(x: term; a: atom; m: INTEGER): BOOLEAN;
(* True iff x is a functor node with name a and arity m. *)
BEGIN
   WITH x^.info DO
      IF tag <> funcT THEN 
         RETURN FALSE
      ELSE
         RETURN (name = a) AND (arity = m)
      END
   END
END IsFunc;
  
  
PROCEDURE IsAtom(x: term): BOOLEAN;
(* True iff x is an atom. *)
BEGIN
   WITH x^.info DO
      IF tag <> funcT THEN 
         RETURN FALSE
      ELSE
         RETURN arity = 0
      END
   END
END IsAtom;
  
PROCEDURE ListRep(s: astring): term;
(* A Prolog list of the characters of s: cf. 'atom'. *) 
   VAR 
      x: term;
      n: CARDINAL;
BEGIN
   x := MakeFunc(nilA, 0, NIL);
   FOR n := s.index+s.length TO s.index + 1 BY -1 DO
      x := MakeFunc(consA, 2, MakeBros(MakeInt(ORD(stringbuf[n])), x))
   END;
   RETURN x
END ListRep;
  
PROCEDURE Deref(x: term; e: env): term;
(*
   Dereference x as far as possible.  The result y is reached from x by
   a possible environment reference followed by a (possibly empty) 
   chain of variable references.  The result cannot be subjected to 
   further dereferencing, so y satisfies
  
      (y^.info.tag in [funcT, intT, varT, anonT]) and
         ((y^.info.tag = varT) => (y^.info.val = nil)). 
  
   This procedure is used heavily by all parts of the interpreter.  The
   body of EnvRef [4] is inserted directly where indicated.
*)

   VAR y, z: term;
BEGIN
   y := x;
   IF y^.info.tag = skelT THEN 
      y := (* EnvRef(y^.info.offset, e) *)
            locstack[VAL(INTEGER,display[e].Fbase) + y^.info.offset] END;
            
   WHILE y^.info.tag = varT DO
      z := y^.info.val;
      IF z = NIL THEN RETURN y END;
      y := z
   END;
 
   RETURN y 
END Deref;
  
  
PROCEDURE BindVars(v1, v2: term);
(*
   Bind variables v1 and v2 by assigning to one of them.  The following
   rules must be obeyed when variable bindings are introduced: 
  
      (1) No variable on the global stack may be bound to a
         variable on the local stack.  On success, the local stack may
         contract, and this must not affect the global stack.
      (2) For much the same reason, no variable on the local stack
         may be bound to a more recently created variable on the local
         stack.
  
   In addition, it helps to reduce the size of the trail and to make
   global stack reclamation more fruitful (should it ever get
   implemented!) If rule (2) is observed for the global stack too.
*)
BEGIN
   IF v1 <> v2 THEN
      IF (v1^.field > v2^.field) OR (v1^.field = v2^.field) AND
                               (v1^.scope > v2^.scope) THEN
         v1^.info.val := v2; 
         TrailVar(v1)
     
      ELSE 
         v2^.info.val := v1; 
         TrailVar(v2)
      END
   END
END BindVars;
  

PROCEDURE Bind(v, x: term; ev, e: env; depth: INTEGER);
(*
   Bind v to the value of x.  Usually it suffices to copy the 'info'
   field IF the value, but IF x is a functor in a clause, its arguments
   must be copied onto the global stack to make them indepENDent of the
   environment.
*)
   VAR y, z: term;
  
   PROCEDURE Copy(x: term): term;
   (* Copy x onto the heap. *)
      VAR y, z: term;
   BEGIN
      y := Deref(x, e);
      z := MakeVar(NIL);
      CASE y^.info.tag OF
         funcT, intT: 
            Bind(z, y, 0, e, depth + 1);
     |   varT:  
            BindVars(y, z);
     |   anonT: 
            (* null *)
      END;
      RETURN z
   END Copy;
  
   PROCEDURE CopyArgs(s: term): term;
   (* Copy the arguments of a functor node. *)
      VAR t, u, v: term;
   BEGIN
      IF s = NIL THEN
         RETURN NIL
      ELSE
         u := Copy(s);
         t := s^.brother; v := u;
         WHILE t <> NIL DO
            v^.brother := Copy(t);
            t := t^.brother; v := v^.brother
         END;
         RETURN u
      END
   END CopyArgs;
  
  
BEGIN (* Bind *)
   IF depth > MaxDepth THEN ExecError(depthE) END;
   y := Deref(x, e);
   IF (y^.info.tag = funcT) AND (y^.field = heapF) THEN
      z := CopyArgs(y^.info.son);
      WITH v^.info DO
         tag := funcT;
         name := y^.info.name;
         arity := y^.info.arity; 
         son := z
      END
   
   ELSE
      v^.info := y^.info
   END
END Bind;
  
  
PROCEDURE GetBody(v, b: term; ev, eb: env);
(* Bind v to a term representing the clause body b. *)
BEGIN
   IF b = NIL THEN
      Bind(v, MakeFunc(trueA, 0, NIL), ev, 0, 0)
   ELSIF b^.brother = NIL THEN
      Bind(v, b, ev, eb, 0)
   ELSE
      Bind(v, MakeFunc(commaA, 2, MakeBros(MakeVar(NIL),
                                            MakeVar(NIL))), 0, eb, 0);
      Bind(v^.info.son, b, 0, eb, 0);
      GetBody(v^.info.son^.brother, b^.brother, 0, eb)
   END 
END GetBody;
  
BEGIN
END Terms.

