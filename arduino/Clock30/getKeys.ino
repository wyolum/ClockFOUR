#define cycles 30
#define threshold 100

void getButtons() {
	
  if(cs_BUTTON_L.capacitiveSensor(cycles) >= 100) {
    left = true;
  } else left = false;
  if(cs_BUTTON_R.capacitiveSensor(cycles) >= 100) {
    right = true;
  } else right = false;

  if (right == true) {mode++;}
  if (mode > 5) {mode = 0;}

}


