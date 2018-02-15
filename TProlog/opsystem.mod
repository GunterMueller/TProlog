
IMPLEMENTATION MODULE OpSystem;

FROM SYSTEM IMPORT ADDRESS (*,VAL*);

FROM XBIOS     IMPORT SuperExec;
FROM Terminal  IMPORT Read, Write;

CONST SystemTimer = 04BAH; 

TYPE WordPointer = POINTER TO LONGCARD;
     ProcPointer = PROCEDURE();

VAR  TimerValue: LONGCARD;
     Ptr       : WordPointer;
     PPtr      : ProcPointer;

(* --------- Access to best resolution timer in the System (ATARI) ------------ *)

(*$S- Turn off Stack-Checking for Code in Supervisor mode *)
    
PROCEDURE GetTime;
BEGIN
  TimerValue := Ptr^
END GetTime;

PROCEDURE Time(): LONGCARD;
BEGIN

  Ptr:=WordPointer(SystemTimer);
  SuperExec(GetTime);
    
  RETURN TimerValue*5D
    
END Time;

(*$S= switch stack-checking back *)
  
(* ---------------------- end of time function -------------------------------- *)

PROCEDURE ReadOneTerminalLine(VAR Line: ARRAY OF CHAR);
CONST  EOL=  0C;
       BS = 10C;
       CR = 15C;
       DEL=177C;
       
VAR    i: CARDINAL;
       c: CHAR;
BEGIN
  i:=0;
  REPEAT
    Read(c);
    IF ((c=BS) OR (c=DEL)) AND (i>0) THEN
      Write(BS);
      Write(' '); 
      Write(BS);
      DEC(i)
    ELSIF (c#CR) AND (i<VAL(CARDINAL,HIGH(Line))) THEN
      Write(c);
      Line[i]:=c;
      INC(i)
    END
  UNTIL (c=CR) OR (i=VAL(CARDINAL,HIGH(Line)));
  Line[i]:=EOL
END ReadOneTerminalLine;
  
  
PROCEDURE InitFlags;
(* Zero the flag vector. *)
   VAR i: INTEGER;
BEGIN
   FOR i := 1 TO FlagSize DO flag[i] := 0 END
END InitFlags;


BEGIN
  InitFlags;
  showterm:=FALSE;
  TimerValue:=0
END OpSystem.
