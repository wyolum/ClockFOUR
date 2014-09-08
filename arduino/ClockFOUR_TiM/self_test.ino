
void self_test() {
	uint8_t c = 0;
	uint8_t i = 0;
	uint8_t seconds_count = 0;
	uint16_t totalMinutes = 0;
	
	waitWhilePressed();
	
	while (popEvent() == NO_EVENT) {
		PRINT_DEBUG("I = ");
		PRINT_DEBUG (i);
		PRINT_DEBUG(" ; C = ");
		PRINTLN_DEBUG(c);
		if (i > strip.numPixels()) {
			i = 0;
			c += 1;
			if (c > 2) {
				c = 0;
			}
		}
		
		switch(c) {
			case 0:
			strip.setPixelColor(i, strip.Color(128, 0, 0));
			break;
			case 1:
			strip.setPixelColor(i, strip.Color(0, 128, 0));
			break;
			case 2:
			strip.setPixelColor(i, strip.Color(0, 0, 128));
			break;
		}
		strip.show();
		buttonsTick();
		i++;
		delay(10);
	}
	
	while (popEvent() == NO_EVENT) {
		buttonsTick();
		seconds_count+=10;
		if (seconds_count > 60) {
			totalMinutes++;
			seconds_count = 0;
		}
		if (totalMinutes > 1439) {
			totalMinutes = 0;
		}
		pixels.fillScreen(0);
		loadTime(totalMinutes);
		disp_refresh(0, 0, 0);
	}
	
}