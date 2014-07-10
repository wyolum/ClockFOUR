/*
  ClockFOUR.cpp -- ClockFOUR RGB LED Matrix library for Arduino

  Justin Shaw
  The hardware and software for ClockFOUR have been enabled by the 
  open souce Peggy2.  Thanks to the Evil Mad Science Team for making them
  available.
  
  LIBRARY VERSION: 0.01, DATED 26/11/2010

  Licenced under Creative Commons Attribution.
  Attribution 3.0 Unported
  This license is acceptable for Free Cultural Works.
  You are free:

  * to Share — to copy, distribute and transmit the work
  * to Remix — to adapt the work
  *

  Under the following conditions:

  *

  Attribution — You must attribute the work in the manner specified by 
  the author or licensor (but not in any way that suggests that they endorse
  you or your use of the work).

  Attribute this work:
  Information
  What does "Attribute this work" mean?
  The page you came from contained embedded licensing metadata, including
  how the creator wishes to be attributed for re-use. You can use the HTML here 
  to cite the work. Doing so will also include metadata on your page so that 
  others can find the original work as well.

  With the understanding that:
  * Waiver — Any of the above conditions can be waived if you get permission 
  from the copyright holder.
  * Public Domain — Where the work or any of its elements is in the public 
  domain under applicable law, that status is in no way affected by the 
  license.
  * Other Rights — In no way are any of the following rights affected by the
  license:
  o Your fair dealing or fair use rights, or other applicable copyright
  exceptions and limitations;
  o The author's moral rights;
  o Rights other persons may have either in the work itself or in how 
  the work is used, such as publicity or privacy rights.
  * Notice — For any reuse or distribution, you must make clear to others 
  the license terms of this work. The best way to do this is with a link 
  to this web page.
*/

#include "ClockFOUR.h"
#include "MsTimer2.h"
#include "Time.h"
#include "rtcBOB.h"
// #include "Screen.h"

ClockFOUR::ClockFOUR(){
}
    
// Hardware initialization
void ClockFOUR::init(){
  SPI.begin(); // start SPI communications

  pinMode(DBG, OUTPUT);

  display = NULL;

  // set column driver outputs.
  // digitalWrite(COL_DRIVER_ENABLE, LOW); // Enable col driver (slower)
  PORTC |= 0b00001000; // Disable col driver
  DDRD |= 0b11110000;
  pinMode(DEC_PIN, INPUT);
  
  ////SET MOSI, SCK Output, all other SPI as input: 
  DDRB |= 0b00101110;
  
  //ENABLE SPI, MASTER, CLOCK RATE fck/4:  
  SPCR =  _BV(SPE) |  _BV(MSTR) ;
  SPI.transfer(0);
  SPI.transfer(0);
  SPI.transfer(0);
  SPI.transfer(0);
  my_delay = 50;
  
  // support auto diming
  dim = 1;
  pinMode(DBG, OUTPUT); // LED is as an OUTPUT
  // turn off speaker;
}

// Gradually change display to new_display in over "steps" screens
// return pointer to old display
uint32_t *ClockFOUR::fadeto(uint32_t *new_display, uint32_t steps){
}

// Clears the display: LEDs set to OFF
void ClockFOUR::clear(void){
  displayfill(DARK);
}

/* 
 * Turn a pixel to color (0 == off)
 * for rows 10 and 11:
 */
void ClockFOUR::setPixel(uint8_t xpos, uint8_t ypos, uint8_t color){
}
/*
 * Return color value of pixel at xpos, ypos
 */
uint8_t ClockFOUR::getPixel(uint8_t xpos, uint8_t ypos){
}
		
//Draw a line from (x0,y0) to (x1,y1)
void ClockFOUR::line(double x0, double y0, double x1, double y1, 
		      uint8_t color){
  double t;
  double d;
  uint8_t x, y, i;
    
  if(display != NULL){
    // determine how many steps we need
    uint8_t dx, dy;
    dx = abs(x1 - x0);
    dy = abs(y1 - y0);
    d = dx > dy ? dx: dy;
    if(d < .5){
      setPixel(round((x0 + x1) / 2.), round((y0 + y1) / 2.), color);
    }
    else{
      for(i = 0; i <= d; i++){
	x = round(x0 + i * (x1 - x0) / d);
	y = round(y0 + i * (y1 - y0) / d);
	setPixel(x, y, color);
      }
    }
  }
}

// Draw an ellipse centered at x, y with radius rx in the x direction and
// ry in the y direction
void ClockFOUR::ellipse(double cx, double cy, 
			 double sma, double smi, double orient,
			 uint8_t color){
  double  x, y, tx, ty;
  const uint8_t N = (int)(PI * sma * smi);
  double theta = 0.;
  double dtheta = 2 * PI / N;
  double cosorient = cos(orient);
  double sinorient = sin(orient);
  for(theta=0; theta < 2 * PI; theta += dtheta){
    tx = sma * cos(theta);
    ty = smi * sin(theta);
    x = cx + cosorient * tx + sinorient * ty;
    y = cy - sinorient * tx + cosorient * ty;
    setPixel(round(x), round(y), color);
  }
}

// Draw a circle centered at x, y with radius r
void ClockFOUR::circle(double cx, double cy, double r, uint8_t color){
  ellipse(cx, cy, r, r, 0, color);
}

//Set cursor position to (xpos,ypos)
void ClockFOUR::moveto(int8_t _xpos, int8_t _ypos){
  xpos = _xpos;
  ypos = _ypos;
}
	
//Draw line from cursor position to (xpos,ypos)
// updating cursor position
void ClockFOUR::lineto(int8_t _xpos, int8_t _ypos, uint8_t color){
  line(xpos, ypos, _xpos, _ypos, color);
  moveto(_xpos, _ypos);
}
  
/* Replace current display buffer, return pointer to old buffer
   A display has at least N_COL columns. but can have more for off screen staging.
   pass n_col into to secify more than N_COL columns .
*/
uint32_t *ClockFOUR::setdisplay(uint32_t *_display){
  uint32_t *out = display;
  display = _display;
  return out;
}

void ClockFOUR::displayfill(uint8_t color){
  uint32_t col;
  int i;
  if(display != NULL){
    col = 0;
    for(i = 0; i < N_ROW; i++){
      col |= ((uint32_t)color << (3 * i));
    }
    for(i = 0; i < N_COL; i++){
      display[i] = col;
    }
  }
}

/*
  Fill in a horizontal line of LEDs from start up to but not includeing stop.
  stop - start = # characters.
*/
void ClockFOUR::horizontal_line(uint8_t row, 
				 uint8_t start, 
				 uint8_t n_char, 
				 uint8_t color){
  for(int i = start; i < start + n_char; i++){
    setPixel(i, row, color);
  }
}

void ClockFOUR::off(){
  PORTC |= 0b00001000; // Disable col driver 
  displayfill(DARK);
}

