/*
 *  Top-level display functionality
 * 
 * 
 *  Author: Josef Schneider
 *  Licence: http://creativecommons.org/licenses/by/3.0/
 *  
 *  Description:
 *    The methods in this file drive the display and colour
 *  side of things.
 *  
 */

#include <Adafruit_GFX.h>
#include <Adafruit_NeoPixel.h>
#include <PixelStates.h>

#include "bitmaps.h"

// Parameter 1 = number of pixels in strip
// Parameter 2 = Arduino pin number (most are valid)
// Parameter 3 = pixel type flags, add together as needed:
//   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
//   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)
Adafruit_NeoPixel strip(MATRIX_WIDTH * MATRIX_HEIGHT, MATRIX_PIN, NEO_GRB + NEO_KHZ800);
Adafruit_NeoPixel logoStrip(LOGO_LED_COUNT, LOGO_PIN, NEO_GRB + NEO_KHZ800);

PixelStates pixels(MATRIX_WIDTH, MATRIX_HEIGHT, NEO_MATRIX_TOP + NEO_MATRIX_LEFT + NEO_MATRIX_ROWS + NEO_MATRIX_PROGRESSIVE);

void disp_init(const uint8_t brightnessMode) {
	
	// IMPORTANT: To reduce NeoPixel burnout risk, add 1000 uF capacitor across
	// pixel power leads, add 300 - 500 Ohm resistor on first pixel's data input
	// and minimize distance between Arduino and first pixel.  Avoid connecting
	// on a live circuit...if you must, connect GND first.
	
	strip.begin();				// initialize the LED strip
	disp_setBrightness(brightnessMode);
	strip.show();				// Initialize all pixels to 'off'
	
	pixels.clear();
}

void disp_setBrightness(const uint8_t brightnessMode) {
	
	uint8_t brightness;
	
	if (brightnessMode == 0) {
		brightness = getAutoBrightness();
	} else {
		brightness = map(brightnessMode - 1, 0, BRIGHTNESS_LEVELS, MIN_BRIGHTNESS, MAX_BRIGHTNESS);
	}

	brightness = getLinearBrightness(brightness);
	
	strip.setBrightness(brightness);
	logoStrip.setBrightness(brightness);
	
	PRINT_DEBUG(" Brightness: ");
	PRINT_DEBUG(brightness);
	PRINT_DEBUG(" | ");
}

// Clears the current buffer in the pixels object
inline void pixBuffer_clear() {
	pixels.clear();
}


// Clears the old buffer in the pixels object
inline void pixBuffer_clearHistory() {
	pixels.clearBufferHistory();
}


inline void pixBuffer_loadBitmap(const uint8_t *bmp, const int8_t x, const int8_t y) {
	pixels.loadBitmap(x, y, bmp);
}


void pixBuffer_loadWords(const int wordIdx, const uint8_t *p_display, const uint8_t *p_words) {
	uint8_t disp_bytes = pgm_read_byte(p_display);
	// Loop through every line
	for(int dispIdx = 0; dispIdx < disp_bytes; dispIdx++) {

		// Get the display bits
		uint8_t disp = pgm_read_byte(p_display + wordIdx * disp_bytes + 1 + dispIdx);

		// Loop through every bit
		for(int bitIdx = 0; bitIdx < 8; bitIdx++) {
			// Check if the given bit is set
			if(disp & 0x01) {
				// It is! Get the index in WORDS
				uint8_t wordsOffset = bitIdx + dispIdx * 8;
				uint8_t x = pgm_read_byte(p_words + 3 * wordsOffset + 1);
				uint8_t y = pgm_read_byte(p_words + 3 * wordsOffset + 2);
				uint8_t length = pgm_read_byte(p_words + 3 * wordsOffset + 3);

				// Now draw the line in the buffer
				for(int pix = x; pix < x + length; pix++) {
					pixels.drawPixel(pix, y, 0x00FFFFFF);
				}
			}
			// Select the next bit
			disp >>= 1;
		}
	}
}


// Loads the ASCII representation of a value smaller than 100 into the pixel object
void pixBuffer_loadVal(const uint8_t value) {
	if (value < 10) {
		pixels.setCursor(8, 3);
	}
	else {
		pixels.setCursor(2, 3);
	}
	pixels.print(value);
}


/**
 * All the disp_display functions directly set and clear the LEDs depending
 * on the states currently stored in the pixels objet.
 */
void disp_display() {
	disp_display(Adafruit_NeoPixel::Color(235, 255, 255), Adafruit_NeoPixel::Color(0, 0, 0));
}


void disp_display(const uint32_t onColour) {
	disp_display(onColour, Adafruit_NeoPixel::Color(0, 0, 0));
}


