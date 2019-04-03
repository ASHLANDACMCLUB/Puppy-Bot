/* File: righttriangle.ch
   Note: This program uses drivexyTo() available in RoboSim only
         to move one Mindstorms from (0, 0) to (3, 0), (3, 4), then to (0, 0).
   Set the initial position (x, y) in RoboSim to (0, 0) for the robot. */
#include <chplot.h>    /* for CPlot */
#include <mindstorms.h>   /* for CMindstorms */
CPlot plot;
CMindstorms robot;
double radius = 1.1;      // radius of 1.1 inches
double trackwidth = 4.54;  // the track width, the distance between two wheels
double x, y;               // x and y coordinates

/* move the robot to specified points */
robot.drivexyTo(3, 0, radius, trackwidth);
robot.getxy(x, y);
printf("getxy(x, y) = (%lf, %lf)\n", x, y);

robot.drivexyTo(3, 4, radius, trackwidth);
robot.getxy(x, y);
printf("getxy(x, y) = (%lf, %lf)\n", x, y);

robot.drivexyTo(0, 0, radius, trackwidth);
robot.getxy(x, y);
printf("getxy(x, y) = (%lf, %lf)\n", x, y);

/* the distance between points (0, 0) and (3, 4) */
printf("distance = %lf\n", sqrt(3*3 + 4*4));


/* plot the points */
plot.title("");
plot.label(PLOT_AXIS_X, "x (in)");
plot.label(PLOT_AXIS_Y, "y (in)");
plot.line(0, 0, 3, 0);
plot.line(3, 0, 3, 4);
plot.line(3, 4, 0, 0);
plot.axisRange(PLOT_AXIS_X, 0, 5); // set the x-axis range
plot.axisRange(PLOT_AXIS_Y, 0, 5); // set the y-axis range
plot.sizeRatio(1);
plot.plotting();
