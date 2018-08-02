
IMPLEMENTATION MODULE Files;

(*$S- no stack checks *)
(*$Q+ short BRAnches for modules <32K *)


FROM Streams IMPORT StreamKinds, Stream, OpenStream, CloseStream, EOS;
FROM TextIO  IMPORT REadLn, ReadLn, REadString, ReadString, Read, REad,
                    WriteLn, WRiteLn, WRiteString, WriteString,
                    WriteInt, WRiteInt, Write, WRite;
FROM Strings IMPORT Copy;

FROM OpSystem     IMPORT ReadOneTerminalLine;
FROM ErrorHandler IMPORT ExecError, InternalError, error;
FROM AtomTable    IMPORT atom, strindex, astring, stringbuf, userA;

 
VAR
      
   filetable:                    (* Table of open files. *)
      ARRAY [1 .. MaxFiles] OF
         RECORD
            fname: atom          (* File name *);
            filep: Stream        (* The file itself. *);
            direction: inout     (* Whether for input or output. *)
         END;
  
   linebuf:                     (* Buffer for reflection of input line. *)
     ARRAY [0..MaxLength] OF CHAR;
     
   linefinished: BOOLEAN;
  
PROCEDURE StartLine;
(* Begin recording a new line in 'linebuf'. *)
BEGIN
   linefinished := TRUE;
   charpos := 0;
   errpos := 0
END StartLine;
 
PROCEDURE OpenFile(VAR f: Stream; name: astring; dir: inout): BOOLEAN; 
(*
   The characters stringbuf[name.index + 1 .. name.index + name.length]
   are the name of a file.  Associate the textfile variable f with this
   file and open it for input (if dir = inZ) or output (if dir = outZ).
   Return true if f is successfully opened, and false otherwise.  The
   body of this function is installation-specific.
*)  
VAR nmstr: ARRAY [0..20] OF CHAR;
    i:INTEGER;
    reply: INTEGER;
BEGIN
  Copy(stringbuf,name.index+1,name.length,nmstr);
  IF dir=inZ 
    THEN OpenStream(f,nmstr,READ,reply)
    ELSE OpenStream(f,nmstr,READWRITE,reply)
  END;
  RETURN reply=0
END OpenFile;
  
  
PROCEDURE OpenLib(VAR f: Stream): BOOLEAN; 
(*
   Associate the textfile variable f with the Prolog system library file 
   and open it for input.  Return true if f is successfully opened, and
   false otherwise.  The body of this function is installation-specific.
*)
VAR  reply: INTEGER; 
BEGIN
  OpenStream(f,'prolib',READ,reply);
  RETURN reply=0  
END OpenLib;
  
  
PROCEDURE CloseFile(VAR f: Stream; dir: inout); 
(*
  Close the textfile variable f.  The body of this PROCEDURE is
  installation-specific.
*)
VAR  reply: INTEGER;
BEGIN
   CloseStream(f,reply);
END CloseFile;
  
  
PROCEDURE FindFile(name: atom; VAR fd, freefd: filedesc): BOOLEAN;
(*
   Try to find a named file in the file table, returning true if
   successful and assigning the file descriptor to fd.  Otherwise,
   return false and set freefd to a free descriptor if possible,
   and to 0 otherwise.
*)
VAR found: BOOLEAN;
BEGIN
   found := FALSE; fd := 0; freefd := 0;
   WHILE (fd < MaxFiles) AND NOT found DO
      fd := fd + 1;
      IF filetable[fd].fname = name 
        THEN found := TRUE
      ELSIF (filetable[fd].fname = NIL) AND (freefd = 0) THEN
         freefd := fd
      END
   END;
   RETURN found
END FindFile;
  
PROCEDURE Select(fd: filedesc; dir: inout);
(* Select fd for input or output. *) 
BEGIN
   current[dir] := fd;
   IF dir = inZ THEN StartLine END
END Select;
  
  
PROCEDURE SelectFile(name: atom; dir: inout; VAR e: error): BOOLEAN; 
(* Select a named file for input or output. *)
  VAR
    fd, freefd: filedesc;
    ok: BOOLEAN;
BEGIN
   ok := TRUE;
   IF name = userA THEN
      fd := StandFD
   ELSIF FindFile(name, fd, freefd) THEN
      IF filetable[fd].direction <> dir THEN
         e := iodirE;
         ok := FALSE
      END
   ELSE 
    
      IF freefd = 0 THEN ExecError(filespaceE) END;
      fd := freefd;
      WITH filetable[fd] DO
         IF OpenFile(filep, name^.ident, dir) THEN
            fname := name;
            direction := dir
         ELSE
            e := nofileE;
            ok := FALSE
         END
      END
   END;
   IF ok THEN Select(fd, dir) END;
   RETURN ok
 END SelectFile;
  
  
 PROCEDURE DropFile(name: atom);
 (* Close a named file, and make input or output revert to the standard
   file if necessary. *) 
   VAR fd, freefd: filedesc;
 BEGIN
   IF name <> userA THEN 
      IF FindFile(name, fd, freefd) THEN
         WITH filetable[fd] DO
            IF current[direction] = fd THEN
               Select(StandFD, direction);
            END;
            fname := NIL;
            CloseFile(filep, direction)
         END
      END
   END
