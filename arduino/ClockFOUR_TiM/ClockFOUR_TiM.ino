
#include <avr/pgmspace.h>
#include <Time.h>
#include <PixelStates.h>
#include <Wire.h>

/************* Enable/disable debug mode *************/
#define DEBUG

#ifdef DEBUG
#define PRINT_DEBUG(x)		Serial.print(x)
#define PRINTLN_DEBUG(x)	Serial.println(x)
#else
#define PRINT_DEBUG(x)
#define PRINT_DEBUG(x)
#endif

/************* Pin settings *************/
#define MATRIX_PIN			5
#define BUTTON_L			6
#define BUTTON_R			A0
#define CAP_SENSE			A1
#define LDR_PIN                         A7

/************* Some display settings *************/
#define MATRIX_WIDTH			16
#define MATRIX_HEIGHT			8
#define MIN_BRIGHTNESS                  50
#define MAX_BRIGHTNESS                  255

/************* Global time variable *************/
tmElements_t globalTime;

/************* Types of button inputs *************/
typedef enum EventTypes {
	NO_EVENT = 0,
	BL_CLICK,        // Button left click
	BL_PRESS,        // Button left press
	BL_REPEAT,       // Button left repeat
	BR_CLICK,        // Button right click
	BR_PRESS,        // Button right press
	BR_REPEAT,       // Button right repeat
	EVENT_COUNT      // Numer of events in the queue
};

#define REPEAT_DELAY		150      // number of milliseconds between each repeated button press (when held down)

/************* Colour modes *************/
typedef void (*ColourModeFunc)(PixelStates *, uint32_t);
typedef struct ColourMode {
	ColourModeFunc function;
	uint32_t colour;
};

#define COLOUR_MODE_COUNT	9

ColourMode colourModes[COLOUR_MODE_COUNT] = {
	{ disp_display, 0x00FFFFFF },		// All white
	{ disp_display, 0x000000FF },		// All blue
	{ disp_display, 0x0000FF00 },		// All green
	{ disp_display, 0x00FF0000 },		// All red
	{ disp_display, 0x00FFFF00 },		// All yellow
	{ disp_display, 0x00FF00FF },		// All purple
	{ disp_display, 0x0000FFFF },		// All cyan
	{ disp_fancyFire, 0x0 },			// Fire
	{ disp_random, 0x0 }				// Random
};


/************* Display mode definitions *************/
typedef enum DisplayModeIdx {
	DISP_TIME = 0,
	DISP_SECONDS,
	DISP_TEMP,
	MODE_COUNT
};

typedef boolean (*DisplayModeFunc)(PixelStates *);

DisplayModeFunc displayModes[MODE_COUNT] = {
	displayTime,
	displaySeconds,
	displayTemp
};


