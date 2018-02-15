
IMPLEMENTATION MODULE BuiltIn;

(* FROM SYSTEM IMPORT VAL, SHORT; *)

FROM InOut  IMPORT WriteLn, WriteString, WriteInt, WriteCard, Write;

FROM AtomTable    IMPORT atom, term, nodetag, clptr, evalpred, MaxEvalArity, MaxPrec, 
                         optype, predtype, StartAtom, AtomChar, LookUp, astring,
                         callA, consA, plusA, minusA, timesA, divideA, modA, negA, nilA,
                         fxA, fyA, xfA, yfA, xfxA, xfyA, yfxA, questionA;
FROM Stacks       IMPORT env, envtop, choicepoint, GetEnv, NewEnv, DisposeEnv, EnvRef, 
                         KillStacks, display, ChangeClause, Cut, TrailVar, locstack;
FROM Terms        IMPORT Deref, IsFunc, MakeFunc, MakeBros, MakeVar, 
                         ListRep, IsAtom, Bind, GetBody;
FROM WriteOut     IMPORT WriteOut, WriteAtom, Trace, tracemessage;
FROM ErrorHandler IMPORT error, Report, Abort, Crash, InternalError;
FROM PFiles       IMPORT StandFD, GetChar, PutChar, current, inout, SelectFile, 
                         DropFile, LineEnded, FileEnded, PutLn, CurrFile, CharClass, class;
FROM Database     IMPORT FindClause, AddClause;
FROM Parser       IMPORT ReadIn, ordminchar, ordmaxchar;
FROM Unify        IMPORT UnifyResult, Unify;
FROM OpSystem     IMPORT Time, flag, debugging, tracing, MaxDepth, showterm;

FROM Compiler IMPORT ClCompiler;


TYPE tagset = SET OF nodetag;


VAR  inferences: LONGCARD;


PROCEDURE IntResult(x: term; e: env; i: INTEGER): UnifyResult;
(*
   Specialized unification algorithm for returning INTEGER results.
   IntResult(x, e, i) is equivalent to Unify(x, MakeInt(i), e, 0, G)
   but avoids allocating a global node. 
*)
  VAR y: term;
BEGIN
  y := Deref(x, e);
  WITH y^.info DO 
     CASE tag OF
        funcT:   RETURN FAIL
        
    |   intT:    IF ival = i THEN
                    RETURN OK
                 ELSE
                    RETURN FAIL
                 END
                 
    |   varT:    tag := intT;
                 ival := i;
                 TrailVar(y);
                 RETURN OK
         
    |   anonT:   RETURN OK
     END
  END
END IntResult;
  
PROCEDURE CallEvalPred(call: term; callenv: env; routine: evalpred;
                                        arity: INTEGER): UnifyResult; 
(* Call an evaluable predicate. *)
  
  VAR
     result: UnifyResult;
     argval: ARRAY [1 .. MaxEvalArity] OF term;
  
PROCEDURE ShowContext;
(* Output context information after an error. *)
VAR
     goal, parent: term;
     goalenv, parentenv: env;
     cl: clptr;
BEGIN
   IF callenv=0 THEN RETURN END;
   goal := call; goalenv := callenv;
   GetEnv(goalenv, parent, parentenv, cl);
   WHILE (parentenv > 0) AND parent^.info.name^.sys AND
         NOT IsFunc(parent, callA, 1) DO 
      goal := parent; goalenv := parentenv;
      GetEnv(goalenv, parent, parentenv, cl)
   END;
   IF parentenv > 0 THEN
      WriteString('- in call: ');
      WriteOut(StandFD, goal, goalenv, 2);
      WriteString('.');
      WriteLn;
      IF NOT parent^.info.name^.sys THEN 
         WriteString('- called from ');
         WriteAtom(StandFD, parent^.info.name, FALSE);
         WriteString('(');
         WriteInt(parent^.info.arity,1);
         WriteString(').');
         WriteLn
      END
   END
