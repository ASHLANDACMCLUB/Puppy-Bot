/* File: colorrgb.ch
   Set and get the LED color of a color sensor by RGB */
#include <mindstorms.h>
CMindstorms robot;
int r, g, b;

robot.setSensorColor(PORT1, "Color"); 

robot.setLEDColorRGB(255, 0, 0);       // red
robot.delaySeconds(2);
robot.setLEDColorRGB(0, 255, 0);       // green
robot.delaySeconds(2);
robot.setLEDColorRGB(0, 0, 255);       // blue
robot.delaySeconds(2);

robot.getLEDColorRGB(r, g, b);
printf("The RGB value for the current LED color: %d %d %d\n", r, g, b);

