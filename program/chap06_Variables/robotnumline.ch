/* File: robotnumline.ch
   Plot robot distances in number line */
#include <mindstorms.h>
#include <chplot.h>
CMindstorms robot;
double radius = 1.1;      // radius of the wheel in inches
double distance1 = 12;     // distance1 in inches
double distance2 = -5;     // distance2 in inches
double distance3 = 3;      // distance3 in inches
CPlot plot;                // plotting class

robot.driveDistance(distance1, radius);
robot.driveDistance(distance2, radius);
robot.driveDistance(distance3, radius);

/* assume robot starts at 0 */
plot.numberLine(0, distance1, distance2, distance3);
plot.label(PLOT_AXIS_X, "Distance (inches)");
plot.plotting();

