#pragma once

#include "Arduino.h"
#include "leds.h"

#define NUM_MODES 2

extern uint8_t mode;

void setupButton();
int checkButton();
