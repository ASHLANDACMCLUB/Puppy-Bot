/* File: twodiffwheels2.ch 
   Drive a robot with different wheel sizes in a straight line */
#include <mindstorms.h>
CMindstorms robot;
double speed2, speed3;  // the joint speeds 

/* set joint speeds and move the robot with a specified time  */
speed2 = 100;
speed3 = 68.3;
robot.setJointSpeeds(NaN, speed2, speed3);
robot.moveTime(4);
