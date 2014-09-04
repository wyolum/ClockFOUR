
#include "Language_English_TiM.h"





typedef struct TimeFrame {
	uint16_t start;
	uint16_t finish;
};

const TimeFrame timeOfDay[5] = {
	{ 0,    35 },		// Midnight, 30 mins before to 30 mins after midnight
	{ 35,   720 },		// Morning, 00:30am until 12:00
	{ 720,  725 },		// Noon, 12:00 until 12:05
	{ 725,  1020 },		// Afternoon, 12:30 until 17:00
	{ 1020, 1415 },		// Evening, 17:00 until 23:30
};

void loadTime(PixelStates *display, uint16_t mins) {
	
	// Select the minutes and the hour
	uint8_t minsDisp = mins % 60;
	uint8_t hours = mins / 60;
	uint8_t hoursDisp;
	
	// First check whether we are doing 'to' the hour, in which case we need to increment the hour
	if(minsDisp >= 35) {
		hours += 1;
		
		// Make sure we loop over
		if(hours == 24) {
			hours = 0;
		}
	}

	hoursDisp = hours;
	
	// From now on we only need minsDisp in increments of 5 minutes
	minsDisp /= 5;
	
        loadWords(hoursDisp, DISPLAY_hour, WORDS_hour, display);

	
	// This conditional makes sure we don't print "o'clock" at midnight and at noon
	if(!(hoursDisp == 0 && minsDisp == 0)) {
		// Display the minutes
		loadWords(minsDisp, DISPLAY_min, WORDS_min, display);
	}
	
	// Loop through the list of times of day to check which one we are
	// currently in. Once the correct time span has been found display it.
	uint16_t todMins = mins;
	if(todMins >= 1415) {
		todMins -= 1410;
	} 
	for(int i = 0; i < (sizeof(timeOfDay) / sizeof(TimeFrame)); i++) {
		if(todMins >= timeOfDay[i].start && todMins < timeOfDay[i].finish) {
			loadWords(i, DISPLAY_tod, WORDS_tod, display);
			break;
		}
	}
}
