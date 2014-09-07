/*-------------------------------------------------------------------------
Arduino library that stores the state of the 16 * 8 pixel display used by
ClockTiM.

Author: Josef Schneider
-------------------------------------------------------------------------*/

#include <PixelStates.h>

PixelStates::PixelStates(uint8_t *array, int16_t w, int16_t h, uint8_t matrixType) : 
	Adafruit_GFX(w, h), 
	type(matrixType), 
	pixelStates(array) ,
	matrixWidth(w), 
	matrixHeight(h), 
	tilesX(0),
	tilesY(0),
	arrSize(ARRAY_SIZE(w, h)) { }

	
PixelStates::PixelStates(uint8_t *array, uint8_t mW, uint8_t mH, uint8_t tX, uint8_t tY, uint8_t matrixType) : 
	Adafruit_GFX(mW * tX, mH * tY), 
	type(matrixType), 
	pixelStates(array),
	matrixWidth(mW), 
	matrixHeight(mH), 
	tilesX(tX),
	tilesY(tY),
	arrSize(ARRAY_SIZE(mW * tX, mH * tY)) { }

	
void PixelStates::drawPixel(int16_t x, int16_t y, uint16_t color) {
	
	/*
	
	The following code is mostly copied from the NeoMatrix library.
	
	Written by Phil Burgess / Paint Your Dragon for Adafruit Industries.

	Adafruit invests time and resources providing this open source code,
	please support Adafruit and open-source hardware by purchasing products
	from Adafruit!
	
	NeoMatrix is free software: you can redistribute it and/or modify
	it under the terms of the GNU Lesser General Public License as
	published by the Free Software Foundation, either version 3 of
	the License, or (at your option) any later version.

	NeoMatrix is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU Lesser General Public License for more details.

	You should have received a copy of the GNU Lesser General Public
	License along with NeoMatrix.  If not, see
	<http://www.gnu.org/licenses/>. */
	
	if((x < 0) || (y < 0) || (x >= _width) || (y >= _height)) {
		return;
	}

	int16_t t;
	switch(rotation) {
	case 1:
		t = x;
		x = WIDTH  - 1 - y;
		y = t;
		break;
	case 2:
		x = WIDTH  - 1 - x;
		y = HEIGHT - 1 - y;
		break;
	case 3:
		t = x;
		x = y;
		y = HEIGHT - 1 - t;
		break;
	default:
		break;
	}

	int tileOffset = 0, pixelOffset;

	uint8_t corner = type & NEO_MATRIX_CORNER;
	uint16_t minor, major, majorScale;

	if(tilesX) { // Tiled display, multiple matrices
		uint16_t tile;

		minor = x / matrixWidth;            // Tile # X/Y; presume row major to
		major = y / matrixHeight,           // start (will swap later if needed)
		x     = x - (minor * matrixWidth);  // Pixel X/Y within tile
		y     = y - (major * matrixHeight); // (-* is less math than modulo)

		// Determine corner of entry, flip axes if needed
		if(type & NEO_TILE_RIGHT) {
			minor = tilesX - 1 - minor;
		}
		if(type & NEO_TILE_BOTTOM) {
			major = tilesY - 1 - major;
		}

		// Determine actual major axis of tiling
		if((type & NEO_TILE_AXIS) == NEO_TILE_ROWS) {
			majorScale = tilesX;
		} else {
			swap(major, minor);
			majorScale = tilesY;
		}

		// Determine tile number
		if((type & NEO_TILE_SEQUENCE) == NEO_TILE_PROGRESSIVE) {
			// All tiles in same order
			tile = major * majorScale + minor;
		} else {
			// Zigzag; alternate rows change direction.  On these rows,
			// this also flips the starting corner of the matrix for the
			// pixel math later.
			if(major & 1) {
				corner ^= NEO_MATRIX_CORNER;
				tile = (major + 1) * majorScale - 1 - minor;
			} else {
				tile = major * majorScale + minor;
			}
		}

		// Index of first pixel in tile
		tileOffset = tile * matrixWidth * matrixHeight;

	} // else no tiling (handle as single tile)

	// Find pixel number within tile
	minor = x; // Presume row major to start (will swap later if needed)
	major = y;

	// Determine corner of entry, flip axes if needed
	if(corner & NEO_MATRIX_RIGHT) {
		minor = matrixWidth - 1 - minor;
	}
	if(corner & NEO_MATRIX_BOTTOM) {
		major = matrixHeight - 1 - major;
	}

	// Determine actual major axis of matrix
	if((type & NEO_MATRIX_AXIS) == NEO_MATRIX_ROWS) {
		majorScale = matrixWidth;
	} else {
		swap(major, minor);
		majorScale = matrixHeight;
	}

	// Determine pixel number within tile/matrix
	if((type & NEO_MATRIX_SEQUENCE) == NEO_MATRIX_PROGRESSIVE) {
		// All lines in same order
		pixelOffset = major * majorScale + minor;
	} else {
		// Zigzag; alternate rows change direction.
		if(major & 1) {
			pixelOffset = (major + 1) * majorScale - 1 - minor;
		} else {
			pixelOffset = major * majorScale + minor;
		}
	}

	if(color > 0) {
		setPixel(tileOffset + pixelOffset);
	} else {
		clearPixel(tileOffset + pixelOffset);
	}
}


void PixelStates::setPixel(uint16_t ledIdx) {
	uint16_t byteIdx = ledIdx >> 3;
	uint8_t bitIdx = ledIdx & 0x0007;
	
	pixelStates[byteIdx] |= 1 << bitIdx;
}


void PixelStates::clearPixel(uint16_t ledIdx) {
	uint16_t byteIdx = ledIdx >> 3;
	uint8_t bitIdx = ledIdx & 0x0007;
	
	pixelStates[byteIdx] &= ~(1 << bitIdx);
}


bool PixelStates::getPixel(uint16_t ledIdx) {
	uint16_t byteIdx = ledIdx >> 3;
	uint8_t bitIdx = ledIdx & 0x0007;
	
	return (pixelStates[byteIdx] & (1 << bitIdx)) > 0;
}


void PixelStates::clear() {
	fillBuffer(0);
}


void PixelStates::fillBuffer(uint8_t pixValue) {
	uint8_t fillValue;
	
	if(pixValue > 0) {
		fillValue = 0xFF;
	} else {
		fillValue = 0x00;
	}
	
	for(int16_t byteIdx = 0; byteIdx < arrSize; byteIdx++) {
		pixelStates[byteIdx] = fillValue;
	}
}


void PixelStates::loadBitmap(uint16_t x, uint16_t y, uint8_t *bmp) {
	uint16_t bmp_w = bmp[0];
	uint16_t bmp_h = bmp[1];
	
	uint8_t byteIdx = 2;
	int8_t bitIdx = 7;
	uint8_t value = bmp[byteIdx];
	
	for(uint16_t j = 0; j < bmp_h; j++) {
		for(uint16_t i = 0; i < bmp_w; i++) {
			
			if((value & (1 << bitIdx)) != 0) {
				drawPixel(x + i, y + j, 0x00FFFFFF);
			}
			
			bitIdx--;
			if(bitIdx < 0) {
				bitIdx = 7;
				byteIdx++;
				value = bmp[byteIdx];
			}
		}
	}
}