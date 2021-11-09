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


https://ayce.dev/emptyx16.html#9f41h---ym2151-register-data-w--status-r
https://ayce.dev/emptyx16.html#ym2151-fm-operator-type-m-opm
http://www.cx5m.net/fmunit.htm
https://www.youtube.com/watch?v=BG6q53p7Z10
https://www.youtube.com/watch?v=GnbT23wGcIA
https://www.youtube.com/watch?v=C8K_VtGyjHM






	move.b #$20+7,$E90001			;LRFFFCCC - Left/Right Feedback,Connection
	move.b #%11000000,$E90003	

	move.b #$28+7,$E90001		;-OOONNNN - Key Octive + Note
	move.l d1,d0
	and.b #%00111111,d0
	rol #1,d0
	move.b d0,$E90003
	
	move.b #$60+24+7,$E90001 	;-VVVVVVV - [Slot] Volume (0=Max)
	move.l d1,d0
	and.b #%01000000,d0
	eor.b #%01000000,d0
	ror #2,d0
	move.b d0,$E90003

	move.b #$E0+24+7,$E90001	;DDDDRRRR - [Slot] Decay / Release rate
	move.b #%00001111,$E90003				;(15=Constant tone)
	
	move.b #$1B,$E90001			;DC----WW - D=fdD force ready, C=Clock (4mhz /8mhz) 
	move.b #%01000001,$E90003				;W=Waveform (0=Saw 1=Square,2=Tri, 3=Noise)
	
	move.b #$0F,$E90001			;E--FFFFF - Noise Enable Freq 
	move.b #%00000000,$E90003				;(Slot 3 - channel 7)
	
	move.b #$08,$E90001			;-SSSSCCC - Channel / Slot
	move.b #%01000111,$E90003				;(Channel 7 - Slot 3)



set register address
write register value