# snowflake
 A PCB holiday ornament with lots of blinking LEDs!

## Hardware
The board consists of twelve reverse-mounted LEDs [charlieplexed](https://en.wikipedia.org/wiki/Charlieplexing) and hooked up to an ATtiny85. Each LED is individually addressable, even though only four of the ATtiny's pins are being used (Charlieplexing is magic)! The board also has a pushbutton for switching between modes. The ornament is powered via six CR1225 batteries.

The final board isn't the most elegant thing- there are several zero-ohm jumpers, and there's even a "decorative" wire that wraps around the snowflake that is actually a ground line I didn't want to route across the front of the ornament.

There is also a mistake in the current board files- under each LED should be a rectangle on the f.mask layer so that the area below the LED is free of solder mask. Instead, the rectangle is a keepout zone, which is useless in this situation. My solution was to scrape the areas clear with a knife but I don't recommend it because FR4 dust is nasty. The better solution is to fix the board files before ordering.

![Snowflake Schematic](/documentation/img/snowflake_schematic.png)


Board Front             |  Board Back
:-------------------------:|:-------------------------:
![](/documentation/img/snowflake_front_render.png)  |  ![](/documentation/img/snowflake_back_render.png)

### BOM
A complete BOM can be found under [/documentation/snowflake_bom.csv](/documentation/snowflake_bom.csv), and can be uploaded to DigiKey for easy ordering. At the time of writing, the total DigiKey order is around $13. Boards can be ordered from anywhere that'll do white solder mask (I used PCBWay) and should be fairly cheap as well. You can order a stencil if desired, but I found it pretty easy to hand solder this one.

## (Firm?)(Soft?)ware
The ATtiny is programmed using the PlatformIO framework. Before programming, you need to write an Arduino bootloader to the chip using the Arduino IDE. When burning the bootloader, here are the settings we used:

+ Chip: "ATtiny85"
+ Clock: "8 MHz (internal)"
+ B.O.D: "B.O.D. Disabled"
+ Timer 1 Clock: "CPU"
+ LTO (1.6.11+ only): "Disabled"

The code is adapted from the wonderful work of David Johnson-Davies, published at http://www.technoblogy.com/show?2H0K.

To program the chips, we used SparkFun's [Pocket AVR Programmer](https://www.sparkfun.com/products/9825), but you should be able to use any programmer compatibe with the ATtiny85 (or just use an Arduino Uno!).

## Version History
Release 1.0 represents the snowflake ornaments as we initially made and distributed them. Once it is released, maybe we'll improve some stuff (but any hardware improvements will be untested).
