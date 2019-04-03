/* File: forloop.ch 
   repeat motions using a for-loop */
#include <mindstorms.h>
CMindstorms robot;
int i, num;

/* repeat rolling forward and backward 3 times */
num = 3;
for (i=0; i<num; i++) {
    robot.driveAngle(360);   // roll forward 360 degrees 
    robot.driveAngle(-360);  // roll backward 360 degrees 
}
