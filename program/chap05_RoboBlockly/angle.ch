/* File: angle.ch 
   Use a variable to hold joint angles */
#include <mindstorms.h>
CMindstorms robot;
double angle = 360;   // declare variable 'angle' for joint angle of two wheels.

/* drive forward by rolling two wheels for 360 degrees */
robot.driveAngle(angle);

/* drive backward by rolling two wheels for 360 degrees */
robot.driveAngle(-angle);
