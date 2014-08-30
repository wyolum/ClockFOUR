
#include <avr/pgmspace.h>
#include <Time.h>
#include "LANGUAGE_English_TiM.h"

/************* Enable/disable debug mode *************/
#define DEBUG  // comment this line out to disable debugging

#ifdef DEBUG
#define PRINT_DEBUG(x)		Serial.println(x)
#define PRINTLN_DEBUG(x)        Serial.println(x)
#else
#define PRINT_DEBUG(x)
#define PRINTLN_DEBUG(x)
#endif

/************* ClockFOUR is mode driven *************/
// Define modes
typedef void (* CallBackPtr)(); // this is a typedef for callback funtions
inline void do_nothing(void){}  // empty call back

struct Mode{
  uint8_t id;        // Mode ID
  CallBackPtr setup; // to be called when Mode is initialized
  CallBackPtr loop;  // to be called as often as possible when mode is active
  CallBackPtr exit;  // to be called when mode is exited
  CallBackPtr BL_C;  // to be called when BUTTON_LEFT is clicked
  CallBackPtr BL_P;   // to be called when BUTTON_LEFT is pressed (held)
  CallBackPtr BL_R;   // to be called when BUTTON_LEFT is repeated
  CallBackPtr BR_C;  // to be called when BUTTON_RIGHT is clicked
  CallBackPtr BR_P;   // to be called when BUTTON_RIGHT is pressed (held)
  CallBackPtr BR_R;   // to be called when BUTTON_RIGHT is repeated
};

// active mode pointer
Mode *mode_p;

// MODE Constants
const uint8_t N_MODE = 5;

const uint8_t NORMAL_MODE = 0;
const uint8_t SET_TIME_MODE = 1;
const uint8_t SECONDS_MODE = 2;
const uint8_t TEMPERATURE_MODE = 3;
const uint8_t SET_COLOUR_MODE = 4;

// Temperature unit constants
const uint8_t DEG_C = 0;
const uint8_t DEG_F = 1;

/* last_mode_id is used for returning to previous mode.  
 * Usually best to return to NORMAL_MODE, but this allows sub-modes to return
 * to the mode that invoked them.
 */
uint8_t last_mode_id = NORMAL_MODE; // the last mode clock was in...

// indexed by mode.id
Mode Modes[N_MODE];

//Time units
typedef enum {YEAR, MONTH, DAY, HOUR, MINUTE, SECOND} unit_t;

// Begin mode declarations
Mode NormalMode = {NORMAL_MODE, 
		    Normal_setup, Normal_loop, Normal_exit, 
		    Normal_BLC, do_nothing, do_nothing, Normal_BRC, Normal_BRP, do_nothing};
Mode SetTimeMode = {SET_TIME_MODE, 
		    SetTime_setup,SetTime_loop,SetTime_exit,
		    BLC, BLP, BLR, BRC, BRP, BRR};
Mode SecondsMode = {SECONDS_MODE, 
		    Seconds_setup, Seconds_loop, Seconds_exit, 
		    Seconds_BLC, do_nothing, do_nothing, Seconds_BRC, do_nothing, do_nothing};
Mode TemperatureMode = {TEMPERATURE_MODE, 
		    Temperature_setup, Temperature_loop, Temperature_exit, 
		    BLC, BLP, BLR, BRC, BRP, BRR};
Mode SetTColourMode = {SET_COLOUR_MODE, 
		    SetColour_setup,SetColour_loop,SetColour_exit,
		    BLC, BLP, BLR, BRC, BRP, BRR};


/************* Pin settings *************/
#define TiMPIN				5
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

// Temperature unit constants
const uint8_t DEG_C = 0;
const uint8_t DEG_F = 1;

uint8_t last_mode = 0;

long time_in_mode = 0;

typedef enum ClockModes {
	NORMAL_MODE = 0,
	CONFIG_MODE,
	SECONDS_MODE,
	TEMP_MODE,
	COLOUR_MODE,
	MODE_COUNT			// Mode count, being the last item in the enum, will always hold the number of nodes
};

ClockModes current_mode = NORMAL_MODE;

/**** Main Code ****/

void setup() {
	// Start the serial port
	Serial.begin(9600);
	
	// Initialise the display
	disp_init();
	
	// Load the settings from the EEPROM
	loadSettings();
	
	// Initialise the buttons
	buttonsInit();
        current_mode = NORMAL_MODE;
        
//        start_loop();
        
}


