/* File: movetonb.ch
   Control two robots with motions simultaneously using non-blocking functions. */
#include <mindstorms.h>
CMindstorms robot1, robot2;

/* move to the zero position at the same time. */
robot1.resetToZeroNB();
robot2.resetToZeroNB();

/* wait for both robots to finish their movements through resetToZeroNB() */
robot1.moveWait();
robot2.moveWait();

/* move joints 2 and 3 for both robots at the same time using moveNB() */
robot1.moveToNB(NaN, 180, 180);
robot2.moveToNB(NaN, 360, 360);
/* wait for both robots to finish their movements through moveNB() */
robot1.moveWait();
robot2.moveWait();

/* move joint 2 for both robots at the same time using moveJointNB() */
robot1.moveJointNB(JOINT2, 90);
robot2.moveJointNB(JOINT2, 90);
/* wait for both robots to finish their movements through moveJointNB() */
robot1.moveJointWait(JOINT2);
robot2.moveJointWait(JOINT2);

/* move joint 2 for both robots at the same time using moveJointToNB() */
robot1.moveJointToNB(JOINT2, 720);
robot2.moveJointToNB(JOINT2, 720);
/* wait for both robots to finish their movements through moveJointNB() */
robot1.moveJointWait(JOINT2);
robot2.moveJointWait(JOINT2);
