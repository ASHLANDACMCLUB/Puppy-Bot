/* File: recorddistancecm.ch
   Record time and distances, plot the acquired data, using centimeters */
#include <mindstorms.h>
#include <chplot.h>
CMindstorms robot;
double speed = 6.5;        // speed in 6.5 centimeters/seconds 
double radius = 4.445;     // radius of the wheel in centimeters
double distance = 20;      // distance in centimeters
double timeInterval = 0.1; // time interval in 0.1 second 
int numDataPoints;         // number of data points recorded
robotRecordData_t timedata, distances; // recorded time and distances 
CPlot plot;                // plotting class

/* move to the zero position */
robot.resetToZero();

/* set the robot speed */
robot.setSpeed(speed, radius);

/* begin recording time and distance */
robot.recordDistanceBegin(timedata, distances, radius, timeInterval);

/* drive the specified distance based on the radius of the wheels */
robot.driveDistance(distance, radius);

/* end recording time and distance */
robot.recordDistanceEnd(numDataPoints);

/* plot the data */
plot.title("Distance versus time");
plot.label(PLOT_AXIS_X, "Time (seconds)");
plot.label(PLOT_AXIS_Y, "Distance (centimeters)");
plot.data2DCurve(timedata, distances, numDataPoints);
plot.plotting();
