/*
 * Clock_30 faceplate file
 * 
 * 
 *      Author: David Pincus
 *     Licence: http://creativecommons.org/licenses/by/3.0/
 * Description:
 *    30 x 30 Word clock in English
 * 
 *    0 1 2 3 4 5 6 7 8 910111213
 *  0 T W E N T Y D P T H I R T Y
 *  1 F O R T Y F I F T Y B T E N
 *  2 T H I R T E E N O N E T W O
 *  3 F O U R T E E N A F I V E K
 *  4 F I F T E E N S I X T E E N 
 *  5 S E V E N T E E N T H R E E
 *  6 E I G H T E E N E L E V E N
 *  7 N I N E T E E N T W E L V E
 *  8 E M I N U T E S T P A S T O
 *  9 T W O N E I G H T E N S I X
 *  10T H R E E N I N E L E V E N
 *  11F O U R F I V E T W E L V E
 *  12S E V E N D L P O C L O C K
 */

static uint8_t WORDS_min[] PROGMEM = {   // minute words
     28,          // # words
	8,  2, 3,   //one
	11, 2, 3,   //two
	9,  5, 5,   //three
	0,  3, 4,   //four
	9,  3, 4,   //five
	7,  4, 3,   //six
	0,  5, 5,   //seven
	0,  6, 5,   //eight
	0,  7, 4,   //nine
	11, 1, 3,   //ten
	8,  6, 6,   //eleven
	8,  7, 6,   //twelve
	0,  2, 8,   //thirteen
	0,  3, 8,   //fourteen
	0,  4, 7,   //fifteen
	7,  4, 7,   //sixteen
	0,  5, 9,   //seventeen
	0,  6, 8,   //eighteen
	0,  7, 8,   //nineteen
	0,  0, 6,   //twenty
	8,  0, 6,   //thirty
	0,  1, 5,   //forty
	5,  1, 5,   //fifty
	1,  8, 6,   //minute
	1,  8, 7,   //minutes
	9,  8, 4,   //past
	12, 8, 2,   //to
	8, 12, 6,   //oclock
};


