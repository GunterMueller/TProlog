
IMPLEMENTATION MODULE Flags;
  
  
PROCEDURE InitFlags;
(* Zero the flag vector. *)
   VAR i: INTEGER;
BEGIN
   FOR i := 1 TO FlagSize DO flag[i] := 0 END
END InitFlags;


BEGIN
END Flags.

