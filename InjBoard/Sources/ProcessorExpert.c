/** ###################################################################
**     Filename    : ProcessorExpert.c
**     Project     : ProcessorExpert
**     Processor   : MKL25Z128VLK4
**     Version     : Driver 01.01
**     Compiler    : GNU C Compiler
**     Date/Time   : 2012-08-03, 12:30, # CodeGen: 0
**     Abstract    :
**         Main module.
**         This module contains user's application code.
**     Settings    :
**     Contents    :
**         No public methods
**
** ###################################################################*/
/* MODULE ProcessorExpert */


/* Including needed modules to compile this module/procedure */
#include "Cpu.h"
#include "Events.h"
#include "CsIO1.h"
#include "IO1.h"
#include "PWM1.h"
#include "TU1.h"
#include "LEDRed.h"
#include "LEDGreen.h"
#include "CSBit.h"
#include "GPIO1.h"
/* Including shared modules, which are used for whole project */
#include "PE_Types.h"
#include "PE_Error.h"
#include "PE_Const.h"
#include "IO_Map.h"

/* User includes (#include below this line is not maintained by Processor Expert) */
#include "Common.h"
#include <stdio.h>
#include <string.h>
#include <cstdlib>
#include "functions.h"


//#define SPI0_D (uint8_t*)(SPI_BASE + 0x05)

LDD_TDeviceData *Data_GPIO;
//LDD_TDeviceData *Data_SPI;
LDD_TDeviceData *Data_CS;
LDD_TDeviceData *Data_LEDRed;
LDD_TDeviceData *Data_LEDGreen;
LDD_TDeviceData *Data_PWM;

//********************************************************************************
//   Function Name   : send_16bit_SPI
//   Engineer        : 
//   Date            : 
//   Parameters      : NONE
//   Returns         : NONE
//   Notes           : NONE
//********************************************************************************


void delaySmall()
{
	volatile int i = 0;
	for(i = 0; i < 55; i++);
}


void send_16bit_SPI(unsigned short data16)
{
	/* Set CS */
	//SPIO_SetFieldValue(Data_SPIO,CS,0);
	//GPIOD_PCOR = 0x00000001;
	CSBit_ClrVal(Data_CS);
			
	/* Split bytes */
	uint8_t upper = (uint8_t)((data16 & 0xFF00) >> 8);
	uint8_t lower = (uint8_t)(data16 & 0xFF);
	
	/* Send MSB */
	while(!(SPI_S_SPTEF_MASK & SPI0_S)){asm("nop");}
	SPI0_D = upper;
	
	/* Send LSB */
	while(!(SPI_S_SPTEF_MASK & SPI0_S)){asm("nop");}
	SPI0_D = lower;
	
	/* Clear CS */
	//SPIO_SetFieldValue(Data_SPIO,CS,1);
	CSBit_SetVal(Data_CS);
	
	delaySmall();
}


void set_reset_pin(int state)
{
   if(state == HIGH)
   {
	   GPIO1_SetFieldValue(Data_GPIO,RESETB,1);
   }
   else if(state == LOW)
   {
	   GPIO1_SetFieldValue(Data_GPIO, RESETB, 0);
   }
}


void set_drven_pin(int state)
{
   if(state == HIGH)
   {
     GPIO1_SetFieldValue(Data_GPIO,DRVEN,1);
   }
   else if(state == LOW)
   {
	   GPIO1_SetFieldValue(Data_GPIO,DRVEN,0);
   }
}

void UpdateColors(char color)
{
    if(color & 0x01)
    {
    	/* Set RED */
    	LEDRed_SetVal(Data_LEDRed);
    }
    else
    {
    	/* Clear RED */
    	LEDRed_ClrVal(Data_LEDRed);
    }
    if(color & 0x02)
    {
    	/* Set GREEN */
    	LEDGreen_SetVal(Data_LEDGreen);
    }
    else
    {
    	/* Clr GREEN */
    	LEDGreen_ClrVal(Data_LEDGreen);
    }
}

