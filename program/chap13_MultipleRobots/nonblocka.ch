/* File: nonblocka.ch
   Use the non-blocking function moveJointNB(). */
#include <mindstorms.h>
CMindstorms robot;

/* rotate joint 2 by 360 degrees and joint 3 by 180 degrees at the same time
   till the movement for joint 3 is finished. */
robot.moveJointNB(JOINT2, 360);
robot.moveJoint(JOINT3, 180);

