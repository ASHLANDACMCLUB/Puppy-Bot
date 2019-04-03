/* File: siren.ch
Drive a robot and play sirens at the same time */
#include <mindstorms.h>
CMindstorms robot;
double radius = 1.1;

//Play police car siren while the robot drives forward
robot.driveDistanceNB(45, radius);
robot.playMelody(PoliceCarSiren, 1);
//wait for driveDistanceNB() to finish
robot.moveWait(); 

//Play an ambulance siren while the robot drives backward
robot.driveDistanceNB(-45, radius);
robot.playMelody(AmbulanceSiren, 1);
robot.moveWait(); 

//Play a fire truck siren while the robot drives forward
robot.driveDistanceNB(45, radius);
robot.playMelody(FireTruckSiren, 1);
robot.moveWait(); 
