
#define DEBOUNCE_TIME	10

struct KeyStates *getKeys() {
	return getKeys(false, LONG_PRESS_MILLIS);
}

// Returns a byte with the idx of any newly pressed keys set to '1'. Also includes debouncing.
struct KeyStates *getKeys(boolean repeat, long repeatAfter) {
	static uint8_t debounce[4] = { 0 };			// Stores the queue of the push button states
	static uint8_t debounceIdx = 0;				// Stores the index we are current at within the debounce queue
	
	static unsigned long lastCheck = 0;			// Checks the time elapsed since last check to make sure that calling frequency is not too high
	static unsigned long longHoldCheck = 0;		// Sets the limit of time after which we know that the button has been pressed a long time
	static unsigned long lastRepeat = 0;		// Sets that point in time at which the next repeat can occur
	static boolean longPressDetect = false;		// True when a long-press has been detected
	
	static KeyStates keys = { 0 };
	static uint8_t held = 0;
	
	unsigned long ms;
	uint8_t prevHeld;							// Temp variable to perform comparison with
	uint8_t pressed = 0;						// Holds which buttons are currently pressed
	
	keys.justPressed = 0;
	keys.longPressed = 0;
	keys.repeated = 0;
	
	ms = millis();
	if((ms - lastCheck) < DEBOUNCE_TIME) {
		return &keys;
	}
	
	lastCheck = ms;
	
	if(digitalRead(BUTTON_L) == LOW) {
		pressed |= BUTTON_L_IDX;
	}
	
	if(digitalRead(BUTTON_R) == LOW) {
		pressed |= BUTTON_R_IDX;
	}
	
	debounce[debounceIdx++] = pressed;
	debounceIdx &= 3;
	
	prevHeld = held;
	held = debounce[0] & debounce[1] & debounce[2] & debounce[3];
	
	// Determine which buttons have just been pressed
	keys.justPressed = held & (held ^ prevHeld);
	
	if(held != 0 && held == prevHeld) {
		if(longPressDetect) {
			// This conditional is entered every time after longHoldCheck threshold is met
			if(repeat && (lastRepeat - ms) > REPEAT_DELAY) {
				lastRepeat += REPEAT_DELAY;
				keys.repeated = held;
			}
		} else if((ms - longHoldCheck) > repeatAfter) {
			// This conditional is entered the first time the longHoldCheck threshold is met
			keys.longPressed = held;
			longPressDetect = true;
			lastRepeat = ms;
		}
	} else {
		longPressDetect = false;
		longHoldCheck = ms;
	}

	return &keys;
}