void loop() {
	buttonsTick();
	
        switch(current_mode) {
        case NORMAL_MODE:        // Normal time mode
                normal_loop();
                waitWhilePressed();
                switch(popEvent()) {
                case BL_CLICK:
                        last_mode = NORMAL_MODE;
                        current_mode = SECONDS_MODE;
                        break;
                        
                case BR_CLICK:
                        clockSettings.colour++;
                        saveSettings();
                        break;
                        
                case BR_PRESS:
                        last_mode = NORMAL_MODE;
                        current_mode = COLOUR_MODE;
                        break;
                                             
                default:
                        donothing();
                }
                if(bothLongPressed()) {
//		last_mode = NORMAL_MODE;
//                current_mode = CONFIG_MODE;
                }

        case CONFIG_MODE:        // Time set mode
                clockConfig();  // returns to mode 1 when completed
                break;

        case SECONDS_MODE:        // Seconds mode
                // seconds mode procedure here
                break;

        case TEMP_MODE:        // Temperature mode
                // temperature mode procedure here
                break;

        case COLOUR_MODE:        // Colour select mode
                // colour select mode procedure here
                break;

        default:
                donothing();
                break;
        }       	
}


void donothing() {
}

void start_loop() {
PRINT_DEBUG("Entering start_loop");
  delay(1000);
  buttonsTick();

  // display the start logo

    int key = popEvent();
  if ((key = BL_CLICK) | (key = BR_CLICK)) {
    self_test();
  } else current_mode = NORMAL_MODE;
}

void self_test() {
  PRINTLN_DEBUG("We are now in Self Test mode!");
}

void normal_loop() {
  // Show the time!
  PRINT_DEBUG("Normal Loop");
  uint16_t ledStates[8] = { 0 };
  uint16_t totalMinutes = (hour() * 60) + minute();
  loadTime(ledStates, totalMinutes);
  disp_display(ledStates);
}

// This needs to be placed above where ever it's called from as the Arduino compiler seems to have
// trouble dealing with function pointers as parameters.
uint8_t changeSetting(uint8_t origValue, uint8_t mins, uint8_t max, void (*dispFunc)(uint8_t)) {
	uint8_t value = origValue;
	static long lastRepeat = 0;
	
	dispFunc(value);
	
	// Wait for the user to remove their grubby fingers before continuing.
	waitWhilePressed();
	
	while(true) {
		buttonsTick();
		
		switch(popEvent()) {
			
		case BL_CLICK:
		case BL_PRESS:
			return value;
			
		case BR_CLICK:
		case BR_PRESS:
		case BR_REPEAT:
			if(millis() - lastRepeat < REPEAT_DELAY) {
				break;
			}
			
			lastRepeat = millis();
		
			value++;
			if(value > max) {
				value = mins;
			}
			dispFunc(value);
			break;
			
		default:
			break;
		}
	}
	return value;
}


/************* Defines the different configuration modes *************/
typedef enum ConfigMode {
	GPS = 0,
	HOUR,
	MINUTE,
	TEMP_CF,
	LAST_MODE
};

// A bit of a hack - if we skip setting the time (because it is set through GPS)
// we jump to skip time. Not very elegant but will do for now
#define SKIP_TIME	MINUTE

void clockConfig() {
	// Loop through all the configuration modes
	for(uint8_t mode = GPS; mode != LAST_MODE; mode++) {
		switch(mode) {
		case GPS:
			{
				PRINT_DEBUG("Now entering GPS value");				
				clockSettings.useGPS = changeSetting(clockSettings.useGPS, 0, 1, exampleDisplayFunction);
				if(clockSettings.useGPS) {
					mode = SKIP_TIME;
				}
			}
			break;
			
		case HOUR:
			{
				uint8_t hours = hour();
				PRINT_DEBUG("Now entering hour value");
				hours = changeSetting(hours, 0, 23, matrixDisplayVal);
			}
			break;
			
		case MINUTE:
			{
				uint8_t minute60 = minute();
				PRINT_DEBUG("Now entering minute value");
				minute60 = changeSetting(minute60, 0, 59, matrixDisplayVal);
			}
			break;
			
		case TEMP_CF:
			{
				PRINT_DEBUG("Now entering whether temp should be represented in C (0) or F (1)");
				clockSettings.useDegF = changeSetting(clockSettings.useDegF, 0, 1, exampleDisplayFunction);
			}
			break;
			
		default:
			break;
		}
	}
	
	// TODO: save these new settings to the arduino Time library
	
	// TODO: load the new time into the RTC
	
	saveSettings();
        current_mode = NORMAL_MODE;
	PRINT_DEBUG("Exiting configuration mode");
}


void exampleDisplayFunction(uint8_t value) {
	PRINT_DEBUG(value);
}
