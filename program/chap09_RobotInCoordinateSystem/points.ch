/* File: points.ch
   Note: This program uses drivexyTo() available in RoboSim only
         to move one Mindstorms to multiple points.
   Set the initial position (x, y) in RoboSim GUI to (0, 0) for the robot.
   A robot moves to specified points  */
#include <chplot.h>    /* for CPlot */
#include <mindstorms.h>   /* for CMindstorms */
CPlot plot;
CMindstorms robot;
double radius = 1.1;      // radius of 1.1 inches
double trackwidth = 4.54;  // the track width, the distance between two wheels
double x, y;               // x and y coordinates

/* move the robot to specified points */
robot.drivexyTo(12, 5.5, radius, trackwidth);
robot.drivexyTo(24, 30, radius, trackwidth);
robot.drivexyTo(36, 10, radius, trackwidth);
robot.drivexyTo(48, 5, radius, trackwidth);

/* plot the points */
plot.title("");
plot.label(PLOT_AXIS_X, "x (in)");
plot.label(PLOT_AXIS_Y, "y (in)");
plot.point(0, 0);
plot.point(12, 5.5);
plot.point(24, 30);
plot.point(36, 10);
plot.point(48, 5);
plot.plotting();
