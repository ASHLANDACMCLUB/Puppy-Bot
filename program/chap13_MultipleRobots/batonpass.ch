/* File: batonpass.ch
   Pass a baton (green light) in a relay race with two Mindstorms
   using accelerometer data. */
#include <mindstorms.h>
CMindstorms robot1, robot2;
double distance=6;   // the distance of 6 inches to drive forward
double radius=1.1;  // the radius of 1.1 inches of the two wheels of the robot
double x1, x2, y, z; // accelerometer values in x, y, and z components

robot1.setSensorColor(PORT1, "Color");
robot2.setSensorColor(PORT1, "Color");
robot2.setSensorAccelerometer(PORT2);

robot1.setLEDColor("red");
robot2.setLEDColor("red");
robot1.driveForeverNB();
robot1.setLEDColor("green");

/* while the x component of the accelerometer does not change, keep reading it. */
robot2.getSensorAccelerometer(PORT2, x1, y, z);
x2=x1;
while(abs(x2-x1)<0.03) {
    robot2.getSensorAccelerometer(PORT2, x2, y, z);
}
robot2.setLEDColor("green");
robot2.driveDistanceNB(distance, radius);
robot1.holdJoints();
robot1.setLEDColor("red");
robot2.moveWait();
robot2.setLEDColor("red");
