# snowflake
 A PCB holiday ornament with lots of blinking LEDs!

## Hardware
The board consists of twelve reverse-mounted LEDs [charlieplexed](https://en.wikipedia.org/wiki/Charlieplexing) and hooked up to an Attiny85. Each LED is individually adderssable, even though only four of the Attiny's pins are being used (Charlieplexing is magic)! The board also has a pushbutton for switching between modes. The ornament is powered via six CR1225 batteries.

The final board isn't the most elegant thing- there are several zero-ohm jumpers, and there's even a "decorative" wire that wraps around the snowflake that is actually a ground line I didn't want to route across the front of the ornament.

There is also a mistake in the current board files- under each LED should be a rectange on the f.mask layer so that the area below the LED is free of solder mask. Instead, the rectangle is a keepout zone, which is useless in this situation. My solution was to scrap the areas clear with a knife but I don't recommend it because FT4 dust is nasty. The better solution is to fix the board files before ordering.

![Snowflake Schematic](/documentation/img/snowflake_schematic.png)

![Snowflake Render A](/documentation/img/snowflake_front_render.png)
![Snowflake Render B](/documentation/img/snowflake_back_render.png)

### BOM
A complete BOM can be found under documentation/snowflake_bom.csv, and can be uploaded to DigiKey for easy ordering. At the time of writing, the total DigiKey order is around $13. Boards can be ordered from anywhere that'll do white solder mask (I used PCBWay) and should be fairly cheap as well. You can order a stencil if desired, but I found it pretty easy to hand solder this one.

## Software

@satrat