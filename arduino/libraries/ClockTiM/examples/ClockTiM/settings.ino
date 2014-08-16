
typedef union Settings {
	// WARNING: array has to be at least as large as there are elements in the struct
	uint8_t array[3];
	struct {
		uint8_t useGPS;
		uint8_t useDegF;
		uint8_t colour;
	};
};

Settings clockSettings;

void saveSettings() {
	// Saves settings to EEPROM
}


void loadSettings() {
	// Saves the settings to EEPROM
}

