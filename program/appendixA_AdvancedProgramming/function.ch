/* File: function.ch 
   repeat motions using the functions roll() */
#include <mindstorms.h>
CMindstorms robot;

/* the function prototype for roll() */
void roll(CMindstorms &robot);

/* call the function roll() three times
   to repeat the motions defined in the function three times */
roll(robot);   
roll(robot);  
roll(robot);  

/* define the function roll() */
void roll(CMindstorms &robot) {
    robot.driveAngle(360);   // drive forward 360 degrees 
    robot.driveAngle(-360);  // drive backward 360 degrees 
}
