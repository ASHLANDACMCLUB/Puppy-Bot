/* File: recorddistancenumline.ch
   Plot robot distances in number line */
#include <mindstorms.h>
#include <chplot.h>
CMindstorms robot;
double speed = 2.5;        // speed in 2.5 inches/seconds 
double radius = 1.1;      // radius of the wheel in inches
double distance1 = 12;     // distance1 in inches
double distance2 = -5;     // distance2 in inches
double distance3 = 3;      // distance3 in inches
double timeInterval = 0.2; // time interval in 0.2 second 
int numDataPoints;         // number of data points recorded
robotRecordData_t timedata, distances; // recorded time and distances 
CPlot plot;                // plotting class

/* move to the zero position */
robot.resetToZero();

/* set the robot speed */
robot.setSpeed(speed, radius);

/* begin recording time and distance */
robot.recordDistanceBegin(timedata, distances, radius, timeInterval);

robot.driveDistance(distance1, radius);
robot.driveDistance(distance2, radius);
robot.driveDistance(distance3, radius);

/* end recording time and distance */
robot.recordDistanceEnd(numDataPoints);

plot.numberLine(0, distance1, distance2, distance3); // 3 lines
plot.legend("Theoretical, 1st line");
plot.legend("Theoretical, 2nd line");
plot.legend("Theoretical, 3rd line");
plot.numberLineScattern(distances, numDataPoints);
plot.legend("Experimental");
plot.label(PLOT_AXIS_X, "Distance (inches)");
plot.plotting();

