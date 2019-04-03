/* File: nonblockc.ch
   Use the function moveWait(). */
#include <mindstorms.h>
CMindstorms robot;

/* rotate joint 2 for 360 degrees and joint 3 for 720 degrees at the same time.
   till the movement for all joints is finished, then move joint 2 by 30 degrees */
robot.moveJointNB(JOINT2, 360);
robot.moveJointNB(JOINT3, 720);
robot.moveWait();
robot.moveJoint(JOINT2, 30);

