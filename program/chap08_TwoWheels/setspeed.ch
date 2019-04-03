/* File: setspeed.ch 
   Set the speed of a two-wheel robot. */
#include <mindstorms.h>
CMindstorms robot;
double radius=1.1;  // the radius of the two wheels of the robot in inches
double speed=2.5;   // the speed in 2.5 inches per second for a two-wheel robot
double distance=5;  // the distance in 5 inches to drive forward

/* set the speed for a two-wheel robot to 3 inches per second */
robot.setSpeed(speed, radius);

/* drive the robot 360 degrees forward for joints 2 and 3 */
robot.driveAngle(360);

/* drive the robot 360 degrees backward for joints 2 and 3 */
robot.driveAngle(360);

/* drive forward for 'distance' inches */
robot.driveDistance(distance, radius);
