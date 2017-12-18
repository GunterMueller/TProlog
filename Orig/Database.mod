
IMPLEMENTATION MODULE Database;

FROM SYSTEM IMPORT TSIZE (*, VAL*);

FROM InOut   IMPORT WriteString, WriteLn;
FROM Storage IMPORT ALLOCATE, DEALLOCATE;

FROM ErrorHandler IMPORT Report, error;
FROM Terms        IMPORT Deref, IsFunc, MakeBros;
FROM AtomTable    IMPORT nodetag, node, clause, heapF, term, key, clptr, predtype,
                         callA, commaA, questionA, gramA, arrowA;
FROM Stacks       IMPORT env;
FROM OpSystem     IMPORT flag, sysmode, debugging, MaxDepth;

CONST
   MaxVars = 50                 (* Size of var. map in AddClause. *);
    
PROCEDURE Hash(x: term; e: env): key;
(*
   Hash procedure for terms.  The value of Hash depends on the root
   of the first argument of the term.  Zero is returned if the first
   argument is a variable.
*)
   CONST Infinity = 859;
   VAR y, z: term;
BEGIN
   y := Deref(x, e);
   IF y^.info.arity = 0 THEN
      RETURN Infinity
   ELSE
     z := Deref(y^.info.son, e);
     WITH z^.info DO
        CASE tag OF
           funcT: IF name = NIL
                  THEN 
                         WriteString('Hash-procedure failed........');
                         WriteLn;
                         HALT;
                         RETURN 99
                       
                  ELSE RETURN Infinity + name^.atomno
                  END;
        |  intT: RETURN ival - VAL(INTEGER,ORD(ival <= 0) );
        |  varT, anonT: RETURN 0
        END
     END
   END 
END Hash;
  
  
PROCEDURE FindClause(VAR cl: clptr; x: term; e: env): BOOLEAN;
(*
   Advance cl to the first applicable clause. Hash is used to compare
   clause heads with the goal x. If either has hash procedure zero, a
   variable is present and a match is always possible.
*)
   VAR 
      k: key;
      ok: BOOLEAN;
BEGIN
   k := Hash(x, e);
   ok := FALSE;
   WHILE (cl <> NIL) AND NOT ok DO
      WITH cl^ DO
         IF denied OR (keyval <> 0) AND (k <> 0) AND (keyval <> k) THEN
            cl := chain
         ELSE
            ok := TRUE
         END
      END
   END;
   RETURN ok
END FindClause;
  
  
PROCEDURE AddClause(newclause: term; envp: env; asserta: BOOLEAN): BOOLEAN;
(*
   Produce a skeleton for newclause and add it to the database.  The new
   clause is added at the front of the clause chain if asserta is true,
   otherwise at the end.  Normally, the result is true, but false
   is returned after an error.
*)
  
   VAR 
      heaptop: term;
      varcount: [0 .. MaxVars];
      framesize: INTEGER;
      result: BOOLEAN;
  
      varmap: ARRAY [1 .. MaxVars] OF
         RECORD
            sourcevar: term;
            CASE alloc: BOOLEAN OF
               FALSE: firstref: term
            |  TRUE:  address: INTEGER
            END
         END;
  
   PROCEDURE AddClError(e: error);
   (* Report an error and return false. *)
   BEGIN
      Report(e);
      result := FALSE;
      HALT
   END AddClError;
  
   PROCEDURE NewSkel(VAR x: term);
   (* Create a new node for a skeleton. *)
   BEGIN
      ALLOCATE(x,TSIZE(node));
      WITH x^ DO
         brother := NIL;
         chain := heaptop; 
         field := heapF;
         scope := 0
      END;
      heaptop := x
   END NewSkel; 
  
   PROCEDURE SkelVar(v: term): term; 
   (*
      Produce a skeleton for a variable v. When the first occurrence of
      v is encountered, it is tentatively translated as an anonymous
      variable, and a pointer to this variable is stored in the 
      'varmap' entry. If a second occurrence is encountered, the 
      anonymous variable is changed to a skeletal reference.
   *)
      VAR
         n: [0 .. MaxVars];
         w: term;
         found: BOOLEAN;
   BEGIN
      n := 0;
      found := FALSE;
      WHILE (n <> varcount) AND NOT found DO
         n := n + 1;
         found := varmap[n].sourcevar = v
      END;
      IF found THEN
         (* This is not the first occurrence. *)
         WITH varmap[n] DO
            IF NOT alloc THEN
               (* This is the second occurrence -
                  allocate space on the local stack. *)
               framesize := framesize + 1;
               WITH firstref^.info DO
                  tag    := skelT; 
                  offset := framesize
               END; 
               alloc := TRUE;
               address := framesize 
            END;
            NewSkel(w);
            WITH w^.info DO
               tag := skelT;
               offset := address
            END
         END
      ELSE
         (* This is the first occurrence - make an anonymous
            variable and keep a pointer to it. *)
         IF varcount >= MaxVars THEN AddClError(nvarsE) END;
         varcount := varcount + 1;
         NewSkel(w);
         w^.info.tag := anonT;
         WITH varmap[varcount] DO
            sourcevar := v;
            alloc := FALSE;
            firstref := w
         END
      END;
      RETURN w
   END SkelVar;
  