void disp_display(const uint32_t onColour, const uint32_t offColour) {
	for(int pixIdx = 0; pixIdx < MATRIX_HEIGHT * MATRIX_WIDTH; pixIdx++) {
		PixelTransition pixTran = pixels.getPixel(pixIdx);
		if(pixTran == PIX_ON || pixTran == PIX_OFF_TO_ON) {
			strip.setPixelColor(pixIdx, onColour);
		} else {
			strip.setPixelColor(pixIdx, offColour);
		}
	}
	
	strip.show();
}


void disp_refresh(const uint8_t mode, const uint8_t colour, const uint8_t letterFade) {
	#define COLOUR_UPDATE	5		// Defines the rate at which the colour mode gets updated, in multiples of LETTER_FADE
	
	static uint32_t lastRefresh = 0;
	static uint8_t colourIteration = 0;
	static int16_t fadeBrightness = 255;
	static uint8_t colourUpdate = 0;
	
	uint32_t currentMillis = millis();
	
	// First check if we are past the colour delay
	if((uint32_t) (currentMillis - lastRefresh) < REFRESH_PERIOD) {
		return;
	}
		
	lastRefresh = currentMillis;
	
	// Logic that takes care of when the buffer contents changes
	if(!pixels.buffersMatch() && (fadeBrightness == 255 || letterFade == 0)) {
		if(letterFade == 0) {
			pixels.updateOtherBuffer();
		} else {
			fadeBrightness = 0;
		}
		colourUpdate = 0;
	}
	
	// Autoincrement the fadeBrightness
	if(letterFade > 0 && fadeBrightness < 255) {
		fadeBrightness += letterFade;
		if (fadeBrightness >= 255) {
			fadeBrightness = 255;
			pixels.updateOtherBuffer();
		}
	} else {
		fadeBrightness = 255;
	}
	
	int pixArrIdx = 0;
	
	// Loop through every LED
	for(uint16_t pixIdx = 0; pixIdx < MATRIX_HEIGHT * MATRIX_WIDTH; pixIdx++) {
			
		// Get the current pixel transition
		PixelTransition pixTran = pixels.getPixel(pixIdx);
		
		// Get the colour for the given pixel
		uint32_t pixColour = 0;
		
		if(pixTran != PIX_OFF) {
			pixColour = getPixColour(pixIdx, mode, colour, colourIteration);
		}
			
		// Determine the pixel transitions
		if(pixTran == PIX_ON_TO_OFF || pixTran == PIX_OFF_TO_ON) {
			
			uint8_t brightnessMul = fadeBrightness;
			
			if(pixTran == PIX_ON_TO_OFF) {
				brightnessMul = 255 - fadeBrightness;
			}
			
			// Correct for the non-linearity of the LEDs
			brightnessMul = getLinearBrightness(brightnessMul);
			
			// Apply the pixel brightness
			uint8_t r = (uint8_t)(pixColour >> 16);
			uint8_t g = (uint8_t)(pixColour >>  8);
			uint8_t b = (uint8_t)pixColour;
				
			r = (uint8_t)((r * brightnessMul) >> 8);
			g = (uint8_t)((g * brightnessMul) >> 8);
			b = (uint8_t)((b * brightnessMul) >> 8);
				
			pixColour = Adafruit_NeoPixel::Color(r, g, b);
		}
			
		strip.setPixelColor(pixIdx, pixColour);
		
		pixArrIdx += 3;
	}
	
	// Colour refresh is slower than screen refresh by a factor of COLOUR_UPDATE
	colourUpdate++;
	if(colourUpdate >= COLOUR_UPDATE) {
		colourUpdate = 0;
		
		colourIteration++;
		if (colourIteration > 255) {
			colourIteration = 0;
		}
	}
	
	strip.show();
}


/**
 * This function returns the colours of the different pixels given pixel index, colour mode, 
 * input colour and colour iteration. At 2KB RAM, there is not enough room to store random
 * colours in a separate array for the party mode. Instead, one random 16-bit seed is used 
 * as an input to a hashing function, i.e., the random seed is an index into one of 655356
 * different colour patterns determined by the hashing function.
 */