int main(void)
{
  /* Write your local variable definition here */
 
 
  /*** Processor Expert internal initialization. DON'T REMOVE THIS CODE!!! ***/
  PE_low_level_init();
  /*** End of Processor Expert internal initialization.                    ***/
  
  printf("*********************************************************\n");
  printf("*** MC33816 Fuel Injector Driver Board for CDI           \n");
  printf("*********************************************************\n");
  printf("\n");
  printf("Project description:\n");
  printf("Bring up MC33816 fuel injector driver\n");
  printf("Configure for Bosch CDI injector current profile\n");
  printf("\n");

  /* Init PWM OUT for Clock */
  Data_PWM = PWM1_Init(NULL);
  
  /* Init GPIO */
  Data_GPIO = GPIO1_Init(NULL);
  
  /* Init CS */
  Data_CS = CSBit_Init(NULL);
	
  /* Init SPI */
  //Data_SPI = SPI_Init(NULL);
  //Data_SPIO = SPIO_Init(NULL);
  
  /* Init SPI manually */
  SIM_SCGC5 |= SIM_SCGC5_PORTD_MASK;      //Turn on clock to D module  
  SIM_SCGC4 |= SIM_SCGC4_SPI0_MASK;       //Enable SPI0 clock  
   
   //PORTD_PCR0 = PORT_PCR_MUX(0x1);    //Set PTD0 to mux 1 [GPIO]  
   PORTD_PCR1 = PORT_PCR_MUX(0x2);    //Set PTD1 to mux 2 [SPI0_SCK]  
   PORTD_PCR2 = PORT_PCR_MUX(0x2);    //Set PTD2 to mux 2 [SPI0_MOSI]  
   PORTD_PCR3 = PORT_PCR_MUX(0x2);    //Set PTD3 to mux 2 [SPIO_MISO]  
   
   SPI0_C1 = SPI_C1_MSTR_MASK | SPI_C1_CPOL_MASK   ;   //Set SPI0 to Master
     
   SPI0_C2 = 0;//SPI_C2_MODFEN_MASK;   //Master SS pin acts as slave select output   
     
   SPI0_BR = (SPI_BR_SPPR(0x02) | SPI_BR_SPR(0x08));     //Set baud rate prescale divisor to 3 & set baud rate divisor to 64 for baud rate of 15625 hz  
     
  /* Clear CS */
   CSBit_SetVal(Data_CS);
   SPI0_C1 |= SPI_C1_SPE_MASK;    //Enable SPI0  
  /* SPI Pins:
   * PTD2 => MOSI
   * PTD3 => MISO
   * PTD1 => SCK
   */

  /* Init LEDs */
  Data_LEDGreen = LEDGreen_Init(NULL);
  Data_LEDRed = LEDRed_Init(NULL);
  
  printf("\n");
  printf("*********************************************************\n");
  printf("*** Load the Code and Data RAM, then set DRVEN           \n");
  printf("*********************************************************\n");
  
  UpdateColors(3);

  set_reset_pin(LOW);             // Sets MC33816 reset signal low
  set_drven_pin(LOW);
  
  delay(100);                     // pause 100ms
  
  UpdateColors(2);
  
  set_reset_pin(HIGH);            // Sets MC33816 reset signal high
  
  /* Wait for the PLL to lock */
  delay(10);

  download_RAM(CODE_RAM1);        // transfers code RAM1
  download_RAM(CODE_RAM2);        // transfers code RAM2
  download_RAM(DATA_RAM);         // transfers data RAM

  download_register(MAIN_REG);    // download main register configurations
  download_register(CH1_REG);     // download channel 1 register configurations
  download_register(CH2_REG);     // download channel 2 register configurations
  download_register(IO_REG);      // download IO register configurations
  download_register(DIAG_REG);    // download diag register configurations
  
  send_16bit_SPI(0x2001);         // enable flash and dual sequence ch1 (address = 0x100)
  send_16bit_SPI(0x0018);

  send_16bit_SPI(0x2401);         // enable flash and dual sequence ch2 (address = 0x120)
  send_16bit_SPI(0x0018);

  /* Send a dummy transfer for no reason */
  send_16bit_SPI(0x0000);
  
  set_drven_pin(HIGH);            // Sets drive enable signal high (enables outputs and vboost)
  
  UpdateColors(0);

  printf("SPI load finished!\n");

      
  /*** Don't write any code pass this line, or it will be deleted during code generation. ***/
  /*** RTOS startup code. Macro PEX_RTOS_START is defined by the RTOS component. DON'T MODIFY THIS CODE!!! ***/
  #ifdef PEX_RTOS_START
    PEX_RTOS_START();                  /* Startup of the selected RTOS. Macro is defined by the RTOS component. */
  #endif
  /*** End of RTOS startup code.  ***/
  /*** Processor Expert end of main routine. DON'T MODIFY THIS CODE!!! ***/
  for(;;){}
  /*** Processor Expert end of main routine. DON'T WRITE CODE BELOW!!! ***/
  return 0;
} /*** End of main routine. DO NOT MODIFY THIS TEXT!!! ***/

/* END ProcessorExpert */
/*
** ###################################################################
**
**     This file was created by Processor Expert 0.00.00 [05.02]
**     for the Freescale Kinetis series of microcontrollers.
**
** ###################################################################
*/
