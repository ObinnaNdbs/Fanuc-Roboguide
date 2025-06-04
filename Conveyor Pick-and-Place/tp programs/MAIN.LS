/PROG  MAIN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 749;
CREATE		= DATE 25-05-30  TIME 15:19:48;
MODIFIED	= DATE 25-05-31  TIME 04:38:08;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 1193;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/MN
   1:  CALL DATA_RESET    ;
   2:   ;
   3:  LBL[1] ;
   4:  TIMER[1]=RESET ;
   5:  TIMER[1]=START ;
   6:  UTOOL_NUM=1 ;
   7:  UFRAME_NUM=0 ;
   8:J P[1:HOME] 100% FINE    ;
   9:   ;
  10:  CALL PICK_CONVEYOR    ;
  11:   ;
  12:  CALL PLACE_PALLET    ;
  13:J P[1:HOME] 100% FINE    ;
  14:  TIMER[1]=STOP ;
  15:  R[1]=TIMER[1]    ;
  16:   ;
  17:  IF R[2]>=8,JMP LBL[2] ;
  18:  JMP LBL[1] ;
  19:   ;
  20:  LBL[2] ;
  21:  MESSAGE[PROGRAM END] ;
/POS
P[1:"HOME"]{
   GP1:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg,	J3=    20.000 deg,
	J4=      .000 deg,	J5=  -110.000 deg,	J6=     0.000 deg
};
/END
