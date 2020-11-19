/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include "system.h"
#include "sys/alt_timestamp.h"
#include "altera_avalon_pio_regs.h"

#define BAUDRATE 4800
#define NBIT 8
#define NSTOPBIT 1
#define NOPARITY 0
#define EVENPARITY 1
#define ODDPARITY 2
#define PARITY NOPARITY

/* TODO provare a far partire il timer solo una volta e contare il numero di ticks a partire da tale istante
 * */
int main()
{
  char charToPrint = 0;
  int ticksPerSec = alt_timestamp_freq();
  int t1, t2, nticks;
  int ticksPerBit = ticksPerSec/BAUDRATE;
  int halfBitTime = ticksPerBit/2;
  int val = IORD_ALTERA_AVALON_PIO_DATA(NIOS_UARTRX_BASE);
  while(1){
	  while(val){
		  val = IORD_ALTERA_AVALON_PIO_DATA(NIOS_UARTRX_BASE);
	  }
	  alt_timestamp_start();
/* 	  t1 = alt_timestamp();
	  do {
		  t2 = alt_timestamp();
  		  nticks = t2 - t1;
	  } while(nticks < halfBitTime); */
	  while(alt_timestamp() < halfBitTime){};
	  val = IORD_ALTERA_AVALON_PIO_DATA(NIOS_UARTRX_BASE);
	  if (!val){ //check if START BIT is effectively low
		  for (int i=0; i<NBIT; ++i){
			  alt_timestamp_start();
			  /* t1 = alt_timestamp();
			  do {
				  t2 = alt_timestamp();
			  	  nticks = t2 - t1;
			   } while(nticks < ticksPerBit); */
			  while(alt_timestamp() < ticksPerBit){};
			  val = IORD_ALTERA_AVALON_PIO_DATA(NIOS_UARTRX_BASE);
			  val = val & 0x01;
			  charToPrint |= val << i;
		  }
		  alt_timestamp_start();
		  /* t1 = alt_timestamp();
		  do {
			  t2 = alt_timestamp();
		  	  nticks = t2 - t1;
		  } while(nticks < ticksPerBit); */
		  while(alt_timestamp() < ticksPerBit){};
		  val = IORD_ALTERA_AVALON_PIO_DATA(NIOS_UARTRX_BASE); //sample the STOP bit
		  if(val)
			  printf("%c", charToPrint);
		  charToPrint = 0;
	  }
  }
  return 0;
}