PROCEDURE Skeleton(x: term; depth: INTEGER): term;
(* Produce a skeleton for x. *)
   VAR y, z: term;
  
   PROCEDURE SkelArgs(s: term): term;
   (* Produce a skeleton for the arguments of a functor node. *)
      VAR t, u, v: term;
   BEGIN
      IF s = NIL THEN
         RETURN NIL
      ELSE
         u := Skeleton(s, depth + 1);
         t := s^.brother;
         v := u; 
         WHILE t <> NIL DO
            v^.brother := Skeleton(t, depth + 1);
            t := t^.brother; 
            v := v^.brother
         END;
         RETURN u
      END
   END SkelArgs;
  
BEGIN (* Skeleton *)
   IF depth > MaxDepth THEN AddClError(depthE) END;
   y := Deref(x, envp);
   CASE y^.info.tag OF
      funcT: 
           NewSkel(z);
           WITH z^.info DO
              tag := funcT;
              name := y^.info.name;
              arity := y^.info.arity;
              son := SkelArgs(y^.info.son)
           END
      
  |  intT:
           NewSkel(z);
           WITH z^.info DO
              tag := intT;
              ival := y^.info.ival 
           END
       
  |  varT: 
        z := SkelVar(y);
  |  anonT:
           NewSkel(z);
           z^.info.tag := anonT
       
  END; 
  RETURN z
