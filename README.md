# YM2151 Sound card for RC2014/RC40 bus computers

## The board
RC40 bus OPM FM Sound card.

## Features
FM Operator Type M (OPM)
4 operators
8 algorithms
8 notes
Stereo output

## History
The YM2151 tone generator and accompanying YM3012 stereo DAC have been used in several computer systems.
Most notably the Sharp X68000 and Yamaha's CX5M MSX computer, along with a number of arcade boards.
More recently the retro inspired Commander X16 also has one.

Yamaha's DX21, DX27 and DX100 synthesisers used a derivative IC which is very similar.

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


https://ayce.dev/emptyx16.html#9f41h---ym2151-register-data-w--status-r
https://ayce.dev/emptyx16.html#ym2151-fm-operator-type-m-opm
http://www.cx5m.net/fmunit.htm
https://www.youtube.com/watch?v=BG6q53p7Z10
https://www.youtube.com/watch?v=GnbT23wGcIA
https://www.youtube.com/watch?v=C8K_VtGyjHM
