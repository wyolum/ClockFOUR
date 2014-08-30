
#include <avr/pgmspace.h>


/************* Enable/disable debug mode *************/
#define DEBUG

#ifdef DEBUG
#define PRINT_DEBUG(x)		Serial.println(x)
#define PRINTLN_DEBUG(x)        Serial.println(x)
#else
#define PRINT_DEBUG(x)
#define PRINTLN_DEBUG(x)
#endif

/************* Pin settings *************/
#define BUTTON_L			6
#define BUTTON_R			A0
#define CAP_SENSE			A1

/************* Types of button inputs *************/
typedef enum EventTypes {
	NO_EVENT = 0,
	BL_CLICK,
	BL_PRESS,
	BL_REPEAT,
	BR_CLICK,
	BR_PRESS,
	BR_REPEAT
};

#define REPEAT_DELAY		200


/**** Main Code ****/

void setup() {
	// Start the serial port
	Serial.begin(9600);
	
	// Initialise the buttons
	buttonsInit();
}


void loop() {
	buttonsTick();

        switch(popEvent()) {
        case BL_CLICK:
          printbuttonpress(BL_CLICK);
        break;
                        
        case BR_CLICK:
          printbuttonpress(BR_CLICK);
        break;
                        
        case BR_PRESS:
          printbuttonpress(BR_PRESS);
        break;

        case BL_PRESS:
          printbuttonpress(BL_PRESS);
        break;

        case BR_REPEAT:
          printbuttonpress(BR_REPEAT);
        break;

        case BL_REPEAT:
          printbuttonpress(BL_REPEAT);
        break;        
                        
        default:
        break;
        }
        
        if(bothLongPressed()) {
          printbuttonpress(99);
        }

}


void printbuttonpress(int button) {
  PRINT_DEBUG("Button detected: ");
  PRINTLN_DEBUG(button); 
}

