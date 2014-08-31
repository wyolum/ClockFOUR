
#include <EEPROM.h>

#define EEPROM_VERSION		0x01

Settings clockSettings = { 0 };


void saveSettings() {
	// Save settings to EEPROM
	uint8_t addr = 1;
	for(int i = 0; i < sizeof(clockSettings); i++) {
		EEPROM.write(addr, clockSettings.array[i]);
		addr++;
	}
}


void loadSettings() {
	// Load the settings from EEPROM
	uint8_t addr = 1;
	
	// Takes into account the situation where the program is launched for the very first time
	// Clear the eeprom in that case.
	if(EEPROM.read(0) != EEPROM_VERSION) {
		EEPROM.write(0, EEPROM_VERSION);
		
		// clockSettings should be empty right now, assuming loadSettings is called at the beginning of the program
		saveSettings();
	}
	
	for(int i = 0; i < sizeof(clockSettings); i++) {
		clockSettings.array[i] = EEPROM.read(addr);
		addr++;
	}
}

