/* File: multiplemove.ch 
   Move all joints relative to the current positions . */
#include <mindstorms.h>
CMindstorms robot;

/* move the joint 2 by 180 degrees and joint 3 by 180 degrees */
robot.move(0, 180, 180);

/* move the joint 2 by 180 degrees and joint 3 by 180 degrees */
robot.move(0, 180, 180);

/* move the joint 2 by 360 degrees and joint 3 by 360 degrees */
robot.move(0, 360, 360);