END ShowContext;
  
   PROCEDURE PredError(e: error);
   (* Report an error in a built-in predicate. *)
   BEGIN
      Report(e);
      ShowContext;
      result:=ERROR
   END PredError;
  
   PROCEDURE GetArgs(): UnifyResult;
   (* Fill in argval with the dereferenced arguments *)
      VAR
         i: INTEGER; 
         x, a: term;
   BEGIN
      x := Deref(call, callenv); 
      IF arity <> x^.info.arity THEN PredError(arityE); RETURN ERROR END; 
      a := x^.info.son;
      FOR i := 1 TO arity DO 
         argval[i] := Deref(a, callenv);
         a := a^.brother
      END;
      RETURN OK
   END GetArgs; 
  
   PROCEDURE Evaluate(x: term; depth: INTEGER): INTEGER;
   (* Evaluate x as an arithmetic expression. *)
      VAR
         y: term;
         a, b: INTEGER;
   BEGIN
      IF depth > MaxDepth THEN PredError(depthE); RETURN 0 END; 
      y := Deref(x, callenv);
      WITH y^.info DO
         CASE tag OF 
            funcT: 
          IF arity = 2 THEN
             IF name = consA THEN
                RETURN Evaluate(son, depth + 1)
             ELSE
                a := Evaluate(son, depth + 1);
                b := Evaluate(son^.brother, depth + 1);
                  IF    name = plusA  THEN RETURN a + b
                  ELSIF name = minusA THEN RETURN a - b
                  ELSIF name = timesA THEN RETURN a * b
                  ELSIF name = divideA THEN
                     IF b = 0 THEN PredError(divideE); RETURN 0 END;
                     RETURN a DIV b
                  
                  ELSIF name = modA THEN 
                     IF b = 0 THEN PredError(divideE); RETURN 0 END;
                     RETURN a MOD b
                  
                  ELSE
                     PredError(badexpE);
                     RETURN 0
                  END
               END
            ELSIF (name = negA) AND (arity = 1) THEN 
               RETURN - Evaluate(son, depth + 1)
            ELSE
               PredError(badexpE); RETURN 0
            END;
      |   intT: 
            RETURN ival;
      |   varT, anonT: 
             PredError(varexpE); RETURN 0
      END
   END
END Evaluate; 
  
PROCEDURE DoCall;
(* Evaluable predicate 'call'. This code is tricky. *)
   VAR 
      x: term;
      e1: env;
      d: ProcessDescriptor;
BEGIN
   IF argval[1]^.info.tag <> funcT THEN PredError(argsE); RETURN END;
   NewEnv(e1, call, callenv, NIL, 1);
   x := EnvRef(1, e1); 
   Bind(x, argval[1], e1, callenv, 0);
   result := StartExecution(x,e1,d);
   IF e1 > choicepoint THEN DisposeEnv END
END DoCall;
  
PROCEDURE DoRead;
(* Hidden evaluable predicate '$read'= *)
   VAR x, v: term;
BEGIN
   IF NOT ReadIn(x, v) THEN
      result := FAIL
   ELSIF Unify(argval[1], x, callenv, 0, 0)#OK THEN
      result := FAIL
   ELSE
      result := Unify(argval[2], v, callenv, 0, 0)
   END
END DoRead;
  
PROCEDURE DoWrite;
(* Hidden evaluable predicate 'write'. *)
BEGIN
   IF argval[2]^.info.tag <> intT THEN InternalError(11); RETURN END;
   WriteOut(current[outZ], argval[1], callenv, argval[2]^.info.ival)
END DoWrite;

PROCEDURE DoGet0;
(* Evaluable predicate 'get0'. *)
   VAR ch: CHAR;
BEGIN
   GetChar(ch);
   result := IntResult(argval[1], callenv, ORD(ch))
END DoGet0;

PROCEDURE DoPut;
(* Evaluable predicate 'put'. *)
   VAR ch: INTEGER;
