 
(*  ...
  
 [13]  TOP LEVEL
  
TopLevel calls the top level dialogue defined by the predicate '$top' in
the library file.  Before the top level is entered for the first
time, the library file itself is read and processed by the procedure
ReadLib.
  
... *)

MODULE Prolog;

(*FROM SYSTEM IMPORT SHORT;*)

(* IMPORT GEMError; *)

FROM InOut     IMPORT WriteLn, WriteString, WriteCard, Write, Read;

FROM OpSystem  IMPORT Time, flag, sysmode, breaklevel, showterm;

FROM AtomTable     IMPORT term, andG, or1G, or2G, nilA, 
                          questionA, failA, repeatA, semiA, commaA, consA;
FROM Stacks        IMPORT env, choicepoint, NewEnv, KillStacks;
FROM PFiles        IMPORT FileEnded, DropLib, SelectLib, ReleaseFiles, StandFD;
FROM Parser        IMPORT ReadIn;
FROM Terms         IMPORT IsFunc, Deref;
FROM BuiltIn       IMPORT Execute, StartExecution, ProcessDescriptor, InterpreterState;
FROM Database      IMPORT AddClause;
FROM WriteOut      IMPORT WriteAtom, WriteOut;
FROM Unify         IMPORT UnifyResult;

CONST

   ProgramName = 'Portable Prolog Release 2.1. (MODULA-2 Version)';
 
PROCEDURE ReadLib;
(* Read and process the library file. *)
   VAR 
      x, v: term;
      e: env;
      dummysuccess: BOOLEAN;
      dummyresult: UnifyResult;
      d: ProcessDescriptor;
      
      StartTime: LONGCARD;
      ElapsedTime: CARDINAL;
BEGIN
 (*  flag[sysmode] := 1;*)
   StartTime:=Time();
   SelectLib;
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
   DropLib;
   
   ElapsedTime:=SHORT(Time()-StartTime);
   
   WriteLn;
   WriteString('Startup file read in');
   WriteCard(ElapsedTime DIV 1000,4);
   Write('.');
   WriteCard((ElapsedTime MOD 1000) DIV 10,2);
   WriteString(' sec.');
   WriteLn
   
END ReadLib;
  
PROCEDURE Initialise; 
(* Initialise the Prolog system. *)
BEGIN
   ReadLib;
   failA^.sys := TRUE;
   repeatA^.proc^.chain := repeatA^.proc;
   andG := commaA^.proc;
   or1G := semiA^.proc^.chain^.chain;
   or2G := or1G^.chain
END Initialise;
  
  
PROCEDURE TopLevel;
(* top level interpreter. *)

CONST  ErrorMessage = "[execution aborted]";
VAR 
      x, v: term;
      e: env;
      d: ProcessDescriptor;
      success: UnifyResult;
      ch: CHAR;
   
   PROCEDURE ShowResult;
   VAR  z: term;
   BEGIN
     
     z:=Deref(v,e);    
     WriteLn;
   
     IF NOT IsFunc(z,nilA,0) THEN
     
       IF showterm THEN
           WriteOut(StandFD,x,e,0);
       ELSE
           WHILE IsFunc(z,consA,2) DO 
              WriteLn;
              WriteAtom(StandFD,z^.info.son^.info.name,TRUE);
              WriteString(" = ");
              WriteOut(StandFD,z^.info.son^.info.son,e,0);
              z := Deref(z^.info.son^.brother,e);
           END
       END
     END
     
   END ShowResult;
   
BEGIN
   flag[sysmode] := 0;
   flag[breaklevel] := 0;

   REPEAT 
   
     WriteLn;
     WriteString("?- ");
    
     IF ReadIn(x,v) THEN

       WriteLn;
       choicepoint := 0;
       NewEnv(e,NIL,0,NIL,0);
         
       CASE StartExecution(x,0,d) OF
       
         OK:  ShowResult;
         
              IF choicepoint>0 THEN
         
                 Read(ch);
                 success:=OK;
                 WHILE (ch=';') AND (success=OK) AND (choicepoint>0) DO
                    
                     d.state:=failQ;
                     success:=Execute(d);
               
                     CASE success OF
                     
                       OK:  ShowResult;
                            Read(ch)
                            
                     | FAIL: ;
                     
                     | ERROR: WriteString(ErrorMessage);
                     
                     END;
         
                 END (* of WHILE *); 
           
                 IF (ch=';') THEN  
                   WriteLn;
                   WriteString("no more solutions");
                   WriteLn;
                 END
             
               END (* of IF *);  
         
               WriteString("yes")
         
       | FAIL: WriteString("no")
               
       | ERROR: WriteString(ErrorMessage)
                
       END;
    
       WriteLn;
       KillStacks(0)
       
     END;    
   
   UNTIL FALSE;
   
END TopLevel;


BEGIN (* Prolog *)

   WriteLn;
   WriteString(ProgramName);
   WriteLn;
   Initialise;
   showterm:=FALSE;

   TopLevel;

   ReleaseFiles;
   WriteLn;
   WriteString('[Leaving Prolog]');
   WriteLn
   
END Prolog.
