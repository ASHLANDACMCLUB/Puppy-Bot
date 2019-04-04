#include <mindstorms.h>
CMindstorms robot;

robot.setSpeed(1000, 1.1);

/* drive forward by rolling two wheels for 360 degrees */
robot.driveDistance(-10, 1.1);
robot.driveDistance(10, 1.1);
