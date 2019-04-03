/* File: groups.ch
   Control multiple robot groups simultaneously using the CLinkbotGroup class */
#include <mindstorms.h>
CMindstorms robot1, robot2, robot3, robot4;
CMindstormsGroup groupA, groupB, groupC, groupD;
double radius = 1.1;      // radius of 1.1 inches
double trackwidth = 4.54; // the track width, the distance between two wheels

/* add the robots to groups. The groups are organized as such:
   Group A: 1, 2, 3, 4
   Group B: 1, 2
   Group C: 3, 4
   Group D: 1, 2, 3 */
/* Group A */
groupA.addRobot(robot1);
groupA.addRobot(robot2);
groupA.addRobot(robot3);
groupA.addRobot(robot4);
/* Group B */
groupB.addRobot(robot1);
groupB.addRobot(robot2);
/* Group C */
groupC.addRobot(robot3);
groupC.addRobot(robot4);
/* Group D */
groupD.addRobot(robot1);
groupD.addRobot(robot2);
groupD.addRobot(robot3);

/* make group B roll forward and group C roll backward at the same time */
groupB.driveAngleNB(360);
groupC.driveAngleNB(-360);
groupB.moveWait();
groupC.moveWait();

/* make all robots roll forward */
groupA.driveAngle(360);

/* make robots 1 and 2 (Group B) turn left, and robots 3 and 4 (Group C) turn right. */
groupB.turnLeftNB(90, radius, trackwidth);
groupC.turnRightNB(90, radius, trackwidth);
groupB.moveWait();
groupC.moveWait();

/* make robot 4 roll forward
   while three robots in group D drive backward. */
groupD.driveAngleNB(-360);
robot4.driveAngleNB(360);
groupD.moveWait();
robot4.moveWait();

