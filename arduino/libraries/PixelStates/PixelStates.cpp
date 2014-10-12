/*-------------------------------------------------------------------------
Arduino library that stores the state of the 16 * 8 pixel display used by
ClockTiM.

Author: Josef Schneider
-------------------------------------------------------------------------*/

#include <PixelStates.h>

PixelStates::PixelStates(uint16_t w, uint16_t h, uint8_t matrixType) : 
	Adafruit_GFX(w, h),
	type(matrixType),
	selectBuffer(0),
	otherBuffer(1),
	matrixWidth(w),
	matrixHeight(h),
	tilesX(0),
	tilesY(0),
	arrSize(ARRAY_SIZE(w, h)) { 

	allocateBuffers();
}

	
PixelStates::PixelStates(uint8_t mW, uint8_t mH, uint8_t tX, uint8_t tY, uint8_t matrixType) : 
	Adafruit_GFX(mW * tX, mH * tY), 
	type(matrixType),
	selectBuffer(0),
	otherBuffer(1),
	matrixWidth(mW),
	matrixHeight(mH),
	tilesX(tX),
	tilesY(tY),
	arrSize(ARRAY_SIZE(mW * tX, mH * tY)) { 

	allocateBuffers();
}


void PixelStates::allocateBuffers() {
	pixelStates[0] = (uint8_t *)calloc(arrSize, sizeof(uint8_t));
	pixelStates[1] = (uint8_t *)calloc(arrSize, sizeof(uint8_t));
}

	
int16_t PixelStates::getPixelIdx(int16_t x, int16_t y) {
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
		return -1;
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

	return tileOffset + pixelOffset;
}


// Swap which buffer we are working with
void PixelStates::switchBuffers() {
	otherBuffer = selectBuffer;
	selectBuffer ^= 0x01;
}


// Copies all the data from the current buffer to the other buffer
void PixelStates::updateOtherBuffer() {	
	for(int16_t byteIdx = 0; byteIdx < arrSize; byteIdx++) {
		pixelStates[otherBuffer][byteIdx] = pixelStates[selectBuffer][byteIdx];
	}
}


// Returns true if both buffers match
bool PixelStates::buffersMatch() {
	bool match;
	
	for(int16_t byteIdx = 0; byteIdx < arrSize; byteIdx++) {
		if(pixelStates[otherBuffer][byteIdx] != pixelStates[selectBuffer][byteIdx]) {
			return false;
		}
	}
	
	return true;
}


void PixelStates::clearBufferHistory() {
	for(int16_t byteIdx = 0; byteIdx < arrSize; byteIdx++) {
		pixelStates[otherBuffer][byteIdx] = 0x00;
	}
}

	
void PixelStates::drawPixel(int16_t x, int16_t y, uint16_t color) {
	uint16_t pixelIdx = getPixelIdx(x, y);

	if(pixelIdx < 0) {
		return;
	}

	if(color > 0) {
		setPixel(pixelIdx);
	} else {
		clearPixel(pixelIdx);
	}
}


void PixelStates::setPixel(uint16_t ledIdx) {
	uint16_t byteIdx = ledIdx >> 3;
	uint8_t bitIdx = ledIdx & 0x0007;
	
	pixelStates[selectBuffer][byteIdx] |= 1 << bitIdx;
}


void PixelStates::clearPixel(uint16_t ledIdx) {
	uint16_t byteIdx = ledIdx >> 3;
	uint8_t bitIdx = ledIdx & 0x0007;
	
	pixelStates[selectBuffer][byteIdx] &= ~(1 << bitIdx);
}


PixelTransition PixelStates::getPixel(uint16_t ledIdx) {
	uint16_t byteIdx = ledIdx >> 3;
	uint8_t bitIdx = ledIdx & 0x0007;
	
	bool currentPix = (pixelStates[selectBuffer][byteIdx] & (1 << bitIdx)) > 0;
	bool prevPix = (pixelStates[otherBuffer][byteIdx] & (1 << bitIdx)) > 0;
	
	if(currentPix && prevPix) {
		return PIX_ON;
	} else if(currentPix && !prevPix) {
		return PIX_OFF_TO_ON;
	} else if(!currentPix && prevPix) {
		return PIX_ON_TO_OFF;
	}
	
	return PIX_OFF;
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
		pixelStates[selectBuffer][byteIdx] = fillValue;
	}
}


void PixelStates::loadBitmap(uint16_t x, uint16_t y, prog_uchar *bmp) {
	uint16_t bmp_w = pgm_read_byte(bmp);
	uint16_t bmp_h = pgm_read_byte(bmp + 1);
	
	uint8_t byteIdx = 2;
	int8_t bitIdx = 7;
	uint8_t value = pgm_read_byte(bmp + byteIdx);
	
	for(uint16_t j = 0; j < bmp_h; j++) {
		for(uint16_t i = 0; i < bmp_w; i++) {
			
			if((value & (1 << bitIdx)) != 0) {
				drawPixel(x + i, y + j, 0x00FFFFFF);
			}
			
			bitIdx--;
			if(bitIdx < 0) {
				bitIdx = 7;
				byteIdx++;
				value = pgm_read_byte(bmp + byteIdx);
			}
		}
	}
}