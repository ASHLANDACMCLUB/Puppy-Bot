/* File: distance3.ch
   Calculate the distance of a robot traveled at 2.5 inches pers second. */
double t;           // the traveling time in seconds
double distance;    // distance traveled

t = 5.5;            // 5.5 seconds for traveling time

distance = 2.5 * t; // calculate the distance traveled
printf("The distance traveled by the robot is %lf inches.\n", distance);
