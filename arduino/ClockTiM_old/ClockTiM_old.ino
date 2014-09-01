
#include <avr/pgmspace.h>
#include <Time.h>
#include <Wire.h> 
//#include <DS3231.h>
#include "LANGUAGE_English_TiM.h"

/************* Enable/disable debug mode *************/
#define DEBUG  // comment this line out to disable debugging

#ifdef DEBUG
#define PRINT_DEBUG(x)		Serial.println(x)
#define PRINTLN_DEBUG(x)        Serial.println(x)
#else
#define PRINT_DEBUG(x)
#define PRINTLN_DEBUG(x)
#endif

/************* ClockFOUR is mode driven *************/
// Define modes
typedef void (* CallBackPtr)(); // this is a typedef for callback funtions
inline void do_nothing(void){}  // empty call back

struct Mode{
  uint8_t id;        // Mode ID
  CallBackPtr loop;  // to be called as often as possible when mode is active
  CallBackPtr BL_C;  // to be called when BUTTON_LEFT is clicked
  CallBackPtr BL_P;   // to be called when BUTTON_LEFT is pressed (held)
  CallBackPtr BL_R;   // to be called when BUTTON_LEFT is repeated
  CallBackPtr BR_C;  // to be called when BUTTON_RIGHT is clicked
  CallBackPtr BR_P;   // to be called when BUTTON_RIGHT is pressed (held)
  CallBackPtr BR_R;   // to be called when BUTTON_RIGHT is repeated
};

// active mode pointer
Mode *mode_p;

// MODE Constants
const uint8_t N_MODE = 5;

const uint8_t NORMAL_MODE = 0;
const uint8_t SET_TIME_MODE = 1;
const uint8_t SECONDS_MODE = 2;
const uint8_t TEMPERATURE_MODE = 3;
const uint8_t SET_COLOUR_MODE = 4;

// Temperature unit constants
const uint8_t DEG_C = 0;
const uint8_t DEG_F = 1;

/* last_mode_id is used for returning to previous mode.  
 * Usually best to return to NORMAL_MODE, but this allows sub-modes to return
 * to the mode that invoked them.
 */
uint8_t last_mode_id = NORMAL_MODE; // the last mode clock was in...

// indexed by mode.id
Mode Modes[N_MODE];

//Time units
typedef enum {YEAR, MONTH, DAY, HOUR, MINUTE, SECOND} unit_t;

// Mode declarations
Mode NormalMode = {NORMAL_MODE, Normal_loop, 
		    Normal_BLC, do_nothing, do_nothing, Normal_BRC, Normal_BRP, do_nothing};
Mode SetTimeMode = {SET_TIME_MODE, SetTime_loop,
		    SetTime_BLC, do_nothing, do_nothing, SetTime_BRX, do_nothing, SetTime_BRX};
Mode SecondsMode = {SECONDS_MODE, Seconds_loop, 
		    Seconds_BXC, Seconds_BPX, do_nothing, Seconds_BXC, Seconds_BPX, do_nothing};
Mode TemperatureMode = {TEMPERATURE_MODE, Temperature_loop, 
		    Temperature_BXC, Temperature_BXP, do_nothing, Temperature_BXC, Temperature_BXP, do_nothing};
Mode SetColourMode = {SET_COLOUR_MODE, SetColour_loop,
		    ColourGroup_BLX, do_nothing, ColourGroup_BLX, Colour_BRX, do_nothing, Colour_BRX};

uint8_t mode_counter;               // Used for selecting mode
unsigned long count = 0;            // Number of interations current mode has been running.
uint16_t YY;                        // current time variables.
uint8_t MM, DD, hh, mm, ss;
uint8_t ahh, amm, ass;              // time of day time (tod) variables.
unit_t SetTime_unit = YEAR;         // Part of time being set {YEAR | MONTH | DAY | HOUR | MINUTE}
uint8_t temp_unit = DEG_C;          // Temperature display units {DEG_C | DEC_F}

// language constants
uint8_t n_minute_states;            // number of minute states to cycle through
uint8_t n_minute_bytes;             // number of bytes used for each minute time incriment
uint8_t n_hour_states;              // number of hour states to cycle through
uint8_t n_hour_bytes;               // number of bytes used for each hour time incriment
uint8_t n_tod_states;               // number of time of day states to cycle through
uint8_t n_tod_bytes;                // number of bytes used for each time of day incriment

uint16_t display_idx;                // number of minutes past midnight to be displayed (0 to 1439)

