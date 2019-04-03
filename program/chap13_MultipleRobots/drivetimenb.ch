/* File: drivetimenb.ch 
   Drive two two-wheeled robots with different speeds continuously 
   with a specified time. */
#include <mindstorms.h>
CMindstorms robot1, robot2;
double radius1=1.1; // the radius of the two wheels of robot1 in inches
double radius2=1.1; // the radius of the two wheels of robot2 in inches
double speed1=1.5, speed2=3; // speed of robots in inches per second
double time1=16;               // motion time in seconds for robot1
double delaytime=8;            // delay time in seconds for robot2
double time2=8;                // motion time in seconds for robot2

/* set the speed for robot1 */
robot1.setSpeed(speed1, radius1);
/* set the speed for robot2 */
robot2.setSpeed(speed2, radius2);

/* robot1 drives first for a total of 'time1' seconds. 'delaytime' seconds later,
   robot2 drives for 'time2' seconds while robot1 also drives */
robot1.driveTimeNB(time1);
robot2.delaySeconds(delaytime);
robot2.driveTime(time2);
robot1.moveWait();  // wait till robot1 moved 'time1' seconds 
