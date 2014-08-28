
#include <avr/pgmspace.h>
#include <Time.h>

/************* Enable/disable debug mode *************/
#define DEBUG

#ifdef DEBUG
#define PRINT_DEBUG(x)		Serial.println(x)
#else
#define PRINT_DEBUG(x)
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
}


void loop() {
	uint16_t ledStates[8] = { 0 };
		
	buttonsTick();
		
	// Depending on the buttons pressed, take the necessary action
	switch(popEvent()) {
	case BL_CLICK:
		PRINT_DEBUG("Click left");
		break;
		
	case BR_CLICK:		
		// Perhaps enter colour settings mode?
		
		// This will have to do for now
		clockSettings.colour++;
		saveSettings();
		break;
		
	default:
		break;
	}
	
	// As buttons pressed are notified in a queue, detecting whether two
	// buttons are pressed needs to be done separately
	if(bothLongPressed()) {
		clockConfig();
	}
	
	// Show the time!
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
	PRINT_DEBUG("Exiting configuration mode");
}


void exampleDisplayFunction(uint8_t value) {
	PRINT_DEBUG(value);
}
