/* File: sirens.ch
Drive robots and play sirens at the same time */
#include <linkbot.h>
CLinkbotI robot, robot2;
double radius = 1.1;   

//Play police car and ambulance sirens while the robots drive forward
robot.driveDistanceNB(45, radius);
robot2.driveDistanceNB(45, radius);
robot.playMelodyNB(PoliceCarSiren, 1);
//robot2.playMelody(AmbulanceSiren, 1);
robot2.playMelody(FireTruckSiren, 1);
robot.moveWait(); 
robot2.moveWait(); 
robot.playNotesWait(); 