inline uint32_t getPixColour(const uint16_t pixIdx, const uint8_t mode, const uint32_t colour, const uint8_t colourIteration)  {
	static uint8_t prevIteration = 0;
	static uint16_t randomSeed = 0;
	
	uint16_t randomVal;
	
	// Get a new random value whenever we enter a new iteration
	if(prevIteration != colourIteration) {
		randomSeed = random();
		prevIteration = colourIteration;
	}

	// Perform a hashing operation based on the random seed and the pixIdx
	randomVal = randomSeed + pixIdx;
	randomVal += randomVal << 10;
	randomVal ^= randomVal >> 6;
	randomVal += randomVal << 3;
	randomVal ^= randomVal >> 11;
	
	switch(mode) {
	case CM_ALL_WHITE:
		return Adafruit_NeoPixel::Color(235, 255, 255);
		break;
		
	case CM_SOLID_COLOUR:
		return wheel_rainbow(colour);
		break;
		
	case CM_FADE:
		return wheel_rainbow(colourIteration);
		break;
		
	case CM_RAINBOW:
		return wheel_rainbow((pixIdx)* (256 / strip.numPixels()) - colourIteration & 255);
		break;
		
	case CM_PARTY:
		return wheel_rainbow(randomVal & 0xFF);
		break;
		
	default:
		// Should never get here, but in case it does make all LEDs red
		return Adafruit_NeoPixel::Color(255, 0, 0);
		break;
	}
}


void updateLogoColour(const uint8_t mode, const uint8_t colour) {
	static uint32_t lastRefresh = 0;
	static uint8_t colourIteration = 0;
	
	// The refresh rate for the logo is 5x slower than the main screen refresh rate
	if((uint32_t) (millis() - lastRefresh) < (REFRESH_PERIOD * 5)) {
		return;
	}
	
	for(uint8_t ledIdx = 0; ledIdx < LOGO_LED_COUNT; ledIdx++) {
		logoStrip.setPixelColor(ledIdx, getLogoPixColour(ledIdx, mode, colour, colourIteration));
	}
	
	logoStrip.show();
	
	colourIteration++;
}


inline uint32_t getLogoPixColour(const uint16_t pixIdx, const uint8_t mode, const uint32_t colour, const uint8_t colourIteration)  {
	switch(mode) {
	case CM_ALL_WHITE:
		return Adafruit_NeoPixel::Color(235, 255, 255);
		break;
		
	case CM_SOLID_COLOUR:
		return wheel_rainbow(colour);
		break;
		
	case CM_FADE:
		return wheel_rainbow(colourIteration);
		break;
		
	case CM_RAINBOW:
		return wheel_rainbow((pixIdx)* (256 / strip.numPixels()) - colourIteration & 255);
		break;
		
	default:
		// Should never get here, but in case it does make all LEDs red
		return Adafruit_NeoPixel::Color(255, 0, 0);
		break;
	}
}


void disp_showBWBitmap(const uint8_t *bmp, const uint32_t onColour, const uint32_t offColour, const int8_t x, const int8_t y) {
	pixBuffer_clear();
	pixBuffer_loadBitmap(bmp, x, y);
	disp_display(onColour, offColour);
}


inline void disp_showBWBitmap(const uint8_t *bmp, const uint32_t onColour, const uint32_t offColour) {
	disp_showBWBitmap(bmp, onColour, offColour, 0, 0);
}


void disp_showColourBitmap(const uint8_t *bmp) {
	uint16_t bmp_w = pgm_read_byte(bmp);
	uint16_t bmp_h = pgm_read_byte(bmp + 1);
	
	const uint8_t *byteIdx = bmp + 2;
	uint8_t r, g, b;
	
	for(uint16_t y = 0; y < bmp_h; y++) {
		for(uint16_t x = 0; x < bmp_w; x++) {
			r = pgm_read_byte(byteIdx++);
			g = pgm_read_byte(byteIdx++);
			b = pgm_read_byte(byteIdx++);
			
			strip.setPixelColor(pixels.getPixelIdx(x, y), r, g, b);
		}
	}
	
	strip.show();
}


void disp_displayVal(const uint8_t value) {
	pixels.clear();
	pixBuffer_loadVal(value);
	disp_display();
}


void disp_displayBrightness(const uint8_t value){
	const uint8_t* brightnessBMPs[] = {
		A_bw_bmp,
		bars_1_bw_bmp,
		bars_2_bw_bmp,
		bars_3_bw_bmp,
		bars_4_bw_bmp,
		bars_5_bw_bmp,
	};

	if (value < 0 || value >= (sizeof(brightnessBMPs) / sizeof(uint8_t*))) {
		// value is out of range
		return;
	}

	pixels.clear();
	pixBuffer_loadBitmap(brightnessBMPs[value], 0, 0);
	disp_setBrightness(value);
	disp_display();
}


void disp_ScrollWords(const char *p_words, const int scrollbuffer, uint8_t colour) {
	pixels.setTextWrap(false);	
	for (int x = MATRIX_WIDTH; x > scrollbuffer; x--) {
		pixels.clear();
		pixels.setCursor(x - 6, 3);
		pixels.print(p_words);
		disp_display(wheel_rainbow(colour));
		colour += 5;
		buttonsTick();
		delay(100);
	}
}
