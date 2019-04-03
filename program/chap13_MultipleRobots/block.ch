/* File: block.ch
   Use the blocking function moveJoint(). */
#include <mindstorms.h>
CMindstorms robot;

/* rotate joint 2 by 360 degrees first, then joint 3 by 30 degrees */
robot.moveJoint(JOINT2, 360);
robot.moveJoint(JOINT3, 30);
