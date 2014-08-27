
#include <Wire.h>      
#include <DS3231.h>
#include "LANGUAGE_English_TiM.h"


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

const int KnobPin = A6;         // select the input pin for the potentiometer
const int LDRPin = A7;          // select the input pin for the LDR
const int DisplayPin = 5;       //select the pin the strip is on

int KnobValue = 0;                  // variable to store the value coming from the sensor
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
  pinMode(KnobPin, INPUT);      // declare the KnobPin as an INPUT:
  pinMode(LDRPin, INPUT);       // declare the LDRPin as an INPUT:
  
  // Start one wire
  Wire.begin();
  
  // Set the RTC to an arbitrary date and time
  rtc2.setYear(14);
  rtc2.setMonth(8);
  rtc2.setDate(26);
  rtc2.setHour(19);
  rtc2.setMinute(15);
//    rtc2.set(DateTime(F(__DATE__), F(__TIME__)));  // Set the RTC to the date and time code was compiled
  
} 


void loop() {
    static uint16_t ledStates[8] = { 0 };

  
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
  
  // read the value from the sensor:
  KnobValue = analogRead(KnobPin);
  PRINT_DEBUG("Knob: ");
  PRINT_DEBUG(KnobValue);
  PRINT_DEBUG(" | ");  

  // Read the LDR sensor and set the display's brightness
  setBrightness();

  getWords(ledStates, now.hour(), now.minute() );
  
//  refresh_display (mode, ledStates, colour, fadeDelay); 
  refresh_display (5, ledStates, 90, 0); 

  PRINTLN_DEBUG();  

 /*
  if (KnobValue < 50){ 
    //light off 
    PRINTLN_DEBUG("Seconds mode!");
    matrix.fillScreen(0);
    if (now.second()<10) {
      matrix.setCursor(2, 1);
      matrix.print(F("0"));
      matrix.setCursor(8, 1);
      matrix.print((now.second()));
    }
    else {
      matrix.setCursor(2, 1);
      matrix.print((now.second()));
    }
  
    matrix.show();

  }
  else if (KnobValue < 150){
    //rainbow
    PRINT_DEBUG("rainbow1 - delay ");
    PRINTLN_DEBUG(map(KnobValue, 50, 149, 0, 50));
    displayBuffer2(ledStates, map(KnobValue, 50, 149, 0, 50));
    
    
  }else if (KnobValue < 300){
    //rainbow!
    displayBuffer3(ledStates, map(KnobValue, 150, 299, 0, 50));
    PRINT_DEBUG("rainbow2 - delay ");
    PRINTLN_DEBUG(map(KnobValue, 150, 299, 0, 50));
    
  }
  else  if (KnobValue <1000){
    //solid colour
    int colour = map(KnobValue, 300, 999, 0, 255);
    PRINT_DEBUG("Show the time, solid colour ");
    PRINTLN_DEBUG(colour);
    displayBuffer(ledStates, colour);
   
  } 
  
  else {
    PRINTLN_DEBUG("Show the time, all white");
      displayBuffer_WHITE(ledStates);
  }
  */
}


