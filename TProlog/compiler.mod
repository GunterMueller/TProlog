
IMPLEMENTATION MODULE Compiler;

FROM AtomTable IMPORT clptr, term, nodetag;
FROM InOut     IMPORT WriteLn, WriteString, WriteInt, Write;
FROM WriteOut  IMPORT WriteAtom;
FROM PFiles    IMPORT StandFD;

FROM WAM IMPORT WAMInstruction;

CONST    
      MaxVars = 16;  (* Maximum of Variables in a clauses head *)
      MaxEnv  = 16;  (* Maximum of Variables in an Environment *)
      MaxArg  = 16;  (* Maximum of Argumentregisters *)
      
TYPE        
     VarIndex = [1..MaxVars];
     VarArray = ARRAY VarIndex OF BOOLEAN;
       
VAR  NextProcNumber, NextClauseNumber: CARDINAL;
     
     IsGlobalVar, IsVarInit: VarArray;


PROCEDURE InitVarArray(VAR v: VarArray; toset: BOOLEAN);
VAR  i: VarIndex;
BEGIN
  FOR i:=MIN(VarIndex) TO MAX(VarIndex) DO
    v[i]:=toset
  END
END InitVarArray;

PROCEDURE Tab(n: CARDINAL);
VAR i: CARDINAL;
CONST  TAB = 11C;
BEGIN
  FOR i:=1 TO n DO Write(TAB) END
END Tab;

PROCEDURE PrintNextClauseLabel;
BEGIN
   Write('L');
   WriteInt(NextProcNumber,1);
   Write('C');
   WriteInt(NextClauseNumber,1)
END PrintNextClauseLabel;

PROCEDURE EmitNextClauseLabel;
BEGIN
  PrintNextClauseLabel
END EmitNextClauseLabel;
     
PROCEDURE PrintWAMSource(w: WAMInstruction; label: BOOLEAN);
BEGIN

   IF label THEN
     PrintNextClauseLabel;
     Write(':');
     Tab(1);
     INC(NextClauseNumber)
   ELSE
     Tab(1)
   END;
   
   CASE w OF
   
           TryMeElse: WriteString("try_me_else");        Tab(2)                      
   |     RetryMeElse: WriteString("retry_me_else");      Tab(2)                     
   | TrustMeElseFail: WriteString("trust_me_else_fail")  
   |            Call: WriteString("call");               Tab(3)
   |         Execute: WriteString("execute");            Tab(3)
   |         Proceed: WriteString("proceed")
   |        Allocate: WriteString("allocate");           Tab(2)
   |      Deallocate: WriteString("deallocate")
   |         GetVarX: WriteString("get_var_x");          Tab(2)
   |         GetVarY: WriteString("get_var_y");          Tab(2)
   |       GetValueX: WriteString("get_value_x");        Tab(2)
   |       GetValueY: WriteString("get_value_y");        Tab(2)
   |         GetStru: WriteString("get_stru");           Tab(2)
   |         GetCons: WriteString("get_cons");           Tab(2)
   |       UnifyVarX: WriteString("unify_var_x");        Tab(2)
   |       UnifyVarY: WriteString("unify_var_y");        Tab(2)
   |     UnifyValueX: WriteString("unify_value_x");      Tab(2)
   |     UnifyValueY: WriteString("unify_value_y");      Tab(2)
   |       UnifyCons: WriteString("unify_cons");         Tab(2)
   |         PutVarX: WriteString("put_var_x");          Tab(2)
   |         PutVarY: WriteString("put_var_y");          Tab(2)
   |       PutValueX: WriteString("put_value_x");        Tab(2)
   |       PutValueY: WriteString("put_value_y");        Tab(2)
   |         PutStru: WriteString("put_stru");           Tab(2)
   |         PutCons: WriteString("put_cons");           Tab(2)
   
   END
END PrintWAMSource;

PROCEDURE EmitWAMInstruction(w: WAMInstruction);
BEGIN
  WriteLn;
  PrintWAMSource(w,FALSE);
END EmitWAMInstruction;

