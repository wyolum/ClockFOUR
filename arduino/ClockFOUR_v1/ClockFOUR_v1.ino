
#include <avr/pgmspace.h>
#include <Wire.h>      
#include <DS3231.h>

#include "bitmaps.h"

/************* Enable/disable debug mode *************/
//#define DEBUG

#ifdef DEBUG
#define PRINT_DEBUG(x)		Serial.print(x)
#define PRINTLN_DEBUG(x)	Serial.println(x)
#else
#define PRINT_DEBUG(x)
#define PRINTLN_DEBUG(x)
#endif

/************* Pin settings *************/
#define MATRIX_PIN			2
#define BUTTON_L			3
#define BUTTON_R			4
#define LDR_PIN				A0


/************* Some display settings *************/
#define MATRIX_WIDTH			14
#define MATRIX_HEIGHT			13
#define MIN_BRIGHTNESS			25
#define MAX_BRIGHTNESS			255

/************* Global time variablesrtc *************/
bool h12, PM;
DS3231 rtc;

/************* Types of button inputs *************/
typedef enum EventTypes {
	NO_EVENT = 0,
	BL_CLICK,        // Button left click
	BL_PRESS,        // Button left press
	BL_REPEAT,       // Button left repeat
	BR_CLICK,        // Button right click
	BR_PRESS,        // Button right press
	BR_REPEAT,       // Button right repeat
	EVENT_COUNT      // Number of event types in the queue
};

#define DEFAULT_REPEAT_DELAY		150      // number of milliseconds between each repeated button press (when held down)

/************* Colour modes *************/
typedef enum ColourModes {
	CM_ALL_WHITE = 0,
	CM_SOLID_COLOUR,
	CM_FADE,
	CM_RAINBOW,
	CM_PARTY,
	COLOUR_MODE_COUNT
};


/************* Display mode definitions *************/
typedef enum DisplayModeIdx {
	DISP_TIME = 0,
	DISP_SECONDS,
	MODE_COUNT
};

uint8_t fade[MODE_COUNT] = {
	20,		// Time mode = fast fade
	40,		// Seconds mode = very fast fade
};

typedef boolean (*DisplayModeFunc)(void);

DisplayModeFunc displayModes[MODE_COUNT] = {
	displayTime,
	displaySeconds,
};


/************* Settings struct definition *************/
typedef union Settings {
	// WARNING: array has to be at least as large as the number of elements in the struct
	uint8_t array[9];
	struct {
		uint8_t useDegF;					// 0 if degrees C, 1 if degrees F
		uint8_t displayMode;				// Stores the display mode we are currently in
		uint8_t colourModes[MODE_COUNT];	// Each display mode has its own colour mode
		uint8_t colourVal[MODE_COUNT];		// Each display also has its own colour value
	};
};
extern Settings clockSettings;


/**** Main Code ****/

void setup() {
	// Start the serial port
	Serial.begin(9600);

	// Start one wire
	Wire.begin();

	// Initialise the board inputs and outputs
	pinMode(MATRIX_PIN, OUTPUT);   // declare the ledPin as an OUTPUT:
	pinMode(LDR_PIN, INPUT);       // declare the LDRPin as an INPUT:
	
	// Initialise the display
	disp_init();
	
	// Load the settings from the EEPROM
	loadSettings();
	
	// Initialise the buttons
	buttonsInit();
        
	// display a welcome message
	disp_setBrightness();
	disp_ScrollWords("Clock4", -30, 1);
		
	// enter self test mode if a button has been held down
	if (popEvent() != NO_EVENT) {
                clearQueue();
		self_test(); 
	}
}


void loop() {	
	// p_colourMode stores a pointer to the current colour mode
	uint8_t *p_colourMode = &clockSettings.colourModes[clockSettings.displayMode];
	uint8_t *p_colourValue = &clockSettings.colourVal[clockSettings.displayMode];
	
	buttonsTick();
	
	// Depending on the buttons pressed, take the necessary action
	switch(popEvent()) {
	case BL_CLICK:
		clockSettings.displayMode++;
		if(clockSettings.displayMode >= MODE_COUNT) {
			clockSettings.displayMode = 0;
		}
		
		clearBufferHistory();
		
		// Update p_colourMode to the new display mode
		p_colourMode = &clockSettings.colourModes[clockSettings.displayMode];
		p_colourValue = &clockSettings.colourVal[clockSettings.displayMode];
		
		PRINT_DEBUG("Switched to display mode: ");
		PRINTLN_DEBUG(clockSettings.displayMode);
		
		saveSettings();
		break;
		
	case BR_CLICK:
		// Perhaps enter colour settings mode?
		
		PRINT_DEBUG("Current colour mode: ");
		PRINTLN_DEBUG(*p_colourMode);

		(*p_colourMode)++;
		if(*p_colourMode >= COLOUR_MODE_COUNT) {
			*p_colourMode = 0;
		}
		
		PRINT_DEBUG("Switched to colour mode:");
		PRINTLN_DEBUG(*p_colourMode);
		
		saveSettings();
		break;
		
	case BR_PRESS:
		// Pick the colour
		*p_colourValue = colourConfig(*p_colourValue);
		*p_colourMode = CM_SOLID_COLOUR;
		clearBufferHistory();
		saveSettings();
		break;
		
	case BL_PRESS:
		// Configure the clock
		clockConfig();
		break;
		
	default:
		break;
	}
	
	// Set the display brightness from the LDR
	disp_setBrightness();

	// First clear all the LEDs, and then depending on the mode call its display function
	pixBuffer_clear();
	displayModes[clockSettings.displayMode]();
	
	// Figure out which colour mode we are using and then display the pixels
	disp_refresh(*p_colourMode, *p_colourValue, fade[clockSettings.displayMode]);
}


