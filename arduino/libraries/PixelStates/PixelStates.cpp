/*-------------------------------------------------------------------------
  Arduino library that stores the state of the 16 * 8 pixel display used by
  ClockTiM.
  
  Author: Josef Schneider
  -------------------------------------------------------------------------*/
		
#include <PixelStates.h>

PixelStates::PixelStates(int w, int h) : Adafruit_GFX(w, h) { 
	width = w;
	height = h;
	fillScreen(0);
}
	
void PixelStates::drawPixel(int16_t x, int16_t y, uint16_t color) {
	if(color > 0) {
		ledStates[height - y] |= 1 << x;
	}
}

void PixelStates::fillScreen(uint8_t pixValue) {
	uint16_t fillValue;
	if(pixValue > 0) {
		fillValue = 0xFFFF;
	} else {
		fillValue = 0x0000;
	}
	
	for(int i = 0; i < 8; i++) {
		ledStates[i] = fillValue;
	}
}


