/* File: getjointangles.ch 
   Get joint angles. */
#include <mindstorms.h>
CMindstorms robot;
// declare the variables to hold joint angles
double angle2, angle3;      

/* move to the zero position */
robot.resetToZero();

/* move the joint 2 to 360 degrees and joint 3 to 180 degrees */
robot.moveTo(NaN, 360, 180);
/* obtain joint angles for joints 2 and 3 */
robot.getJointAngles(NaN, angle2, angle3);

printf("Joint2 angle = %.2lf degrees.\n", angle2);
printf("Joint3 angle = %.2lf degrees.\n", angle3);
