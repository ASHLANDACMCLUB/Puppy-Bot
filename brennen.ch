#include <mindstorms.h>
CMindstorms robot;

robot.setSpeed(speed, radius);

robot.playMelody(MarioTheme, 1);
/* drive forward by rolling two wheels for 360 degrees */
robot.driveDistance(-10, 1.1);
