/* File: setjointspeeds.ch 
   Get and set joint angular speeds. */
#include <mindstorms.h>
CMindstorms robot;
double speed2, speed3;  // the joint angular speeds 

/* set the joint angular speed 75 degrees/second for all joints */
speed2 = 75;
speed3 = 75;
robot.setJointSpeeds(NaN, speed2, speed3);

/* move the joint 2 by 180 degrees and joint 3 by 180 degrees */
robot.move(NaN, 180, 180);

/* get the joint angular speed for joints 2 and 3 */
robot.getJointSpeeds(NaN, speed2, speed3);
printf("Joint2 angular speed = %.2lf degrees per second\n", speed2);
printf("Joint3 angular speed = %.2lf degrees per second\n", speed3);