/************* Settings struct definition *************/
typedef union Settings {
	// WARNING: array has to be at least as large as the number of elements in the struct
	uint8_t array[6];
	struct {
		uint8_t useGPS;
		uint8_t useDegF;					// 0 if degrees C, 1 if degrees F
		uint8_t displayMode;				// Stores the display mode we are currently in
		uint8_t colourModes[MODE_COUNT];	// Each display mode has its own colour mode
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
        pinMode(MATRIX_PIN, OUTPUT);  // declare the ledPin as an OUTPUT:
        pinMode(LDR_PIN, INPUT);       // declare the LDRPin as an INPUT:
	
	// Initialise the display
	disp_init();
	
	// Load the settings from the EEPROM
	loadSettings();
	
	// Initialise the buttons
	buttonsInit();
}


void loop() {
	// Stores which pixels are on/off
	static PixelStates pixels(MATRIX_WIDTH, MATRIX_HEIGHT);
	
	// p_colourMode stores a pointer to the current colour mode
	uint8_t *p_colourMode = &clockSettings.colourModes[clockSettings.displayMode];
	
	buttonsTick();
	
	// Depending on the buttons pressed, take the necessary action
	switch(popEvent()) {
	case BL_CLICK:
		clockSettings.displayMode++;
		if(clockSettings.displayMode >= MODE_COUNT) {
			clockSettings.displayMode = 0;
		}
		
		// Update p_colourMode to the new display mode
		p_colourMode = &clockSettings.colourModes[clockSettings.displayMode];
		
		PRINT_DEBUG("\nSwitched to mode");
		PRINT_DEBUG(clockSettings.displayMode);
		
		saveSettings();
		break;
		
	case BR_CLICK:
		// Perhaps enter colour settings mode?
		
		PRINT_DEBUG("Current colour");
		PRINT_DEBUG(*p_colourMode);

		(*p_colourMode)++;
		if(*p_colourMode >= COLOUR_MODE_COUNT) {
			*p_colourMode = 0;
		}
		
		PRINT_DEBUG("\nSwitched to colour");
		PRINT_DEBUG(*p_colourMode);
		
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
	
	// Get the latest time from the RTC
	updateTime();
	
        // Set the display brightness from the LDR
        setBrightness();

	// First clear all the LEDs, and then depending on the mode call its display function
	pixels.fillScreen(0);
	displayModes[clockSettings.displayMode](&pixels);
	
	// Figure out which colour mode we are using and then display the pixels
	ColourMode cm = colourModes[*p_colourMode];
	cm.function(&pixels, cm.colour);
}


void updateTime() {
	// For now it gets time from Time.h which is inaccurate.
	// TODO: get time from RTC
	breakTime(now(), globalTime);

}

        uint16_t totalMinutes, seconds_count = 0;
boolean displayTime(PixelStates *pixels) {
	// Show the time!
//	uint16_t totalMinutes = (globalTime.Hour * 60) + globalTime.Minute;

// temporary code to fast forward time to check display accuracy
        seconds_count++;
        if (seconds_count > 60) {
          totalMinutes++;
          seconds_count = 0;
        }
        if (totalMinutes > 1439) totalMinutes = 0;
        
	loadTime(pixels, totalMinutes);
}


boolean displaySeconds(PixelStates *pixels) {
	disp_loadVal(pixels, globalTime.Second);
}


boolean displayTemp(PixelStates *pixels) {
	// TODO: fill with real temperature value
	disp_loadVal(pixels, 23);
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
	
	uint8_t mode;
	
	// Don't give the GPS option if none is attached
	if(gpsPresent()) {
		mode = GPS;
	} else {
		mode = HOUR;
		clockSettings.useGPS = 0;
	}
	
	// Loop through all the configuration modes
	while(mode != LAST_MODE) {
		switch(mode) {
		case GPS:
			{
				PRINT_DEBUG("Now entering GPS value");
				
				// TODO: Scroll 'GPS' across the screen
				
				clockSettings.useGPS = changeSetting(clockSettings.useGPS, 0, 1, exampleDisplayFunction);
				if(clockSettings.useGPS) {
					mode = SKIP_TIME;
				}
			}
			break;
			
		case HOUR:
			{
				updateTime();
				
				// TODO: Scroll 'Hours' across the screen
				
				PRINT_DEBUG("Now entering hour value");
				globalTime.Hour = changeSetting(globalTime.Hour, 0, 23, disp_displayVal);
			}
			break;
			
		case MINUTE:
			{
				// TODO: Scroll 'Mins' (?) across the screen
				
				PRINT_DEBUG("Now entering minute value");
				globalTime.Minute = changeSetting(globalTime.Minute, 0, 59, disp_displayVal);
				
				// Set seconds to 0 for a clean start to the minute
				globalTime.Second = 0;
				
				// TODO: load the new time into the RTC
				setTime(makeTime(globalTime));
			}
			break;
			
		case TEMP_CF:
			{
				// TODO: Scroll 'Temp' across the screen
				
				PRINT_DEBUG("Now entering whether temp should be represented in C (0) or F (1)");
				clockSettings.useDegF = changeSetting(clockSettings.useDegF, 0, 1, disp_TempCF);
			}
			break;
			
		default:
			break;
		}
		
		// Select the next config mode
		mode++;
	}	
	
	saveSettings();
	PRINT_DEBUG("Exiting configuration mode");
}


void exampleDisplayFunction(uint8_t value) {
	PRINT_DEBUG(value);
}

