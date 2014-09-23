
#include <avr/pgmspace.h>
#include <Adafruit_GFX.h>
#include <Adafruit_NeoPixel.h>
#include <PixelStates.h>

// Parameter 1 = number of pixels in strip
// Parameter 2 = Arduino pin number (most are valid)
// Parameter 3 = pixel type flags, add together as needed:
//   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
//   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)
Adafruit_NeoPixel strip(MATRIX_WIDTH * MATRIX_HEIGHT, MATRIX_PIN, NEO_GRB + NEO_KHZ800);

uint8_t ledBuffer[ARRAY_SIZE(MATRIX_WIDTH, MATRIX_HEIGHT)];
PixelStates pixels(ledBuffer, MATRIX_WIDTH, MATRIX_HEIGHT, NEO_MATRIX_BOTTOM + NEO_MATRIX_LEFT + NEO_MATRIX_ROWS + NEO_MATRIX_PROGRESSIVE);

void disp_init() {
	
	// IMPORTANT: To reduce NeoPixel burnout risk, add 1000 uF capacitor across
	// pixel power leads, add 300 - 500 Ohm resistor on first pixel's data input
	// and minimize distance between Arduino and first pixel.  Avoid connecting
	// on a live circuit...if you must, connect GND first.
	
	strip.begin();				// initialize the LED strip
	strip.setBrightness(MIN_BRIGHTNESS);
	strip.show();				// Initialize all pixels to 'off'
	
	pixels.clear();
}

uint16_t LDR_Value = 0;
uint8_t brightness = MIN_BRIGHTNESS;

inline void disp_setBrightness() {
	
	LDR_Value = analogRead(LDR_PIN);
	
	if (LDR_Value < 350) {
		brightness = MIN_BRIGHTNESS;
	} else if (LDR_Value > 1000) {
		brightness = MAX_BRIGHTNESS;
	} else {
		brightness = map(LDR_Value, 350, 1000, 50, 255);
	}
	
	strip.setBrightness(brightness);
	
	/*
	PRINT_DEBUG("LDR: ");
	PRINT_DEBUG(LDR_Value);
	PRINT_DEBUG(" Brightness: ");
	PRINT_DEBUG(brightness);
	PRINT_DEBUG(" | ");
	*/
}

inline void pixBuffer_clear() {
	pixels.clear();
}

inline void pixBuffer_loadBitmap(prog_uchar *bmp) {
	pixels.loadBitmap(0, 0, bmp);
}

