#include <avr/pgmspace.h>
#include <string.h>
#include "mem_font.h"
#include "ClockFOUR.h"

static prog_char font8x7[] PROGMEM  = {
  0b00000000, //
  0b00000000, //
  0b00000000, //
  0b00000000, //
  0b00000000, //
  0b00000000, //
  0b00000000, //
  
  0b00000000, // !
  0b00001100, // !
  0b10111110, // !
  0b10111110, // !
  0b00001100, // !
  0b00000000, // !
  0b00000000, // !

  0b00000000, // "
  0b00000110, // "
  0b00001110, // "
  0b00000000, // "
  0b00001110, // "
  0b00000110, // "
  0b00000000, // "

  0b00101000, // #
  0b11111110, // #
  0b11111110, // #
  0b00101000, // #
  0b11111110, // #
  0b11111110, // #
  0b00101000, // #

  0b00000000, // $
  0b01001000, // $
  0b01010100, // $
  0b11010110, // $
  0b01010100, // $
  0b00100100, // $
  0b00000000, // $

  0b01000110, // %
  0b01100110, // %
  0b00110000, // %
  0b00011000, // %
  0b11001100, // %
  0b11000100, // %
  0b00000000, // %

  0b01100100, // &
  0b11111110, // &
  0b10001010, // &
  0b10011010, // &
  0b11101110, // &
  0b11000100, // &
  0b10100000, // &

  0b00000000, // '
  0b00010000, // '
  0b00011110, // '
  0b00001110, // '
  0b00000000, // '
  0b00000000, // '
  0b00000000, // '

  0b10000010, // (
  0b11000110, // (
  0b01111100, // (
  0b00111000, // (
  0b00000000, // (
  0b00000000, // (
  0b00000000, // (

  0b00000000, // )
  0b00000000, // )
  0b00111000, // )
  0b01111100, // )
  0b11000110, // )
  0b10000010, // )
  0b00000000, // )

  0b00010000, // *
  0b01010100, // *
  0b01111100, // *
  0b00111000, // *
  0b01111100, // *
  0b01010100, // *
  0b00010000, // *

  0b00000000, // +
  0b00010000, // +
  0b00010000, // +
  0b01111100, // +
  0b00010000, // +
  0b00010000, // +
  0b00000000, // +

  0b10000000, // ,
  0b11110000, // ,
  0b01110000, // ,
  0b00000000, // ,
  0b00000000, // ,
  0b00000000, // ,
  0b00000000, // ,

  0b00000000, // -
  0b00010000, // -
  0b00010000, // -
  0b00010000, // -
  0b00010000, // -
  0b00000000, // -
  0b00000000, // -

  0b11000000, // .
  0b11000000, // .
  0b00000000, // .
  0b00000000, // .
  0b00000000, // .
  0b00000000, // .
  0b00000000, // .

  0b01000000, // /
  0b01100000, // /
  0b00110000, // /
  0b00011000, // /
  0b00001100, // /
  0b00000100, // /
  0b00000000, // /

  0b01111100, // 0
  0b11111110, // 0
  0b10010010, // 0
  0b10001010, // 0
  0b11111110, // 0
  0b01111100, // 0
  0b00000000, // 0

  0b10000000, // 1
  0b10001000, // 1
  0b11111100, // 1
  0b11111110, // 1
  0b10000000, // 1
  0b10000000, // 1
  0b00000000, // 1

  0b11000100, // 2
  0b11100110, // 2
  0b10100010, // 2
  0b10010010, // 2
  0b10011110, // 2
  0b10001100, // 2
  0b00000000, // 2

  0b01000100, // 3
  0b11000110, // 3
  0b10010010, // 3
  0b10010010, // 3
  0b11111110, // 3
  0b01101100, // 3
  0b00000000, // 3

  0b00110000, // 4
  0b00101000, // 4
  0b00100100, // 4
  0b11111110, // 4
  0b11111110, // 4
  0b00100000, // 4
  0b00000000, // 4

  0b01001110, // 5
  0b11001110, // 5
  0b10001010, // 5
  0b10001010, // 5
  0b11111010, // 5
  0b01110010, // 5
  0b00000000, // 5

  0b01111100, // 6
  0b11111110, // 6
  0b10010010, // 6
  0b10010010, // 6
  0b11110110, // 6
  0b01100100, // 6
  0b00000000, // 6

  0b00000110, // 7
  0b00000110, // 7
  0b11100010, // 7
  0b11111010, // 7
  0b00011110, // 7
  0b00000110, // 7
  0b00000000, // 7

  0b01101100, // 8
  0b11111110, // 8
  0b10010010, // 8
  0b10010010, // 8
  0b11111110, // 8
  0b01101100, // 8
  0b00000000, // 8

  0b01001100, // 9
  0b11011110, // 9
  0b10010010, // 9
  0b10010010, // 9
  0b11111110, // 9
  0b01111100, // 9
  0b00000000, // :

  0b00000000, // :
  0b00000000, // :
  0b01101100, // :
  0b01101100, // :
  0b00000000, // :
  0b00000000, // :
  0b00000000, // :

  0b00000000, // ;
  0b10000000, // ;
  0b11101100, // ;
  0b01101100, // ;
  0b00000000, // ;
  0b00000000, // ;
  0b00000000, // ;

  0b00000000, // <
  0b00010000, // <
  0b00111000, // <
  0b01101100, // <
  0b11000110, // <
  0b10000010, // <
  0b00000000, // <

  0b00000000, // =
  0b00101000, // =
  0b00101000, // =
  0b00101000, // =
  0b00101000, // =
  0b00000000, // =
  0b00000000, // =

  0b10000010, // >
  0b11000110, // >
  0b01101100, // >
  0b00111000, // >
  0b00010000, // >
  0b00000000, // >
  0b00000000, // >

  0b00000100, // ?
  0b00000110, // ?
  0b10110010, // ?
  0b10110010, // ?
  0b00011110, // ?
  0b00001100, // ?
  0b00000000, // ?

  0b00111100, // @
  0b01000010, // @
  0b01011010, // @
  0b01011010, // @
  0b01001100, // @
  0b00100000, // @
  0b00000000, // @

  0b11111100, // A
  0b11111110, // A
  0b00010010, // A
  0b00010010, // A
  0b11111110, // A
  0b11111100, // A
  0b00000000, // A

  0b11111110, // B
  0b11111110, // B
  0b10010010, // B
  0b10010010, // B
  0b11111110, // B
  0b01101100, // B
  0b00000000, // B

  0b01111100, // C
  0b11111110, // C
  0b10000010, // C
  0b10000010, // C
  0b11000110, // C
  0b01000100, // C
  0b00000000, // C

  0b11111110, // D
  0b11111110, // D
  0b10000010, // D
  0b10000010, // D
  0b11111110, // D
  0b01111100, // D
  0b00000000, // D

  0b11111110, // E
  0b11111110, // E
  0b10010010, // E
  0b10010010, // E
  0b10010010, // E
  0b10000010, // E
  0b00000000, // E

  0b11111110, // F
  0b11111110, // F
  0b00010010, // F
  0b00010010, // F
  0b00010010, // F
  0b00000010, // F
  0b00000000, // F

  0b01111100, // G
  0b11111110, // G
  0b10000010, // G
  0b10100010, // G
  0b11100110, // G
  0b01100100, // G
  0b00000000, // G

  0b11111110, // H
  0b11111110, // H
  0b00010000, // H
  0b00010000, // H
  0b11111110, // H
  0b11111110, // H
  0b00000000, // H

  0b00000000, // I
  0b10000010, // I
  0b11111110, // I
  0b11111110, // I
  0b10000010, // I
  0b00000000, // I
  0b00000000, // I

  0b01100000, // J
  0b11100000, // J
  0b10000010, // J
  0b11111110, // J
  0b01111110, // J
  0b00000010, // J
  0b00000000, // J

  0b11111110, // K
  0b11111110, // K
  0b00111000, // K
  0b01101100, // K
  0b11000110, // K
  0b10000010, // K
  0b00000000, // K

  0b11111110, // L
  0b11111110, // L
  0b10000000, // L
  0b10000000, // L
  0b10000000, // L
  0b10000000, // L
  0b00000000, // L

  0b11111110, // M
  0b11111110, // M
  0b00001100, // M
  0b00011000, // M
  0b00001100, // M
  0b11111110, // M
  0b11111110, // M

  0b11111110, // N
  0b11111110, // N
  0b00001100, // N
  0b00011000, // N
  0b00110000, // N
  0b11111110, // N
  0b11111110, // N

  0b01111100, // O
  0b11111110, // O
  0b10000010, // O
  0b10000010, // O
  0b11111110, // O
  0b01111100, // O
  0b00000000, // O

  0b11111110, // P
  0b11111110, // P
  0b00100010, // P
  0b00100010, // P
  0b00111110, // P
  0b00011100, // P
  0b00000000, // P

  0b00111100, // Q
  0b01111110, // Q
  0b01000010, // Q
  0b01100010, // Q
  0b11111110, // Q
  0b10111100, // Q
  0b00000000, // Q

  0b11111110, // R
  0b11111110, // R
  0b00110010, // R
  0b01110010, // R
  0b11011110, // R
  0b11001100, // R
  0b00000000, // R

  0b01001100, // S
  0b11011110, // S
  0b10010010, // S
  0b10010010, // S
  0b11110110, // S
  0b01100100, // S
  0b00000000, // S

  0b00000110, // T
  0b00000010, // T
  0b11111110, // T
  0b11111110, // T
  0b00000010, // T
  0b00000110, // T
  0b00000000, // T

  0b01111110, // U
  0b11111110, // U
  0b10000000, // U
  0b10000000, // U
  0b11111110, // U
  0b11111110, // U
  0b00000000, // U

  0b00111110, // V
  0b01111110, // V
  0b11000000, // V
  0b11000000, // V
  0b01111110, // V
  0b00111110, // V
  0b00000000, // V

  0b11111110, // W
  0b11111110, // W
  0b01100000, // W
  0b00110000, // W
  0b01100000, // W
  0b11111110, // W
  0b11111110, // W

  0b11000110, // X
  0b11101110, // X
  0b00111000, // X
  0b00010000, // X
  0b00111000, // X
  0b11111110, // X
  0b11000110, // X

  0b00001110, // Y
  0b00011110, // Y
  0b11110000, // Y
  0b11110000, // Y
  0b00011110, // Y
  0b00001110, // Y
  0b00000000, // Y

  0b11000010, // Z
  0b11100010, // Z
  0b10110010, // Z
  0b10011010, // Z
  0b10001110, // Z
  0b10000110, // Z
  0b00000000, // Z

  0b00000000, // [
  0b00000000, // [
  0b11111110, // [
  0b11111110, // [
  0b10000010, // [
  0b10000010, // [
  0b00000000, // [

  0b00000100, // \
  0b00001100, // \
  0b00011000, // \
  0b00110000, // \
  0b01100000, // \
  0b11000000, // \
  0b00000000, // \

  0b10000010, // ]
  0b10000010, // ]
  0b11111110, // ]
  0b11111110, // ]
  0b00000000, // ]
  0b00000000, // ]
  0b00000000, // ]

  0b00010000, // ^
  0b00001000, // ^
  0b00000100, // ^
  0b00000010, // ^
  0b00000100, // ^
  0b00001000, // ^
  0b00110000, // ^

  0b10000000, // _
  0b10000000, // _
  0b10000000, // _
  0b10000000, // _
  0b10000000, // _
  0b10000000, // _
  0b10000000, // _

  0b00000000, // `
  0b00000000, // `
  0b00000000, // `
  0b00000110, // `
  0b00001110, // `
  0b00001000, // `
  0b00000000, // `

};

/*
  Return the bits to display character c on ClockTHREE in specified color.
 */
void MemFont::getChar(char letter, uint8_t color, uint32_t* out){
  uint8_t c;
  if(letter >= 32){
    for(uint8_t i=0; i < 7; i++){
      out[i] &= 0xff000000;
      c = pgm_read_byte(font8x7 + ((letter - 32) * 7) + i);
#ifdef CLOCKTHREEJR
      out[i] = c >> 1;
#else
      for(uint8_t k=0; k < 8; k++){
	if(c >> k & 1){
	  out[i] |= (uint32_t)color << (3 * k);
	}
      }
#endif
    }
  }
}

