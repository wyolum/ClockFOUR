#include <Adafruit_GFX.h>
#include <Adafruit_NeoMatrix.h>
#include <Adafruit_NeoPixel.h>

const int numLEDS = 128;        //number of LEDS in the display

	// IMPORTANT: To reduce NeoPixel burnout risk, add 1000 uF capacitor across
	// pixel power leads, add 300 - 500 Ohm resistor on first pixel's data input
	// and minimize distance between Arduino and first pixel.  Avoid connecting
	// on a live circuit...if you must, connect GND first.

// Parameter 1 = number of pixels in strip
// Parameter 2 = Arduino pin number (most are valid)
// Parameter 3 = pixel type flags, add together as needed:
//   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
//   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)

Adafruit_NeoPixel strip(numLEDS, DisplayPin, NEO_GRB + NEO_KHZ800);

// MATRIX DECLARATION:
// Parameter 1 = width of NeoPixel matrix
// Parameter 2 = height of matrix
// Parameter 3 = pin number (most are valid)
// Parameter 4 = matrix layout flags, add together as needed:
//   NEO_MATRIX_TOP, NEO_MATRIX_BOTTOM, NEO_MATRIX_LEFT, NEO_MATRIX_RIGHT:
//     Position of the FIRST LED in the matrix; pick two, e.g.
//     NEO_MATRIX_TOP + NEO_MATRIX_LEFT for the top-left corner.
//   NEO_MATRIX_ROWS, NEO_MATRIX_COLUMNS: LEDs are arranged in horizontal
//     rows or in vertical columns, respectively; pick one or the other.
//   NEO_MATRIX_PROGRESSIVE, NEO_MATRIX_ZIGZAG: all rows/columns proceed
//     in the same order, or alternate lines reverse direction; pick one.
//   See example below for these values in action.
// Parameter 5 = pixel type flags, add together as needed:
//   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
//   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)

Adafruit_NeoMatrix matrix(16, 8, DisplayPin,
  NEO_MATRIX_BOTTOM     + NEO_MATRIX_LEFT +
  NEO_MATRIX_ROWS + NEO_MATRIX_PROGRESSIVE,
  NEO_GRB            + NEO_KHZ800);

int j, brightness = 50;
int LDRValue = 0;        // variable to store the value coming from the LDR sensor


void display_init() {
  matrix.begin();				// initialize the LED strip
  strip.begin();

  strip.show();				// Initialize all pixels to 'off'
  matrix.show();
}


inline void setBrightness() {
  uint8_t Brightness;
  LDRValue = analogRead(LDRPin);  
  if (LDRValue < 350) {
    Brightness = minBrightness;
  } else if (LDRValue > 1000) {
      Brightness = maxBrightness;
    }  
    else Brightness = map(LDRValue,350,1000,50,255);
  
  strip.setBrightness(Brightness);
  matrix.setBrightness(Brightness);
  
  PRINT_DEBUG("LDR: ");
  PRINT_DEBUG(LDRValue);
  PRINT_DEBUG(" Brightness: ");
  PRINT_DEBUG(Brightness);
  PRINT_DEBUG(" | ");
}

