
IMPLEMENTATION MODULE Stacks;

FROM SYSTEM IMPORT TSIZE, ADDRESS, ADR(*, VAL*);

FROM Storage IMPORT ALLOCATE, DEALLOCATE;
FROM InOut   IMPORT WriteString, Write;

FROM ErrorHandler IMPORT ExecError, InternalError, error;
FROM AtomTable    IMPORT term, clptr, node, nodetag, fieldtype, 
                         andG, or1G, or2G;

(* FROM Database     IMPORT DeleteClause; *)

CONST MaxTrail    = 2000;
      MaxGloStack = 1000;

VAR
   Trail: ARRAY [1..MaxTrail] OF ADDRESS;
   
   trailtop: trail              (* Stack pointer for trail. *);
   
   loctop: [0 .. LocSize]         (* Stack pointer for locstack. *);


   glostack: ARRAY [1..MaxGloStack] OF node;
   
   glotop: [0..MaxGloStack]                (* Stack pointer for global stack. *);
  

PROCEDURE Critical(v: term) : BOOLEAN;
(* Need v be recorded on the trail^ *)
BEGIN
   IF choicepoint = 0 THEN
      RETURN FALSE
   ELSE
      CASE v^.field OF
        globalF: RETURN v^.scope <= VAL(INTEGER,display[choicepoint].Fglotop);
      | localF:  RETURN v^.scope <= VAL(INTEGER,display[choicepoint].Fbase);
      | heapF:   InternalError(1)
      END
   END
END Critical; 
  
PROCEDURE TrailVar(v: term); 
(* Record v on the trail if necessary. *)
   VAR p: trail;
BEGIN
   IF Critical(v) THEN
      IF trailtop=MaxTrail THEN WriteString("no space on trail..."); HALT END;
      INC(trailtop);
      Trail[trailtop]:=v
   END 
END TrailVar;
  
  
PROCEDURE TrimTrail(base: trail); 
(*
   Remove references to variables newer than choicepoint. Some of the
   Ftrail entries in 'display' may be made invalid by this operation,
   but it doesn't matter, since they will never be used for
   backtracking.
*)
   VAR p, q: trail;
BEGIN

   q:=base+1;
   FOR p:=base+1 TO trailtop DO
     IF Critical(Trail[p]) THEN
       Trail[q]:=Trail[p];
       INC(q)
     END
   END;
   trailtop:=q-1

END TrimTrail;
  
  
PROCEDURE Untrail(newtrail: trail);
(*
   Undo all variable bindings recorded a final segment of the trail,
   starting with the one after 'newtrail'. Untrail is also used at the
   end of execution to recover the storage used for the trail.
*)
   VAR p: trail;
       t: term;
BEGIN

   FOR p:=newtrail+1 TO trailtop DO

      t:=Trail[p];
      WITH t^.info DO
         tag := varT;
         val := NIL 
      END
      
   END;
   
   trailtop:=newtrail

END Untrail;
  
  
PROCEDURE NewGlobal(VAR x: term);
(* Create a new node on the global stack. *)
BEGIN
   IF glotop=MaxGloStack THEN WriteString("no space on glostack"); HALT END;
   INC(glotop);
   glostack[glotop].brother:=NIL;
   x:=ADR(glostack[glotop])
END NewGlobal;

PROCEDURE InitGloStack;
VAR  n: CARDINAL;
BEGIN
  FOR n:=1 TO MaxGloStack DO
    WITH glostack[n] DO
      brother := NIL;
      field := globalF;
    END
  END
END InitGloStack;
  
PROCEDURE NewEnv(VAR e: env; callp: term; envp: env;
                               clausep: clptr; nvars: CARDINAL); 
(* Create a new environment e. *)
VAR n: CARDINAL;
BEGIN
   IF envtop >= MaxFrames THEN ExecError(framespaceE) END;
   IF (loctop+nvars) > LocSize THEN ExecError(localspaceE) END;
   INC(envtop);
   e := envtop;
   WITH display[e] DO
      Fcall := callp;
      Fenv := envp;
      Fchoice := choicepoint;
      Fclause := clausep; 
      Ftrail := trailtop; 
      Fglotop := glotop;
      Fbase := loctop
   END;
   IF clausep <> NIL THEN INC(clausep^.refcount) END;
   FOR n := loctop + 1 TO loctop + nvars DO 
       WITH locstack[n]^.info DO
          tag := varT; 
          val := NIL
       END
   END;
   loctop := loctop + nvars
