/* File: recorddistanceoffset2.ch
   Record time and distances with an initial offset distance by
       robot.driveDistance(offset, radius);
   plot the acquired data */
#include <mindstorms.h>
#include <chplot.h>
CMindstorms robot;
double speed = 2.5;        // speed in 2.5 inches/seconds 
double radius = 1.1;      // radius of the wheel in inches
double distance = 8;      // distance in inches
double offset = 4;         // the offset for the initial distance
double timeInterval = 0.1; // time interval in 0.1 second 
int numDataPoints;         // number of data points recorded
robotRecordData_t timedata, distances; // recorded time and distances 
CPlot plot;                // plotting class

/* move to the zero position */
robot.resetToZero();

/* set the robot speed */
robot.setSpeed(speed, radius);

/* drive to the offset of the distance before recording time and distance */
robot.driveDistance(offset, radius);

/* begin recording time and distance based on joint 2 */
robot.recordDistanceBegin(timedata, distances, radius, timeInterval);

/* drive the specified distance based on the radius of the wheels */
robot.driveDistance(distance, radius);

/* end recording time and distance */
robot.recordDistanceEnd(numDataPoints);

/* plot the data */
plot.title("Distance versus time");
plot.label(PLOT_AXIS_X, "Time (seconds)");
plot.label(PLOT_AXIS_Y, "Distance (inches)");
plot.axisRange(PLOT_AXIS_Y, 0, 14);
plot.ticsRange(PLOT_AXIS_Y, 1);
plot.data2DCurve(timedata, distances, numDataPoints);
plot.plotting();
