BEGIN ~67BRMONK~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @35612
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @35614
  IF ~~ THEN EXIT
END