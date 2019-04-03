/* File: nonblockb.ch
   Use the function moveJointWait() to wait for the completion of
   a joint movement. */
#include <mindstorms.h>
CMindstorms robot;

/* rotate joint 2 for 360 degrees and joint 3 for 720 degrees at the same time.
   till the movement for  joint 2 is finished, then move joint 2 by 30 degrees */
robot.moveJointNB(JOINT2, 360);
robot.moveJointNB(JOINT3, 720);
robot.moveJointWait(JOINT2);
robot.moveJoint(JOINT2, 30);
robot.moveJointWait(JOINT3);
