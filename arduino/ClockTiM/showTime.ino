
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

const TimeFrame hoursOff[] = {
	
};

const TimeFrame minsOff[] = {
	
};

void showTime(uint16_t mins) {
	
	uint16_t ledStates[8] = { 0 };
	
	// Select the minutes and the hour
	uint8_t minsDisp = mins % 60;
	uint8_t hours = mins / 60;
	
	boolean pm;
	
	Serial.print(mins);
	Serial.println(" mins");
	
	// First check whether we are doing 'to' the hour, in which case we need to increment the hour
	if(minsDisp >= 35) {
		hours += 1;
		
		// Make sure we loop over
		if(hours == 24) {
			hours = 0;
		}
	}

	uint8_t hoursDisp = hours;
	
	// The 24 hour period is split into two 12 hour periods
	if(hoursDisp >= 12) {
		hoursDisp -= 12;
	}
	
	// From now on we only need minsDisp in increments of 5 minutes
	minsDisp /= 5;
	
	// We indicate the hour number unless we are at around midnight Midnight or at noon
	if(hours != 0 && !(hours == 12 && minsDisp == 0)) {
		// Diplay the hour
		loadWords(DISPLAY_hour, WORDS_hour, ledStates, hoursDisp);
	}
	
	// This conditional makes sure we don't print "o'clock" at midnight and at noon
	if(!(hoursDisp == 0 && minsDisp == 0)) {
		// Display the minutes
		loadWords(DISPLAY_min, WORDS_min, ledStates, minsDisp);
	}
	
	// Loop through the list of times of day to check which one we are
	// currently in. Once the correct time span has been found display it.
	uint16_t todMins = mins;
	if(todMins >= 1415) {
		todMins -= 1410;
	} 
	for(int i = 0; i < (sizeof(timeOfDay) / sizeof(TimeFrame)); i++) {
		if(todMins >= timeOfDay[i].start && todMins < timeOfDay[i].finish) {
			loadWords(DISPLAY_tod, WORDS_tod, ledStates, i);
			break;
		}
	}
	
	disp_display(ledStates);
}