void update_time() {
  // update global time variables.  resync with Time.h
  YY = year();
  MM = month();
  DD = day();
  hh = hour();
  mm = minute();
  ss = second();
}

/************* Pin settings *************/
#define TiMPIN				5
#define BUTTON_L			6
#define BUTTON_R			A0
#define CAP_SENSE			A1


/************* Types of button inputs *************/

/*
typedef enum EventTypes {
	NO_EVENT = 0,
	BL_CLICK,
	BL_PRESS,
	BL_REPEAT,
	BR_CLICK,
	BR_PRESS,
	BR_REPEAT
};
*/
const uint8_t       NO_EVENT = 0; // NONE
const uint8_t       BL_CLICK = 1; // Mode Button has been pressed
const uint8_t       BL_PRESS = 2; // Increment Button has been pressed
const uint8_t      BL_REPEAT = 3; // Decriment Button has been pressed
const uint8_t       BR_CLICK = 4; // Enter Button has been pressed
const uint8_t       BR_PRESS = 5; // Second has ellapsed
const uint8_t      BR_REPEAT = 6; // Max # events.


#define REPEAT_DELAY		200


/*************  Main Code  *************/

void setup() {
	// Start the serial port
	Serial.begin(115200);
	Wire.begin();
	disp_init();  	        // Initialise the display
	loadSettings();  	// Load the settings from the EEPROM
	buttonsInit();  	// Initialise the buttons
        

        
        mode_p = &NormalMode;


        // ensure mode ids are consistant.
        Modes[NORMAL_MODE] = NormalMode;
        Modes[SET_TIME_MODE] = SetTimeMode;
        Modes[SECONDS_MODE] = SecondsMode;
        Modes[TEMPERATURE_MODE] = TemperatureMode;
        Modes[SET_COLOUR_MODE] = SetColourMode;

        // Set Time and Alarms
//        setSyncProvider(getTime);      // RTC
//        setSyncInterval(60000);        // update every minute (and on boot)
        update_time();

        // read language constants
        n_minute_states = pgm_read_byte(WORDS_min);
        n_minute_bytes = pgm_read_byte(DISPLAY_min);
        n_hour_states = pgm_read_byte(WORDS_hour);
        n_hour_bytes = pgm_read_byte(DISPLAY_hour);
        n_tod_states = pgm_read_byte(WORDS_tod);
        n_tod_bytes = pgm_read_byte(DISPLAY_tod);

/*
  if(CHECK IF A BUTTON IS HELD DOWN){
    self_test();
  }
*/
	PRINT_DEBUG("Setup is done");
}


void loop() {
	buttonsTick();
        // process new events before calling mode loop()
        
        switch(popEvent()) {
        case NO_EVENT:
            break;
        case BL_CLICK:
            mode_p->BL_C();
            break;
        case BL_PRESS:
            mode_p->BL_P();
            break;
        case BL_REPEAT:
            mode_p->BL_R();
            break;
        case BR_CLICK:
            mode_p->BR_C();
            break;
        case BR_PRESS:
            mode_p->BR_P();
            break;
        case BR_REPEAT:
            mode_p->BR_R();
            break;
        default:
            break;
        }
 
        mode_p->loop();     // finally call mode_p loop()
        count++;            // counts times mode_p->loop() has run since mode start
        
}

void self_test() {
  PRINTLN_DEBUG("We are now in Self Test mode!");
}

void switchmodes(uint8_t new_mode_id){
  last_mode_id = mode_p->id;
//  strip.show();  // clear the display
//  matrix.show();
  saveSettings();    // Save all settings to EPROM
  mode_p = &Modes[new_mode_id];
  mode_p->loop();
  count = 0;
}

void Normal_loop() {
  // Show the time!
  PRINT_DEBUG("Normal Loop");
//  uint16_t ledStates[8] = { 0 };
//  uint16_t totalMinutes = (hour() * 60) + minute();
//  loadTime(ledStates, totalMinutes);
//  disp_display(ledStates);
}


void Normal_BLC() {
  PRINTLN_DEBUG("Left click in Normal Mode -> Go to Seconds Mode");
  switchmodes(SECONDS_MODE); 
}

void Normal_BRC() {
  PRINTLN_DEBUG("Colour++");
  // Colour ++ code goes here
  saveSettings();
}

void Normal_BRP() {
  PRINTLN_DEBUG("Right button press in Normal Mode -> Go to Set Colour Mode");
  switchmodes(SET_COLOUR_MODE);  
}