END DropFile;
  
  
PROCEDURE SelectLib;
(* Prepare for input from the library file. *)
BEGIN
   WITH filetable[1] DO
      IF NOT OpenLib(filep) THEN InternalError(7) END;
      direction := inZ
   END;
   current[inZ] := 1;
   StartLine 
END SelectLib;
  
  
PROCEDURE DropLib;
(* Close the library file. *)
BEGIN
   CloseFile(filetable[1].filep, inZ);
   Select(StandFD, inZ)
END DropLib;
  
PROCEDURE CurrFile(dir: inout): atom;
(* Return the name of the current input or output file. *) 
BEGIN
   IF current[dir] = StandFD THEN
      RETURN userA
   ELSE
      RETURN filetable[current[dir]].fname
   END
END CurrFile;
  
  
PROCEDURE LineEnded(): BOOLEAN;
(* Is the current input file at the end of a line *)
BEGIN
   RETURN linefinished
END LineEnded;
  
  
PROCEDURE FileEnded(): BOOLEAN;
(* Is the current input file finished *)
BEGIN
   IF current[inZ] = StandFD THEN
      RETURN FALSE (* eof(input) *)
   ELSE
      RETURN EOS(filetable[current[inZ]].filep)
   END
END FileEnded;

(*$T- no range checks *)
 
PROCEDURE GetChar(VAR ch: CHAR);
(* Input a character from the current input file. *)
CONST  EOL = 0C;
BEGIN
   
   IF linefinished THEN
         
      linefinished:=FALSE;
      
      IF FileEnded() THEN ExecError(eofE) END;
      
      IF current[inZ] = StandFD THEN
         ReadOneTerminalLine(linebuf)
      ELSE
         REadString(filetable[current[inZ]].filep,linebuf)
      END
      
   END;
      
   ch:=linebuf[charpos];    
   INC(charpos);
   
   IF (ch=EOL) THEN
   
      charpos:=0;
      errpos:=0;
      
      linefinished:=TRUE;
      ch:=' '
      
   END
    
END GetChar;

(*$T= old range checks *)
  
PROCEDURE PutChar(fd: filedesc; ch: CHAR);
(* Output a character to file fd. *) 
BEGIN
   IF fd = StandFD THEN
      Write(ch)
   ELSE
      WRite(filetable[fd].filep, ch)
   END 
END PutChar;
  
  
PROCEDURE PutNum(fd: filedesc; n: INTEGER);
(* Output a number to file fd. *)
BEGIN
   IF fd = StandFD THEN
      WriteInt(n,1)
   ELSE
      WRiteInt(filetable[fd].filep, n,1)
   END
END PutNum;
  
PROCEDURE PutLn(fd: filedesc);
(* Start a new line on file fd. *)
BEGIN
   IF fd = StandFD THEN
      WriteLn
   ELSE
      WRiteLn(filetable[fd].filep)
   END
END PutLn;
  
  
PROCEDURE SkipToDot;
(* Skip characters from current input file to find a full stop. *)
   VAR ch, lastch: CHAR;
BEGIN
   GetChar(ch);
   REPEAT
      lastch := ch; GetChar(ch)
   UNTIL (lastch = '.') AND (ch = ' ')
END SkipToDot; 
  
  
PROCEDURE Recover;
(* Recover from a syntax error. *)
   VAR 
      ch: CHAR;
      i: CARDINAL;
BEGIN
   WHILE NOT LineEnded() DO GetChar(ch) END;
   i := 0;
   WHILE (i < charpos - 1) AND (i < MaxLength) DO
      i := i + 1;
      Write(linebuf[i])
   END;
   IF (charpos > MaxLength + 1) THEN WriteString(' ...') END;
   WriteLn;
   i := 0;
   WHILE (i < errpos - 1) AND (i < MaxLength) DO
      i := i + 1;
      IF CharClass[ORD(linebuf[i])] = spaceC THEN
         Write(linebuf[i]) 
      ELSE
         Write(' ')
      END
   END;
   IF errpos <= MaxLength THEN 
      WriteString('!');
   ELSE
      WriteString('  !');
   END;
   WriteLn;
   IF current[inZ] <> StandFD THEN
      IF charpos > MaxLength + 1 THEN
         SkipToDot
      ELSIF linebuf[charpos - 1] <> '.' THEN
         SkipToDot
      END
   END 
END Recover;
 
PROCEDURE InitFiles;
VAR k: INTEGER;
BEGIN
   FOR k := 1 TO MaxFiles DO
      filetable[k].fname := NIL
   END;
   Select(StandFD, inZ);
   Select(StandFD, outZ)
END InitFiles;
  
PROCEDURE ReleaseFiles;
(* Close all opened files* *)
VAR k: INTEGER;
BEGIN
   FOR k := 1 TO MaxFiles DO
     WITH filetable[k] DO
        IF fname <> NIL THEN
           CloseFile(filep, direction);
           fname := NIL
        END
     END
   END
END ReleaseFiles;

BEGIN
END Files.
