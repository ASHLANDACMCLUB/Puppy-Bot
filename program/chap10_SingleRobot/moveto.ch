/* File: moveto.ch 
   Move all joints to the absolute positions. */
#include <mindstorms.h>
CMindstorms robot;

/* move to the zero position */
robot.resetToZero();

/* move joints 2 to 180 degrees and joint 3 to 180 degrees */
robot.moveTo(0, 180, 180);

/* move joints 2 to 360 degrees and joint 3 to 360 degrees */
robot.moveTo(0, 360, 360);

/* move joints 2 to 720 degrees and joint 3 to 720 degrees */
robot.moveTo(0, 720, 720);
