/* ATtiny85 PWM - see http://www.technoblogy.com/show?2H0K

   David Johnson-Davies - www.technoblogy.com - 19th February 2017
   ATtiny85 @ 8 MHz (internal oscillator; BOD disabled)
   
   CC BY 4.0
   Licensed under a Creative Commons Attribution 4.0 International license: 
   http://creativecommons.org/licenses/by/4.0/
*/
#include "Arduino.h"
#include "transition.h"

#define BUTTON_PIN 0

uint8_t lastButtonState = HIGH;
uint8_t buttonState = HIGH;
uint8_t mode = 0;
unsigned long lastDebounceTime = 0;
uint32_t debounceDelay = 1;

uint8_t Level[12] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }; 

uint8_t Order[12] = {0, 4, 8, 1, 5, 2, 3, 7, 11, 6, 10, 9};

uint8_t outerLeds[6] = {0,1,2,3,4,5};

uint8_t logLevels[64] = { 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,
                          1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  2,  2,  2,  2,  2,  3,  3,
                          3,  4,  4,  4,  5,  5,  6,  7,  7,  8,  9, 10, 11, 12, 14, 15, 17,
                         18, 20, 23, 25, 28, 31, 34, 38, 42, 46, 51, 57, 63};

// Timer/Counter1 overflow interrupt
ISR(TIM1_COMPA_vect) {
  static uint8_t row, ramp, column, bits, colbit;
  ramp = (ramp+1) & 0x3F;             // Count from 0 to 63
  if (ramp == 0) {
    bits = 0x07; //0000111                    // All on
    column = (column + 1) & 0x03; // Count from 0 to 3
    row = column * 3;               //0 3 6 9
    colbit = 1<<(column+0); // 0b0001 0b0010 0b0100 0b1000
  }

  //check if check col has reached its ramp
  if (Level[row] == ramp) bits = bits & 0x06; // 00000110, mask out pos 0
  if (Level[row+1] == ramp) bits = bits & 0x05; // 00000101, mask out pos 1
  if (Level[row+2] == ramp) bits = bits & 0x03; // 00000011, mask out pos 2
  
  uint8_t mask = colbit - 1; 
  
  uint8_t outputs = (bits & mask) | (bits & ~mask)<<1;
  DDRB = (outputs | colbit) << 1;
  PORTB = (outputs) << 1;
}

void setup() {
  // Set up Timer/Counter1 to multiplex the LEDs
  TCCR1 = 1<<CTC1 | 2<<CS10;          // Divide by 2
  GTCCR = 0;                          // No PWM
  OCR1A = 0;
  OCR1C = 250-1;                      // 16kHz
  TIMSK = TIMSK | 1<<OCIE1A;          // Compare Match A interrupt

  pinMode(BUTTON_PIN, INPUT);
}

transition_t createTransition(uint8_t led, int8_t startLevel, int8_t endLevel, uint32_t offset, uint32_t rampTime)
{
  transition_t newTransition;
  newTransition.led = led;
  newTransition.currValue = startLevel;
  newTransition.endValue = endLevel;
  newTransition.stepDistance = endLevel > startLevel ? 1 : -1;
  newTransition.stepTime = rampTime / (endLevel - startLevel) * newTransition.stepDistance;
  newTransition.currTime = millis() + offset;
  newTransition.endTime = newTransition.currTime + rampTime;

  return newTransition;
}

int transitionCallback(transition_t tr)
{
  if(millis() >= tr.currTime + tr.stepTime)
  {
    tr.currValue += tr.stepDistance;
    tr.currTime += tr.stepTime;
    Level[Order[tr.led]] = logLevels[tr.currValue];

    if(tr.currValue == tr.endValue) return 0;

    return 1;
  }

  return 1;
}

void fadeModeCallback()
{ 
  transition_t outer[6];
  for(int i = 0; i < 6; i++)
  {
    outer[i] = createTransition(i, 0, 63, 0, 2000);
  }

  int checkRunning = 1;

  while(checkRunning)
  {
    checkRunning = 0;
    for(int i = 0; i < 6; i++)
    {
      int ret_val = transitionCallback(outer[i]);
      if(ret_val == 1) checkRunning = 1;
    }
  }

  for(int i = 0; i < 6; i++)
  {
    outer[i] = createTransition(i, 63, 0, 0, 2000);
  }

  checkRunning = 1;

  while(checkRunning)
  {
    checkRunning = 0;
    for(int i = 0; i < 6; i++)
    {
      int ret_val = transitionCallback(outer[i]);
      if(ret_val == 1) checkRunning = 1;
    }
  }
}

void checkButton()
{
  uint8_t reading = digitalRead(BUTTON_PIN);

  if (reading != lastButtonState) {
    // reset the debouncing timer
    lastDebounceTime = millis();
  }

  if ((millis() - lastDebounceTime) > debounceDelay) {
    // whatever the reading is at, it's been there for longer than the debounce
    // delay, so take it as the actual current state:

    // if the button state has changed:
    if (reading != buttonState) {
      buttonState = reading;

      // only toggle if the new button state is HIGH
      if (buttonState == LOW) {
        mode = (mode + 1) % 2;
      }
    }
  }
}

void runRamp(uint8_t numLeds, int8_t startLevel, int8_t endLevel, int32_t rampTime)
{
  int8_t diff = endLevel > startLevel ? 1 : -1;
  uint32_t msPerLevel = rampTime / (endLevel - startLevel) * diff;

  uint8_t currValue = startLevel;
  uint8_t currValueLog = logLevels[currValue];
  unsigned long currTime;
  unsigned long startTime = millis();
  unsigned long endTime = startTime + rampTime;
  while(currValue != endLevel)
  {
    currTime = millis();
    if(currTime >= startTime + msPerLevel)
    {
      startTime += msPerLevel;
      currValue += diff;
      currValueLog = logLevels[currValue];
      for(uint8_t i = 0; i < numLeds; i++)
      {
        Level[Order[outerLeds[i]]] = currValueLog;
        if(mode) Level[Order[outerLeds[i] + 6]] = endLevel > startLevel? logLevels[endLevel - currValue] : logLevels[startLevel - currValue];
      }
    }

    checkButton();
  }

}

void fadeProgram()
{
  runRamp(6, 0, 63, 2500);
  runRamp(6, 63, 0, 2500);
}

void loop () {
  fadeProgram();
}