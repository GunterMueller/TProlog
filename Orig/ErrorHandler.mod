

IMPLEMENTATION MODULE ErrorHandler;

FROM InOut IMPORT WriteString, WriteInt, WriteLn;

FROM GEMDOS IMPORT Term;

(* FROM Stacks  IMPORT KillStacks; *)
(* FROM PFiles  IMPORT ReleaseFiles; *)
FROM OpSystem   IMPORT flag,sysmode,debugging;

PROCEDURE Crash; 
(* Exit from the Prolog system. *)
BEGIN
(*   ReleaseFiles; *)
   WriteLn;
   WriteString("[Leaving Prolog]"); WriteLn;
   IF Term(0) THEN END
END Crash;
  
PROCEDURE Abort; 
(* Abort the current execution if any. *) 
BEGIN
(*   KillStacks(0); *)
   IF (flag[sysmode] = 1) THEN Crash END;
   WriteString('[Execution aborted]');
   WriteLn;
   HALT
END Abort;
  
  
PROCEDURE Report(e: error);
(* Output an error message. *) 
BEGIN
   IF (flag[sysmode] = 1) AND (flag[debugging] = 0) THEN
      WriteString('[Error during initialization]');
      WriteLn;
      Crash
   END;
   WriteString('Error: ');
   CASE e OF 
      arityE:      WriteString('wrong number of arguments.');
   |  argsE:       WriteString('unsuitable form of arguments.');
   |  assertE:     WriteString('asserting unsuitable term.');
   |  atomspaceE:  WriteString('out of atom space.'); 
   |  badcddE:     WriteString('probably malformed ",..".');
   |  badcharE:    WriteString('character value out of range.');
   |  badcommaE:   WriteString('comma in tail of list.');
   |  baddotE:     WriteString('closing bracket missing.'); 
   |  badexpE:     WriteString('malformed expression.');
   |  badketE:     WriteString('unmatched closing bracket.');
   |  badvbarE:    WriteString('"..." or "!" not in list tail.');
   |  commentE:    WriteString('unterminated comment.');
   |  depthE:      WriteString('nesting too deep: probably cyclic term.');
   |  divideE:     WriteString('dividing by zero.');
   |  eofE:        WriteString('unexpected end of file.');
   |  framespaceE: WriteString('out of frame space.');
   |  localspaceE: WriteString('out of local stack space');
   |  needopE:     WriteString('infix or postfix operator expected.'); 
   |  needquoteE:  WriteString('closing quote expected.');
   |  needrandE:   WriteString('operand or prefix operator exoected.');
   |  precE:       WriteString('cannot resolve operator precedence.');
   |  readstackE:  WriteString('input term too complicated.');
   |  sysprocE:    WriteString('accessing or modifying system procedures.');
   |  weirdchE:    WriteString('illegal character in input.');
   |  nvarsE:      WriteString('asserting term with too many variables.');
   |  iodirE:      WriteString('opening file for both input and output.');
   |  filespaceE:  WriteString('too many files open at once.');
   |  nofileE:     WriteString("can't open file.");
   |  varexpE:     WriteString('uninstantiated variable in expression.')
  END;
  WriteLn
END Report;
  
  
PROCEDURE ExecError(e: error);
(* Report an error in execution. *)
BEGIN
   Report(e); 
   Abort
END ExecError;
  
  
PROCEDURE InternalError(n: INTEGER);
(* Report an internal error and crash. *) 
BEGIN
   WriteString('[Internal system error ');
   WriteInt(n,1);
   WriteString(']');
   WriteLn;
   Crash
END InternalError;
  
BEGIN
END ErrorHandler.
