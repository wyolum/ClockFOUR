
/************* Settings struct definition *************/
/*
typedef union Settings {
	// WARNING: array has to be at least as large as the number of elements in the struct
	uint8_t array[3];
	struct {
		uint8_t useGPS;
		uint8_t useDegF;
		uint8_t colour;
	};
};
*/

extern Settings clockSettings;


Settings clockSettings;

void saveSettings() {
	// Save settings to EEPROM
}


void loadSettings() {
	// Load the settings from EEPROM
}

