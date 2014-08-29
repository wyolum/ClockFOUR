
#include <Wire.h>      
#include <DS3231.h>
#include "LANGUAGE_English_TiM.h"
#include <CapacitiveSensor.h>


/************* Enable/disable debug mode *************/
#define DEBUG                    // comment out this line to disable serial port debugging

#ifdef DEBUG
#define PRINT_DEBUG(x)		Serial.print(x)
#define PRINTLN_DEBUG(x)        Serial.println(x)
#else
#define PRINT_DEBUG(x)
#define PRINTLN_DEBUG(x)
#endif

#define minBrightness     50
#define maxBrightness     255


/************* Pin settings *************/
#define DisplayPin			5
#define BUTTON_L			6
#define BUTTON_R			A0
#define CAP_SENSE			A1
#define LDRPin                          A7


uint32_t lastRefresh = 0;

RTClib rtc;
DS3231 rtc2;

/************* Settings struct definition *************/
typedef union Settings {
	// WARNING: array has to be at least as large as the number of elements in the struct
	uint8_t array[3];
	struct {
		uint8_t useGPS;
		uint8_t useDegF;
		uint8_t colour;
	};
};
extern Settings clockSettings;

CapacitiveSensor cs_BUTTON_L = CapacitiveSensor(CAP_SENSE, BUTTON_L);
CapacitiveSensor cs_BUTTON_R = CapacitiveSensor(CAP_SENSE, BUTTON_R);

int left, right = 0;

int mode = 0;

/********************************************************/ 
//                   Main program
/********************************************************/ 

void setup() {
  // Start the serial port
  Serial.begin(9600);

  // Initialise the display
  display_init();
  
  // Load the settings from the EEPROM
  loadSettings();
  
  // Initialise the board inputs and outputs
  pinMode(DisplayPin, OUTPUT);  // declare the ledPin as an OUTPUT:
  pinMode(LDRPin, INPUT);       // declare the LDRPin as an INPUT:
  
  // Start one wire
  Wire.begin();
  
  // Set the RTC to an arbitrary date and time
  rtc2.setYear(14);
  rtc2.setMonth(8);
  rtc2.setDate(26);
  rtc2.setHour(10);
  rtc2.setMinute(30);
//    rtc2.set(DateTime(F(__DATE__), F(__TIME__)));  // Set the RTC to the date and time code was compiled
  
} 


void loop() {
    static uint16_t ledStates[8] = { 0 };
  
    getButtons();
  
  // Get the temperature from the RTC
    float celsius = rtc2.getTemperature();
    float fahrenheit = celsius * 9.0 / 5.0 + 32.0;
  
    PRINT_DEBUG("Temp ");
    PRINT_DEBUG(celsius);
    PRINT_DEBUG("deg C, ");
    PRINT_DEBUG(fahrenheit);
    PRINT_DEBUG("deg F | ");
  
  // Show the time from the RTC
    DateTime now = rtc.now();
    
    PRINT_DEBUG(now.year());
    PRINT_DEBUG('/');
    PRINT_DEBUG(now.month());
    PRINT_DEBUG('/');
    PRINT_DEBUG(now.day());
    PRINT_DEBUG(' ');
    PRINT_DEBUG(now.hour());
    PRINT_DEBUG(':');
    PRINT_DEBUG(now.minute());
    PRINT_DEBUG(':');
    PRINT_DEBUG(now.second());
    PRINT_DEBUG(" | ");
  


  // Read the LDR sensor and set the display's brightness
  setBrightness();

  getWords(ledStates, now.hour(), now.minute() );
   
//  refresh_display (mode, ledStates, colour, fadeDelay); 
  refresh_display (mode, ledStates, 90, 0); 

  PRINTLN_DEBUG();  
}

