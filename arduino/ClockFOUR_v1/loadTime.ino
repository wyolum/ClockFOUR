/*
 *  Time/word/letter functionality
 * 
 * 
 *  Author: Josef Schneider
 *  Licence: http://creativecommons.org/licenses/by/3.0/
 *
 *  Description:
 *    Loads which letter/LEDs should be on and off depending
 *  on the time of day and the language file included.
 *
 */

#include "Language_English_v1.h"

void loadTime(const uint16_t mins) {
	// Select the minutes and the hour
	uint8_t minsDisp = mins % 60;
	uint8_t hoursDisp = mins / 60;
	
	pixBuffer_loadWords(hoursDisp, DISPLAY_hour, WORDS_hour);
	pixBuffer_loadWords(minsDisp, DISPLAY_min, WORDS_min);
}
