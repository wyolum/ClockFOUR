#include <Adafruit_NeoPixel.h>

int KnobPin = A6;    // select the input pin for the potentiometer
int LDRPin = A7;     // select the input pin for the LDR
int stripPin = 5;       //select the pin the strip is on
int numLEDS = 128;        //number of LEDS in the astrip
int j;
int KnobValue, LDRValue = 0;  // variable to store the value coming from the sensor

Adafruit_NeoPixel strip = Adafruit_NeoPixel(numLEDS, stripPin, NEO_GRB + NEO_KHZ800);

void setup() {
  // declare the ledPin as an OUTPUT:

  strip.begin();
  Serial.begin(9600);
}




void loop() {


  // read the value from the sensor:
  KnobValue = analogRead(KnobPin);
  LDRValue = analogRead(LDRPin);  
  Serial.print("Knob ");
  Serial.print(KnobValue); 
  Serial.print("  LDR ");
  Serial.print(LDRValue);
  Serial.print("  | ");
  strip.setBrightness(map(LDRValue,390,1000,0,255));

  if (KnobValue < 50){ 
    //light off 
    Serial.println("light off");
    for(int i=0; i<strip.numPixels(); i++) {
      strip.setPixelColor(i, strip.Color(0, 0, 0));

    }
    strip.show();
  }
  else if (KnobValue < 150){
    //rainbow!
    rainbowCycle(map(KnobValue, 50, 149, 0, 50));
    Serial.print("rainbow1 - delay ");
    Serial.println(map(KnobValue, 50, 149, 0, 50));
  }else if (KnobValue < 300){
    //rainbow!
    rainbow(map(KnobValue, 150, 299, 0, 50));
    Serial.print("rainbow2 - delay ");
    Serial.println(map(KnobValue, 150, 299, 0, 50));
  }
  else  if (KnobValue <1000){
    //solid colour
    int colour = map(KnobValue, 300, 999, 0, 255);
    Serial.print(colour);
    for(int i=0; i<strip.numPixels(); i++) {
      strip.setPixelColor(i, Wheel(colour));

    }
    strip.show();
    Serial.println(" solid colour");
  }  
  else {
    Serial.println("all white");

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

