/* File: getbattery.ch
   get the battery voltage */
#include <mindstorms.h>
CMindstorms robot;
double v;

robot.getBatteryVoltage(v);
printf("Battery voltage is %lf\n", v);
