BEGIN ~53KADRES~

IF WEIGHT #1
~Global("Talked_To_Kadresh","GLOBAL",0)~ THEN BEGIN 0
  SAY @22480
  IF ~~ THEN REPLY @22481 DO ~SetGlobal("Talked_To_Kadresh","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @22482 DO ~SetGlobal("Talked_To_Kadresh","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @22483 DO ~SetGlobal("Talked_To_Kadresh","GLOBAL",1)~ GOTO 12
  IF ~~ THEN REPLY @22484 DO ~SetGlobal("Talked_To_Kadresh","GLOBAL",1)
                              StartStore("53Kadres",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22485 DO ~SetGlobal("Talked_To_Kadresh","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @22486
  IF ~Race(LastTalkedToBy,ELF)
      !Alignment(LastTalkedToBy,MASK_EVIL)
      //!SubRace(LastTalkedToBy,ELF_DROW)
      !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))~ THEN REPLY @22487 GOTO 2
  IF ~Race(LastTalkedToBy,HALF_ELF)
      !Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @22487 GOTO 3
  IF ~//SubRace(LastTalkedToBy,ELF_DROW)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",3))
      !Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @22488 GOTO 4
  IF ~~ THEN REPLY @22489 GOTO 8
  IF ~~ THEN REPLY @22490 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @22491
  IF ~~ THEN REPLY @22492 GOTO 5
  IF ~~ THEN REPLY @22493 GOTO 6
  IF ~~ THEN REPLY @22489 GOTO 8
  IF ~~ THEN REPLY @22490 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @22494
  IF ~~ THEN REPLY @22495 GOTO 7
  IF ~~ THEN REPLY @22493 GOTO 6
  IF ~~ THEN REPLY @22489 GOTO 8
  IF ~~ THEN REPLY @22490 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @22496
  IF ~~ THEN REPLY @22497 GOTO 5
  IF ~~ THEN REPLY @22498 GOTO 6
  IF ~~ THEN REPLY @22489 GOTO 8
  IF ~~ THEN REPLY @22490 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @22499
  IF ~~ THEN REPLY @22498 GOTO 6
  IF ~~ THEN REPLY @22489 GOTO 8
  IF ~~ THEN REPLY @22490 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @22500
  IF ~~ THEN REPLY @22489 GOTO 8
  IF ~~ THEN REPLY @22490 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @22501
  IF ~~ THEN REPLY @22492 GOTO 5
  IF ~~ THEN REPLY @22493 GOTO 6
  IF ~~ THEN REPLY @22489 GOTO 8
  IF ~~ THEN REPLY @22490 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @22502
  IF ~~ THEN REPLY @22482 GOTO 9
  IF ~~ THEN REPLY @22483 GOTO 12
  IF ~~ THEN REPLY @22484 DO ~StartStore("53Kadres",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22485 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @22503
  IF ~~ THEN REPLY @22504 GOTO 10
  IF ~~ THEN REPLY @22489 GOTO 11
  IF ~~ THEN REPLY @22490 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @22505
  IF ~~ THEN REPLY @22489 GOTO 11
  IF ~~ THEN REPLY @22490 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @22502
  IF ~~ THEN REPLY @22481 GOTO 1
  IF ~~ THEN REPLY @22483 GOTO 12
  IF ~~ THEN REPLY @22484 DO ~StartStore("53Kadres",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22485 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @22506
  IF ~~ THEN REPLY @424 GOTO 16
END

IF ~~ THEN BEGIN 13
  SAY @22507
  IF ~~ THEN EXTERN ~53MALAVO~ 16
END

IF ~~ THEN BEGIN 14
  SAY @22509
  IF ~~ THEN EXTERN ~53MALAVO~ 35
END

IF WEIGHT #2
~!Global("Talked_To_Kadresh","GLOBAL",0)~ THEN BEGIN 15
  SAY @22510
  IF ~~ THEN REPLY @22481 DO ~SetGlobal("Talked_To_Kadresh","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @22482 DO ~SetGlobal("Talked_To_Kadresh","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @22483 DO ~SetGlobal("Talked_To_Kadresh","GLOBAL",1)~ GOTO 12
  IF ~~ THEN REPLY @22484 DO ~SetGlobal("Talked_To_Kadresh","GLOBAL",1)
                              StartStore("53Kadres",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22485 DO ~SetGlobal("Talked_To_Kadresh","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @38562
  IF ~~ THEN REPLY @22481 GOTO 1
  IF ~~ THEN REPLY @22482 GOTO 9
  IF ~~ THEN REPLY @22484 DO ~StartStore("53Kadres",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22490 EXIT
END

IF WEIGHT #0
~See([ENEMY])~ THEN BEGIN 17
  SAY @38810
  IF ~~ THEN EXIT
END