boolean displayTime() {
	// Sets and clears all pixels to show the current time in letters
	uint16_t totalMinutes = rtc.getHour(h12, PM) * 60 + rtc.getMinute();
	loadTime(totalMinutes);
}


boolean displaySeconds() {
	// Sets and clear all pixels to show the current seconds count
	pixBuffer_loadVal(rtc.getSecond(), 0);  // put a "2" in the last place to activate the minute slider
}

uint8_t changeSetting(uint8_t origValue, uint8_t minimum, uint8_t maximum, uint16_t repeatDelay, void (*dispFunc)(uint8_t), uint16_t timeout = 0) {
	uint8_t value = origValue;
	long lastRepeat = millis();
	
	while(true) {
		buttonsTick();
		
		switch(popEvent()) {
			
		case BL_CLICK:
		case BL_PRESS:
			return value;
			
		case BR_CLICK:
		case BR_PRESS:
		case BR_REPEAT:
			if(millis() - lastRepeat < repeatDelay) {
				break;
			}
			
			lastRepeat = millis();
			
			value++;
			if(value > maximum) {
				value = minimum;
			}
			break;
			
		default:
			break;
		}
		
		if(timeout != 0 && lastRepeat + timeout < millis()) {
			return value;
		}
	
		dispFunc(value);
	}
	return value;
}


void colourWheelDisp(uint8_t colourMode) {
	// Configuration display function for the colour picker
	disp_refresh(CM_SOLID_COLOUR, colourMode, 0);
}


uint8_t colourConfig(uint8_t colourMode) {
	// Config function for the colour mode
	pixBuffer_clear();
	pixBuffer_loadBitmap(Circle_bw_bmp);
	
	return changeSetting(colourMode, 0, 255, 50, colourWheelDisp, 2000);
}


/************* Defines the different configuration modes *************/
typedef enum ConfigMode {
	HOUR,
	MINUTE,
	LAST_MODE
};

void clockConfig() {
	
	uint8_t mode;
	
	mode = HOUR;

	disp_showBWBitmap(Set_bw_bmp, 0x00FFFFFF, 0x00000000);
	waitDelayOrButton(1000);
	
	// Loop through all the configuration modes
	while(mode != LAST_MODE) {
		switch(mode) {

		case HOUR:
			{
				disp_showBWBitmap(Hour_bw_bmp, 0x00FFFFFF, 0x00000000);	// White on black
				waitDelayOrButton(2000);
				
				PRINTLN_DEBUG("Now entering hour value");
				rtc.setHour(changeSetting(rtc.getHour(h12, PM), 0, 23, DEFAULT_REPEAT_DELAY, disp_displayVal));
			}
			break;
			
		case MINUTE:
			{
				disp_showBWBitmap(Min_bw_bmp, 0x00FFFFFF, 0x00000000);	// White on black
				waitDelayOrButton(2000);
				
				PRINTLN_DEBUG("Now entering minute value");
				rtc.setMinute(changeSetting(rtc.getMinute(), 0, 59, DEFAULT_REPEAT_DELAY, disp_displayVal));
				
				// Set seconds to 0 for a clean start to the minute
				rtc.setSecond(0);
			}
			break;
			
		default:
			break;
		}
		
		// Select the next config mode
		mode++;
	}
	
	saveSettings();
	PRINTLN_DEBUG("Exiting configuration mode");
}


// Creates a delay loop that exits when either the time given
// has passed, or one of the buttons has been pressed
uint8_t waitDelayOrButton(uint16_t delayTime) {
	unsigned long stopTime = millis() + delayTime;
	uint8_t retVal = NO_EVENT;
	
	while(millis() < stopTime) {
		buttonsTick();
		retVal = popEvent();
		if(retVal == BL_CLICK || retVal == BR_CLICK) {
			// A click event has happened, quit the loop early
			break;
		}
	}
	
	return retVal;
}


void exampleDisplayFunction(uint8_t value) {
	PRINTLN_DEBUG(value);
}