PROCEDURE EmitWAMInstructionLabeled(w: WAMInstruction);
BEGIN
  WriteLn;
  WriteLn;
  PrintWAMSource(w,TRUE);
END EmitWAMInstructionLabeled;

PROCEDURE EmitFunctorName(h: term);
BEGIN
  WriteAtom(StandFD,h^.info.name,TRUE);
  Write('/');
  WriteInt(h^.info.arity,1);
END EmitFunctorName;

PROCEDURE EmitProcedureHead(h: term);
BEGIN
  WriteString("procedure ");
  EmitFunctorName(h);
END EmitProcedureHead;

PROCEDURE EmitNumber(n: CARDINAL);
BEGIN
  WriteInt(n,1)
END EmitNumber;

PROCEDURE EmitNumReg(n: INTEGER; reg: CARDINAL);
BEGIN
  WriteInt(n,1);
  Write(',');
  Write('a');
  WriteInt(reg,1)
END EmitNumReg;

PROCEDURE EmitFunctorReg(f: term; reg: CARDINAL);
BEGIN
  EmitFunctorName(f);
  Write(',');
  Write('a');
  WriteInt(reg,1)
END EmitFunctorReg;

PROCEDURE EmitReg(name: CHAR; reg: CARDINAL);
BEGIN
  Write(name); WriteInt(reg,1);
END EmitReg;

PROCEDURE EmitXReg(reg: CARDINAL);
BEGIN
  EmitReg('x',reg)
END EmitXReg;

PROCEDURE EmitYReg(reg: CARDINAL);
BEGIN
  EmitReg('y',reg)
END EmitYReg;

PROCEDURE Emit2Regs(first: CHAR; reg1,reg2: CARDINAL);
BEGIN
  Write(first); WriteInt(reg1,1);
  Write(',');
  Write('a'); WriteInt(reg2,1)
END Emit2Regs;

PROCEDURE EmitXAReg(xreg,areg: CARDINAL);
BEGIN
  Emit2Regs('x',xreg,areg)
END EmitXAReg;

PROCEDURE EmitYAReg(yreg,areg: CARDINAL);
BEGIN
  Emit2Regs('y',yreg,areg)
END EmitYAReg;

PROCEDURE EnvironmentNeeded(cl: clptr): BOOLEAN;

  PROCEDURE NumberOfSubgoals(cl: clptr): CARDINAL;
  VAR  bodyptr: term;
       subgoalnumber: CARDINAL;
  BEGIN
    subgoalnumber:=0;
    bodyptr:=cl^.body;
    WHILE bodyptr#NIL DO
      bodyptr:=bodyptr^.brother;
      INC(subgoalnumber)
    END;
    RETURN subgoalnumber
  END NumberOfSubgoals;

BEGIN
  RETURN NumberOfSubgoals(cl)>1
END EnvironmentNeeded;

