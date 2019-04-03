/* File: group.ch
   Control multiple robot modules simultaneously using the CMindstormsGroup class */
#include <mindstorms.h>
CMindstorms robot1, robot2;
CMindstormsGroup group;  // the robot group 

/* add the two modules as members of the group */
group.addRobot(robot1);
group.addRobot(robot2);

group.driveAngle(360);  // drive robots forward
group.driveAngle(-360); // drive robots backward
