
IMPLEMENTATION MODULE Unify;

FROM ErrorHandler IMPORT ExecError, error;
FROM AtomTable    IMPORT term, nodetag;
FROM Stacks       IMPORT env, TrailVar;
FROM Terms        IMPORT Deref, BindVars, Bind;
FROM OpSystem     IMPORT MaxDepth;

VAR
  (* Table of actions for Unify. *)
   Uaction: ARRAY [funcT .. anonT],[funcT .. anonT] OF
      (funcU, intU, VTbindU, TVbindU, VVbindU, succeedU, failU);
  

(*PROCEDURE Unify(x1, x2: term; e1, e2: env; depth: INTEGER): UnifyResult; *)
PROCEDURE Unify(x1, x2: term; e1, e2: env; depth: INTEGER): BOOLEAN;
(* Unify x1 and x2.  Perform the matching substitution
   by binding variables. *)
  
VAR y1, y2: term;
  
   (*PROCEDURE UnifyArgs(s1, s2: term): UnifyResult; *)
   PROCEDURE UnifyArgs(s1, s2: term): BOOLEAN;
   (* Unify the arguments of a pair of functor nodes. *)
   VAR
       t1, t2: term; 
       ok: UnifyResult;
   BEGIN
      t1 := s1; t2 := s2;
      ok := OK;
      WHILE (t1#NIL) AND (ok=OK) DO
         ok := Unify(t1, t2, e1, e2, depth + 1);
         t1 := t1^.brother; t2 := t2^.brother
      END;
      RETURN ok
   END UnifyArgs;
  
  
BEGIN (* Unify *)
   
   IF depth > MaxDepth THEN ExecError(depthE); RETURN ERROR END;
   
   y1 := Deref(x1, e1);
   y2 := Deref(x2, e2);
   
   CASE Uaction[y1^.info.tag, y2^.info.tag] OF
   
      funcU: IF (y1^.info.name = y2^.info.name) AND
                (y1^.info.arity = y2^.info.arity) THEN
                RETURN UnifyArgs(y1^.info.son, y2^.info.son)
             ELSE
                RETURN FAIL
             END
             
   |  intU:  IF y1^.info.ival = y2^.info.ival THEN
                RETURN OK
             ELSE
                RETURN FAIL
             END
             
   |  VTbindU:  Bind(y1, y2, e1, e2, 0);
                TrailVar(y1);
                RETURN OK
        
   |  TVbindU:  Bind(y2, y1, e2, e1, 0);
                TrailVar(y2);
                RETURN OK
         
   |  VVbindU:  BindVars(y1, y2);
                RETURN OK
          
   |  succeedU: RETURN OK
   
   |  failU:    RETURN FAIL
   
  END
END Unify;
  
  
PROCEDURE InitUnify;
(* Set up table of actions for Unify. *)
BEGIN
   Uaction[funcT, funcT] := funcU;
   Uaction[intT,  intT ] := intU; 
   Uaction[varT,  funcT] := VTbindU;
   Uaction[varT,  intT ] := VTbindU;
   Uaction[funcT, varT ] := TVbindU;
   Uaction[intT,  varT ] := TVbindU;
   Uaction[varT,  varT ] := VVbindU;
   Uaction[anonT, funcT] := succeedU; 
   Uaction[anonT, intT ] := succeedU;
   Uaction[anonT, varT ] := succeedU;
   Uaction[funcT, anonT] := succeedU; 
   Uaction[intT,  anonT] := succeedU;
   Uaction[varT,  anonT] := succeedU;
   Uaction[anonT, anonT] := succeedU; 
   Uaction[funcT, intT ] := failU;
   Uaction[intT,  funcT] := failU
END InitUnify;
  
BEGIN
  InitUnify
END Unify.
