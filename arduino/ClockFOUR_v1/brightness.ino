/*
 *  Brightness functionality
 * 
 * 
 *  Author: Josef Schneider
 *  Licence: http://creativecommons.org/licenses/by/3.0/
 *
 *  Description:
 *    This file contains code for 'smart' brightness transitions
 *  based on one or more LDRs, even if these are mounted behind
 *  a clock letter, next to an LED (if the LED is on, the reading
 *  for that LDR is wrong).
 *  
 */

#include "clock_defines.h"

// Between 0 and LDR_MIN_BRIGHTNESS, brightness = MIN_BRIGHTNESS
// Between LDR_MIN_BRIGHTNESS and LDR_MAX_BRIGHTNESS, brightness = map(LDR_value, LDR_MIN_BRIGHTNESS, LDR_MAX_BRIGHTNESS, MIN_BRIGHTNESS, MAX_BRIGHTNESS)
// Larger than LDR_MAX_BRIGHTNESS, brightness = MAX_BRIGHTNESS

uint8_t ldrPins[3];

void brightness_init(const uint8_t ldr) {
	ldrPins[0] = ldr;
	ldrPins[1] = 0xFF;
	ldrPins[2] = 0xFF;
}

void brightness_init(const uint8_t ldr1, const uint8_t ldr2, const uint8_t ldr3) {
	ldrPins[0] = ldr1;
	ldrPins[1] = ldr2;
	ldrPins[2] = ldr3;
}

uint8_t getAutoBrightness() {
	static uint32_t lastRefresh = 0;
	static uint8_t previousTarget = 0;
	static uint8_t currentBrightness = 0xFF;
	
	uint16_t LDR_value = 0;
	uint16_t min_LDR_value = 0xFFFF;
	uint32_t last_update = 0;
	uint8_t targetBrightness;
	int16_t brightnessDiff;
	
	uint32_t currentMillis = millis();
	
	// First check if we are past the brightness refresh delay
	if((uint32_t) (currentMillis - lastRefresh) < BRIGHTNESS_REFRESH) {
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
    
	// Perform the brightness mapping
	if (min_LDR_value < LDR_MIN_BRIGHTNESS) {
		targetBrightness = MIN_BRIGHTNESS;
	} else if (min_LDR_value >= LDR_MIN_BRIGHTNESS && min_LDR_value < LDR_MAX_BRIGHTNESS) {
		targetBrightness = map(min_LDR_value, LDR_MIN_BRIGHTNESS, LDR_MAX_BRIGHTNESS, MIN_BRIGHTNESS, MAX_BRIGHTNESS);
	} else {
		targetBrightness = MAX_BRIGHTNESS;
	}

	PRINT_DEBUG("prev: ");
	PRINT_DEBUG(previousTarget);
	PRINT_DEBUG("  |  ");

	PRINT_DEBUG("target: ");
	PRINT_DEBUG(targetBrightness);
	PRINT_DEBUG("  |  ");

	if (previousTarget == 0) {
		previousTarget = targetBrightness;
	}

	uint8_t hystUpperBound = 0xFF;
	uint8_t hystLowerBound = 0x00;

	if (0xFF - BRIGHTNESS_HYSTERESIS_WIDTH > previousTarget) {
		hystUpperBound = previousTarget + BRIGHTNESS_HYSTERESIS_WIDTH;
	}

	if (BRIGHTNESS_HYSTERESIS_WIDTH < previousTarget) {
		hystLowerBound = previousTarget - BRIGHTNESS_HYSTERESIS_WIDTH;
	}

	// Only change target value if we are outside the hysteresis bounds
	if (targetBrightness < hystUpperBound && targetBrightness > hystLowerBound) {
		targetBrightness = previousTarget;
	}
	
	brightnessDiff = targetBrightness - currentBrightness;
	if(abs(brightnessDiff) < BRIGHTNESS_INCR) {
		currentBrightness += brightnessDiff;
	} else {
		currentBrightness += (brightnessDiff < 0 ? -BRIGHTNESS_INCR : BRIGHTNESS_INCR);
	}
	previousTarget = targetBrightness;
	
	return currentBrightness;
}
