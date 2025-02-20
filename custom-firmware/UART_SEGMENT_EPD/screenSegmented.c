#include <stdbool.h>
#include "screenSegmented.h"
#include "zbs243.h"
#include "timer.h"
#include "spi.h"

__bit display_is_drawing = 0;
uint32_t screen_start_time = 0;

extern bool lut5_active;

#define B24(a, b, c) (((uint32_t)(a) << 16) | ((uint32_t)(b) << 8) | (c))
#define B24_6BIT(a, b, c, d) (((uint32_t)(a) << 18) | ((uint32_t)(b) << 12) | ((uint32_t)(c) << 6) | (d))
#define B24_10_10_4(a, b, c) (((uint32_t)(a) << 14) | ((uint32_t)(b) << 4) | (c))
#define B24_8_2_8_2_4(a, b, c, d, e) (((uint32_t)(a) << 16) | \
                                      ((uint32_t)(b & 0x3) << 14) | \
                                      ((uint32_t)(c) << 6)  | \
                                      ((uint32_t)(d & 0x3) << 4)  | \
                                      ((uint32_t)(e & 0xF)))

#pragma callee_saves screenPrvTimedWait
static __bit screenPrvTimedWait(uint32_t maxTicks)
{
	uint32_t startTicks = timerGet();

	while (timerGet() - startTicks < maxTicks)
	{
		if (!P2_0)
			return true;
	}

	return false;
}

#pragma callee_saves screenPrvRegWriteGuts
static __bit screenPrvRegWriteGuts(uint32_t val, uint8_t reg) // order because sdcc sucks
{
	if (!screenPrvTimedWait(TIMER_TICKS_PER_SECOND / 1000))
		return false;

	P2_1 = 0;
	spiByte((uint8_t)0x80 + (uint8_t)(reg << 1));
	spiByte(val >> 16);
	spiByte(val >> 8);
	spiByte(val);
	P2_1 = 1;

	return true;
}

#define screenPrvRegWrite(_reg, _val) screenPrvRegWriteGuts(_val, _reg)

