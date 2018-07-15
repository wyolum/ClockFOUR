/*
 * Clock_TiM faceplate file
 * 
 * 
 *      Author: David Pincus
 *     Licence: http://creativecommons.org/licenses/by/3.0/
 * Description:
 *    Word clock in English
 * 
 *  0 1 2 3 4 5 6 7 8 9101112131415
 *0 i t d i s p t e n t w e n t y - 
 *1 f i v e z h a l f q u a r t e r
 *2 p a s t o v t w o n e i g h t x
 *3 t h r e e l e v e n s i x t e n
 *4 f o u r f i v e s e v e n i n e
 *5 t w e l v e p o'c l o c k w y o
 *6 l i n a t h e v m i d n i g h t
 *7 m o r n i n g a f t e r n o o n
 * 
 */

prog_uchar WORDS_min[] PROGMEM = {   // minute words
     10, // # words
      0,  1,  4,   // five
      6,  0,  3,   // ten
      6,  1,  1,   // a      
      9,  1,  7,   // quarter    
      9,  0,  6,   // twenty
     15,  0,  1,   // -    
      5,  1,  4,   // half    
      7,  5,  6,   // o'clock
      0,  2,  4,   // past  
      3,  2,  2,   // to   
};

prog_uchar DISPLAY_min[] PROGMEM = {
   2, 			 // number of bytes per state
//
//        oh-tqatf         tp       xx:MM
	0b10000000, 0b0000000,   // xx:00 - 0
	0b00000001, 0b0000001,   // xx:05 - 1
	0b00000010, 0b0000001,   // xx:10 - 2
	0b00001100, 0b0000001,   // xx:15 - 3
	0b00010000, 0b0000001,   // xx:20 - 4
	0b00110001, 0b0000001,   // xx:25 - 5
	0b01000000, 0b0000001,   // xx:30 - 6
	0b00110001, 0b0000010,   // xx:35 - 7
	0b00010000, 0b0000010,   // xx:40 - 8
	0b00001100, 0b0000010,   // xx:45 - 9
	0b00000010, 0b0000010,   // xx:50 - 10
	0b00000001, 0b0000010,   // xx:55 - 11
};

prog_uchar WORDS_hour[] PROGMEM = {   // hour words
     12, // # words
      8,  2,  3,   // one    
      6,  2,  3,   // two      
      0,  3,  5,   // three    
      0,  4,  4,   // four
      4,  4,  4,   // five
     10,  3,  3,   // six   
      8,  4,  5,   // seven   
     10,  2,  5,   // eight    
     12,  4,  4,   // nine   
     13,  3,  3,   // ten    
      4,  3,  6,   // eleven
      0,  5,  6,   // twelve    
};

prog_uchar DISPLAY_hour[] PROGMEM = {
   2, 			 // number of bytes per state
//
// 	  essfftto       tetn
	0b00000000, 0b0001000,   // 00:xx - 00
	0b00000001, 0b0000000,   // 01:xx - 01
	0b00000010, 0b0000000,   // 02:xx - 02
	0b00000100, 0b0000000,   // 03:xx - 03
	0b00001000, 0b0000000,   // 04:xx - 04
	0b00010000, 0b0000000,   // 05:xx - 05
	0b00100000, 0b0000000,   // 06:xx - 06
	0b01000000, 0b0000000,   // 07:xx - 07
	0b10000000, 0b0000000,   // 08:xx - 08
	0b00000000, 0b0000001,   // 09:xx - 09
	0b00000000, 0b0000010,   // 10:xx - 10
	0b00000000, 0b0000100,   // 11:xx - 11
	0b00000000, 0b0001000,   // 12:xx - 12
	0b00000001, 0b0000000,   // 13:xx - 13
	0b00000010, 0b0000000,   // 14:xx - 14
	0b00000100, 0b0000000,   // 15:xx - 15
	0b00001000, 0b0000000,   // 16:xx - 16
	0b00010000, 0b0000000,   // 17:xx - 17
	0b00100000, 0b0000000,   // 18:xx - 18
	0b01000000, 0b0000000,   // 19:xx - 19
	0b10000000, 0b0000000,   // 20:xx - 20
	0b00000000, 0b0000001,   // 21:xx - 21
	0b00000000, 0b0000010,   // 22:xx - 22
	0b00000000, 0b0000100,   // 23:xx - 23
};


prog_uchar WORDS_tod[] PROGMEM = {   // time of day
     10, // # words
      0,  0,  2,   // it    
      3,  0,  2,   // is    
      1,  6,  2,   // in    
      3,  6,  2,   // at    
      4,  6,  3,   // the    
      8,  6,  3,   // mid
     11,  6,  5,   // night    
      0,  7,  7,   // morning    
      7,  7,  5,   // after   
     12,  7,  4,   // noon
};

prog_uchar DISPLAY_tod[] PROGMEM = {
   2, 			 // number of bytes per state
//
//	  mnmtaiii         na
	0b01100011, 0b0000000,   // 0 - it is, midnight
	0b10010111, 0b0000000,   // 1 - it is, in the morning
	0b00000011, 0b0000010,   // 2 - it is, noon
	0b00010111, 0b0000011,   // 3 - it is, in the afternoon
	0b01001011, 0b0000000,   // 4 - it is, at night
};
