#include <Adafruit_GFX.h>
#include <Adafruit_NeoMatrix.h>
#include <Adafruit_NeoPixel.h>
#include <Wire.h>
#include "RTClib.h"

/************* Enable/disable debug mode *************/
#define DEBUG

#ifdef DEBUG
#define PRINT_DEBUG(x)		Serial.print(x)
#define PRINTLN_DEBUG(x)        Serial.println(x)
#else
#define PRINT_DEBUG(x)
#define PRINTLN_DEBUG(x)
#endif

const int KnobPin = A6;    // select the input pin for the potentiometer
const int LDRPin = A7;     // select the input pin for the LDR
const int DisplayPin = 5;       //select the pin the strip is on
const int numLEDS = 128;        //number of LEDS in the astrip
const int Button1 = 6;
const int Button2 = A0;

int j, Brightness = 0;
int KnobValue, LDRValue = 0;  // variable to store the value coming from the sensor

RTC_Millis rtc;

Adafruit_NeoPixel strip = Adafruit_NeoPixel(numLEDS, DisplayPin, NEO_GRB + NEO_KHZ800);

// MATRIX DECLARATION:
// Parameter 1 = width of NeoPixel matrix
// Parameter 2 = height of matrix
// Parameter 3 = pin number (most are valid)
// Parameter 4 = matrix layout flags, add together as needed:
//   NEO_MATRIX_TOP, NEO_MATRIX_BOTTOM, NEO_MATRIX_LEFT, NEO_MATRIX_RIGHT:
//     Position of the FIRST LED in the matrix; pick two, e.g.
//     NEO_MATRIX_TOP + NEO_MATRIX_LEFT for the top-left corner.
//   NEO_MATRIX_ROWS, NEO_MATRIX_COLUMNS: LEDs are arranged in horizontal
//     rows or in vertical columns, respectively; pick one or the other.
//   NEO_MATRIX_PROGRESSIVE, NEO_MATRIX_ZIGZAG: all rows/columns proceed
//     in the same order, or alternate lines reverse direction; pick one.
//   See example below for these values in action.
// Parameter 5 = pixel type flags, add together as needed:
//   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
//   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)

Adafruit_NeoMatrix matrix = Adafruit_NeoMatrix(16, 8, DisplayPin,
  NEO_MATRIX_BOTTOM     + NEO_MATRIX_LEFT +
  NEO_MATRIX_ROWS + NEO_MATRIX_PROGRESSIVE,
  NEO_GRB            + NEO_KHZ800);


void setup() {
  pinMode(DisplayPin, OUTPUT);  // declare the ledPin as an OUTPUT:
  pinMode(KnobPin, INPUT);    // declare the KnobPin as an INPUT:
  pinMode(LDRPin, INPUT);     // declare the LDRPin as an INPUT:
  pinMode(Button1, INPUT);    // declare the Button1 as an INPUT:
  digitalWrite(Button1, HIGH);
  pinMode(Button2, INPUT);    // declare the Button2 as an INPUT:
  digitalWrite(Button2, HIGH);
  
  strip.begin();
  matrix.begin();              // initialize the LED strip
  matrix.show();               // initialise all pixels to off
  
  Serial.begin(9600);         // start the serial port
  
  Wire.begin();
  
    rtc.begin(DateTime(F(__DATE__), F(__TIME__)));  // Set the RTC to the date and time code was compiled

    // To set the RTC with an explicit date & time, for example to set
    // January 21, 2014 at 3am you would call:
    // rtc.adjust(DateTime(2014, 1, 21, 3, 0, 0));
  
}


void loop() {
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
  LDRValue = analogRead(LDRPin);  

  // print sensor values to the serial port
  PRINT_DEBUG("Knob ");
  PRINT_DEBUG(KnobValue); 
  PRINT_DEBUG("  LDR ");
  PRINT_DEBUG(LDRValue);
  PRINT_DEBUG("  | ");


 
   
  if (LDRValue < 350) {
    Brightness = 12;
  } else if (LDRValue > 1000) {
      Brightness = 255;
    }  
    else Brightness = map(LDRValue,350,1000,12,255);
  
  strip.setBrightness(Brightness);
  matrix.setBrightness(Brightness);

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




//    for(int i=0; i<matrix.numPixels(); i++) {
//      strip.setPixelColor(i, strip.Color(0, 0, 0));
//    }
//    strip.show();
  }
  else if (KnobValue < 150){
    //rainbow!
    rainbowCycle(map(KnobValue, 50, 149, 0, 50));
    PRINT_DEBUG("rainbow1 - delay ");
    PRINTLN_DEBUG(map(KnobValue, 50, 149, 0, 50));
  }else if (KnobValue < 300){
    //rainbow!
    rainbow(map(KnobValue, 150, 299, 0, 50));
    PRINT_DEBUG("rainbow2 - delay ");
    PRINTLN_DEBUG(map(KnobValue, 150, 299, 0, 50));
  }
  else  if (KnobValue <1000){
    //solid colour
    int colour = map(KnobValue, 300, 999, 0, 255);
    PRINT_DEBUG(colour);
    for(int i=0; i<matrix.numPixels(); i++) {
      strip.setPixelColor(i, Wheel(colour));

    }
    strip.show();
    PRINTLN_DEBUG(" solid colour");
  }  
  else {
    PRINTLN_DEBUG("all white");

    for(int i=0; i<strip.numPixels(); i++) {
      strip.setPixelColor(i, strip.Color(255, 255, 255));
    }
    strip.show();
    
  }
}

uint32_t Wheel(byte WheelPos) {
  if(WheelPos < 85   ) {
    return strip.Color(WheelPos * 3, 255 - WheelPos * 3, 0);
  } 
  else if(WheelPos < 170) {
    WheelPos -= 85;
    return strip.Color(255 - WheelPos * 3, 0, WheelPos * 3);
  } 
  else {
    WheelPos -= 170;
    return strip.Color(0, WheelPos * 3, 255 - WheelPos * 3);
  }
}

void rainbowCycle(uint8_t wait) {

  j++;
  if (j > 255) j=0;
  for(int i=0; i< strip.numPixels(); i++) {
    strip.setPixelColor(i, Wheel(((i * 256 / strip.numPixels()) + j) & 255));
  }
  strip.show();
  delay(wait);
}

void rainbow(uint8_t wait) {

  j++;
  if (j > 255) j=0;
  for(int i=0; i< strip.numPixels(); i++) {
    strip.setPixelColor(i, Wheel(j));
  }
  strip.show();
  delay(wait);
}


