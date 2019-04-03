/* File: turnleftnb.ch 
   Use turnLeftNB() and turnRightNB() */
#include <mindstorms.h>
CMindstorms robot1, robot2;
double radius=1.1;      // radius of 1.1 inches
double trackwidth=4.54;  // the track width, the distance between two wheels
double speed=45;    // joint speed of robots in degrees per second
double angle=360;   // the rotated angles for joints for robot1 and robot2

/* set the speed for robot1 */
robot1.setJointSpeeds( NaN,speed, speed);
/* set the speed for robot2 */
robot2.setJointSpeeds(NaN,speed, speed);

/* drive two robots forward at the same time */
robot1.driveAngleNB(angle);
robot2.driveAngle(angle);
robot1.moveWait();  // wait till robot1 finishes movement

/* robot1 turn left 90 degrees and robot2 turn right 90 degrees  */
robot1.turnLeftNB(90, radius, trackwidth);
robot2.turnRight(90, radius, trackwidth);
robot1.moveWait();  // wait till robot1 finishes movement

/* drive two robots forward at the same time */
robot1.driveAngleNB(angle);
robot2.driveAngle(angle);
robot1.moveWait();  // wait till robot1 finishes movement
