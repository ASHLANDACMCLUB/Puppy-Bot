#include <mindstorms.h>
CMindstorms robot;

robot.setSpeed(100, 10.1);

/* drive forward by rolling two wheels for 360 degrees */
robot.driveDistance(-10, 1.1);
robot.setSpeed(10000, 10.1);

robot.driveDistance(10, 1.1);
