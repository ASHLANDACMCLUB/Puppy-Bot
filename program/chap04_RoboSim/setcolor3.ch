/* File: setcolor3.ch
   Change the color of the LED and trajectory of the robot to red */
#include <mindstorms.h>
CMindstorms robot;

/* change the color of the LED and trajectory to red */
robot.setLEDColor("red");

/* drive forward by rolling two wheels for 360 degrees */
robot.driveAngle(360);
