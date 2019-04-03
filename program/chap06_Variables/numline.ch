/* File: numline.ch 
   Arithmetic operation 0+12 in number line of integer */
#include <chplot.h> 
CPlot plot;

plot.numberLine(0, 12);
plot.label(PLOT_AXIS_X, "Distance (inches)");
plot.plotting();
