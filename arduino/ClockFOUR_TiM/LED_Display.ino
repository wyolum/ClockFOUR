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
Adafruit_NeoPixel strip(MATRIX_WIDTH * MATRIX_HEIGHT, MATRIX_PIN, NEO_GRB + NEO_KHZ800);

void disp_init() {
	
	// IMPORTANT: To reduce NeoPixel burnout risk, add 1000 uF capacitor across
	// pixel power leads, add 300 - 500 Ohm resistor on first pixel's data input
	// and minimize distance between Arduino and first pixel.  Avoid connecting
	// on a live circuit...if you must, connect GND first.
	
	strip.begin();				// initialize the LED strip
	strip.setBrightness(MIN_BRIGHTNESS);
	strip.show();				// Initialize all pixels to 'off'
}

uint16_t LDR_Value = 0;
uint8_t brightness = MIN_BRIGHTNESS;

inline void setBrightness() {
  LDR_Value = analogRead(LDR_PIN);  
  if (LDR_Value < 350) {
    brightness = MIN_BRIGHTNESS;
  } else if (LDR_Value > 1000) {
      brightness = MAX_BRIGHTNESS;
    }  
    else brightness = map(LDR_Value,350,1000,50,255);
  
  strip.setBrightness(brightness);
  
  /*
  PRINT_DEBUG("LDR: ");
  PRINT_DEBUG(LDR_Value);
  PRINT_DEBUG(" Brightness: ");
  PRINT_DEBUG(brightness);
  PRINT_DEBUG(" | ");
  */
}

void loadWords(int wordIdx, uint8_t *display, uint8_t *words, PixelStates *pixels) {
	uint8_t disp_bytes = pgm_read_byte(display);
        // Loop through every line
	for(int dispIdx = 0; dispIdx < disp_bytes; dispIdx++) {

		// Get the display bits
		uint8_t disp = pgm_read_byte(display + wordIdx * disp_bytes + 1 + dispIdx);

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
					pixels->ledStates[(MATRIX_HEIGHT - 1) - y] |= 1 << pix;
				}
			}
			// Select the next bit
			disp >>= 1;
		}
	}
}


void disp_display(PixelStates *pixels) {
	disp_display(pixels, strip.Color(235, 255, 255));
}

void disp_display(PixelStates *pixels, uint32_t colour) {
	for(int y = 0; y < MATRIX_HEIGHT; y++) {
		for(int x = 0; x < MATRIX_WIDTH; x++) {
			if(pixels->ledStates[y] & (1 << x)) {
				strip.setPixelColor(y * MATRIX_WIDTH + x, colour);
			} else {
				strip.setPixelColor(y * MATRIX_WIDTH + x, strip.Color(0,   0,   0));
			}
		}
	}
	strip.show();
}

uint32_t lastRefresh;
uint8_t j;
void disp_refresh (PixelStates *pixels, uint8_t mode, uint8_t colour, uint16_t fadeDelay) {
  unsigned long currentMillis = millis();
  if ((unsigned long) (currentMillis - lastRefresh) >= fadeDelay) {  // Do nothing if we are within fadeDelay
    uint8_t random_colour = random(0,255);
    j++;
    if (j > 255) j=0;
    for(int y = 0; y < MATRIX_HEIGHT; y++) {
      for(int x = 0; x < MATRIX_WIDTH; x++) {
        if(pixels->ledStates[y] & (1 << x)) {
          switch (mode) {
          case 0: // All white
                {
                  strip.setPixelColor(y * MATRIX_WIDTH + x, strip.Color(235,   255,   255));   
                }
                break;
              
          case 1: // Solid colour
                {
                  strip.setPixelColor(y * MATRIX_WIDTH + x,  disp_wheel(colour));
                
                }
                break;
              
          case 2: // Fade through solid colours
                {
                   strip.setPixelColor(y * MATRIX_WIDTH + x, disp_wheel(j)); 
                }   
                break;
           
          case 3: // Rainbow fade
                {
                  strip.setPixelColor(y * MATRIX_WIDTH + x, disp_wheel((y * MATRIX_WIDTH + x)* (256 / strip.numPixels()) - j & 255));
                }
                break;    
            case 4: // Random colour letters
                {
                  strip.setPixelColor(y * MATRIX_WIDTH + x, disp_wheel(random(0,255)));
                }
                break;  
           case 5: // Random solid colours
                {
                  strip.setPixelColor(y * MATRIX_WIDTH + x, disp_wheel(random_colour));
                }
                break;                                    
          default:
                break;
          }
        } 
          else {  // turn off any letters not in a current word
            strip.setPixelColor(y * MATRIX_WIDTH + x, strip.Color(0,   0,   0));
            }        
        
      }
    }
    strip.show(); 
    lastRefresh = currentMillis;    
  }
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
		return strip.Color(255 - WheelPos * 3, WheelPos * 3, 0);
	} else if(WheelPos < 170) {
		WheelPos -= 85;
		return strip.Color(0, 255 - WheelPos * 3, WheelPos * 3);
	} else {
		WheelPos -= 170;
		return strip.Color(WheelPos * 3, 0, 255 - WheelPos * 3);
	}
}


void disp_ScrollWords(char *words, int scrollbuffer, uint8_t colour) {

        for (int x = MATRIX_WIDTH; x > scrollbuffer; x--) { 
          PixelStates pixels(MATRIX_WIDTH, MATRIX_HEIGHT);
          pixels.setCursor(x-6,1);
          pixels.print(words);
          disp_refresh (&pixels, 1, colour, 0);
          buttonsTick();
          delay(100);
        }
}

void disp_displayVal(uint8_t value) {
	PixelStates pixels(MATRIX_WIDTH, MATRIX_HEIGHT);
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
        PixelStates pixels(MATRIX_WIDTH, MATRIX_HEIGHT);
        pixels.setCursor(2,1);
        pixels.print("o");
	pixels.setCursor(8, 1);
	if(value == 0) {
		pixels.print("C");
	} else {
		pixels.print("F");
	}
	disp_display(&pixels);
}

void self_test(PixelStates *pixels) {
  uint8_t c = 0;
  uint8_t i = 0;
  uint8_t seconds_count = 0;
  uint16_t totalMinutes = 0;
  while (popEvent() == NO_EVENT) {
    i++;
    PRINT_DEBUG("I = ");
    PRINT_DEBUG (i);
    PRINT_DEBUG(" ; C = ");
    PRINTLN_DEBUG(c);
    if (i > strip.numPixels()) {
      i = 0;
      c += 1;
      if (c > 2) c = 0;
    }
    if (c == 0) strip.setPixelColor(i, strip.Color(128, 0, 0));
    if (c == 1) strip.setPixelColor(i, strip.Color(0, 128, 0));
    if (c == 2) strip.setPixelColor(i, strip.Color(0, 0, 128));
    strip.show();
    buttonsTick();
    delay(10);
  }
  while (popEvent() == NO_EVENT) {
    buttonsTick();
    seconds_count+=10;
    if (seconds_count > 60) {
    totalMinutes++;
    seconds_count = 0;
    }
    if (totalMinutes > 1439) totalMinutes = 0;
    pixels->fillScreen(0);
    loadTime(pixels, totalMinutes);
    disp_refresh(pixels, 0, 0, 0);
  }
    
}