static uint8_t DISPLAY_min[] PROGMEM = {
   4, 			 // number of bytes per state
//	  essfftto     sffttetn     mffttnes         otpm          xx:MM
	0b00000000,  0b00000000,  0b00000000,  0b00001000,    //xx:00
	0b00000001,  0b00000000,  0b10000000,  0b00000010,    //xx:01
	0b00000010,  0b00000000,  0b00000000,  0b00000011,    //xx:02
	0b00000100,  0b00000000,  0b00000000,  0b00000011,    //xx:03
	0b00001000,  0b00000000,  0b00000000,  0b00000011,    //xx:04
	0b00010000,  0b00000000,  0b00000000,  0b00000011,    //xx:05
	0b00100000,  0b00000000,  0b00000000,  0b00000011,    //xx:06
	0b01000000,  0b00000000,  0b00000000,  0b00000011,    //xx:07
	0b10000000,  0b00000000,  0b00000000,  0b00000011,    //xx:08
	0b00000000,  0b00000001,  0b00000000,  0b00000011,    //xx:09
	0b00000000,  0b00000010,  0b00000000,  0b00000011,    //xx:10
	0b00000000,  0b00000100,  0b00000000,  0b00000011,    //xx:11
	0b00000000,  0b00001000,  0b00000000,  0b00000011,    //xx:12
	0b00000000,  0b00010000,  0b00000000,  0b00000011,    //xx:13
	0b00000000,  0b00100000,  0b00000000,  0b00000011,    //xx:14
	0b00000000,  0b01000000,  0b00000000,  0b00000011,    //xx:15
	0b00000000,  0b10000000,  0b00000000,  0b00000011,    //xx:16
	0b00000000,  0b00000000,  0b00000001,  0b00000011,    //xx:17
	0b00000000,  0b00000000,  0b00000010,  0b00000011,    //xx:18
	0b00000000,  0b00000000,  0b00000100,  0b00000011,    //xx:19
	0b00000000,  0b00000000,  0b00001000,  0b00000011,    //xx:20
	0b00000001,  0b00000000,  0b00001000,  0b00000011,    //xx:21
	0b00000010,  0b00000000,  0b00001000,  0b00000011,    //xx:22
	0b00000100,  0b00000000,  0b00001000,  0b00000011,    //xx:23
	0b00001000,  0b00000000,  0b00001000,  0b00000011,    //xx:24
	0b00010000,  0b00000000,  0b00001000,  0b00000011,    //xx:25
	0b00100000,  0b00000000,  0b00001000,  0b00000011,    //xx:26
	0b01000000,  0b00000000,  0b00001000,  0b00000011,    //xx:27
	0b10000000,  0b00000000,  0b00001000,  0b00000011,    //xx:28
	0b00000000,  0b00000001,  0b00001000,  0b00000011,    //xx:29
	0b00000000,  0b00000000,  0b00010000,  0b00000011,    //xx:30
	0b00000001,  0b00000000,  0b00010000,  0b00000011,    //xx:31
	0b00000010,  0b00000000,  0b00010000,  0b00000011,    //xx:32
	0b00000100,  0b00000000,  0b00010000,  0b00000011,    //xx:33
	0b00001000,  0b00000000,  0b00010000,  0b00000011,    //xx:34
	0b00010000,  0b00000000,  0b00010000,  0b00000011,    //xx:35
	0b00100000,  0b00000000,  0b00010000,  0b00000011,    //xx:36
	0b01000000,  0b00000000,  0b00010000,  0b00000011,    //xx:37
	0b10000000,  0b00000000,  0b00010000,  0b00000011,    //xx:38
	0b00000000,  0b00000001,  0b00010000,  0b00000011,    //xx:39
	0b00000000,  0b00000000,  0b00100000,  0b00000011,    //xx:40
	0b00000001,  0b00000000,  0b00100000,  0b00000011,    //xx:41
	0b00000010,  0b00000000,  0b00100000,  0b00000011,    //xx:42
	0b00000100,  0b00000000,  0b00100000,  0b00000011,    //xx:43
	0b00001000,  0b00000000,  0b00100000,  0b00000011,    //xx:44
	0b00010000,  0b00000000,  0b00100000,  0b00000011,    //xx:45
	0b00100000,  0b00000000,  0b00100000,  0b00000011,    //xx:46
	0b01000000,  0b00000000,  0b00100000,  0b00000011,    //xx:47
	0b10000000,  0b00000000,  0b00100000,  0b00000011,    //xx:48
	0b00000000,  0b00000001,  0b00100000,  0b00000011,    //xx:49
	0b00000000,  0b00000000,  0b01000000,  0b00000011,    //xx:50
	0b00000001,  0b00000000,  0b01000000,  0b00000011,    //xx:51
	0b00000010,  0b00000000,  0b01000000,  0b00000011,    //xx:52
	0b00000100,  0b00000000,  0b01000000,  0b00000011,    //xx:53
	0b00001000,  0b00000000,  0b01000000,  0b00000011,    //xx:54
	0b00010000,  0b00000000,  0b01000000,  0b00000011,    //xx:55
	0b00100000,  0b00000000,  0b01000000,  0b00000011,    //xx:56
	0b01000000,  0b00000000,  0b01000000,  0b00000011,    //xx:57
	0b10000000,  0b00000000,  0b01000000,  0b00000011,    //xx:58
	0b00000000,  0b00000001,  0b01000000,  0b00000011,    //xx:59
};


static uint8_t WORDS_hour[] PROGMEM = {   // hour words
    	15, 	      // # words
	8, 11, 6,   //twelve
	2,  9, 3,   //one
	0,  9, 3,   //two
	0, 10, 5,   //three
	0, 11, 4,   //four
	4, 11, 4,   //five
	11, 9, 5,   //six
	0, 12, 5,   //seven
	4,  9, 5,   //eight
	5, 10, 4,   //nine
	8,  9, 3,   //ten
	8, 10, 6,   //eleven

};

static uint8_t DISPLAY_hour[] PROGMEM = {
   2, 			 // number of bytes per state
//	  ssffttot		 etne        HH:xx
	0b00000001,  0b00000000,     //00:xx
	0b00000010,  0b00000000,     //01:xx
	0b00000100,  0b00000000,     //02:xx
	0b00001000,  0b00000000,     //03:xx
	0b00010000,  0b00000000,     //04:xx
	0b00100000,  0b00000000,     //05:xx
	0b01000000,  0b00000000,     //06:xx
	0b10000000,  0b00000000,     //07:xx
	0b00000000,  0b00000001,     //08:xx
	0b00000000,  0b00000010,     //09:xx
	0b00000000,  0b00000100,     //10:xx
	0b00000000,  0b00001000,     //11:xx
	0b00000001,  0b00000000,     //12:xx
	0b00000010,  0b00000000,     //13:xx
	0b00000100,  0b00000000,     //14:xx
	0b00001000,  0b00000000,     //15:xx
	0b00010000,  0b00000000,     //16:xx
	0b00100000,  0b00000000,     //17:xx
	0b01000000,  0b00000000,     //18:xx
	0b10000000,  0b00000000,     //19:xx
	0b00000000,  0b00000001,     //20:xx
	0b00000000,  0b00000010,     //21:xx
	0b00000000,  0b00000100,     //22:xx
	0b00000000,  0b00001000,     //23:xx
};
