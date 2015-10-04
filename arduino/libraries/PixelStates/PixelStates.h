/*
 *  PixelStates functionality
 * 
 * 
 *  Author: Josef Schneider, 
 *  Licence: http://creativecommons.org/licenses/by/3.0/
 *
 *  Description:
 *    PixelStates stores and reads the binary state of pixels, determining if
 *  they are on or off. The previous state of the pixels is also stored,
 *  allowing controlling software to determine whether the pixel has recently 
 *  changed state.
 *
 */

#ifndef _PIXEL_STATES_H_
#define _PIXEL_STATES_H_

#if ARDUINO >= 100
 #include <Arduino.h>
#else
 #include <WProgram.h>
 #include <pins_arduino.h>
#endif

#include <avr/pgmspace.h>

#include <Adafruit_GFX.h>

#define ARRAY_SIZE(w, h)	((w * h) % 8) == 0 ? (w * h) / 8 : ((w * h) / 8) + 1

// Matrix layout information is passed in the 'matrixType' parameter for
// each constructor (the parameter immediately following is the LED type
// from NeoPixel.h).

// These define the layout for a single 'unified' matrix (e.g. one made
// from NeoPixel strips, or a single NeoPixel shield), or for the pixels
// within each matrix of a tiled display (e.g. multiple NeoPixel shields).

#define NEO_MATRIX_TOP         0x00 // Pixel 0 is at top of matrix
#define NEO_MATRIX_BOTTOM      0x01 // Pixel 0 is at bottom of matrix
#define NEO_MATRIX_LEFT        0x00 // Pixel 0 is at left of matrix
#define NEO_MATRIX_RIGHT       0x02 // Pixel 0 is at right of matrix
#define NEO_MATRIX_CORNER      0x03 // Bitmask for pixel 0 matrix corner
#define NEO_MATRIX_ROWS        0x00 // Matrix is row major (horizontal)
#define NEO_MATRIX_COLUMNS     0x04 // Matrix is column major (vertical)
#define NEO_MATRIX_AXIS        0x04 // Bitmask for row/column layout
#define NEO_MATRIX_PROGRESSIVE 0x00 // Same pixel order across each line
#define NEO_MATRIX_ZIGZAG      0x08 // Pixel order reverses between lines
#define NEO_MATRIX_SEQUENCE    0x08 // Bitmask for pixel line order

// These apply only to tiled displays (multiple matrices):

#define NEO_TILE_TOP           0x00 // First tile is at top of matrix
#define NEO_TILE_BOTTOM        0x10 // First tile is at bottom of matrix
#define NEO_TILE_LEFT          0x00 // First tile is at left of matrix
#define NEO_TILE_RIGHT         0x20 // First tile is at right of matrix
#define NEO_TILE_CORNER        0x30 // Bitmask for first tile corner
#define NEO_TILE_ROWS          0x00 // Tiles ordered in rows
#define NEO_TILE_COLUMNS       0x40 // Tiles ordered in columns
#define NEO_TILE_AXIS          0x40 // Bitmask for tile H/V orientation
#define NEO_TILE_PROGRESSIVE   0x00 // Same tile order across each line
#define NEO_TILE_ZIGZAG        0x80 // Tile order reverses between lines
#define NEO_TILE_SEQUENCE      0x80 // Bitmask for tile line order


#define BUFFER_0				0
#define BUFFER_1				1

typedef enum PixelTransition {
	PIX_OFF = 0,
	PIX_OFF_TO_ON,
	PIX_ON_TO_OFF,
	PIX_ON
};

// Pixel states stores whether specific LEDs are on or off and also
// provides functions to draw things by using the GFX library
class PixelStates : public Adafruit_GFX {
	public:
		PixelStates(uint16_t w, uint16_t h, uint8_t matrixType);
		PixelStates(uint8_t matrixW, uint8_t matrixH, uint8_t tX, uint8_t tY, uint8_t matrixType);
		
		int16_t getPixelIdx(int16_t x, int16_t y);
		void drawPixel(int16_t x, int16_t y, uint16_t color);
		void setPixel(uint16_t ledIdx);
		void clearPixel(uint16_t ledIdx);
		PixelTransition getPixel(uint16_t ledIdx);
		void clear();
		void fillBuffer(uint8_t pixValue);
		void loadBitmap(int16_t x, int16_t y, const uint8_t *arr);
		
		void switchBuffers();
		void updateOtherBuffer();
		bool buffersMatch();
		void clearBufferHistory();
		
	private:
		void allocateBuffers();
	
		const uint8_t type;
		const uint8_t matrixWidth;
		const uint8_t matrixHeight;
		const uint8_t tilesX;
		const uint8_t tilesY;
		const uint16_t arrSize;
		
		// The array could be any size, so we just store the pointer
		uint8_t *pixelStates[2];
		uint8_t selectBuffer;
		uint8_t otherBuffer;
};

#endif // _PIXEL_STATES_H_