BEGIN
   ch := Evaluate(argval[1], 0);
   IF (ch < ordminchar) OR (ch > ordmaxchar) THEN PredError(badcharE); RETURN END;
   PutChar(current[outZ], CHR(ch))
END DoPut;

PROCEDURE DoOp;
(* Evaluable predicate '$op'. *)
   VAR
      p: INTEGER;
      a: atom;
      f: optype;
BEGIN
   IF (argval[1]^.info.tag <> intT) OR NOT IsAtom(argval[2]) OR
      NOT IsAtom(argval[3]) THEN PredError(argsE); RETURN END;
   p := argval[1]^.info.ival;
   a := argval[2]^.info.name;
   IF (p < 1) OR (p > MaxPrec) THEN PredError(argsE); RETURN END;
   IF    a = fxA  THEN f := fxO
   ELSIF a = fyA  THEN f := fyO
   ELSIF a = xfA  THEN f := xfO
   ELSIF a = yfA  THEN f := yfO
   ELSIF a = xfxA THEN f := xfxO
   ELSIF a = xfyA THEN f := xfyO
   ELSIF a = yfxA THEN f := yfxO
   ELSE PredError(argsE); RETURN
   END;
   WITH argval[3]^.info.name^ DO
      oclass := f;
      oprec := p
   END
END DoOp;
  
PROCEDURE DoName;
(* Evaluable predicate 'name'. *)

       VAR
         x, y: term;
         ch: INTEGER;
BEGIN
    IF IsAtom(argval[1]) THEN
       result :=
          Unify(argval[2], ListRep(argval[1]^.info.name^.ident),callenv, 0, 0)
    ELSIF argval[1]^.info.tag IN tagset{varT, anonT} THEN
       StartAtom;
       x := argval[2];
       WHILE IsFunc(x, consA, 2) DO
          y := Deref(x^.info.son, callenv);
          IF y^.info.tag <> intT THEN PredError(argsE); RETURN END;
          ch := y^.info.ival;
          IF (ch < ordminchar) OR (ch > ordmaxchar) THEN
             PredError(badcharE); RETURN END;
          AtomChar(CHR(ch)); 
          x := Deref(x^.info.son^.brother, callenv)
       END;
       IF NOT IsFunc(x, nilA, 0) THEN PredError(argsE); RETURN END;
       result := Unify(argval[1], MakeFunc(LookUp(), 0, NIL), callenv, 0, 0)
   
    ELSE
       PredError(argsE); RETURN
    END
 END DoName;
  
 PROCEDURE DoAddcl;
 (* Hidden evaluable predicate '$addcl'. *)
 BEGIN
    IF argval[2]^.info.tag <> intT THEN InternalError(13); RETURN END;
    IF NOT AddClause(argval[1], callenv,
                     argval[2]^.info.ival = 1) THEN
       ShowContext;
       Abort
    END
 END DoAddcl;
  
 PROCEDURE DoFunctor;
 (* Evaluable predicate 'functor'. *)
    VAR
       x: term;
       i, m: INTEGER;
 BEGIN
    CASE argval[1]^.info.tag OF
       funcT:
          IF IntResult(argval[3], callenv, argval[1]^.info.arity)#OK THEN 
             result := FAIL
          ELSE
             result := Unify(argval[2],
                MakeFunc(argval[1]^.info.name, 0, NIL), callenv, 0, 0)
          END;
   |   intT: 
          IF IntResult(argval[3], callenv, 0)#OK THEN
             result := FAIL
          ELSE
             result := IntResult(argval[2], callenv, argval[1]^.info.ival)
          END;
   |  varT, anonT:
            IF argval[3]^.info.tag <> intT THEN PredError(argsE); RETURN END; 
            m := argval[3]^.info.ival;
            IF IsAtom(argval[2]) AND (m >= 0) THEN
                x := NIL;
                FOR i := m TO 1 BY -1 DO
                  x := MakeBros(MakeVar(NIL), x)
                END;
                result :=
                  Unify(argval[1], MakeFunc(argval[2]^.info.name, m, x),
                     callenv, 0, 0)            
            ELSIF (argval[2]^.info.tag = intT) AND (m = 0) THEN
               result := IntResult(argval[1], callenv, argval[2]^.info.ival)
            ELSE
               PredError(argsE); RETURN
            END
   END
