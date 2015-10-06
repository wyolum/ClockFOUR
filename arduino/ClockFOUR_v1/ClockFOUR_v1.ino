/*
 *  ClockFOUR_v1 main file
 * 
 * 
 *  Author: Josef Schneider
 *  Licence: http://creativecommons.org/licenses/by/3.0/
 *
 *  Description:
 *    This file contains the application entry points, and also the code dealing with 
 *  the user interface.
 *
 *  To allow entry-level developers to make changes without having to tackle cpp libraries,
 *  most of the code is located in .ino files.
 *
 */

#include <Wire.h>
#include <DS3231.h>

#include "clock_defines.h"	// <- Any setting changes need to be made here
#include "bitmaps.h"

/************* Global variables *************/
bool h12, PM;
DS3231 rtc;

// fade defines how quickly letters fade depending
// on the display mode
const uint8_t fade[MODE_COUNT] = {
	TIME_MODE_FADE_SPEED,
	SEC_MODE_FADE_SPEED
};

// Display function pointers for the different display modes. This approach
// is not the safest but makes adding new display modes extremely easy.
const DisplayModeFunc displayModes[MODE_COUNT] = {
	displayTime,
	displaySeconds,
};

bool companyLogoEnabled = false;

/******* Externs ********/
// clockSettings is defined in settings.ino
extern Settings clockSettings;

/**** Main Code ****/

void setup() {
	// Start the serial port
	Serial.begin(9600);

	// Start one wire
	Wire.begin();
	
	pinMode(LDR_PIN1, INPUT);       // declare the LDRPin as an INPUT:
	pinMode(LDR_PIN2, INPUT);
	pinMode(LDR_PIN3, INPUT);

	brightness_init(LDR_PIN1);		// , LDR_PIN2, LDR_PIN3);

	pinMode(LOGO_SENSE, INPUT);
	companyLogoEnabled = (digitalRead(LOGO_SENSE) == LOW) && ENABLE_COMPANY_LOGO;

	// Initialise the board inputs and outputs
	pinMode(MATRIX_PIN, OUTPUT);	// declare the ledPin as an OUTPUT:
	pinMode(LOGO_PIN, OUTPUT);

	// Load the settings from the EEPROM
	loadSettings();
	
	// Initialise the display
	disp_init(clockSettings.brightnessMode);
	
	// Initialise the buttons
	buttonsInit();
        
	// display a welcome message
#ifndef DEBUG
	disp_ScrollWords("Chronogram", -55, 1);
#endif
		
	// enter self test mode if a button has been held down
	if (popEvent() != NO_EVENT) {
		clearQueue();
		self_test(); 
	}
}


void loop() {	
	// p_colourMode and p_colourValue are pointers to the current colour mode and value
	uint8_t *p_colourMode = &clockSettings.colourModes[clockSettings.displayMode];
	uint8_t *p_colourValue = &clockSettings.colourVal[clockSettings.displayMode];
	
	buttonsTick();
	
	// Depending on the latest even (e.g., button press), take the necessary action
	switch(popEvent()) {
	case BL_CLICK:
		clockSettings.displayMode++;
		if(clockSettings.displayMode >= MODE_COUNT) {
			clockSettings.displayMode = 0;
		}
		
		pixBuffer_clearHistory();
		
		// Update p_colourMode to the new display mode
		p_colourMode = &clockSettings.colourModes[clockSettings.displayMode];
		p_colourValue = &clockSettings.colourVal[clockSettings.displayMode];
		
		PRINT_DEBUG("Switched to display mode: ");
		PRINTLN_DEBUG(clockSettings.displayMode);
		
		saveSettings();
		break;
		
	case BR_CLICK:
		// A right button click has been detected
		PRINT_DEBUG("Current colour mode: ");
		PRINTLN_DEBUG(*p_colourMode);

		(*p_colourMode)++;
		if(*p_colourMode >= COLOUR_MODE_COUNT) {
			*p_colourMode = 0;
		}
		
		PRINT_DEBUG("Switched to colour mode:");
		PRINTLN_DEBUG(*p_colourMode);
		
		saveSettings();
		break;
		
	case BR_PRESS:
		// Pick the colour
		*p_colourValue = colourConfig(*p_colourValue);
		*p_colourMode = CM_SOLID_COLOUR;
		pixBuffer_clearHistory();
		saveSettings();
		break;
		
	case BL_PRESS:
		// Configure the clock
		clockConfig();
		break;
		
	default:
		break;
	}
	
	// Set the display brightness from the LDR
	disp_setBrightness(clockSettings.brightnessMode);

	// First clear all the LEDs, and then depending on the mode call its display function
	pixBuffer_clear();
	displayModes[clockSettings.displayMode]();
	
	// Figure out which colour mode we are using and then display the pixels
	disp_refresh(*p_colourMode, *p_colourValue, fade[clockSettings.displayMode]);
	
	if(companyLogoEnabled) {
		updateLogoColour(clockSettings.logoColourMode, clockSettings.logoColourVal);
	}
    PRINTLN_DEBUG();
}


boolean displayTime() {
	// Sets and clears all pixels to show the current time in letters
	uint16_t totalMinutes = rtc.getHour(h12, PM) * 60 + rtc.getMinute();
	loadTime(totalMinutes);
}


boolean displaySeconds() {
	// Sets and clears all pixels to show the current seconds count
	pixBuffer_loadVal(rtc.getSecond());
}