__bit screenDraw(const uint8_t __xdata *data, __bit inverted, __bit custom_lut)
{
	display_is_drawing = 0;
	P2_1 = 1;
	P2_2 = 1; // power it up
	timerDelay(TIMER_TICKS_PER_SECOND / 1000);
	P1_7 = 0; // assert reset
	timerDelay(TIMER_TICKS_PER_SECOND / 100);
	P1_7 = 1; // release reset
	timerDelay(TIMER_TICKS_PER_SECOND / 1000);

	P1FUNC |= 0x40;
	// wait for it
	if (!screenPrvTimedWait(TIMER_TICKS_PER_SECOND))
	{
		return false;
	}

	// internal oscillator init?
	if (!screenPrvRegWrite(0x03, 0x3a0000))
		return false;
	// iface init?
	if (!screenPrvRegWrite(0x01, 0x070000))
		return false;
	if (!screenPrvRegWrite(0x03, 0x400000))
		return false;
	if (!screenPrvRegWrite(0x04, 0xfc0000))
		return false;

	// data
	if (!screenPrvRegWrite(0x0d, *(uint32_t __xdata *)(data + 0))) // Data register 0
		return false;
	if (!screenPrvRegWrite(0x0e, *(uint32_t __xdata *)(data + 3))) // Data register 1
		return false;
	if (!screenPrvRegWrite(0x0f, *(uint32_t __xdata *)(data + 6))) // Data register 2
		return false;
	if (!screenPrvRegWrite(0x10, *(uint32_t __xdata *)(data + 9))) // Data register 3
		return false;
	if (custom_lut)
	{
		// LUTs
		if (!screenPrvRegWrite(0x14, *(uint32_t __xdata *)(data + 12)))
			return false;
		if (!screenPrvRegWrite(0x15, *(uint32_t __xdata *)(data + 15)))
			return false;
		if (!screenPrvRegWrite(0x16, *(uint32_t __xdata *)(data + 18)))
			return false;

		if (!screenPrvRegWrite(0x19, *(uint32_t __xdata *)(data + 21)))
			return false;
		if (!screenPrvRegWrite(0x1a, *(uint32_t __xdata *)(data + 24)))
			return false;

#define UPDATE_NORMAL B24(0b00100000, 0x0, 0x0)
#define UPDATE_INVERT B24(0x0, 0x0, 0x0)

		// update!
		if (!screenPrvRegWrite(0x00, *(uint32_t __xdata *)(data + 27) | (inverted ? UPDATE_NORMAL : UPDATE_INVERT)))
			return false;
	}
	else
#define LUT1_NORMAL B24_8_2_8_2_4(0b01000100, 0x00, 0x0, 0x00, 0x0000)

#define LUT2_NORMAL B24_8_2_8_2_4(0b01101000, 0x00, 0x0, 0x00, 0x0001)
#define LUT2_INVERT B24_8_2_8_2_4(0b10000110, 0x00, 0x0, 0x00, 0x0000)

#define LUT3_NORMAL B24_8_2_8_2_4(0b00100100, 0x00, 0x0, 0x00, 0x0000)
#define LUT3_INVERT B24_8_2_8_2_4(0b00000100, 0x00, 0x0, 0x00, 0x0000)
		// LUTs
		if (!screenPrvRegWrite(0x14, LUT1_NORMAL)) // RPT 0xF
			return false;
		if (!screenPrvRegWrite(0x15, inverted ? LUT2_NORMAL : LUT2_INVERT))
			return false;
		if (!screenPrvRegWrite(0x16, inverted ? LUT3_NORMAL : LUT3_INVERT))
			return false;

#define LUT5_NORMAL B24_8_2_8_2_4(0b10000110, 0x01, 0x0, 0x00, 0x0000)
#define LUT5_INVERT B24_8_2_8_2_4(0b01101000, 0x01, 0x0, 0x00, 0x0000)

		//-----------------------------------------------------------------------------------------------------------------------
		if (!screenPrvRegWrite(0x18, inverted ? LUT5_NORMAL : LUT5_INVERT)) // Waveform LUT5
			return false;
#define LUT8 B24_6BIT(0b010100, 0x0, 0x0, 0x0)

		if (!screenPrvRegWrite(0x1b, LUT8)) // Waveform LUT8 - Timing 3
			return false;
		//-----------------------------------------------------------------------------------------------------------------------
#define LUT6 B24_6BIT(0b000010, 0b000010, 0b010100, 0b010100)
#define LUT7 B24_6BIT(0b101000, 0b000010, 0x0, 0x0)
		if (!screenPrvRegWrite(0x19, LUT6)) // Waveform LUT6 - Timing 1
			return false;
		if (!screenPrvRegWrite(0x1a, 0xa02000)) // Waveform LUT7 - Timing 2
			return false;



		// update!
		if (lut5_active)
		{
#undef 	UPDATE_NORMAL
#undef 	UPDATE_INVERT
#define UPDATE_NORMAL B24(0b10100000, 0x0, 0x1)
#define UPDATE_INVERT B24(0b10000000, 0x0, 0x1)
			//-----------------------------------------------------------------------------------------------------------------------
			if (!screenPrvRegWrite(0x00, inverted ? UPDATE_NORMAL : UPDATE_INVERT)) // Only use LUT5.
				return false;
			//-----------------------------------------------------------------------------------------------------------------------
		}
		else
		{
#undef 	UPDATE_NORMAL
#undef 	UPDATE_INVERT
//#define UPDATE_NORMAL B24(0b10100000, 0x0, 0b00011100)
//#define UPDATE_INVERT B24(0b10000000, 0x0, 0b00011100)
#define UPDATE_NORMAL B24(0b10100000, 0x0, 0b00011100)
#define UPDATE_INVERT B24(0b10000000, 0x0, 0b00011100)

			if (!screenPrvRegWrite(0x00, inverted ? UPDATE_NORMAL : UPDATE_INVERT)) // LUT 1,2,3 used.
				return false;
		}
	}
	timerDelay(TIMER_TICKS_PER_SECOND / 1000);

	screen_start_time = timerGet();
	display_is_drawing = 1;
	return true;
}

void display_end()
{
	P1_7 = 0; // assert reset
	timerDelay(TIMER_TICKS_PER_SECOND / 100);
	P2_2 = 0; // power it dowm

	P1FUNC &= ~0x40;
}

uint8_t is_drawing()
{
	if (display_is_drawing)
	{
		if (!P2_0 || (timerGet() - screen_start_time > (TIMER_TICKS_PER_SECOND*3)))
		{
			display_end();
			display_is_drawing = 0;
			return 0;
		}
		return 1;
	}
	return 0;
}