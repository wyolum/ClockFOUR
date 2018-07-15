/*
 *  Settings load and store
 * 
 * 
 *  Author: Josef Schneider
 *  Licence: http://creativecommons.org/licenses/by/3.0/
 *
 *  Description:
 *    Reads/writes settings from/to EEPROM.
 *
 */

#include <EEPROM.h>
#include "clock_defines.h"

#define EEPROM_VERSION		0x03

Settings clockSettings = { 0 };

void saveSettings() {
	// Save settings to EEPROM
	uint8_t addr = 1;
	uint8_t *p_settings = ((uint8_t *)&clockSettings);
	for(int i = 0; i < sizeof(clockSettings); i++) {
		EEPROM.write(addr, p_settings[i]);
		addr++;
	}
	PRINTLN_DEBUG("Settings saved!");
}


void loadSettings() {
	// Load the settings from EEPROM
	uint8_t addr = 1;
	uint8_t *p_settings = ((uint8_t *)&clockSettings);
	
	// Takes into account the situation where the program is launched for the very first time
	// Clear the eeprom in that case.
	if(EEPROM.read(0) != EEPROM_VERSION) {
		EEPROM.write(0, EEPROM_VERSION);
		
		// clockSettings should be empty right now, assuming loadSettings is called at the beginning of the program
		saveSettings();
	}
	
	for(int i = 0; i < sizeof(clockSettings); i++) {
		p_settings[i] = EEPROM.read(addr);
		addr++;
	}
	PRINTLN_DEBUG("Settings loaded from EPROM!");
}

