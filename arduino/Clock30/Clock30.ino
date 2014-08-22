#include <Adafruit_NeoPixel.h>

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
const int stripPin = 5;       //select the pin the strip is on
const int numLEDS = 128;        //number of LEDS in the astrip
const int Button1 = 6;
const int Button2 = 7;

int j, Brightness = 0;
int KnobValue, LDRValue = 0;  // variable to store the value coming from the sensor



Adafruit_NeoPixel strip = Adafruit_NeoPixel(numLEDS, stripPin, NEO_GRB + NEO_KHZ800);

void setup() {
  pinMode(stripPin, OUTPUT);  // declare the ledPin as an OUTPUT:
  pinMode(KnobPin, INPUT);    // declare the KnobPin as an INPUT:
  pinMode(LDRPin, INPUT);     // declare the LDRPin as an INPUT:
  pinMode(Button1, INPUT);    // declare the Button1 as an INPUT:
  digitalWrite(Button1, HIGH);
  pinMode(Button2, INPUT);    // declare the Button2 as an INPUT:
  digitalWrite(Button2, HIGH);
  
  strip.begin();              // initialize the LED strip
  strip.show();               // initialise all pixels to off
  
  Serial.begin(9600);         // start the serial port
}




void loop() {


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

  if (KnobValue < 50){ 
    //light off 
    PRINTLN_DEBUG("light off");
    for(int i=0; i<strip.numPixels(); i++) {
      strip.setPixelColor(i, strip.Color(0, 0, 0));

    }
    strip.show();
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
    for(int i=0; i<strip.numPixels(); i++) {
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


