/* File: timesecond.ch
   Get the time for a robot to finish its motion using time() */
#include <mindstorms.h>
CMindstorms robot;
double speed = 90;         // speed in degrees/second
double angle = 720;        // joint angle 
int clocktime1, clocktime2, elapsedtime;    // clock time

/*  set the joint speed for joint 2  */
robot.setJointSpeed(JOINT2, speed); 

clocktime1 = time(NULL);               // the clock time before the motion
robot.moveJoint(JOINT2, angle);  // rotate joint 2 by 'angle'
clocktime2 = time(NULL);               // the clock time after the motion
elapsedtime = clocktime2 - clocktime1; // Calculate the time for the motion. 

printf("The motion for the robot took %d seconds\n", elapsedtime);
printf("The motion should take %.2lf seconds in theory.\n", angle/speed);
