/* ATtiny85 PWM - see http://www.technoblogy.com/show?2H0K

   David Johnson-Davies - www.technoblogy.com - 19th February 2017
   ATtiny85 @ 8 MHz (internal oscillator; BOD disabled)
   
   CC BY 4.0
   Licensed under a Creative Commons Attribution 4.0 International license: 
   http://creativecommons.org/licenses/by/4.0/
*/

uint8_t Level[12] = {1, 1, 3, 7, 15, 31, 63, 31, 15, 7, 3, 1 };

uint8_t Order[12] = {0, 1, 2, 5, 4, 3, 8, 7, 6, 9, 10, 11 };

// Timer/Counter1 overflow interrupt
ISR(TIM1_COMPA_vect) {
  static uint8_t first, ramp, column, bits, colbit;
  ramp = (ramp+1) & 0x3F;             // Count from 0 to 63
  if (ramp == 0) {
    bits = 14;//0x07; //00001110                     // All on
    column = (column + 1) & 0x03;
    first = column * 3;               // First LED in this column
    colbit = 1<<(column+0);
  }
  if (Level[first] == ramp) bits = bits & 12;//0x06; // 00000110 00001100
  if (Level[first+1] == ramp) bits = bits & 10;//0x05; // 00000101 00001010
  if (Level[first+2] == ramp) bits = bits & 6;//0x03; // 00000011 00000110
  uint8_t mask = colbit - 1;
  uint8_t outputs = (bits & mask) | (bits & ~mask)<<1;
  DDRB = outputs | colbit;
  PORTB = outputs;
}

void setup() {
  // Set up Timer/Counter1 to multiplex the LEDs
  TCCR1 = 1<<CTC1 | 2<<CS10;          // Divide by 2
  GTCCR = 0;                          // No PWM
  OCR1A = 0;
  OCR1C = 250-1;                      // 16kHz
  TIMSK = TIMSK | 1<<OCIE1A;          // Compare Match A interrupt
}

void loop () {
  // Wave demo
  uint8_t temp = Level[Order[11]];
  for (int i=11; i>0; i--) Level[Order[i]] = Level[Order[i-1]];
  Level[Order[0]] = temp;
  delay(100);
}
