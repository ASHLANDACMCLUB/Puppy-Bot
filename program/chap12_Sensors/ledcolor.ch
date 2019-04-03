/* File: color.ch
   Set and get the LED color by name */
#include <mindstorms.h>
CMindstorms robot;
string_t color;

robot.setLEDColor("magenta");   
robot.delaySeconds(2);
robot.setLEDColor("green");  
robot.delaySeconds(2);
robot.setLEDColor("blue");    
robot.delaySeconds(2);
robot.setLEDColor("purple");
robot.delaySeconds(2);
robot.setLEDColor("aqua");
robot.delaySeconds(2);
robot.setLEDColor("orange");  
robot.delaySeconds(2);
robot.setLEDColor("pink");     // pink
robot.delaySeconds(2);
robot.setLEDColor("hotPink");  // hot pink 
robot.delaySeconds(2);
robot.setLEDColor("deepPink"); // deep pink
robot.getLEDColor(color);
printf("The current color: %s\n", color);
