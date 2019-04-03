/* File: driveangle.ch
   Drive forward and backward for Mindstorms as a two-wheel vehicle */
#include <mindstorms.h>
CMindstorms robot;

printf("Here comes a robot!\n");

/* drive forward by rolling two wheels for 360 degrees */
robot.driveAngle(360);

/* drive backward by rolling two wheels for 360 degrees */
robot.driveAngle(-360);

printf("Cool!\n");