void pixBuffer_loadWords(int wordIdx, prog_uchar *p_display, prog_uchar *p_words) {
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

void disp_display() {
	disp_display(strip.Color(235, 255, 255), strip.Color(0,   0,   0));
}

void disp_display(uint32_t onColour) {
	disp_display(onColour, strip.Color(0,   0,   0));
}

void disp_display(uint32_t onColour, uint32_t offColour) {
	for(int pixIdx = 0; pixIdx < MATRIX_HEIGHT * MATRIX_WIDTH; pixIdx++) {
		if(pixels.getPixel(pixIdx)) {
			strip.setPixelColor(pixIdx, onColour);
		} else {
			strip.setPixelColor(pixIdx, offColour);
		}
	}
	
	strip.show();
}

void disp_refresh(uint8_t mode, uint8_t colour, uint16_t fadeDelay) {
	static uint32_t lastRefresh;
	static uint8_t j = 0;
	
	unsigned long currentMillis = millis();
	
	if((unsigned long) (currentMillis - lastRefresh) >= fadeDelay) {  // Do nothing if we are within fadeDelay
		
		uint8_t random_colour = random(0,255);
		
		j++;
		if (j > 255) {
			j=0;
		}
		
		for(int pixIdx = 0; pixIdx < MATRIX_HEIGHT * MATRIX_WIDTH; pixIdx++) {
			if(pixels.getPixel(pixIdx)) {
				switch (mode) {
				case 0: // All white
					{
						strip.setPixelColor(pixIdx, strip.Color(235,   255,   255));
					}
					break;
						
				case 1: // Solid colour
					{
						strip.setPixelColor(pixIdx,  wheel(colour));
							
					}
					break;
						
				case 2: // Fade through solid colours
					{
						strip.setPixelColor(pixIdx, wheel(j));
					}
					break;
						
				case 3: // Rainbow fade
					{
						strip.setPixelColor(pixIdx, wheel((pixIdx)* (256 / strip.numPixels()) - j & 255));
					}
					break;
				case 4: // Random colour letters
					{
						strip.setPixelColor(pixIdx, wheel(random(0,255)));
					}
					break;
				case 5: // Random solid colours
					{
						strip.setPixelColor(pixIdx, wheel(random_colour));
					}
					break;
				default:
					break;
				}
			}
			else {  // turn off any letters not in a current word
				strip.setPixelColor(pixIdx, strip.Color(0,   0,   0));
			}
		}
		strip.show();
		lastRefresh = currentMillis;
	}
}

void disp_showBWBitmap(prog_uchar *bmp, uint32_t onColour, uint32_t offColour) {
	pixBuffer_clear();
	pixBuffer_loadBitmap(bmp);
	disp_display(onColour, offColour);
}

void disp_showColourBitmap(prog_uchar *bmp) {
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

// Input a value 0 to 255 to get a color value.
// The colours are a transition r - g - b - back to r.
uint32_t wheel(byte WheelPos) {
	if(WheelPos < 85) {
		return strip.Color(255 - WheelPos * 3, WheelPos * 3, 0);
	} else if(WheelPos < 170) {
		WheelPos -= 85;
		return strip.Color(0, 255 - WheelPos * 3, WheelPos * 3);
	} else {
		WheelPos -= 170;
		return strip.Color(WheelPos * 3, 0, 255 - WheelPos * 3);
	}
}


void disp_displayVal(uint8_t value) {
	pixels.clear();
	pixBuffer_loadVal(value, 0);
	disp_display();
}

// mode 0 = normal display, 1 = degree symbol, 2 = minute progress bar
void pixBuffer_loadVal(uint8_t value, uint8_t disp_mode) {
	uint8_t k, ticks = 0;
  	if (disp_mode == 0) {
          if(value < 10) {
	  	pixels.setCursor(8, 1);
	  } else {
	  	pixels.setCursor(2, 1);
	  }
        } else if (disp_mode == 1) { // print a degree symbol
               pixels.drawPixel(14,1,0x00FFFFFF);
               pixels.drawPixel(14,3,0x00FFFFFF);
               pixels.drawPixel(13,2,0x00FFFFFF);
               pixels.drawPixel(15,2,0x00FFFFFF);
               if(value < 10) {
	  	  pixels.setCursor(7, 1);
	       } else {
	     	  pixels.setCursor(1, 1);
	       }
        }  else {  // (disp_mode == 2)
             if(value < 10) {
	  	pixels.setCursor(8, 0);
	     } else {
	   	pixels.setCursor(2, 0);
	     }
           ticks = rtc.getSecond()/15 + rtc.getMinute()%5 * 4;
/*           
           PRINT_DEBUG("ticks ");  
           PRINT_DEBUG(ticks);
           PRINT_DEBUG(" second/15 ");
           PRINT_DEBUG(rtc.getSecond()/15);
           PRINT_DEBUG(" Min %5 ");
           PRINTLN_DEBUG(rtc.getMinute()%5);
*/           
           for (k = 0; k < (20); k++) {
             if ((k < ticks) && (k > ticks - 5)) {
               pixels.drawPixel(k, 7, 0x00FFFFFF);
             } else pixels.drawPixel(k, 7, 0x00000000);
           }
        }
          
        
      pixels.print(value);
}


void disp_TempCF(uint8_t value) {
	pixels.clear();

	// draw a degree symbol
	pixels.drawPixel(3,1,0x00FFFFFF);
	pixels.drawPixel(3,3,0x00FFFFFF);
	pixels.drawPixel(2,2,0x00FFFFFF);
	pixels.drawPixel(4,2,0x00FFFFFF);

	pixels.setCursor(8, 1);
	if(value == 0) {
		pixels.print("C");
		} else {
		pixels.print("F");
	}
	disp_display();
}


void disp_ScrollWords(char *p_words, int scrollbuffer, uint8_t colour) {
	for (int x = MATRIX_WIDTH; x > scrollbuffer; x--) {
		pixels.clear();
		pixels.setCursor(x-6,1);
		pixels.print(p_words);
		disp_refresh (1, colour, 0);
		buttonsTick();
		delay(100);
	}
}
