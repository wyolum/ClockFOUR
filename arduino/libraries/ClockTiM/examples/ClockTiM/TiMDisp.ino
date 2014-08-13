#include <Adafruit_NeoPixel.h>

// Parameter 1 = number of pixels in strip
// Parameter 2 = Arduino pin number (most are valid)
// Parameter 3 = pixel type flags, add together as needed:
//   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
//   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)
Adafruit_NeoPixel strip(128, TiMPIN, NEO_GRB + NEO_KHZ800);

void disp_init() {
	
	// IMPORTANT: To reduce NeoPixel burnout risk, add 1000 uF capacitor across
	// pixel power leads, add 300 - 500 Ohm resistor on first pixel's data input
	// and minimize distance between Arduino and first pixel.  Avoid connecting
	// on a live circuit...if you must, connect GND first.


	strip.begin();
	strip.show(); // Initialize all pixels to 'off'
}

void disp_display(uint16_t *ledStates) {
	for(int y = 0; y < 8; y++) {
		for(int x = 0; x < 16; x++) {
			if(ledStates[y] & (1 << x)) {
				strip.setPixelColor(y * 16 + x, strip.Color(63,   63,   63));
			} else {
				strip.setPixelColor(y * 16 + x, strip.Color(0,   0,   0));
			}
		}
	}
	strip.show();
}

// Input a value 0 to 255 to get a color value.
// The colours are a transition r - g - b - back to r.
uint32_t disp_wheel(byte WheelPos) {
	if(WheelPos < 85) {
		return strip.Color(WheelPos * 3, 255 - WheelPos * 3, 0);
	} else if(WheelPos < 170) {
		WheelPos -= 85;
		return strip.Color(255 - WheelPos * 3, 0, WheelPos * 3);
	} else {
		WheelPos -= 170;
		return strip.Color(0, WheelPos * 3, 255 - WheelPos * 3);
	}
}

void disp_rainbow(uint16_t *ledStates, uint8_t wait) {
	for(int colour = 0; colour < 256; colour++) {
		for(int y = 0; y < 8; y++) {
			for(int x = 0; x < 16; x++) {
				int ledIdx = y * 16 + x;
				if(ledStates[y] & (1 << x)) {
					strip.setPixelColor(ledIdx, disp_wheel((ledIdx + colour) & 255));
				} else {
					strip.setPixelColor(ledIdx, strip.Color(0,   0,   0));
				}
			}
		}
		strip.show();
		delay(wait);
	}
}