// Generic value input function with configurable display function
uint8_t changeSetting(
		const uint8_t origValue,		// Starting value
		const uint8_t minimum,			// Minimum possible value
		const uint8_t maximum,			// Maximum possible value
		const uint16_t repeatDelay,		// Delay between repeat presses if button is held down in ms
		void(*dispFunc)(uint8_t),		// Pointer to the function to be used to display the value
		const uint16_t timeout = 0) {	// Amount of time after which this function exists if no input

	uint8_t value = origValue;
	long lastRepeat = millis();
	
	while(true) {
		buttonsTick();
		
		switch(popEvent()) {
			
		case BL_CLICK:
		case BL_PRESS:
			return value;
			
		case BR_CLICK:
		case BR_PRESS:
		case BR_REPEAT:
			if(millis() - lastRepeat < repeatDelay) {
				break;
			}
			
			lastRepeat = millis();
			
			value++;
			if(value > maximum) {
				value = minimum;
			}
			break;
			
		default:
			break;
		}
		
		if(timeout != 0 && lastRepeat + timeout < millis()) {
			return value;
		}
	
		dispFunc(value);
	}
	return value;
}


// Special colour picker to set the colour mode and value for the company logo
void colourPickerChangeSetting() {
	long lastRepeat = millis();
	
	while(true) {
		buttonsTick();
		
		switch(popEvent()) {
			
		case BL_CLICK:
		case BL_PRESS:
			return;
		
		case BR_CLICK:
			clockSettings.logoColourMode++;
			if(clockSettings.logoColourMode >= CM_PARTY) {
				clockSettings.logoColourMode = 0;
			}
		
			PRINT_DEBUG("Switched to logo colour mode:");
			PRINTLN_DEBUG(clockSettings.logoColourMode);
			break;
			
		case BR_PRESS:
		case BR_REPEAT:
			if(millis() - lastRepeat < 50) {
				break;
			}
		
			PRINT_DEBUG("Switched to logo colour value:");
			PRINTLN_DEBUG(clockSettings.logoColourVal);
		
			lastRepeat = millis();
			
			clockSettings.logoColourVal++;
			clockSettings.logoColourMode = CM_SOLID_COLOUR;
			break;
		
		default:
			break;
		}
				
		disp_refresh(clockSettings.logoColourMode, clockSettings.logoColourVal, 0);
	}
}


void colourWheelDisp(const uint8_t colourMode) {
	// Configuration display function for the colour picker
	disp_refresh(CM_SOLID_COLOUR, colourMode, 0);
}


uint8_t colourConfig(const uint8_t colourMode) {
	// Config function for the colour mode
	pixBuffer_clear();
	pixBuffer_loadBitmap(Circle_bw_bmp, 0, 0);
	
	return changeSetting(colourMode, 0, 255, 50, colourWheelDisp, 2000);
}


/************* Defines the different configuration modes *************/
typedef enum ConfigMode {
	HOUR,
	MINUTE,
	BRIGHTNESS,
	LOGO_COLOUR,
	LAST_MODE
};

void clockConfig() {
	
	uint8_t mode, lastMode;
	
	lastMode = companyLogoEnabled ? LAST_MODE : LOGO_COLOUR;
	mode = HOUR;

	disp_showBWBitmap(Set_bw_bmp, 0x00FFFFFF, 0x00000000);
	waitDelayOrButton(1000);
	
	// Loop through all the configuration modes
	while(mode != lastMode) {
		switch(mode) {

		case HOUR:
			{
				disp_showBWBitmap(Hour_bw_bmp, 0x00FFFFFF, 0x00000000);	// White on black
				waitDelayOrButton(2000);
				
				PRINTLN_DEBUG("Now entering hour value");
				rtc.setHour(changeSetting(rtc.getHour(h12, PM), 0, 23, DEFAULT_REPEAT_DELAY, disp_displayVal));
			}
			break;
			
		case MINUTE:
			{
				disp_showBWBitmap(Min_bw_bmp, 0x00FFFFFF, 0x00000000);	// White on black
				waitDelayOrButton(2000);
				
				PRINTLN_DEBUG("Now entering minute value");
				rtc.setMinute(changeSetting(rtc.getMinute(), 0, 59, DEFAULT_REPEAT_DELAY, disp_displayVal));
				
				// Set seconds to 0 for a clean start to the minute
				rtc.setSecond(0);
			}
			break;

		case BRIGHTNESS:
			{
				disp_showBWBitmap(Brightness_bw_bmp, 0x00FFFFFF, 0x00000000);	// White on black
				waitDelayOrButton(2000);

				PRINTLN_DEBUG("Now entering brightness value");
				clockSettings.brightnessMode = changeSetting(clockSettings.brightnessMode, 0, 5, DEFAULT_REPEAT_DELAY, disp_displayBrightness);

				saveSettings();
			}
			break;
		
		case LOGO_COLOUR:
			{
				for(int8_t y = -10; y < MATRIX_HEIGHT; y++) {
					disp_showBWBitmap(Arrow_bw_bmp, 0x00FFFFFF, 0x00000000, 0, y);
					waitDelayOrButton(100);
				}
				
				pixBuffer_clear();
				pixBuffer_loadBitmap(Circle_bw_bmp, 0, 0);
				colourPickerChangeSetting();
				pixBuffer_clearHistory();
				saveSettings();
			}
			break;
			
		default:
			break;
		}
		
		// Select the next config mode
		mode++;
	}
	
	saveSettings();
	PRINTLN_DEBUG("Exiting configuration mode");
}


// Creates a delay loop that exits when either the time given
// has passed, or one of the buttons has been pressed
uint8_t waitDelayOrButton(const uint16_t delayTime) {
	unsigned long stopTime = millis() + delayTime;
	uint8_t retVal = NO_EVENT;
	
	while(millis() < stopTime) {
		buttonsTick();
		retVal = popEvent();
		if(retVal == BL_CLICK || retVal == BR_CLICK) {
			// A click event has happened, quit the loop early
			break;
		}
	}
	
	return retVal;
}
