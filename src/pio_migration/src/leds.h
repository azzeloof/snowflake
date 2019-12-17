#pragma once

#include "Arduino.h"

extern uint8_t Level[12];
extern uint8_t Order[12];

void setupLeds();
void setLed(uint8_t led, uint8_t level);
void clearLeds();
void allOn();
