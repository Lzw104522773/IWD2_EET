BEGIN ~63COOK~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @29530
  IF ~~ THEN REPLY @29531 GOTO 1
  IF ~~ THEN REPLY @29532 GOTO 2
  IF ~~ THEN REPLY @29533 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @29534
  IF ~~ THEN REPLY @29532 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @29535
  IF ~Global("SH_Talk_Cook","GLOBAL",3)
      !Global("SH_Cook_Slaves","GLOBAL",1)~ THEN REPLY @29536 DO ~SetGlobal("SH_Cook_Slaves","GLOBAL",1)~ GOTO 3
  IF ~Global("SH_Stop_Guards","GLOBAL",3)
      !Global("SH_Cook_Guards","GLOBAL",1)~ THEN REPLY @29537 DO ~SetGlobal("SH_Cook_Guards","GLOBAL",1)~ GOTO 12
  IF ~~ THEN REPLY @29533 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @29538
  IF ~~ THEN REPLY @29539 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @29540
  IF ~~ THEN REPLY @29541 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @29542
  IF ~~ THEN REPLY @29543 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @29544
  IF ~~ THEN REPLY @29545 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @29546
  IF ~~ THEN REPLY @29547 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @29548
  IF ~~ THEN REPLY @29549 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @29550
  IF ~~ THEN REPLY @29551 DO ~SetGlobal("SH_Cook_Refused","GLOBAL",1)
                              AddJournalEntry(@29529,QUEST)~ GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @29552
  IF ~Global("SH_Stop_Guards","GLOBAL",3)
      !Global("SH_Cook_Guards","GLOBAL",1)~ THEN REPLY @29537 DO ~SetGlobal("SH_Cook_Guards","GLOBAL",1)~ GOTO 12
  IF ~~ THEN REPLY @29553 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 11
  SAY @29554
  IF ~~ THEN REPLY @29555 GOTO 1
  IF ~~ THEN REPLY @29532 GOTO 2
  IF ~Global("SH_Talk_Cook","GLOBAL",3)
      !Global("SH_Cook_Slaves","GLOBAL",1)~ THEN REPLY @29536 DO ~SetGlobal("SH_Cook_Slaves","GLOBAL",1)~ GOTO 3
  IF ~Global("SH_Stop_Guards","GLOBAL",3)
      !Global("SH_Cook_Guards","GLOBAL",1)~ THEN REPLY @29537 DO ~SetGlobal("SH_Cook_Guards","GLOBAL",1)~ GOTO 12
  IF ~~ THEN REPLY @29533 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @29556
  IF ~~ THEN REPLY @29557 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @29558
  IF ~~ THEN REPLY @29559 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @29560
  IF ~Global("SH_Talk_Cook","GLOBAL",3)
      !Global("SH_Cook_Slaves","GLOBAL",1)~ THEN REPLY @29536 DO ~SetGlobal("SH_Cook_Slaves","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @29533 EXIT
END