END Skeleton;
  
    PROCEDURE SkelCall(x: term): term;
    (* Produce a skeleton for a goal in a clause body. A variable 
       X is mapped onto call(X). *)
       VAR y, z: term;
    BEGIN
       y := Deref(x, envp);
       CASE y^.info.tag OF
          funcT: 
             RETURN Skeleton(y, 0);
       |  varT: 
                NewSkel(z);
                WITH z^.info DO
                   tag := funcT;
                   name := callA;
                   arity := 1;
                   son := SkelVar(y)
                END;
                RETURN z
            
       |  intT, anonT: 
             AddClError(assertE)
       END
    END SkelCall;
  
    PROCEDURE SkelHead(x: term): term;
    (* Produce a skeleton for a clause head. *)
       VAR y: term;
    BEGIN
       y := Deref(x, envp);
       IF y^.info.tag <> funcT THEN AddClError(assertE) END;
       RETURN Skeleton(y, 0)
    END SkelHead;
  
   PROCEDURE SkelBody(x: term; depth: INTEGER): term;
   (* Produce a skeleton for a clause body. *)
      VAR y: term;
   BEGIN
      IF depth > MaxDepth THEN AddClError(depthE) END; 
      y := Deref(x, envp);
      IF IsFunc(y, commaA, 2) THEN
         RETURN MakeBros(SkelCall(y^.info.son),
                         SkelBody(y^.info.son^.brother, depth + 1))
      ELSE
         RETURN SkelCall(y)
      END
   END SkelBody;
  
   PROCEDURE PlugA(cl: clptr; VAR cp: clptr; prev: clptr); 
   (* Insert cl at the start of chain cp, making its backchain
      point to prev. *)
   BEGIN
      cl^.chain := cp;
      cl^.backchain := prev;
      IF cp <> NIL THEN cp^.backchain := cl END;
      cp := cl 
   END PlugA;
  
   PROCEDURE PlugZ(cl: clptr; VAR cp: clptr);
   (* Insert clause cl at the END of chain cp. *) 
      VAR p: clptr; 
   BEGIN
      IF cp = NIL THEN
         PlugA(cl, cp, NIL)
      ELSE
         p := cp;
         WHILE p^.chain <> NIL DO p := p^.chain END;
         PlugA(cl, p^.chain, p)
      END
   END PlugZ;
  
   PROCEDURE MakeClause(h, b: term; k: key): clptr;
   (* Make a clause with head h and body b, where the head hashed to k. *)
      VAR cl: clptr;
   BEGIN
      ALLOCATE(cl,TSIZE(clause)); 
      WITH cl^ DO
         head := h;
         body := b;
         nvars := framesize;
         denied := FALSE;
         refcount := 0;
         keyval := k; 
         chain := NIL;
         backchain := NIL; 
         heapchain := heaptop
      END;
      RETURN cl
   END MakeClause;
  
   PROCEDURE AddCl(x: term);
   (* The guts of AddClause. *)
      VAR
         y, head, body: term;
         keyval: key;
   BEGIN
      y := Deref(x, envp);
      IF IsFunc(y, questionA, 1) OR IsFunc(y, gramA, 2) THEN
         AddClError(assertE) END;
      IF IsFunc(y, arrowA, 2) THEN
         head := SkelHead(y^.info.son); 
         body := SkelBody(y^.info.son^.brother, 0); 
         keyval := Hash(y^.info.son, envp)
     
      ELSE
         head := SkelHead(y);
         body := NIL; 
         keyval := Hash(y, envp)
      END;
      WITH head^.info.name^ DO
         IF (flag[sysmode] = 0) AND (flag[debugging] = 0) AND sys OR
              (pclass = evalP) THEN 
            AddClError(sysprocE) END;
         IF (flag[sysmode] = 1) THEN sys := TRUE END;
         IF asserta THEN
            PlugA(MakeClause(head, body, keyval), proc, NIL)
         ELSE
            PlugZ(MakeClause(head, body, keyval), proc)
         END
      END
   END AddCl;
  
  
 BEGIN (* AddClause *)
    heaptop := NIL;
    varcount := 0;
    framesize := 0; 
    result := TRUE (* default value. *);
    AddCl(newclause);

    RETURN result
 END AddClause;
  
 
PROCEDURE ReleaseChain(start, finish: term); 
(* Release a chain of nodes. *)
   VAR p, q: term;
BEGIN
   p := start;
   WHILE p <> finish DO
      q := p^.chain; 
      DEALLOCATE(p,TSIZE(term));
      p := q
   END 
END ReleaseChain;
 
  
PROCEDURE DeleteClause(cl: clptr); 
(* Delete clause cl. *)
BEGIN
   WITH cl^ DO
      IF backchain <> NIL THEN 
         backchain^.chain := chain
      ELSE
         head^.info.name^.proc := chain;
      END;
      IF chain <> NIL THEN chain^.backchain := backchain END;
      ReleaseChain(heapchain, NIL)
   END;
   DEALLOCATE(cl,TSIZE(clause))
END DeleteClause;

BEGIN
END Database.
