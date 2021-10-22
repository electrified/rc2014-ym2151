# YM2151 Sound card for the RC2014 computer - Revision 1

## The board

## What can you use this for?

## Features

## History

## Construction Steps

1. Verify the components supplied in the kit match up with [bill of materials](https://github.com/electrified/rc2014-ym2151/blob/master/README.md#bill-of-materials)
2. Solder the components to the board, matching the components in the [BOM](https://github.com/electrified/rc2014-ym2151/blob/master/README.md#bill-of-materials) to the component references printed on the PCB, starting with the lowest height ones first e.g. bypass capacitors and resistors, then moving on to IC sockets, pin headers and do the electrolytic capacitors and output jack last.
3. Insert the ICs in their sockets. The component reference marking on the PCB (e.g. U1) is nearest to pin 1 for all ICs
4. If you have a Z80 based system, configure the jumpers on the board so it looks like the picture in the README. This will ensure it is at the right IO address.
5. Insert board into backplane/SBC

## Bill Of Materials

![Picture of the board](./r1-board-render.png?raw=true)

Qty|Schematic Reference|Description
---|-------------------|-----------
