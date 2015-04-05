
#define MIN_BRIGHTNESS			25
#define MAX_BRIGHTNESS			255
#define BRIGHTNESS_REFRESH		25		// Refresh rate of the brightness setting
#define BRIGHTNESS_INCR			5

// Settings for C4_v2 prototype

#define LDR_DAWN				10
#define LDR_DAYTIME				50
#define LDR_LED_ON				300


// Settings for Josef's board
/*
#define LDR_DAWN				400
#define LDR_DAYTIME				800
#define LDR_LED_ON				950
*/

uint8_t ldrPins[3];

void brightness_init(uint8_t ldr) {
	ldrPins[0] = ldr;
	ldrPins[1] = 0xFF;
	ldrPins[2] = 0xFF;
}

void brightness_init(uint8_t ldr1, uint8_t ldr2, uint8_t ldr3) {
	ldrPins[0] = ldr1;
	ldrPins[1] = ldr2;
	ldrPins[2] = ldr3;
}

uint8_t getBrightness() {
	static uint32_t lastRefresh = 0;
	static uint8_t previousTarget = 0xFF;
	static uint8_t currentBrightness = 0xFF;
	
	uint16_t LDR_value = 0;
	uint16_t min_LDR_value = 0xFFFF;
	uint32_t last_update = 0;
	uint8_t targetBrightness;
	int16_t brightnessDiff;
	
	uint32_t currentMillis = millis();
	
	// First check if we are past the brightness refresh delay
	if((uint32_t) (currentMillis - lastRefresh) < BRIGHTNESS_REFRESH) {
		PRINT_DEBUG("LDR: ---  |  ");
  		return currentBrightness;
	}
	
	lastRefresh = currentMillis;
	
	// Get the LDR measurement from the LDR with the lowest amount of light
	for(int i = 0; i < 3; i++) {
		// Skip any LDRs with invalid pin index
		if(ldrPins[i] == 0xFF)
			continue;
		LDR_value = analogRead(ldrPins[i]);
		if(LDR_value < min_LDR_value) {
			min_LDR_value = LDR_value;
		}
		
		PRINT_DEBUG("LDR");
        PRINT_DEBUG(i+1);
		PRINT_DEBUG(": ");                
		PRINT_DEBUG(LDR_value);
        PRINT_DEBUG("  |  ");
	}
	
	PRINT_DEBUG("LDR_Min: ");
	PRINT_DEBUG(min_LDR_value);
	PRINT_DEBUG("  |  ");
                
	if(min_LDR_value < LDR_DAWN) {
		targetBrightness = MIN_BRIGHTNESS;
	} else if(min_LDR_value >= LDR_DAWN && min_LDR_value < LDR_DAYTIME) {
		targetBrightness = map(min_LDR_value, LDR_DAWN, LDR_DAYTIME, MIN_BRIGHTNESS, MAX_BRIGHTNESS);
	} else if(min_LDR_value >= LDR_DAYTIME && min_LDR_value < LDR_LED_ON) {
		targetBrightness = MAX_BRIGHTNESS;
	} else {
		// All LEDs are on. Just use previous brightness value
		targetBrightness = previousTarget;
	}
	
	previousTarget = targetBrightness;
	brightnessDiff = targetBrightness - currentBrightness;
	if(abs(brightnessDiff) < BRIGHTNESS_INCR) {
		currentBrightness += brightnessDiff;
	} else {
		currentBrightness += (brightnessDiff < 0 ? -BRIGHTNESS_INCR : BRIGHTNESS_INCR);
	}
	
	return currentBrightness;
}
