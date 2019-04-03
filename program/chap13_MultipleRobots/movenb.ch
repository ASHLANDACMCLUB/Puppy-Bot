/* File: movenb.ch
   Control two robots with motions simultaneously using non-blocking functions. */
#include <mindstorms.h>
CMindstorms robot1, robot2;

/* wait for both robot to finish their movements through resetToZeroNB() */
robot1.moveWait();
robot2.moveWait();

/* move joints 2 and 3 for both robots at the same time using moveNB() */
robot1.moveNB(NaN, 180, 180);
robot2.moveNB(NaN, 360, 360);
/* wait for both robots to finish their movements through moveNB() */
robot1.moveWait();
robot2.moveWait();

/* move joints 2 and 3 for both robots at the same time using moveNB() */
robot1.moveNB(NaN,360, 360);
robot2.moveNB(NaN, 360, 360);
/* wait for both robots to finish their movements through moveNB() */
robot1.moveWait();
robot2.moveWait();


/* hold the position after the program exits */
robot1.holdJointsAtExit();
robot2.holdJointsAtExit();
