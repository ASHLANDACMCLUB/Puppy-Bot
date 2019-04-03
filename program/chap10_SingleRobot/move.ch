/* File: move.ch 
   Move joints relative to the current positions. */
#include <mindstorms.h>
CMindstorms robot;

/* move joints 2 and 3 by 360 degrees */
robot.move(0, 360, 360);
