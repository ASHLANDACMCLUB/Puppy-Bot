/* File: grouparray.ch
 * A group with 4 Mindstorms in synchronized motion using an array of 4 elements.
 * 
 *        1       2    
 *      |--|    |--|    
 *      |__|    |__|  
 *
 *       3       4   
 *      |--|    |--| 
 *      |__|    |__|
 *
 * Make sure that robots are attached with wheels. */
#include <mindstorms.h>
CMindstorms robot[4];     /* declare an array of 4 Mindstorms */
CMindstormsGroup group;   /* declare a Mindstorms group  */
double radius = 1.1;      // radius of 1.1 inches
double trackwidth = 4.54; // the track width, the distance between two wheels

group.addRobots(robot);   /* add 4 Mindstorms to the group */

group.driveAngle(360);
group.driveAngle(-360);
group.turnLeft(90, radius, trackwidth);
group.driveAngle(360);
group.driveAngle(-360);
group.turnLeft(45, radius, trackwidth);
group.driveAngle(360);
group.driveAngle(-360);
group.turnRight(135, radius, trackwidth);
group.driveDistance(5, radius);
group.driveDistance(-5, radius);
