

#include <avr/pgmspace.h>
#include <Time.h>
#include "english_v2.h"

#define DEBUG

#define TiMPIN				A0
#define BUTTON_L			8
#define BUTTON_R			12
#define PIN_LOW				10

#ifdef DEBUG
	#define PRINT_DEBUG(x)		Serial.println(x)
#else
	#define PRINT_DEBUG(x)
#endif

typedef enum ConfigMode {
	GPS = 0,
	HOUR,
	MINUTE10,
	MINUTE1,
	TEMP_CF,
	LAST_MODE
};

#define SKIP_TIME	MINUTE1

#define LONG_PRESS_MILLIS	2000
#define REPEAT_DELAY		100

#define BUTTON_L_IDX		1
#define BUTTON_R_IDX		2

typedef struct KeyStates{
	uint8_t justPressed;	// Buttons that have just been pressed
	uint8_t longPressed;	// Buttons that have just been pressed for a long time
};


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
}


void loop() {
	static int prev_sec = second();
	static int prev_min = minute();
	int sec;
	int min;
	
	uint16_t ledStates[8] = { 0 };
	KeyStates *keys = NULL;
	
	keys = getKeys();
	
	// Depending on the keys just pressed, take the necessary action
	switch(keys->longPressed) {
	case BUTTON_L_IDX:
		PRINT_DEBUG("Pressed left a long time");
		break;
		
	case BUTTON_R_IDX:
		// A long press on the right button will change colour
		clockSettings->colour++;
		clockSettings->colour &= 0x03;
		PRINT_DEBUG("New colour: " + clockSettings->colour);
		break;
		
	case BUTTON_L_IDX | BUTTON_R_IDX:
//		clockConfig();
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
		ledStates[7] |= sec & 0x01;
		prev_sec = sec;

		disp_display(ledStates);
	}
}

/*
void clockConfig() {
	ConfigMode mode;
	
	for(mode = GPS; mode != LAST_MODE; mode++) {
		switch(mode) {
		case GPS:
			Serial.println("Now entering GPS value");
			clockSettings->useGPS = changeSetting(clockSettings->useGPS, 0, 1)
			if(clockSettings->useGPS) {
				mode = SKIP_TIME;
			}
			break;
			
		case HOUR:
			Serial.println("Now entering hour value");
			uint8_t hour = hour();
			hour = changeSetting(hour, 0, 23);
			break;
			
		case MINUTE10:
			Serial.println("Now entering minute10 value");
			uint8_t minute10 = minute() / 10;
			minute10 = changeSetting(minute10, 0, 6);
			break;
			
		case MINUTE1:
			Serial.println("Now entering minute1 value");
			uint8_t minute1 = minute() % 10;
			minute1 = changeSetting(minute1, 0, 9);
			break;
			
		case TEMP_CF:
			Serial.println("Now entering whether temp should be represented in C (0) or F (1)");
			clockSettings->useDegF = changeSetting(clockSettings->useDegF, 0, 1);
			break;
		default:
			break;
		}
	}
}


uint8_t changeSetting(uint8_t origValue, uint8_t min, uint8_t max) {
	KeyStates *keys = NULL;
	uint8_t value = origValue;
	
	Serial.println(value);
	
	while(true) {
		keys = getKeys(true, 1000);
		delay(10);
		if(keys->justPressed | BUTTON_L_IDX) {
			break;
		} else if(keys->justPressed | BUTTON_R_IDX) {
			Serial.println(value);
			value++;
			if(value > max) {
				value = min;
			}
		}
	}
	return value;
}*/