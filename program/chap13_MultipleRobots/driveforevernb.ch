/* File: driveforevernb.ch 
   Drive two two-wheeled robots with different speeds continuously 
   with a specified time using drivForeverNB(). */
#include <mindstorms.h>
CMindstorms robot1, robot2;
double radius1=1.1; // the radius of the two wheels of robot1 in inches
double radius2=1.1; // the radius of the two wheels of robot2 in inches
double speed1=1.5, speed2=3; // speed of robots in inches per second
double time1=16;             // motion time in seconds for robot1
double delaytime=8;          // delay time for robot2

/* set the speed for robot1 */
robot1.setSpeed(speed1, radius1);
/* set the speed for robot2 */
robot2.setSpeed(speed2, radius2);

/* robot1 drives first, 'delaytime' seconds later, robot2 drives.
   Both robots drive for 'time-delaytime' seconds at the same time. 
   Then, both robots stop */
robot1.driveForeverNB();
robot2.delaySeconds(delaytime);
robot2.driveForeverNB();
robot2.delaySeconds(time1-delaytime);
robot1.holdJoints();
robot2.holdJoints();
