#include "leds.h"

uint8_t Level[12];
uint8_t Order[12];
uint8_t LogLevels[64] = { 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,
                          1,  1,  1,  1,  1,  1,  1,  1,  1,  1,  2,  2,  2,  2,  2,  3,  3,
                          3,  4,  4,  4,  5,  5,  6,  7,  7,  8,  9, 10, 11, 12, 14, 15, 17,
                         18, 20, 23, 25, 28, 31, 34, 38, 42, 46, 51, 57, 63};

void initOrder()
{
    Order[0] = 0;
    Order[1] = 4;
    Order[2] = 8;
    Order[3] = 1;
    Order[4] = 5;
    Order[5] = 2;
    Order[6] = 3;
    Order[7] = 7;
    Order[8] = 11;
    Order[9] = 6;
    Order[10] = 10;    
    Order[11] = 9;   
}

void setupLeds()
{
    initOrder();
    clearLeds(); 
}

void setLed(uint8_t led, uint8_t level)
{
    Level[Order[led]] = LogLevels[level];
}

void clearLeds()
{
  for(int i = 0; i < 12; i++)
  {
    Level[Order[i]] = 0;
  }
}

void allOn()
{
  for(int i = 0; i < 12; i++)
  {
    Level[Order[i]] = 63;
  } 
}