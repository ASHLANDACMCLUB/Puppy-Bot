/* File: batterytest.ch
   Get the battery voltage every 5 minutes and store it in a file until the battery 
   dies. Then plot voltage vs. time from the file. */
#include <mindstorms.h>
#include <chplot.h>
CMindstorms robot;
CPlot plot;
double time1 = 300;   // 5 minutes == 5 * 60 seconds == 300 seconds.
double hour = 3600.0; //1 hour == 1 * 60 minutes * 60 seconds == 3600 seconds.
double totalTime = 0; // a variable to keep track of the total time in seconds.
double voltage = 4.2; // a starting value for v, so that the program enters the 
                      //while loop.
double speed=200; // max joint speed(deg/s).
string_t filename = "voltage.txt"; //The file used to store the data.
FILE * stream;  // this will be the file stream.

//Set joints to maximum speed
robot.setJointSpeeds(NaN,speed,speed);

stream = fopen("voltage.txt", "w"); //Open the file stream
if(stream == NULL) // If file stream does not open successfully,
{                   // then exit the program.
    printf("Error: cannot open 'voltage.txt'\n");
    exit(-1);
}

// repeat the following until v < 3.3, when battery should die.
while (voltage >= 3.3){

    // moveTime() for 5 minutes
    robot.moveTime(time1);
    
    // add 5 minutes to total time
    totalTime = totalTime + (time1/hour);

    // get the battery voltage
    robot.getBatteryVoltage(voltage);
    
    // store time and voltage values in a file
    fprintf(stream, "%lf %lf\n", totalTime, voltage);
    
}
fclose(stream);

plot.title("Max speed: Remaining Battery Voltage vs. Time");
plot.label(PLOT_AXIS_X, "time (hours)");
plot.label(PLOT_AXIS_Y, "battery voltage (volts)");
plot.dataFile("voltage.txt");
plot.plotting();
