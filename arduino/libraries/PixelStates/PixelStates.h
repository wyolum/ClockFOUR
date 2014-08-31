/*-------------------------------------------------------------------------
  Arduino library that stores the state of the 16 * 8 pixel display used by
  ClockTiM.
  
  Author: Josef Schneider
  -------------------------------------------------------------------------*/

#ifndef _PIXEL_STATES_H_
#define _PIXEL_STATES_H_

#if ARDUINO >= 100
 #include <Arduino.h>
#else
 #include <WProgram.h>
 #include <pins_arduino.h>
#endif

#include <Adafruit_GFX.h>

// Pixel states stores whether specific LEDs are on or off and also
// provides functions to draw things by using the GFX library
class PixelStates : public Adafruit_GFX {
	public:
		PixelStates(int w, int h);
		
		void drawPixel(int16_t x, int16_t y, uint16_t color);		
		void fillScreen(uint8_t pixValue);
		
		// Hard code it for now.
		uint16_t ledStates[8];
		
	private:
		int width;
		int height;
};

#endif // _PIXEL_STATES_H_