
struct KeyStates *getKeys() {
	return getKeys(false, LONG_PRESS_MILLIS);
}


// Returns a byte with the idx of any newly pressed keys set to '1'. Also includes debouncing.
struct KeyStates *getKeys(boolean repeat, long repeatAfter) {
	static uint8_t debounce[4] = { 0 };			// Stores the queue of the push button states
	static uint8_t debounceIdx = 0;				// Stores the index we are current at within the debounce queue
	static uint8_t states = 0;					// Stores the state of the keys
	static unsigned long timeInStates = 0;		// Records the amount of time <states> has been in its current state
	static boolean longPressDetect;
	
	static KeyStates keys;
	
	uint8_t pressed = 0;						// Holds which buttons are currently pressed
	uint8_t up;									// Buttons that are pressed
	uint8_t down;								// Buttons that are released
	
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
	
	// Determine which buttons have freshly been pressed
	uint8_t prevStates = states;
	states &= up;
	states |= down;
	keys.justPressed = states & (states ^ prevStates);
	
	// Now test which keys have been pressed for a long time
	keys.longPressed = 0x00;
	if(states != 0) {
		if(longPressDetect) {
			// We are already in the middle of a long-press
			
			// Don't do anything unless we are repeating
			if(repeat) {
				keys.justPressed = up;
				delay(REPEAT_DELAY);
			}
			} else if(states != prevStates) {
			// A button has just been pressed. Mark the time at which this happened
			timeInStates = millis();
			longPressDetect = false;
			} else if(millis() - timeInStates > repeatAfter) {
			// Enough time has elapsed for a long press - mark it as such
			keys.longPressed = up;
			longPressDetect = true;
		}
		} else {
		longPressDetect = false;
	}
	
	return &keys;
}