
#include <avr/pgmspace.h>
//#include <TimerOne.h>
#include <Time.h>
#include "english_v2.h"

#define TiMPIN			A0
#define BUTTON_L		A1
#define BUTTON_R		A2

#define BUTTON_L_IDX	1
#define BUTTON_R_IDX	2

/*// Stores the current time, in half-seconds, since the beginning of the day.
uint16_t g_time2Hz = 0;
uint16_t g_time1Hz = 0;
uint16_t g_timeMinutes = 0;*/

void setup() {
	// Setup the GPIO
	pinMode(BUTTON_L, INPUT);
	digitalWrite(BUTTON_L, HIGH);
	pinMode(BUTTON_R, INPUT);
	digitalWrite(BUTTON_R, HIGH);
	
	// Start the serial port
	Serial.begin(9600);
	
	// Initialise the display
	disp_init();
	
/*	// Interrupt timer 1 every 1/2 a second
	Timer1.initialize(500000);
	Timer1.attachInterrupt(twiceASecond);*/
}

void loop() {
	uint16_t ledStates[8] = { 0 };
	uint8_t keys;
		
	keys = getKeys();
	
	// Depending on the keys just pressed, take the necessary action
	
	displayWord(ledStates, g_timeMinutes >> 1);

	// Make the bottom right LED blink every second
	ledStates[7] |= second() & 0x01;

	disp_display(ledStates);
}

void displayWord(uint16_t *ledStates, int time) {
	// Loop through every line
	Serial.print("Time: ");
	Serial.println(time);

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
uint8_t getKeys() {
	static uint8_t debounce[4];			// Stores the queue of the push button states
	static uint8_t debounceIdx = 0;		// Stores the index we are current at within the debounce queue
	static uint8_t buttons;				// Stores the state of the buttons
	
	uint8_t prevButtons;				// Temp variable used for comparison with previous button states
	uint8_t pressed = 0;				// Holds which buttons are currently pressed
	uint8_t up;							// Indicates which buttons have been pressed for a long time
	uint8_t down;						// Indicates which buttons have been released for a long time
	
	if(digitalRead(BUTTON_L) == LOW) {
		pressed |= BUTTON_L_IDX;
	}
	
	if(digitalRead(BUTTON_R) == LOW) {
		pressed |= BUTTON_R_IDX;
	}
	
	debounce[debounceIdx++] = pressed;
	debounceIdx &= 3;
	
	down = debounce[0] & debounce[1] & debounce[2] & debounce[3];
	up = debounce[0] | debounce[1] | debounce[2] | debounce[3];
	
	// Determine which buttons have freshly been pressed and return the result
	prevButtons = buttons;
	buttons &= up;
	buttons |= down;
	return buttons & (buttons ^ prevButtons);
}

/*void twiceASecond() {
	g_time2Hz++;
	g_time1Hz = g_time2Hz >> 1;
	g_timeMinutes = g_time1Hz % 60;
}*/

