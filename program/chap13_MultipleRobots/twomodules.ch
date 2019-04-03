/* File: twomodules.ch
   Control two robots sequentially. */
#include <mindstorms.h>
CMindstorms robot1, robot2;

/* move joints 2 and 3 for robot1 */
robot1.move(NaN, 360, 360);

/* move joints 2 and 3 for robot2 */
robot2.move(NaN, 360, 360);
