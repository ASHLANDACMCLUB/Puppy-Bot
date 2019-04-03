/* File: setjointspeedratio.ch 
   Get and set joint angular speed ratio. */
#include <mindstorms.h>
CMindstorms robot;
double ratio;   // joint speed ratio
double speed;  // the joint angular speed in degrees per second

/* get the joint angular speed ratio for joint 2 */
robot.getJointSpeedRatio(JOINT2, ratio);
printf("Joint2 angular speed ratio = %lf\n", ratio);

/* set the joint angular speed ratio for joint 2 to 0.75 (75% of the max angular speed).  */
ratio = 0.75;
robot.setJointSpeedRatio(JOINT2, ratio);

/* rotate joint 2 by 180 degrees */
robot.moveJoint(JOINT2, 180);

/* get the joint angular speed ratio for joint 2 */
robot.getJointSpeedRatio(JOINT2, ratio);
printf("Joint2 angular speed ratio = %lf\n", ratio);

/* get the joint angular speed for joint 2 */
robot.getJointSpeed(JOINT2, speed);
printf("Joint2 angular speed = %lf degrees per second\n", speed);
