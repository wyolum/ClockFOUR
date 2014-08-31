#include <Adafruit_GFX.h>
#include <Adafruit_NeoPixel.h>
#include <PixelState.h>

// Parameter 1 = number of pixels in strip
// Parameter 2 = Arduino pin number (most are valid)
// Parameter 3 = pixel type flags, add together as needed:
//   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
//   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)
Adafruit_NeoPixel strip(TIM_WIDTH * TIM_HEIGHT, TiMPIN, NEO_GRB + NEO_KHZ800);

void disp_init() {
	
	// IMPORTANT: To reduce NeoPixel burnout risk, add 1000 uF capacitor across
	// pixel power leads, add 300 - 500 Ohm resistor on first pixel's data input
	// and minimize distance between Arduino and first pixel.  Avoid connecting
	// on a live circuit...if you must, connect GND first.
	
	strip.begin();				// initialize the LED strip
	strip.setBrightness(196);
	strip.show();				// Initialize all pixels to 'off'
}


inline void setBrightness(int value) {
	strip.setBrightness(value);
}


void loadWords(int wordIdx, uint8_t *display, uint8_t *words, PixelStates *pixels) {
	// Loop through every line
	for(int dispIdx = 0; dispIdx < 2; dispIdx++) {

		// Get the display bits
		uint8_t disp = pgm_read_byte(display + wordIdx * 2 + 1 + dispIdx);

		// Loop through every bit
		for(int bitIdx = 0; bitIdx < 8; bitIdx++) {
			// Check if the given bit is set
			if(disp & 0x01) {
				// It is! Get the index in WORDS
				uint8_t wordsOffset = bitIdx + dispIdx * 8;
				uint8_t x = pgm_read_byte(words + 3 * wordsOffset + 1);
				uint8_t y = pgm_read_byte(words + 3 * wordsOffset + 2);
				uint8_t length = pgm_read_byte(words + 3 * wordsOffset + 3);

				// Now draw the line in the buffer
				for(int pix = x; pix < x + length; pix++) {
					pixels->ledStates[7 - y] |= 1 << pix;
				}
			}
			// Select the next bit
			disp >>= 1;
		}
	}
}

void disp_display(PixelStates *pixels) {
	disp_display(pixels, strip.Color(255, 255, 255));
}

void disp_display(PixelStates *pixels, uint32_t colour) {
	for(int y = 0; y < 8; y++) {
		for(int x = 0; x < 16; x++) {
			if(pixels->ledStates[y] & (1 << x)) {
				strip.setPixelColor(y * 16 + x, colour);
			} else {
				strip.setPixelColor(y * 16 + x, strip.Color(0,   0,   0));
			}
		}
	}
	strip.show();
}


void disp_fancyFire(PixelStates *pixels, uint32_t colour) {
	// Example of a display function
	
	// colour may not be used - it is included in the function prototype
	// so that it is compatible with other display functions
	
	// For now let's just call the display function
	disp_display(pixels);
}

void disp_random(PixelStates *pixels, uint32_t colour) {
	// Another display function example
	
	// For now let's just call the display function
	disp_display(pixels);
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


void disp_displayVal(uint8_t value) {
	PixelStates pixels(TIM_WIDTH, TIM_HEIGHT);
	disp_loadVal(&pixels, value);
	disp_display(&pixels);
}


void disp_loadVal(PixelStates *pixels, uint8_t value) {
	if(value < 10) {
		pixels->setCursor(8, 1);
	} else {
		pixels->setCursor(2, 1);
	}
	pixels->print(value);
}


void disp_TempCF(uint8_t value) {
	PixelStates pixels(TIM_WIDTH, TIM_HEIGHT);
	pixels.setCursor(8, 1);
	if(value == 0) {
		pixels.print("C");
	} else {
		pixels.print("F");
	}
	disp_display(&pixels);
}