
#include <avr/pgmspace.h>
#include <Time.h>

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
#define TiMPIN				5
#define BUTTON_L			6
#define BUTTON_R			A0
#define CAP_SENSE			A1


/************* Settings struct definition *************/
typedef union Settings {
	// WARNING: array has to be at least as large as the number of elements in the struct
	uint8_t array[3];
	struct {
		uint8_t useGPS;
		uint8_t useDegF;
		uint8_t colour;
	};
};
extern Settings clockSettings;


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

        start_loop();
        
}


void loop() {
	buttonsTick();
	
        switch(current_mode) {
        case NORMAL_MODE:        // Normal time mode
                normal_loop();
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
                        break;
                }
                if(bothLongPressed()) {
		last_mode = NORMAL_MODE;
                current_mode = CONFIG_MODE;
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
                break;
        }       	
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