END DoFunctor;
  
PROCEDURE DoArg;
(* Evaluable predicate 'arg'. *)
   VAR
      x: term;
      i, n: INTEGER;
BEGIN
   IF (argval[1]^.info.tag <> intT) OR (argval[2]^.info.tag <> funcT) THEN
      result := FAIL
   ELSE
      n := argval[1]^.info.ival;
      IF (n < 1) OR (n > argval[2]^.info.arity) THEN
         result := FAIL
      ELSE 
         x := argval[2]^.info.son;
         FOR i := 2 TO n DO x := x^.brother END;
         result := Unify(argval[3], x, callenv, callenv, 0)
      END
   END
END DoArg;
  
(* The next four PROCEDUREs are used for 'clause', 'deny' and
   'listing'.  The code here is extremely tricky. *)

PROCEDURE DoClEnv;
(* Hidden evaluable predicate *$clenv'. *)
   VAR e1: env;
BEGIN
   IF argval[1]^.info.tag <> funcT THEN PredError(argsE); RETURN END;
   WITH argval[1]^.info.name^ DO 
      IF (flag[debugging] = 0) AND sys OR (pclass = evalP) THEN
         PredError(sysprocE); RETURN END;
      NewEnv(e1, NIL, 0, proc, 0)
   END;
   result := IntResult(argval[2], callenv, e1) 
END DoClEnv;
  
  
PROCEDURE DoGetCl;
(* Hidden evaluable predicate '$getcl'. *)
    VAR
      e1, e2: env;
      cl: clptr;
BEGIN
   IF (argval[1]^.info.tag <> funcT) OR
      (argval[2]^.info.tag <> intT) OR
      (argval[3]^.info.tag <> varT) OR
      (argval[4]^.info.tag <> varT) THEN InternalError(2); RETURN
   END;
   e1 := argval[2]^.info.ival;
   cl := display[e1].Fclause;
   IF FindClause(cl, argval[1], callenv) THEN
      WITH cl^ DO 
         NewEnv(e2, NIL, 0, NIL, nvars);
         Bind(argval[3], head, callenv, e2, 0);
         TrailVar(argval[3]);
         GetBody(argval[4], body, callenv, e2);
         TrailVar(argval[4]);
         DisposeEnv
      END;
      ChangeClause(e1, cl);
      result := OK
 
   ELSE
      result := FAIL
   END
END DoGetCl;
  
PROCEDURE DoAdvCl;
(* Hidden evaluable predicate '$advcl'. *)
   VAR 
      e1: env; 
      cl: clptr;
BEGIN
   IF argval[1]^.info.tag <> intT THEN InternalError(3); RETURN END;
   e1 := argval[1]^.info.ival;
   cl := display[e1].Fclause;
   IF cl = NIL THEN InternalError(4); RETURN END; 
   ChangeClause(e1, cl^.chain) 
END DoAdvCl;
  
PROCEDURE DoZap;
(* Hidden evaluable predicate '$zap'. *)
   VAR 
      e1: env; 
      cl: clptr;
BEGIN
   IF argval[1]^.info.tag <> intT THEN InternalError(5); RETURN END;
   e1 := argval[1]^.info.ival;
   cl := display[e1].Fclause;
   IF cl = NIL THEN InternalError(6); RETURN END; 
   cl^.denied := TRUE;
END DoZap;
  
  
PROCEDURE DoSelect(dir: inout);
(* Evaluable predicates 'see' and 'tell'. *)
   VAR e: error;
BEGIN
   IF NOT IsAtom(argval[1]) THEN PredError(argsE); RETURN END;
   IF NOT SelectFile(argval[1]^.info.name, dir, e) THEN
      PredError(e);
      RETURN
   END
END DoSelect;
  
PROCEDURE DoClose;
(* Evaluable predicate 'close'. *)
BEGIN
   IF NOT IsAtom(argval[1]) THEN PredError(argsE); RETURN END;
   DropFile(argval[1]^.info.name)
END DoClose;
  
PROCEDURE DoUcode;
(* Hidden evaluable predicate '$ucode'. *)
  
  PROCEDURE UserCode(arg: astring): UnifyResult;
  (* A place to put users' own code. *)
  VAR  a: LONGCARD;
  BEGIN
     a:=Time();
     RETURN FAIL
  END UserCode;

BEGIN
   IF NOT IsAtom(argval[1]) THEN PredError(argsE); RETURN END;
   result := UserCode(argval[1]^.info.name^.ident)
END DoUcode;

PROCEDURE DoTime;
(* This is the new predicate 'time'. *)
BEGIN
   result := IntResult(argval[1], callenv, SHORT(Time() MOD 0FFFFDH))
END DoTime;

PROCEDURE DoInferences;
BEGIN
   result := IntResult(argval[1], callenv, SHORT(inferences MOD 0FFFFDH))
END DoInferences;

PROCEDURE DoListing;
VAR  cl: clptr;

  PROCEDURE PrintTerm(t: term);
  BEGIN
    WITH t^.info DO
      CASE tag OF
        funcT: PrintHead(t);
      |  intT: WriteInt(ival,1);
      |  varT: WriteAtom(StandFD,val^.info.name,TRUE);
      | anonT: Write('_');
      | skelT: Write('_'); WriteInt(offset,1)
      END
    END
  END PrintTerm;

  PROCEDURE PrintHead(h: term);
  VAR  arg: term;
  BEGIN
    WriteAtom(StandFD,h^.info.name,TRUE);
    IF h^.info.arity>0 THEN
      Write('(');
      arg:=h^.info.son;
      WHILE arg#NIL DO
        PrintTerm(arg);
        arg:=arg^.brother;
        IF arg#NIL THEN Write(',') END
      END;
      Write(')')
    END
  END PrintHead;
  
  PROCEDURE PrintBody(b: term);
  BEGIN
    WHILE b#NIL DO
      WriteString("    ");
      PrintHead(b);
      b:=b^.brother;
      IF b#NIL THEN
         Write(',');
         WriteLn
      END
    END
  END PrintBody;
  
  PROCEDURE PrintClause(cl: clptr);
  BEGIN
    WriteLn;
    PrintHead(cl^.head);
    IF cl^.body#NIL THEN
      WriteString(" :-");
      WriteLn;
      PrintBody(cl^.body)
    END;
    Write('.');
    WriteLn
  END PrintClause;

BEGIN
   IF argval[1]^.info.tag#funcT THEN PredError(argsE); RETURN END;
   IF argval[1]^.info.name^.pclass#normP THEN
      WriteString("... sorry built-in predicate."); RETURN
   ELSE
      cl:=argval[1]^.info.name^.proc;
      WHILE cl#NIL DO
        PrintClause(cl);
        cl:=cl^.chain
      END
   END
END DoListing;

PROCEDURE DoConsult;
VAR 
    x, v: term;
    e: env;
    dummysuccess: BOOLEAN;
    dummyresult: UnifyResult;
    d: ProcessDescriptor;
    
    StartTime: LONGCARD;
    ElapsedTime: CARDINAL;
    
BEGIN
   StartTime:=Time();
   
   DoSelect(inZ);
   IF result#OK THEN RETURN END;
   
   WHILE NOT FileEnded() DO 
      choicepoint := 0;
      NewEnv(e, NIL, 0, NIL, 0);
      IF ReadIn(x, v) THEN 
         IF IsFunc(x, questionA, 1) THEN 
            dummyresult := StartExecution(x^.info.son,0,d) 
         ELSE
            dummysuccess := AddClause(x, 0, FALSE)
         END
      END;
      KillStacks(0)
   END;
   DoClose;
   
   ElapsedTime:=SHORT(Time()-StartTime);
   
   WriteLn;
   WriteString('file consulted in');
   WriteCard(ElapsedTime DIV 1000,4);
   Write('.');
   WriteCard((ElapsedTime MOD 1000) DIV 10,2);
   WriteString(' sec.');
   WriteLn
   
END DoConsult;

PROCEDURE DoReconsult;
BEGIN
END DoReconsult;

PROCEDURE DoCCompile;
BEGIN
   IF argval[1]^.info.tag#funcT THEN PredError(argsE); RETURN END;
   IF argval[1]^.info.name^.pclass#normP THEN
      WriteString("... sorry built-in predicate.")
   ELSE
      ClCompiler(argval[1]^.info.name^.proc)
   END
END DoCCompile;

PROCEDURE DoNonsp;
(* Hidden evaluable prodicate '$nonsp'. *)
BEGIN
   IF argval[1]^.info.tag <> intT THEN InternalError(12); RETURN END;
   IF CharClass[argval[1]^.info.ival] <> spaceC THEN
     result := OK
   ELSE
     result := FAIL
   END
END DoNonsp;
  
PROCEDURE DoFlag;
(* Hidden evaluable predicate *$flag'. *)
BEGIN
   IF argval[1]^.info.tag <> intT THEN InternalError(9); RETURN END;
   result :=
      IntResult(argval[2], callenv, flag[argval[1]^.info.ival])
END DoFlag;
  
PROCEDURE DoSetflg;
(* Hidden evaluable predicate '$setflg'. *)
BEGIN
   IF (argval[1]^.info.tag <> intT) OR 
      (argval[2]^.info.tag <> intT) THEN InternalError(10); RETURN END;
   flag[argval[1]^.info.ival] := argval[2]^.info.ival
END DoSetflg;

PROCEDURE BoolToResult(b: BOOLEAN): UnifyResult;
BEGIN
  IF b THEN
    RETURN OK
  ELSE
    RETURN FAIL
  END
END BoolToResult;
  
BEGIN (* CallEvalPred *)
   result := GetArgs();
   IF result#OK THEN RETURN result END;
   CASE routine OF
      cutR:     Cut(callenv);
   |  callR:    DoCall;
   |  readR:    DoRead;
   |  writeR:   DoWrite;
   |  get0R:    DoGet0;
   |  putR:     DoPut; 
   |  nlR:      PutLn(current[outZ]);
   |  eolnR:    result := BoolToResult(LineEnded());
   |  eofR:     result := BoolToResult(FileEnded());
   |  opR:      DoOp;
   |  abortR:   Abort;
   |  haltR:    Crash;
   |  flagR:    DoFlag;
   |  setflgR:  DoSetflg;
   |  atomR:    result := BoolToResult(IsAtom(argval[1]));
   |  integerR: result := BoolToResult(argval[1]^.info.tag = intT);
   |  varR:     result := BoolToResult(argval[1]^.info.tag IN tagset{varT, anonT});
   |  nameR:    DoName;
   |  isR:      result :=
                   IntResult(argval[1], callenv, Evaluate(argval[2], 0));
   |  ltR:      result :=
                   BoolToResult(Evaluate(argval[1], 0) < Evaluate(argval[2], 0));
   |  addclR:   DoAddcl;
   |  functorR: DoFunctor;
   |  argR:     DoArg; 
   |  clenvR:   DoClEnv;
   |  getclR:   DoGetCl;
   |  advclR:   DoAdvCl;
   |  zapR:     DoZap; 
   |  seeR:     DoSelect(inZ);
   |  seeingR:  result := 
                   Unify(MakeFunc(CurrFile(inZ), 0, NIL),
                      argval[1], 0, callenv, 0);
   |  tellR:    DoSelect(outZ);
   |  tellingR: result :=
                   Unify(MakeFunc(CurrFile(outZ), 0, NIL),
                      argval[1], 0, callenv, 0);
   |  closeR:   DoClose;
   |  ucodeR:   DoUcode;
   
   |  timeR:        DoTime;
   |  inferencesR:
                    DoInferences;
   |  showvarR:     showterm:=FALSE;
   |  showtermR:    showterm:=TRUE;
   |  listingR:     DoListing;
   |  consultR:     DoConsult;
   |  reconsultR:   DoReconsult;
   |  ccompileR:    DoCCompile;
   |  nonspR:       DoNonsp
   END;
   RETURN result
END CallEvalPred;

(* Execute a goal. *)
PROCEDURE StartExecution(goalp: term; goalenv: env;
                         VAR d: ProcessDescriptor): UnifyResult;
BEGIN
  WITH d DO
    callp   := Deref(goalp, goalenv);
    callenv := goalenv;
    startenv:= goalenv;
    baseenv := envtop;
    state   := callQ;
  END;
  RETURN Execute(d)
END StartExecution;

PROCEDURE Execute(VAR d: ProcessDescriptor): UnifyResult;     
BEGIN
  
  WITH d DO
  
   LOOP
  
     CASE state OF 
        callQ: 
           (* 'callp' holds a goal and 'callenv' its environment. *)
           
              IF flag[tracing] = 1 THEN Trace(goalD, callp, callenv) END;
              WITH callp^.info.name^ DO
                 CASE pclass OF
                    normP: 
                          clausep := proc;
                          state := procQ
                    
                 |  evalP: 
                       CASE CallEvalPred(callp, callenv, routine, arity) OF
                            OK: state := returnQ
                       |  FAIL: state := failQ
                       | ERROR: state := failQ; 
                                RETURN ERROR
                       END
                 END
              END;
              
              INC(inferences)
          
  
     |  procQ: 
           (* 'clausep' points to a chain of untried clauses
              for the goal in 'callp'. *)
           IF FindClause(clausep, callp, callenv) THEN
              WITH clausep^ DO
                 NewEnv(envp, callp, callenv, clausep, nvars);
                 IF chain <> NIL THEN choicepoint := envp END;
                 IF Unify(head, callp, envp, callenv, 0)=OK THEN 
                    callp := body;
                    callenv := envp;
                    state := bodyQ
                 
                 ELSE
                    state := failQ
                 END
              END
           ELSE 
              state := failQ
           END
  
    | bodyQ: 
         (* 'callp' points to a chain of uncalled goals in the body
            of some clause, and 'callenv' to the environment for
            the clause. *)
         IF callp = NIL THEN
            envp := callenv;
            GetEnv(envp, callp, callenv, clausep);
            IF envp > choicepoint THEN DisposeEnv END; 
            IF flag[tracing] = 1 THEN Trace(provedD, callp, callenv) END;
            state := returnQ
         
         ELSE
            state := callQ
         END
  
    | returnQ: 
         (* The subgoal in 'callp' has just succeeded. *) 
         IF callenv > startenv THEN 
            callp := callp^.brother;
            state := bodyQ
                    
         ELSE 
            RETURN OK
         END;
  
    | failQ: 
         (* Failure has occurred.  'choicepoint' is the newest
            environment with a nondeterminate choice. *)
         IF choicepoint > baseenv THEN 
            GetEnv(choicepoint, callp, callenv, clausep);
            KillStacks(choicepoint - 1); 
            clausep := clausep^.chain; 
            state := procQ
         
         ELSE 
            RETURN FAIL
         END
      END
      
   END (* of loop *)
  END (* of with *)
  
END Execute;

BEGIN
  inferences:=0
END BuiltIn.
