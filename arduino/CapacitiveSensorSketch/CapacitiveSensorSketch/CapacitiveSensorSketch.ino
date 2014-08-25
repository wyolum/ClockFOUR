#include <CapacitiveSensor.h>

/*
 * CapitiveSense Library Demo Sketch
 * Paul Badger 2008
 * Uses a high value resistor e.g. 10M between send pin and receive pin
 * Resistor effects sensitivity, experiment with values, 50K - 50M. Larger resistor values yield larger sensor values.
 * Receive pin is the sensor pin - try different amounts of foil/metal on this pin
 */


CapacitiveSensor   cs_ButtonR = CapacitiveSensor(A1,A0);        // 10M resistor between pins 4 & 2, pin 2 is sensor pin, add a wire and or foil if desired
CapacitiveSensor   cs_ButtonL = CapacitiveSensor(A1,6);        // 10M resistor between pins 4 & 6, pin 6 is sensor pin, add a wire and or foil
//CapacitiveSensor   cs_4_8 = CapacitiveSensor(4,8);        // 10M resistor between pins 4 & 8, pin 8 is sensor pin, add a wire and or foil

void setup()                    
{
   cs_ButtonR.set_CS_AutocaL_Millis(5000);     // turn off autocalibrate on channel 1 - just as an example
   cs_ButtonL.set_CS_AutocaL_Millis(5000); 
   Serial.begin(9600);
}

void loop()                    
{
    long start = millis();
    long total1 =  cs_ButtonR.capacitiveSensor(30);
    long total2 =  cs_ButtonL.capacitiveSensor(30);
//   long total3 =  cs_4_8.capacitiveSensor(30);

    Serial.print(millis() - start);        // check on performance in milliseconds
    Serial.print("\t");                    // tab character for debug windown spacing

    Serial.print(total2);                  // print sensor output 1
    Serial.print("\t");
    Serial.println(total1);                  // print sensor output 2
//    Serial.print("\t");
//   Serial.println(total3);                // print sensor output 3

    delay(10);                             // arbitrary delay to limit data to serial port 
}