PROCEDURE LookForGlobalVariables(cl: clptr; VAR glo: VarArray);

  PROCEDURE LookForVarInBody(varname: CARDINAL; startofbody: term);
  VAR  subgoal: term;
  
    PROCEDURE IsVarInTerm(var: CARDINAL; arg: term): BOOLEAN;
    VAR  result: BOOLEAN;
    BEGIN
      result:=FALSE;
      WHILE (arg#NIL) AND (NOT result) DO   
        WITH arg^.info DO
          CASE tag OF      
          |  funcT: result:=IsVarInTerm(var,son)
          |  skelT: result:=(var=CARDINAL(offset))
      
          |  ELSE ; (* do nothing *)
          END
        END;     
        arg:=arg^.brother
      END;
      RETURN result
    END IsVarInTerm;
  
  BEGIN
    IF NOT glo[varname] THEN    (* already looked for it ? *)
    
      subgoal:=startofbody;
      IF subgoal=NIL THEN RETURN END;   (* no subgoal => no global vars ! *)
      subgoal:=subgoal^.brother;      (* skip first subgoal *)
      
      WHILE subgoal#NIL DO
      
        IF IsVarInTerm(varname,subgoal^.info.son) THEN
          glo[varname]:=TRUE
        END;
      
        subgoal:=subgoal^.brother
        
      END
    
    END
  END LookForVarInBody;

  PROCEDURE GlobalsInHead(arg: term; startofbody: term); 
  BEGIN
    WHILE arg#NIL DO
    
      WITH arg^.info DO
        CASE tag OF
      
        |  funcT: GlobalsInHead(son,startofbody)
        |  skelT: LookForVarInBody(offset,startofbody)
        
        |  ELSE ; (* do nothing *)
        END
      END;
      
      arg:=arg^.brother
    END
  END GlobalsInHead;
  
  PROCEDURE GlobalsInBody(bodyptr: term);
  VAR  subgoal: term;
  BEGIN
    subgoal:=bodyptr;
    WHILE subgoal#NIL DO                (* for each subgoal *)
      GlobalsInHead(subgoal^.info.son,subgoal);
      subgoal:=subgoal^.brother
    END
  END GlobalsInBody;

BEGIN
  GlobalsInHead(cl^.head^.info.son,cl^.body);
  GlobalsInBody(cl^.body)
END LookForGlobalVariables;

PROCEDURE TestPrintVarArray(VAR v: VarArray);
VAR  i: VarIndex;
BEGIN
  WriteLn; Tab(1);
  WriteString("; permanent variables:");
  FOR i:=MIN(VarIndex) TO MAX(VarIndex) DO
    IF v[i] THEN
      WriteInt(i,1); Write(',')
    END
  END;
  WriteLn
END TestPrintVarArray;

PROCEDURE NumberOfVars(v: VarArray): CARDINAL;
VAR  i: VarIndex;
     s: CARDINAL;
BEGIN
  s:=0;
  FOR i:=MIN(VarIndex) TO MAX(VarIndex) DO
    IF v[i] THEN INC(s) END
  END;
  RETURN s
END NumberOfVars;

PROCEDURE ClCompiler(cl: clptr);

TYPE EnvironmentIndex = [1..MaxEnv];
     ArgumentIndex    = [1..MaxArg];

VAR  EnvironmentAllocationTable: ARRAY VarIndex OF EnvironmentIndex;
     AllocationPointer: [0..MaxEnv];
          
     ArgumentAllocationTable: ARRAY VarIndex OF ArgumentIndex;
     LastArgument: [0..MaxArg];
     
     
  PROCEDURE AllocateInEnvironment(variable: VarIndex): EnvironmentIndex;
  BEGIN
    INC(AllocationPointer);
    EnvironmentAllocationTable[variable]:=AllocationPointer;
    RETURN AllocationPointer
  END AllocateInEnvironment;
  
  PROCEDURE AllocateInArgumentReg(variable: VarIndex): ArgumentIndex;
  BEGIN
    INC(LastArgument);
    ArgumentAllocationTable[variable]:=LastArgument;
    RETURN LastArgument
  END AllocateInArgumentReg;
  
  PROCEDURE AllocatedYNumber(variable: VarIndex): EnvironmentIndex;
  BEGIN
    RETURN EnvironmentAllocationTable[variable]
  END AllocatedYNumber;
  
  PROCEDURE OccuredInHead(variable: VarIndex): ArgumentIndex;
  BEGIN
    RETURN ArgumentAllocationTable[variable]
  END OccuredInHead;
  
  PROCEDURE CompileHeadVariable(varnum: VarIndex; areg: ArgumentIndex);
  BEGIN
    IF IsVarInit[varnum] THEN
      IF IsGlobalVar[varnum] THEN
        EmitWAMInstruction(GetValueY);
        EmitYAReg(AllocatedYNumber(varnum),areg)
      ELSE
        EmitWAMInstruction(GetValueX);
        EmitXAReg(OccuredInHead(varnum),areg)
      END
    ELSE
      IF IsGlobalVar[varnum] THEN
        EmitWAMInstruction(GetVarY);
        EmitYAReg(AllocateInEnvironment(varnum),areg)
      ELSE
        ArgumentAllocationTable[varnum]:=areg
      END;
      IsVarInit[varnum]:=TRUE
    END
  END CompileHeadVariable;
  
  PROCEDURE CompileVarInStructure(varnum: VarIndex);
  BEGIN
    IF IsVarInit[varnum] THEN
      IF IsGlobalVar[varnum] THEN
        EmitWAMInstruction(UnifyValueY);
        EmitYReg(AllocatedYNumber(varnum))
      ELSE
        EmitWAMInstruction(UnifyValueX);
        EmitXReg(OccuredInHead(varnum))
      END
    ELSE
      IF IsGlobalVar[varnum] THEN
        EmitWAMInstruction(UnifyVarY);
        EmitYReg(AllocateInEnvironment(varnum))
      ELSE
        EmitWAMInstruction(UnifyVarX);
        EmitXReg(AllocateInArgumentReg(varnum))
      END;
      IsVarInit[varnum]:=TRUE
    END
  END CompileVarInStructure;

  PROCEDURE CompileSubgoalVariable(varnum: VarIndex; areg: ArgumentIndex);
  BEGIN
    IF IsVarInit[varnum] THEN
      IF IsGlobalVar[varnum] THEN
        EmitWAMInstruction(PutValueY);
        EmitYAReg(AllocatedYNumber(varnum),areg)
      ELSE
        IF OccuredInHead(varnum)#areg THEN       (* already in register ? *)
          EmitWAMInstruction(PutValueX);
          EmitXAReg(OccuredInHead(varnum),areg)
        END
      END
    ELSE
      IF IsGlobalVar[varnum] THEN
        EmitWAMInstruction(PutVarY);
        EmitYAReg(AllocateInEnvironment(varnum),areg)
      ELSE
        EmitWAMInstruction(PutVarX);
        EmitXAReg(areg,areg);
        ArgumentAllocationTable[varnum]:=areg
      END;
      IsVarInit[varnum]:=TRUE
    END
  END CompileSubgoalVariable;
    
  PROCEDURE CompileHeadStructure(s: term; areg: ArgumentIndex);
  VAR  arg: term;
  BEGIN
    IF s^.info.arity=0 THEN
      EmitWAMInstruction(GetCons);
      EmitFunctorReg(s,areg)
    ELSE
      EmitWAMInstruction(GetStru);
      EmitFunctorReg(s,areg);
      arg:=s^.info.son;
      WHILE arg#NIL DO
        WITH arg^.info DO
          CASE tag OF
            funcT: CompileHeadStructure(arg,areg)
          |  intT: EmitWAMInstruction(UnifyCons);
                   EmitNumber(ival)
          |  varT: ;
          | anonT: EmitWAMInstruction(UnifyVarX);          (* later: unify_void *)
                   EmitXReg(AllocateInArgumentReg(MaxVars))
                 
          | skelT: CompileVarInStructure(offset)
          END
        END;
        arg:=arg^.brother
      END
    END
  END CompileHeadStructure;

  PROCEDURE CompileSubgoalStructure(s: term; areg: ArgumentIndex);
  VAR  arg: term;
  BEGIN
    IF s^.info.arity=0 THEN
      EmitWAMInstruction(PutCons);
      EmitFunctorReg(s,areg)
    ELSE
      EmitWAMInstruction(PutStru);
      EmitFunctorReg(s,areg);
      arg:=s^.info.son;
      WHILE arg#NIL DO
        WITH arg^.info DO
          CASE tag OF
            funcT: CompileSubgoalStructure(arg,areg)
          |  intT: EmitWAMInstruction(UnifyCons);
                   EmitNumber(ival)
          |  varT: ;
          | anonT: EmitWAMInstruction(UnifyVarX);          (* later: unify_void *)
                   EmitXReg(AllocateInArgumentReg(MaxVars))
          | skelT: CompileVarInStructure(offset)
          END
        END;
        arg:=arg^.brother
      END
    END
  END CompileSubgoalStructure;

  PROCEDURE CompileHeadArgument(t: term; areg: ArgumentIndex);
  BEGIN
    WITH t^.info DO
      CASE tag OF
        funcT: CompileHeadStructure(t,areg)
      |  intT: EmitWAMInstruction(GetCons);
               EmitNumReg(ival,areg)
      |  varT: ;
      | anonT: ;
      | skelT: CompileHeadVariable(offset,areg)
      END
    END
  END CompileHeadArgument;

  PROCEDURE CompileHead(h: term);
  VAR  arg: term;
       reg: ArgumentIndex;
  BEGIN
    IF h^.info.arity>0 THEN
      LastArgument:=h^.info.arity;      (* for allocation of more ARegs *)
      arg:=h^.info.son;
      reg:=MIN(ArgumentIndex);
      WHILE arg#NIL DO
        CompileHeadArgument(arg,reg);
        arg:=arg^.brother;
        INC(reg)
      END
    END
  END CompileHead;

  PROCEDURE CompileSubgoalArgument(t: term; areg: ArgumentIndex);
  BEGIN
    WITH t^.info DO
      CASE tag OF
        funcT: CompileSubgoalStructure(t,areg)
      |  intT: EmitWAMInstruction(PutCons);
               EmitNumReg(ival,areg)
      |  varT: ;
      | anonT: ;
      | skelT: CompileSubgoalVariable(offset,areg)
      END
    END
  END CompileSubgoalArgument;

  PROCEDURE CompileSubgoal(h: term);
  VAR  arg: term;
       reg: ArgumentIndex;
  BEGIN
    IF h^.info.arity>0 THEN
      arg:=h^.info.son;
      reg:=MIN(ArgumentIndex);
      WHILE arg#NIL DO
        CompileSubgoalArgument(arg,reg);
        arg:=arg^.brother;
        INC(reg)
      END
    END
  END CompileSubgoal;
  
  PROCEDURE CompileBody(b: term; NeedsEnv: BOOLEAN);
  BEGIN
    WHILE b#NIL DO
      CompileSubgoal(b);
      IF b^.brother#NIL THEN
        EmitWAMInstruction(Call)
      ELSE
        IF NeedsEnv THEN
          EmitWAMInstruction(Deallocate)
        END;
        EmitWAMInstruction(Execute)
      END;
      EmitFunctorName(b);   
      b:=b^.brother
    END
  END CompileBody;
  
  PROCEDURE CompileClause(cl: clptr);
  VAR  NeedEnv: BOOLEAN;
  BEGIN

    NeedEnv:=EnvironmentNeeded(cl);   
    InitVarArray(IsGlobalVar,FALSE);
    InitVarArray(IsVarInit,FALSE);
    IF NeedEnv THEN
      AllocationPointer:=0;
      LookForGlobalVariables(cl,IsGlobalVar);
      TestPrintVarArray(IsGlobalVar);
      EmitWAMInstruction(Allocate);
      EmitNumber(NumberOfVars(IsGlobalVar))
    END;
  
    CompileHead(cl^.head);
    
    IF cl^.body#NIL THEN
      CompileBody(cl^.body,NeedEnv);
    ELSE
      EmitWAMInstruction(Proceed)      (* no body; only a fact *)
    END
    
  END CompileClause;

BEGIN
   IF cl=NIL THEN RETURN END;      (* nothing to compile *)
   
   EmitProcedureHead(cl^.head);
   
   IF cl^.chain=NIL THEN           (* only one clause => no choicepoint to allocate *)
     CompileClause(cl)
   ELSE 
     EmitWAMInstruction(TryMeElse);              (* allocate choicepoint *)
     EmitNextClauseLabel;
     WHILE cl#NIL DO
       CompileClause(cl);
       cl:=cl^.chain;
       IF cl#NIL THEN
         IF cl^.chain=NIL THEN
           EmitWAMInstructionLabeled(TrustMeElseFail)  (* next clause is the last one *)
         ELSE
           EmitWAMInstructionLabeled(RetryMeElse);     (* there's more than one clause ahead *)
           EmitNextClauseLabel
         END
       END
     END
   END
END ClCompiler;


BEGIN
  NextProcNumber:=0;
  NextClauseNumber:=0
END Compiler.
