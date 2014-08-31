
#include <CapacitiveSensor.h>
#include <OneCapSensor.h>

// Queue definitions
#define QUEUE_SIZE		8
uint8_t queue[QUEUE_SIZE] = {0};
int8_t front = -1;
int8_t rear = -1;

// Initialse all the button related stuff
CapacitiveSensor cs_BUTTON_L = CapacitiveSensor(CAP_SENSE, BUTTON_L);
CapacitiveSensor cs_BUTTON_R = CapacitiveSensor(CAP_SENSE, BUTTON_R);
OneCapSensor oneButton_L = OneCapSensor(&cs_BUTTON_L);
OneCapSensor oneButton_R = OneCapSensor(&cs_BUTTON_R);

// Sets up all the callback function
void buttonsInit() {
	oneButton_L.attachClick(buttonLClick);
	oneButton_L.attachLongPressStart(buttonLLongPress);
	oneButton_L.attachDuringLongPress(buttonLRepeat);
	
	oneButton_R.attachClick(buttonRClick);
	oneButton_R.attachLongPressStart(buttonRLongPress);
	oneButton_R.attachDuringLongPress(buttonRRepeat);
}

// Tick both buttons
void buttonsTick() {
	oneButton_L.tick();
	oneButton_R.tick();
}

// One function for every event type that can be detected
void buttonLClick() {
	addToQeue(BL_CLICK);
}

void buttonLLongPress() {
	addToQeue(BL_PRESS);
}

void buttonLRepeat() {
	addToQeue(BL_REPEAT);
}

void buttonRClick() {
	addToQeue(BR_CLICK);
}

void buttonRLongPress() {
	addToQeue(BR_PRESS);
}

void buttonRRepeat() {
	addToQeue(BR_REPEAT);
}

// Returns true if both buttons have been pressed for a long time
boolean bothLongPressed() {
	return oneButton_L.isLongPressed() && oneButton_R.isLongPressed();
}

// Blocks until both buttons have been released from a long press
void waitWhilePressed() {
	while(oneButton_L.isLongPressed() || oneButton_R.isLongPressed()) {
		// Loop until both buttons are released
		buttonsTick();
	}
	
	clearQueue();
}

// Pushes a byte onto the queue
void addToQeue(uint8_t value) {
	
//	noInterrupts();
	
	// If front is just behind rear we have a full queue
	if((front == 0 && rear == QUEUE_SIZE - 1) || front == rear + 1) {
		// Queue is full
		return;
	}
	
	if(front == -1) {
		// The queue is empty, start using real indices
		front = rear = 0;
	} else {
		// Update the rear index to point to the next empty location
		if(rear == QUEUE_SIZE - 1) {
			// We've gone full loop
			rear = 0;
		} else {
			rear++;
		}
	}
	
	// Store the value on the queue
	queue[rear] = value;
	
//	interrupts();
}

// Gets a value from the top of the queue
uint8_t popEvent() {
	uint8_t retVal;
	
//	noInterrupts();
	
	// Check if the queue is empty
	if(front == -1)
	{
		// Queue underflow
		return NO_EVENT;
	}
	
	retVal = queue[front];
	
	if(front == rear) {
		// The last item has been popped. Indicate that the queue is empty.
		front = rear = -1;
	} else {
		// Update the front index to point to the next value in the queue
		if(front == QUEUE_SIZE - 1) {
			// We've gone full loop
			front = 0;
		} else {
			front++;
		}
	}
	
//	interrupts();
	
	return retVal;
}

// Deletes all contents of the queue
inline void clearQueue() {
//	noInterrupts();
	front = -1;
	rear = -1;
//	interrupts();
}
