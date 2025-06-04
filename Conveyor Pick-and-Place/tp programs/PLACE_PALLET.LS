/PROG  PLACE_PALLET
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 890;
CREATE		= DATE 25-05-30  TIME 03:17:40;
MODIFIED	= DATE 25-06-01  TIME 04:57:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 1178;
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
   3:J P[2:move to pallet] 100% CNT100    ;
   4:   ;
   5:  UFRAME_NUM=1 ;
   6:J P[1:place pallet] 50% CNT100 Tool_Offset,PR[11] Offset,PR[10]    ;
   7:L P[1:place pallet] 1500mm/sec FINE Offset,PR[10]    ;
   8:  CALL DROP    ;
   9:  WAIT   1.00(sec) ;
  10:L P[1:place pallet] 1500mm/sec CNT100 Tool_Offset,PR[11] Offset,PR[10]    ;
  11:  R[2]=R[2]+1    ;
  12:  R[3]=R[3]+1    ;
  13:  IF (R[3]>=4) THEN ;
  14:  R[3]=0    ;
  15:  R[4]=R[4]+1    ;
  16:  ENDIF ;
  17:   ;
  18:  PR[10,1]=R[3]*(-250)    ;
  19:  PR[10,2]=R[4]*(-610)    ;
  20:   ;
  21:   ;
  22:  UFRAME_NUM=0 ;
  23:J P[2:move to pallet] 100% CNT100    ;
/POS
P[1:"place pallet"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   375.000  mm,	Y =   305.000  mm,	Z =   250.000  mm,
	W =      .000 deg,	P =      .000 deg,	R =     -.000 deg
};
P[2:"move to pallet"]{
   GP1:
	UF : 0, UT : 1,	
	J1=    45.000 deg,	J2=   -20.000 deg,	J3=    20.000 deg,
	J4=      .000 deg,	J5=  -110.000 deg,	J6=   -60.000 deg
};
/END
