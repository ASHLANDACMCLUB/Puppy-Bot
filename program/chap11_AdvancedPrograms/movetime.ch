/* File: movetime.ch 
   Move a robot for a specified time. */
#include <mindstorms.h>
CMindstorms robot;
double time1=5;   // five seconds
double speed=90; // 90 degrees per second

/* set the joint speeds for all joints to 90 degrees per second */
robot.setJointSpeeds(NaN, speed, speed);

/* rotate joints 2 and 3 for the specified 'time1', based on the speed */
robot.moveTime(time1);
