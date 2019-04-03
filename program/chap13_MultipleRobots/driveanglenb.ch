/* File: driveanglenb.ch 
   Drive two two-wheeled robots with the same speed and angle continuously */
#include <mindstorms.h>
CMindstorms robot1, robot2;
double radius1=1.1; // the radius of the two wheels of robot1 in inches
double radius2=1.1; // the radius of the two wheels of robot2 in inches
double speed1=45, speed2=45;   // joint speed of robots in degrees per second
double angle1=720, angle2=720; // the rotated angles for joints for robot1 and robot2
double delaytime=0;            // delay time in seconds for robot2

/* set the speed for robot1 */
robot1.setJointSpeeds( NaN,speed1, speed1);
/* set the speed for robot2 */
robot1.setJointSpeeds( NaN,speed2, speed2);

/* robot1 drives for 'angle1' 'delaytime' seconds later, 
   robot2 drives for 'angle2' while robot1 also drives */
robot1.driveAngleNB(angle1);
robot2.delaySeconds(delaytime);
robot2.driveAngle(angle2);
robot1.moveWait();  // wait till robot1 moved 'angle1'
