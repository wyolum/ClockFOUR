/*
 * bitmaps.h
 *
 * Created: 7/09/2014 5:52:33 PM
 *  Author: Josef
 */ 


#ifndef BITMAPS_H_
#define BITMAPS_H_

static uint8_t Hour_bw_bmp[] = {
	16,				// Width
	8,				// Height
	0x00, 0x00, 		// Row 1, left to right etc.
	0xa0, 0x00, 
	0xa0, 0x00, 
	0xe4, 0xaa, 
	0xaa, 0xad, 
	0xaa, 0xa8, 
	0xa4, 0xe8, 
	0x00, 0x00, 
};


static uint8_t Min_bw_bmp[] = {
	16,
	8,
	0x00, 0x00, 
	0x22, 0x00, 
	0x36, 0x80, 
	0x2a, 0x1c, 
	0x22, 0x92, 
	0x22, 0x92, 
	0x22, 0xd2, 
	0x00, 0x00, 
};

static uint8_t Temp_bw_bmp[] = {
	16,
	8,
	0x00, 0x00, 
	0xf0, 0x00, 
	0x4d, 0xa6, 
	0x53, 0x55, 
	0x5d, 0x55, 
	0x51, 0x16, 
	0x4d, 0x14, 
	0x00, 0x04, 
};

static uint8_t Circle_bw_bmp[] = {
	16,
	8,
	0x03, 0xc0, 
	0x07, 0xe0, 
	0x0f, 0xf0, 
	0x0f, 0xf0, 
	0x0f, 0xf0, 
	0x0f, 0xf0, 
	0x07, 0xe0, 
	0x03, 0xc0, 
};

#endif /* BITMAPS_H_ */
