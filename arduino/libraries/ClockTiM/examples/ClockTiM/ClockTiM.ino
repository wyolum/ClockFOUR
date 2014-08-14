

#include <avr/pgmspace.h>
#include <Time.h>
#include "english_v2.h"

#define TiMPIN				A0
#define BUTTON_L			8
#define BUTTON_R			12
#define PIN_LOW				10

#define BUTTON_L_IDX		1
#define BUTTON_R_IDX		2

#define LONG_PRESS_MILLIS	2000

typedef struct KeyStates{
	uint8_t justPressed;	// Buttons that have just been pressed
	uint8_t longPressed;	// Buttons that have been pressed for a long time
	uint8_t up;				// Buttons that are pressed
	uint8_t down;			// Buttons that are released
};

void setup() {
	// Setup the GPIO
	pinMode(BUTTON_L, INPUT);
	digitalWrite(BUTTON_L, HIGH);
	pinMode(BUTTON_R, INPUT);
	digitalWrite(BUTTON_R, HIGH);
	
	pinMode(PIN_LOW, OUTPUT);
	digitalWrite(PIN_LOW, LOW);
	
	// Start the serial port
	Serial.begin(9600);
	
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
		Serial.println("Pressed left a long time");
		break;
	case BUTTON_R_IDX:
		Serial.println("Pressed right a long time");
		break;
	case BUTTON_L_IDX | BUTTON_R_IDX:
		Serial.println("Pressed left and right a long time");
		break;
	default:
		break;
	}
	
	sec = second();
	min = minute();
	if(prev_sec != sec) {
		if(prev_min != min) {
			int totalMinutes = (hour() * 60) + min;
			displayWord(ledStates, totalMinutes / 5);
			prev_min = min;
		}

		// Make the bottom right LED blink every second
		ledStates[7] |= sec & 0x01;
		prev_sec = sec;

		disp_display(ledStates);
	}
}

void displayWord(uint16_t *ledStates, int time) {
	// Loop through every line
//	Serial.print("Time: ");
//	Serial.println(time);

	for(int dispIdx = 0; dispIdx < 4; dispIdx++) {

		// Get the display bits
		uint8_t disp = pgm_read_byte(DISPLAYS + time * 4 + 1 + dispIdx);

		// Loop through every bit
		for(int bitIdx = 0; bitIdx < 8; bitIdx++) {
			// Check if the given bit is set
			if(disp & 0x01) {
				// It is! Get the index in WORDS
				uint8_t wordsOffset = bitIdx + dispIdx * 8;
				uint8_t x = pgm_read_byte(WORDS + 3 * wordsOffset + 1);
				uint8_t y = pgm_read_byte(WORDS + 3 * wordsOffset + 2);
				uint8_t length = pgm_read_byte(WORDS + 3 * wordsOffset + 3);

				// Now draw the line in the buffer
				for(int pix = x; pix < x + length; pix++) {
					ledStates[y] |= 1 << (15 - pix);
				}
			}
			// Select the next bit
			disp >>= 1;
		}
	}
}

// Returns a byte with the idx of any newly pressed keys set to '1'. Also includes debouncing.
struct KeyStates *getKeys() {
	static uint8_t debounce[4];			// Stores the queue of the push button states
	static uint8_t debounceIdx = 0;		// Stores the index we are current at within the debounce queue
	static uint8_t states;				// Stores the state of the keys
	static long timeInStates = 0;		// Records the amount of time <states> has been in its current state
	
	static KeyStates keys;
	
	uint8_t pressed = 0;				// Holds which buttons are currently pressed
	
	if(digitalRead(BUTTON_L) == LOW) {
		pressed |= BUTTON_L_IDX;
	}
	
	if(digitalRead(BUTTON_R) == LOW) {
		pressed |= BUTTON_R_IDX;
	}
	
	debounce[debounceIdx++] = pressed;
	debounceIdx &= 3;
	
	keys.down = debounce[0] & debounce[1] & debounce[2] & debounce[3];
	keys.up = debounce[0] | debounce[1] | debounce[2] | debounce[3];
	
	// Determine which buttons have freshly been pressed and return the result
	uint8_t prevStates = states;
	states &= keys.up;
	states |= keys.down;
	keys.justPressed = states & (states ^ prevStates);
	
	if(states != 0) {
		if(states != prevStates) {
			timeInStates = millis();
		} else {
			if(millis() - timeInStates > LONG_PRESS_MILLIS) {
				keys.longPressed = keys.up;
			}
		}
	} else {
		keys.longPressed = 0;
	}
	
	return &keys;
}


