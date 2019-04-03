/* File: scattern.ch
   Plot the positions of a robot versus time for 6 points of data in arrays */
#include <chplot.h>    /* for the function plotxy() */

CPlot plot;
/* declare two sets of arrays with 6 points for plottting for p versus t */
double t[6] = {0.00, 2.00, 4.00, 6.00, 8.00, 10.00};
double p[6] = {1.25, 1.75, 2.25, 2.75, 3.25, 3.75};

plot.title("Position Plot");
plot.label(PLOT_AXIS_X, "time (seconds)");
plot.label(PLOT_AXIS_Y, "position (meters)");
plot.scattern(t, p, 6);
plot.plotting();
