BEGIN ~51HARSHO~

IF ~True()~ THEN BEGIN 0
  SAY @9333
  IF ~~ THEN DO ~AddJournalEntry(@9327,QUEST)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @9510
  IF ~~ THEN REPLY @9511 GOTO 2
  IF ~~ THEN REPLY @9512 DO ~AddJournalEntry(@9328,QUEST)~ GOTO 4
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @9513 GOTO 10
  IF ~!Gender(LastTalkedToBy,MALE)~ THEN REPLY @9513 GOTO 11
  IF ~~ THEN REPLY @9514 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9515
  IF ~GlobalGT("Know_Phaen","GLOBAL",0)~ THEN REPLY @9516 DO ~AddJournalEntry(@9329,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @9512 DO ~AddJournalEntry(@9328,QUEST)~ GOTO 4
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @9513 GOTO 10
  IF ~!Gender(LastTalkedToBy,MALE)~ THEN REPLY @9513 GOTO 11
  IF ~~ THEN REPLY @9514 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9517
  IF ~~ THEN REPLY @9512 DO ~AddJournalEntry(@9328,QUEST)~ GOTO 4
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @9518 GOTO 10
  IF ~!Gender(LastTalkedToBy,MALE)~ THEN REPLY @9518 GOTO 11
  IF ~~ THEN REPLY @9514 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9519
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @9520
  IF ~~ THEN REPLY @9521 GOTO 6
  IF ~~ THEN REPLY @9514 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @9522
  IF ~~ THEN REPLY @9523 GOTO 7
  IF ~~ THEN REPLY @9511 GOTO 2
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @9518 GOTO 10
  IF ~!Gender(LastTalkedToBy,MALE)~ THEN REPLY @9518 GOTO 11
  IF ~~ THEN REPLY @9514 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @9524
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @9525
  IF ~~ THEN REPLY @9526 GOTO 9
  IF ~~ THEN REPLY @9527 GOTO 12
  IF ~~ THEN REPLY @9511 GOTO 2
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @9518 GOTO 10
  IF ~!Gender(LastTalkedToBy,MALE)~ THEN REPLY @9518 GOTO 11
  IF ~~ THEN REPLY @9514 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @9528
  IF ~~ THEN REPLY @9529 GOTO 12
  IF ~~ THEN REPLY @9511 GOTO 2
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @9518 GOTO 10
  IF ~!Gender(LastTalkedToBy,MALE)~ THEN REPLY @9518 GOTO 11
  IF ~~ THEN REPLY @9514 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @9530
  IF ~~ THEN REPLY @9511 GOTO 2
  IF ~~ THEN REPLY @9512 DO ~AddJournalEntry(@9328,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @9514 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @9531
  IF ~~ THEN REPLY @9511 GOTO 2
  IF ~~ THEN REPLY @9512 DO ~AddJournalEntry(@9328,QUEST)~ GOTO 4
  IF ~~ THEN REPLY @9514 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @9992
  IF ~~ THEN REPLY @9526 GOTO 9
  IF ~~ THEN REPLY @9511 GOTO 2
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @9518 GOTO 10
  IF ~!Gender(LastTalkedToBy,MALE)~ THEN REPLY @9518 GOTO 11
  IF ~~ THEN REPLY @9514 DO ~Enemy()~ EXIT
END