

#include <avr/pgmspace.h>
#include <Time.h>
#include "Language_English_TiM.h"

/************* Enable/disable debug mode *************/
#define DEBUG

#ifdef DEBUG
#define PRINT_DEBUG(x)		Serial.println(x)
#else
#define PRINT_DEBUG(x)
#endif


/************* Pin settings *************/
#define TiMPIN				A0
#define BUTTON_L			8
#define BUTTON_R			12
#define PIN_LOW				10

/************* Button definitions *************/
#define BUTTON_L_IDX		1
#define BUTTON_R_IDX		2

/************* Get keys definitions *************/
#define LONG_PRESS_MILLIS	2000
#define REPEAT_DELAY		100

typedef struct KeyStates{
	uint8_t justPressed;	// Buttons that have just been pressed
	uint8_t longPressed;	// Buttons that have just been pressed for a long time
	uint8_t repeated;	// Buttons that are automatically repeating
};

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

// The arduino compiler seems to have trouble getting the prototype from a function that takes
// a function pointer as input. It is therefore included here.
//uint8_t changeSetting(uint8_t origValue, uint8_t min, uint8_t max, void (*dispFunc)(uint8_t));

/**** Main Code ****/

void setup() {
	// Setup the GPIO
	pinMode(BUTTON_L, INPUT);
	digitalWrite(BUTTON_L, HIGH);
	pinMode(BUTTON_R, INPUT);
	digitalWrite(BUTTON_R, HIGH);
	
	pinMode(PIN_LOW, OUTPUT);
	digitalWrite(PIN_LOW, LOW);
	
	// Start the serial port
	Serial.begin(115200);
	
	// Initialise the display
	disp_init();
	
	// Load the settings from the EEPROM
	loadSettings();
}


void loop() {
	static int prev_sec = second() - 1;
	static int prev_min = minute() - 1;
	int sec;
	int min;
	
	static uint16_t ledStates[8] = { 0 };
	KeyStates *keys = NULL;
	
	keys = getKeys();
	
	// Depending on the keys just pressed, take the necessary action
	switch(keys->longPressed) {
	case BUTTON_L_IDX:
		PRINT_DEBUG("Pressed left a long time");
		break;
		
	case BUTTON_R_IDX:
		// A long press on the right button will change colour
		clockSettings.colour++;
		clockSettings.colour &= 0x03;
		saveSettings();
		PRINT_DEBUG("New colour: ");
		PRINT_DEBUG(clockSettings.colour);
		break;
		
	case BUTTON_L_IDX | BUTTON_R_IDX:
		clockConfig();
		break;
		
	default:
		break;
	}
	
	sec = second();
	min = minute();
	if(prev_sec != sec) {
		if(prev_min != min) {
			int totalMinutes = (hour() * 60) + min;
			loadWords(ledStates, totalMinutes / 5);
			prev_min = min;
		}

		// Make the bottom right LED blink every second
		ledStates[7] &= 0xFE;
		ledStates[7] |= sec & 0x01;
		prev_sec = sec;

		disp_display(ledStates);
	}
}


// This needs to be placed above where ever it's called from as the Arduino compiler seems to have
// trouble dealing with function pointers as parameters.
uint8_t changeSetting(uint8_t origValue, uint8_t min, uint8_t max, void (*dispFunc)(uint8_t)) {
	KeyStates *keys = NULL;
	uint8_t value = origValue;
	
	dispFunc(value);
	
	while(true) {
		keys = getKeys(true, 1000);
		if(keys->justPressed == BUTTON_L_IDX) {
			break;
		} else if(keys->justPressed == BUTTON_R_IDX || keys->repeated == BUTTON_R_IDX) {
			value++;
			if(value > max) {
				value = min;
			}
			dispFunc(value);
		}
	}
	return value;
}


/************* Defines the different configuration modes *************/
typedef enum ConfigMode {
	GPS = 0,
	HOUR,
	MINUTE10,
	MINUTE1,
	TEMP_CF,
	LAST_MODE
};

// A bit of a hack - if we skip setting the time (because it is set through GPS)
// we jump to skip time. Not very elegant but will do for now
#define SKIP_TIME	MINUTE1

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
				hours = changeSetting(hours, 0, 23, matrixPrintFirst);
			}
			break;
			
		case MINUTE10:
			{
				uint8_t minute10 = minute() / 10;
				PRINT_DEBUG("Now entering minute10 value");
				minute10 = changeSetting(minute10, 0, 6, matrixPrintFirst);
			}
			break;
			
		case MINUTE1:
			{
				uint8_t minute1 = minute() % 10;
				PRINT_DEBUG("Now entering minute1 value");
				minute1 = changeSetting(minute1, 0, 9, matrixPrintSecond);
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
