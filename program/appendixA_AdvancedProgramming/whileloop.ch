/* File: whileloop.ch 
   repeat motions using a while-loop */
#include <mindstorms.h>
CMindstorms robot;
int i, num;

/* repeat rolling forward and backward 3 times */
num = 3;
i=0;
while(i<num)  {
    robot.driveAngle(360);   // drive forward 360 degrees 
    robot.driveAngle(-360);  // drive backward 360 degrees 
    i++;                       // increment i
}
