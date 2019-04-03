/* File name: colorvalue.ch
    Uses the color sensor to determine the color
    of an object placed in front of the sensor.
    The sensor will return an integer value between
    0-7, which will correspond to a specific color. */
#include <mindstorms.h>
CMindstorms robot;
int colorValue; 
string_t answer="yes";

robot.setSensorColor(PORT1, "Color");

while(answer == "yes"){
    printf("\nReading color.\n");
    robot.getSensorColorValue(PORT1, colorValue);
    
    if(colorValue == 0){
        printf("No Color.\n");
    }
    else if(colorValue == 1){
        printf("Black.\n");
    }
    else if(colorValue == 2){
        printf("Blue.\n");
    }
    else if(colorValue == 3){
        printf("Green.\n");
    }
    else if(colorValue == 4){
        printf("Yellow.\n");
    }
    else if(colorValue == 5){
        printf("Red.\n");
    }
    else if(colorValue == 6){
        printf("White.\n");
    }
    else if(colorValue == 7){
        printf("Brown.\n");
    }
    
    robot.delaySeconds(2);
    
    printf("Read another color? (yes/no)\n");
    scanf("%s", &answer);
}
