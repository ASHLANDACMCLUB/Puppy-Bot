/* File: color.ch
   Set and get the LED color of a color sensor by name */
#include <mindstorms.h>
CMindstorms robot;
string_t color;

robot.setSensorColor(PORT1, "Color");

/* can only set three colors of red, green, and blue */
robot.setLEDColor("red");  
robot.delaySeconds(2);
robot.setLEDColor("green");  
robot.delaySeconds(2);
robot.setLEDColor("blue");    
robot.delaySeconds(2);

robot.getLEDColor(color);
printf("The current LED color: %s\n", color);
