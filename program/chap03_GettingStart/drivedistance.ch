/* File: drivedistance.ch 
   Drive a robot as a two-wheel robot for a given distance. */
#include <mindstorms.h>
CMindstorms robot;

/* drive forward for 8 inches with the radius 1.1 inches for two wheels */
robot.driveDistance(8, 1.1);

/* drive backward for 5 inches with the radius 1.1 inches for two wheels */
robot.driveDistance(-5, 1.1);
