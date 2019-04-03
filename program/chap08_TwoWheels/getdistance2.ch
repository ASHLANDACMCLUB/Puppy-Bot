/* File: getdistance2.ch
   Get the Distance traveled in the specified speed and time using
   robot.getJointAngle() and angle2distance() */
#include <mindstorms.h>
CMindstorms robot;
double speed = 2.5;        // speed in inches/second
double radius = 1.1;      // radius of the wheel
double time1 = 5.5;        // 5.5 seconds
double angle;              // angle rotated.
double distance;           // distance traveled

/* move to the zero position */
robot.resetToZero();

/* set the robot speed */
robot.setSpeed(speed, radius);

/* rotate joints 2 and 3 for the specified 'time1' */
robot.driveTime(time1);

/* obtain the angle for joint 2 */
robot.getJointAngle(JOINT2, angle);

/* calculate the distance based on the joint angle */
distance = angle2distance(radius, angle); 

printf("The distance driven is %.2lf inches.\n", distance);
printf("The distance to drive is %.2lf inches in theory.\n", speed*time1);
