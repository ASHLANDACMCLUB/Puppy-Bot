/* File: getaccelerometer.ch
   get the accelerometer data */
#include <mindstorms.h>
CMindstorms robot;
double x, y, z;

robot.setSensorAccelerometer(PORT1);

while(1) {
  robot.getSensorAccelerometer(PORT1, x, y, z);
  printf("Accelerometer: x: %lf y: %lf z: %lf\n", x, y, z);
  robot.delaySeconds(1);
}