void SetTime_loop() {
  PRINTLN_DEBUG("SetTime loop");  
}

void SetTime_BLC() {
  PRINTLN_DEBUG("Button Left Click in SetTime mode");
}

void SetTime_BRX() {
  PRINTLN_DEBUG("Button Right click/repeat in SetTime mode");  
}

void Seconds_loop() {
  PRINTLN_DEBUG("Seconds mode loop");
}

void Seconds_BXC() {
  PRINTLN_DEBUG("A button was clicked in seconds mode - goto Temperature mode");
  switchmodes(TEMPERATURE_MODE);
}

void Seconds_BPX() {
  PRINTLN_DEBUG("A button was pressed in seconds mode - Goto Set Time Mode");
  switchmodes(SET_TIME_MODE); 
}

void Temperature_loop() {
  PRINTLN_DEBUG("Temperature loop");
}

void Temperature_BXC() {
  PRINTLN_DEBUG("A button was clicked in Temperature mode -> goto Normal Mode");
  switchmodes(NORMAL_MODE);
}

void Temperature_BXP() {
  PRINTLN_DEBUG("A button was clicked in Temperature mode -> Toggle DegC/DegF");
}

void SetColour_loop() {
  PRINTLN_DEBUG("Set Colour loop");
}

void ColourGroup_BLX() {
  PRINTLN_DEBUG("Left button was clicked/repeated in Set Colour mode -> ColourGroup++");
}

void Colour_BRX() {
  PRINTLN_DEBUG("Right button was clicked/repeated in Set Colour mode -> Colour++");
}



// This needs to be placed above where ever it's called from as the Arduino compiler seems to have
// trouble dealing with function pointers as parameters.
uint8_t changeSetting(uint8_t origValue, uint8_t mins, uint8_t max, void (*dispFunc)(uint8_t)) {
	uint8_t value = origValue;
	static long lastRepeat = 0;
	
	dispFunc(value);
	
	
	while(true) {
		buttonsTick();
		
		switch(popEvent()) {
			
		case BL_CLICK:
		case BL_PRESS:
			return value;
			
		case BR_CLICK:
		case BR_PRESS:
		case BR_REPEAT:
			if(millis() - lastRepeat < REPEAT_DELAY) {
				break;
			}
			
			lastRepeat = millis();
		
			value++;
			if(value > max) {
				value = mins;
			}
			dispFunc(value);
			break;
			
		default:
			break;
		}
	}
	return value;
}


/************* Defines the different configuration modes *************/

/*
typedef enum ConfigMode {
	GPS = 0,
	HOUR_old,
	MINUTE_old,
	TEMP_CF,
	LAST_MODE
};

// A bit of a hack - if we skip setting the time (because it is set through GPS)
// we jump to skip time. Not very elegant but will do for now
#define SKIP_TIME	MINUTE

void clockConfig() {
	// Loop through all the configuration modes
	for(uint8_t mode = GPS; mode != LAST_MODE; mode++) {
		switch(mode) {
		case GPS:
			{
				PRINT_DEBUG("Now entering GPS value");				
				clockSettings.useGPS = changeSetting(clockSettings.useGPS, 0, 1, exampleDisplayFunction);
				if(clockSettings.useGPS) {
					mode = SKIP_TIME;
				}
			}
			break;
			
		case HOUR:
			{
				uint8_t hours = hour();
				PRINT_DEBUG("Now entering hour value");
				hours = changeSetting(hours, 0, 23, matrixDisplayVal);
			}
			break;
			
		case MINUTE:
			{
				uint8_t minute60 = minute();
				PRINT_DEBUG("Now entering minute value");
				minute60 = changeSetting(minute60, 0, 59, matrixDisplayVal);
			}
			break;
			
		case TEMP_CF:
			{
				PRINT_DEBUG("Now entering whether temp should be represented in C (0) or F (1)");
				clockSettings.useDegF = changeSetting(clockSettings.useDegF, 0, 1, exampleDisplayFunction);
			}
			break;
			
		default:
			break;
		}
	}
	
	// TODO: save these new settings to the arduino Time library
	
	// TODO: load the new time into the RTC
	
	saveSettings();
        current_mode = NORMAL_MODE;
	PRINT_DEBUG("Exiting configuration mode");
}
*/

void exampleDisplayFunction(uint8_t value) {
	PRINT_DEBUG(value);
}
