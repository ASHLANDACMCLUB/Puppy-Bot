/* File: setjointspeedratios.ch 
   Get and set joint angular speed ratios for joints 2 and 3. */
#include <mindstorms.h>
CMindstorms robot;
double ratio2, ratio3;	

/* set the joint angular speed ratio for all joints to 0.75 */
ratio2 = 0.75;
ratio3 = 0.75;
robot.setJointSpeedRatios(NaN, ratio2, ratio3);

/* rotate joints 2 and 3 by 180 degrees */
robot.move(NaN, 180, 180);

/* get the joint angular speed ratio for joints 2 and 3 */
robot.getJointSpeedRatios(NaN, ratio2, ratio3);
printf("Joint2 angular speed ratio = %.2lf\n", ratio2);
printf("Joint3 angular speed ratio = %.2lf\n", ratio3);
