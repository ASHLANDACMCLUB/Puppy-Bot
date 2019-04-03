/* File name: colorsensor.ch
    Use the color sensor to detect the color. */
#include <mindstorms.h>
CMindstorms robot;
string_t colorValue; 
string_t answer="yes";

robot.setSensorColor(PORT1, "Color");
robot.getSensorColor(PORT1, color);
//robot.delaySeconds(2);?
printf("The detected color is %s\n", color);

