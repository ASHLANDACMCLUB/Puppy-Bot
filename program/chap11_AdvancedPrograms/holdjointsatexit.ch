/* File: holdjointsatexit.ch 
   Hold the joints at the exit. */
#include <mindstorms.h>
CMindstorms robot;
double angle=360;    // angle for rotation 

/* drive forward for 'angle' */
robot.driveAngle(angle);

/* Hold the joints at exit .*/
robot.holdJointsAtExit();
