/PROG  PICK_CONVEYOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 657;
CREATE		= DATE 25-05-30  TIME 01:26:46;
MODIFIED	= DATE 25-06-01  TIME 05:02:40;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 981;
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
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=0 ;
   3:  CALL CONVEYOR_MOVEMENT    ;
   4:L P[1:pick point] 1500mm/sec CNT100 Tool_Offset,PR[11]    ;
   5:   ;
   6:L P[1:pick point] 1500mm/sec FINE    ;
   7:  CALL PICKUP    ;
   8:  WAIT   1.00(sec) ;
   9:L P[1:pick point] 1500mm/sec CNT100 Tool_Offset,PR[11]    ;
  10:   ;
  11:   ;
  12:   ;
  13:   ;
  14:   ;
  15:   ;
  16:   ;
/POS
P[1:"pick point"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1800.000  mm,	Y =     -.000  mm,	Z =  -170.000  mm,
	W =      .000 deg,	P =     -.000 deg,	R =     -.000 deg
};
/END
