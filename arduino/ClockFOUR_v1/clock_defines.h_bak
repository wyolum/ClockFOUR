/*
*  ClockFOUR settings and typedef file
*
*
*  Author: Josef Schneider
*  Licence: http://creativecommons.org/licenses/by/3.0/
*
*  Description:
*    This file contains all the non-configurable settings for the clock.
*  The different types used throughout the project are also defined here.
*
*/

#ifndef CLOCK_DEFINES_H_
#define CLOCK_DEFINES_H_

/************* Enable/disable debug mode *************/
//#define DEBUG

#ifdef DEBUG
#define PRINT_DEBUG(x)			Serial.print(x)
#define PRINTLN_DEBUG(x)		Serial.println(x)
#else
#define PRINT_DEBUG(x)
#define PRINTLN_DEBUG(x)
#endif

/************* Pin settings *************/
#define MATRIX_PIN			2
#define BUTTON_L			3
#define BUTTON_R			4
#define	LOGO_PIN			5
#define	LOGO_SENSE			6

#define LDR_PIN1			A0
#define LDR_PIN2			A1
#define LDR_PIN3			A2

/************* Some display settings *************/
#define MATRIX_WIDTH			14
#define MATRIX_HEIGHT			13

/************* Company logo settings *************/
#define ENABLE_COMPANY_LOGO		false
#define LOGO_LED_COUNT			20

/************* Timing related settings *************/
#define DEFAULT_REPEAT_DELAY	150     // number of milliseconds between each repeated button press (when held down)
#define TIME_MODE_FADE_SPEED	20		// Time mode = fast fade
#define SEC_MODE_FADE_SPEED		40		// Seconds mode = very fast fade
#define REFRESH_PERIOD			20		// Determines the refresh period of the displays, in this case 20ms
// WARNING! The fade speeds depend on this frequency. Increasing this
// number will slow down fade speeds.

/************* Brightness related settings *************/
#define MIN_BRIGHTNESS			60		// Minimum brightness
#define MAX_BRIGHTNESS			255		// Maximum brightness we want to subject the user to
#define BRIGHTNESS_LEVELS		5		// Number of static brightness levels the user can configure
#define BRIGHTNESS_REFRESH		25		// Refresh rate of the brightness changes, in ms
#define BRIGHTNESS_INCR			1		// Rate at which the brightness levels changes. 1 = 1 increment per refresh cycle

// Hysteresis is used in the brightness logic to stabilise the
// brightness value. Larger width values should be used for 
// less stable sensors with the disadvantage that brightness
// changes will be more noticable/step-like.
#define BRIGHTNESS_HYSTERESIS_WIDTH		5

// The LDR min and max values represent the min and max 10-bit values
// that represent the voltage range of the sensor used.
#define LDR_MIN_BRIGHTNESS		60
#define LDR_MAX_BRIGHTNESS		800

/************* Types of button inputs *************/
typedef enum EventTypes {
	NO_EVENT = 0,
	BL_CLICK,        // Button left click
	BL_PRESS,        // Button left press
	BL_REPEAT,       // Button left repeat
	BR_CLICK,        // Button right click
	BR_PRESS,        // Button right press
	BR_REPEAT,       // Button right repeat
	EVENT_COUNT      // Number of event types in the queue
};

/************* Colour modes *************/
typedef enum ColourModes {
	CM_ALL_WHITE = 0,
	CM_SOLID_COLOUR,
	CM_FADE,
	CM_RAINBOW,
	CM_PARTY,
	COLOUR_MODE_COUNT
};


/************* Display mode definitions *************/
typedef enum DisplayModeIdx {
	DISP_TIME = 0,
	DISP_SECONDS,
	MODE_COUNT
};

typedef boolean(*DisplayModeFunc)(void);

/************* Settings struct definition *************/
typedef struct Settings {
	uint8_t useDegF;					// 0 if degrees C, 1 if degrees F
	uint8_t displayMode;				// Stores the display mode we are currently in
	uint8_t colourModes[MODE_COUNT];	// Each display mode has its own colour mode
	uint8_t colourVal[MODE_COUNT];		// Each display also has its own colour value
	uint8_t logoColourMode;
	uint8_t logoColourVal;
	uint8_t brightnessMode;				// 0 = Auto, 1 - 5 = static brightness levels
};

#endif // CLOCK_DEFINES_H_