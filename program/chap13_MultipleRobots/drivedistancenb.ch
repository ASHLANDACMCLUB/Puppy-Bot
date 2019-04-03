/* File: drivedistancenb.ch 
   Drive two two-wheeled robots with different speeds continuously 
   with specified distances. */
#include <mindstorms.h>
CMindstorms robot1, robot2;
double radius1=1.1; // the radius of the two wheels of robot1 in inches
double radius2=1.1; // the radius of the two wheels of robot2 in inches
double speed1=1.5, speed2=3; // speed of robots in inches per second
double distance1=24, distance2=24; // the travelled distances for robot1 and robot2
double delaytime=8;            // delay time in seconds for robot2

/* set the speed for robot1 */
robot1.setSpeed(speed1, radius1);
/* set the speed for robot2 */
robot2.setSpeed(speed2, radius2);

/* robot1 drives for 'distances1'
 'delaytime' seconds later, robot2 drives for 'distance2' while robot1 also drives */
robot1.driveDistanceNB(distance1, radius1);
robot2.delaySeconds(delaytime);
robot2.driveDistance(distance2, radius2);
robot1.moveWait();  // wait till robot1 drove 'distance1'