END NewEnv;
  
  
PROCEDURE GetEnv(e: env; VAR callp: term; VAR envp: env; 
                                            VAR clausep: clptr);
(* Access information in environment e. *)
BEGIN
   WITH display[e] DO
      callp := Fcall;
      envp := Fenv;
      clausep := Fclause 
   END
END GetEnv;
  
  
 PROCEDURE ReleaseLocal(newtop: env);
 (* Release all frames above newtop on the local stack. *) 
    VAR
       e: env; 
       cl: clptr;
 BEGIN
    e := newtop;
    WHILE e < envtop DO
       e := e + 1;
       cl := display[e].Fclause; 
       IF cl <> NIL THEN
          cl^.refcount := cl^.refcount - 1;
          IF cl^.denied AND (cl^.refcount = 0) THEN 
             WriteString("DeleteClause.(1)...");
             (* DeleteClause(cl) *)
          END 
       END 
    END;
    IF envtop > newtop THEN
       loctop := display[newtop + 1].Fbase END;
    envtop := newtop
 END ReleaseLocal;
  
  
 PROCEDURE DisposeEnv; 
 (* Recover the top frame on the local stack. *)
 BEGIN
    ReleaseLocal(envtop - 1)
 END DisposeEnv;
  
 PROCEDURE Cut(e: env); 
 (*
    Cut environment e.  On entry, all goals on the local stack above e 
   must be descENDed from e.  The newest ancestor of e (including e
   itself) which is not a clause for (_, _), (_; _) or call(_) is made
   determinate.  Local stack space above e is reclaimed.
*)
   VAR 
       envp: env;
       cl: clptr;
BEGIN
   envp := e; 
   cl := display[envp].Fclause;
   WHILE (display[envp].Fchoice > 0) AND ((cl = andG) OR
         (cl = or1G) OR (cl = or2G) OR (cl = NIL)) DO
      envp := display[envp].Fenv;
      cl := display[envp].Fclause
   END;
   WITH display[envp] DO
      choicepoint := Fchoice;
      TrimTrail(Ftrail)
   END;
   ReleaseLocal(e) 
END Cut; 
  
  
PROCEDURE KillStacks(newtop: env);
(*
   Dispose of all environments after newtop, together with all
   associated global storage, and undo critical variable bindings.
*)
   VAR oldglotop: CARDINAL;
BEGIN
   oldglotop := glotop; 
   IF envtop > newtop THEN
      WITH display[newtop + 1] DO
         Untrail(Ftrail);
         choicepoint := Fchoice;
         glotop := Fglotop 
      END
   END;
   ReleaseLocal(newtop);
(*   ReleaseChain(oldglotop, glotop);
   glosize := glotop^.scope*)
END KillStacks;
  
  
PROCEDURE EnvRef(offset: INTEGER; e: env): term;
(*
   Access a local variable in environment e.  The body of this function
   is inserted directly in the function Deref [5].
*)
BEGIN
   RETURN locstack[VAL(INTEGER,display[e].Fbase) + offset] 
END EnvRef;
  
  
PROCEDURE ChangeClause(e: env; newcl: clptr);
(* Change e to have newcl as its Fclause entry: this is used in 
   some evaluable predicates. *)
   VAR oldcl: clptr;
BEGIN
   oldcl := display[e].Fclause;
   IF oldcl <> NIL THEN
      oldcl^.refcount := oldcl^.refcount - 1;
      IF oldcl^.denied AND (oldcl^.refcount = 0) THEN
         WriteString("DeleteClause.(2)...");
        (*  DeleteClause(oldcl) *)
      END
   END;
   IF newcl <> NIL THEN
      newcl^.refcount := newcl^.refcount + 1 END;
   display[e].Fclause := newcl
END ChangeClause;
  
  
PROCEDURE InitStacks;
(* Set up the stack mechanism. *)
   VAR 
      n: INTEGER;
      v: term;
BEGIN
   envtop := 0;
   loctop := 0;
   FOR n := 1 TO LocSize DO
      ALLOCATE(v,TSIZE(node));
      WITH v^ DO
         brother := NIL;
         chain := NIL;
         field := localF;
         scope := n
      END;
      locstack[n] := v
   END;
   glotop := 0;
   InitGloStack;
END InitStacks;
    
PROCEDURE InitTrail;
(* Set up the trail with a dummy list head. *)
BEGIN
  trailtop:=0
END InitTrail;

BEGIN
  InitTrail;
  InitStacks
END Stacks.