void getWords(uint16_t *ledStates, int hours, int minutes) {
// get the time of day
  int tod_idx, hour_idx, min_idx = 0;

  min_idx = minutes / 5;
//  PRINT_DEBUG("min_idx ");
//  PRINT_DEBUG(min_idx);
  
  if (minutes > 30) {
  hour_idx = hours + 1;
  }
  else hour_idx = hours;
//  PRINT_DEBUG(" hour_idx ");
//  PRINT_DEBUG(hour_idx);
  
  if ((hours * 12 + minutes / 5) < (0 * 12 + 15 / 5))
    tod_idx = 0;
    else if ((hours * 12 + minutes / 5) < (11 * 12 + 45 / 5))
      tod_idx = 1;
      else if ((hours * 12 + minutes / 5) < (12 * 12 + 15 / 5))
        tod_idx = 2;
        else if ((hours * 12 + minutes / 5) < (18 * 12 + 0 / 5))
          tod_idx = 3;
          else if ((hours * 12 + minutes / 5) < (23 * 12 + 45 / 5))
            tod_idx = 4;
            else tod_idx = 0;
//  PRINT_DEBUG(" tod_idx");
//  PRINTLN_DEBUG(tod_idx);

  uint8_t tod_bytes = pgm_read_byte(DISPLAY_tod);
  
  for(int dispIdx = 0; dispIdx < tod_bytes; dispIdx++) {
    // Get the display bits
    uint8_t disp = pgm_read_byte(DISPLAY_tod + tod_idx * tod_bytes + 1 + dispIdx);
    
    // Loop through every bit
    for(int bitIdx = 0; bitIdx < 8; bitIdx++) {
      // Check if the given bit is set
      if(disp & 0x01) {
        // It is! Get the index in WORDS
        uint8_t wordsOffset = bitIdx + dispIdx * 8;
        uint8_t x = pgm_read_byte(WORDS_tod + 3 * wordsOffset + 1);
        uint8_t y = pgm_read_byte(WORDS_tod + 3 * wordsOffset + 2);
        uint8_t length = pgm_read_byte(WORDS_tod + 3 * wordsOffset + 3);
        
        // Now draw the line in the buffer
        for(int pix = x; pix < x + length; pix++) {
          ledStates[y] |= 1 << (15 - pix);
        }
      }
      // Select the next bit
      disp >>= 1;
    }
  }
  // get the hours
    uint8_t hour_bytes = pgm_read_byte(DISPLAY_hour);
    for(int dispIdx = 0; dispIdx < hour_bytes; dispIdx++) {
    // Get the display bits
    uint8_t disp = pgm_read_byte(DISPLAY_hour + hour_idx * hour_bytes + 1 + dispIdx);
    
    // Loop through every bit
    for(int bitIdx = 0; bitIdx < 8; bitIdx++) {
      // Check if the given bit is set
      if(disp & 0x01) {
        // It is! Get the index in WORDS
        uint8_t wordsOffset = bitIdx + dispIdx * 8;
        uint8_t x = pgm_read_byte(WORDS_hour + 3 * wordsOffset + 1);
        uint8_t y = pgm_read_byte(WORDS_hour + 3 * wordsOffset + 2);
        uint8_t length = pgm_read_byte(WORDS_hour + 3 * wordsOffset + 3);
        
        // Now draw the line in the buffer
        for(int pix = x; pix < x + length; pix++) {
          ledStates[y] |= 1 << (15 - pix);
        }
      }
      // Select the next bit
      disp >>= 1;
    }
  }
  // Get the minutes
    uint8_t min_bytes = pgm_read_byte(DISPLAY_hour);
    for(int dispIdx = 0; dispIdx < min_bytes; dispIdx++) {
    // Get the display bits
    uint8_t disp = pgm_read_byte(DISPLAY_min + min_idx * min_bytes + 1 + dispIdx);
    
    // Loop through every bit
    for(int bitIdx = 0; bitIdx < 8; bitIdx++) {
      // Check if the given bit is set
      if(disp & 0x01) {
        // It is! Get the index in WORDS
        uint8_t wordsOffset = bitIdx + dispIdx * 8;
        uint8_t x = pgm_read_byte(WORDS_min + 3 * wordsOffset + 1);
        uint8_t y = pgm_read_byte(WORDS_min + 3 * wordsOffset + 2);
        uint8_t length = pgm_read_byte(WORDS_min + 3 * wordsOffset + 3);
        
        // Now draw the line in the buffer
        for(int pix = x; pix < x + length; pix++) {
          ledStates[y] |= 1 << (15 - pix);
        }
      }
      // Select the next bit
      disp >>= 1;
    }
  }
}

void matrixDisplayVal(uint8_t value) {
	matrix.fillScreen(0);
	if(value < 10) {
		matrix.setCursor(8, 1);
	} else {
		matrix.setCursor(2, 1);
	}
	matrix.print(value);
	matrix.show();
}

void refresh_display (uint8_t mode, uint16_t *ledStates, uint8_t colour, uint16_t fadeDelay) {
  unsigned long currentMillis = millis();
  if ((unsigned long) (currentMillis - lastRefresh) >= fadeDelay) {  // Do nothing if we are within fadeDelay
    uint8_t random_colour = random(0,255);
    j++;
    if (j > 255) j=0;
    for(int y = 0; y < 8; y++) {
      for(int x = 0; x < 16; x++) {
        if(ledStates[y] & (1 << x)) {
          switch (mode) {
          case 0: // All white
                {
                  strip.setPixelColor((strip.numPixels() - 1) - (y * 16 + x), strip.Color(235,   255,   255));   
                }
                break;
              
          case 1: // Solid colour
                {
                  strip.setPixelColor((strip.numPixels() - 1) - (y * 16 + x), Wheel(colour));
                
                }
                break;
              
          case 2: // Fade through solid colours
                {
                   strip.setPixelColor(((strip.numPixels() - 1) - (y * 16 + x)), Wheel(j)); 
                }   
                break;
           
          case 3: // Rainbow fade
                {
                  strip.setPixelColor((strip.numPixels() - 1) - (y * 16 + x), Wheel(((strip.numPixels() - 1) - (y * 16 + x))* 256 / strip.numPixels() - j & 255));
                }
                break;    
            case 4: // Random colour letters
                {
                  strip.setPixelColor((strip.numPixels() - 1) - (y * 16 + x), Wheel(random(0,255)));
                }
                break;  
           case 5: // Random solid colours
                {
                  strip.setPixelColor((strip.numPixels() - 1) - (y * 16 + x), Wheel(random_colour));
                }
                break;                                    
          default:
                break;
          }
        } 
          else {  // turn off any letters not in a current word
            strip.setPixelColor((strip.numPixels() - 1) - (y * 16 + x), strip.Color(0,   0,   0));
            }        
        
      }
    }
    strip.show(); 
    lastRefresh = currentMillis;    
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






