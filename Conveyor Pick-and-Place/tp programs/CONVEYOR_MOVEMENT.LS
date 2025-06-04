/PROG  CONVEYOR_MOVEMENT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 460;
CREATE		= DATE 25-06-04  TIME 04:06:58;
MODIFIED	= DATE 25-06-04  TIME 04:06:58;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 768;
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
   1:  !FANUC America Corp. ;
   2:  !ROBOGUIDE Generated This TPP ;
   3:  !Run SimPRO.cf to setup frame and ;
   4:  !CLEAR VARIABLES ;
   5:  DO[2]=OFF ;
   6:  WAIT DI[3]=ON    ;
   7:  DO[1]=OFF ;
   8:  WAIT DI[2]=ON    ;
   9:  !MOVEMENT INSTRUCTIIONS ;
  10:  DO[2]=ON ;
  11:  WAIT DI[4]=ON    ;
  12:  DO[1]=ON ;
  13:  WAIT DI[1]=ON    ;
  14:  DO[1]=OFF ;
  15:  DO[2]=OFF ;
  16:  WAIT DI[2]=ON    ;
/POS
/END
