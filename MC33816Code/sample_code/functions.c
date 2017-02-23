//*********************************************************************************/
//* Freescale reserves  the right to make  changes without  further notice to any */
//* product herein to improve  reliability, function,  or design.  Freescale does */
//* not  assume  any  liability  arising  out of  the application  or use  of any */
//* product, circuit,  or software described herein;  neither does  it convey any */
//* license under its patent rights nor the rights of others.  Freescale products */
//* are not designed, intended,  or authorized for use as  components  in systems */
//* intended for  surgical implant into the body,  or other applications intended */
//* to support life,  or for any other  application  in which the failure  of the */
//* Freescale product could create a situation where personal injury or death may */
//* occur.  Should Buyer purchase or use Freescale products for any such intended */
//* or unauthorized  application,  Buyer shall indemnify and  hold  Freescale and */
//* its officers, employees, subsidiaries, affiliates,  and distributors harmless */
//* against all claims costs, damages, and expenses, and reasonable attorney fees */
//* arising  out of,  directly or indirectly,  any claim  of personal  injury  or */
//* death  associated  with  such unintended  or unauthorized use,  even if  such */
//* claim  alleges  that  Freescale  was  negligent   regarding   the  design  or */
//* manufacture  of the part.  Freescale and the  Freescale logo*  are registered */
//* trademarks of Freescale Ltd.                                                  */
//*********************************************************************************/

//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// File Name: functions.c                                                       //
// Current Revision: 1.0                                                        //
// Purpose: Initializes the MC33816 device using an embedded MCU                //
// Description: Main program that loads the code RAM, data RAM and register     //
//              configurations of the MC33816 device.                           //
// File created by: Freescale Analog, Tempe                                     //
//                                                                              //
// UPDATE HISTORY                                                               //
// REV   AUTHOR      DATE        DESCRIPTION OF CHANGE                          //
// ---   ------     ----         ---------------------                          //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////

/********************************* INCLUDES *************************************/
#include "functions.h" 

/********************************* CONSTANTS ************************************/
const int MAX_SPI_MODE_A_TRANSFER_SIZE = 31;  //max size for register config transfer
const int DELAY_FACTOR = 500;

//********************************************************************************
//   Function Name   : init_SPI
//   Author          : 
//   Date            : 
//   Parameters      : NONE
//   Returns         : int
//   Notes           : NONE
//********************************************************************************
void init_SPI()
{
   // TODO:  Add code to initialize the SPI interface on the MCU

} //end init_SPI


//********************************************************************************
//   Function Name   : init_GPIO
//   Engineer        : */
//   Date            : */
//   Parameters      : NONE
//   Returns         : NONE
//   Notes           : NONE
//********************************************************************************
void init_GPIO()
{
   // TODO:  Add code to initialize the GPIO outputs on the MCU

} //end init_GPIO


//********************************************************************************
//   Function Name   : delay
//   Engineer        : 
//   Date            : 
//   Parameters      : msDelay
//   Returns         : NONE
//   Notes           : NONE
//********************************************************************************
void delay(unsigned long msDelay)
{
   int i=0;
   
   for(i = 0; i < (msDelay * DELAY_FACTOR); i++);
}


//********************************************************************************
//   Function Name   : send_16bit_SPI
//   Engineer        : 
//   Date            : 
//   Parameters      : NONE
//   Returns         : NONE
//   Notes           : NONE
//********************************************************************************
void send_16bit_SPI(unsigned short data16)
{

   // TODO:  Add code to send SPI data from the MCU

} //end send_16bit_SPI


//********************************************************************************
//   Function Name   : read_16bit_SPI
//   Engineer        : 
//   Date            : 
//   Parameters      : NONE
//   Returns         : int
//   Notes           : NONE
//********************************************************************************
int read_16bit_SPI(void)
{
   int return_data = 0;
   
   // TODO:  Add code to read SPI data from the MCU

   return return_data;

} //end send_16bit_SPI


void set_reset_pin(int state)
{
   if(state == HIGH)
   {
      // TODO:  Add code to set the reset GPIO pin high
   }
   else if(state == LOW)
   {
      // TODO:  Add code to set the reset GPIO pin low
   }
}


void set_drven_pin(int state)
{
   if(state == HIGH)
   {
      // TODO:  Add code to set the drive enable GPIO pin high
   }
   else if(state == LOW)
   {
      // TODO:  Add code to set the drive enable GPIO pin low
   }
}


//********************************************************************************
//   Function Name   : download_RAM 
//   Engineer        : b39483, b45220 
//   Date            : 2013/09/25 
//   Parameters      : target 
//   Returns         : NONE 
//   Notes           : - Transfers RAM via SPI 
//********************************************************************************
void download_RAM(int target)
{
   unsigned char memory_area = 0;         // memory area
   unsigned short start_address = 0;      // start address
   unsigned short codeWidthRegAddr = 0;   // code width register address
   unsigned short size = 0;               // size of RAM data
   unsigned short command = 0;            // command data
   unsigned short data = 0;               // RAM data
   unsigned int k = 0;                    // used in loop for writing RAM data to the chip
   unsigned short * RAM_ptr;              // pointer to array of data to be sent to the chip

   send_16bit_SPI(0x7FE1);   // sends control word for memory area selection
                             // (rw[15], offset location[14-5], number of words[4-0])
                             // write (0), offset (0x3FF), data (1)
                             // 0111_1111_1110_0001 = 0x7FE1

   send_16bit_SPI(0x0004);   // sends data (select common page)
                             // (reserved[15-3], data[2-0])
                             // common page (1), CRAM ch2 (0), CRAM ch1 (0)
                             // 0000_0000_0000_0100 = 0x0004

   send_16bit_SPI(0x3901);   // sends control word for communication mode / watchdog
                             // (rw[15], offset location[14-5], number of words[4-0])
                             // write (0), offset (0x1C8), data (1)
                             // 0011_1001_0000_0001 = 0x3901

   send_16bit_SPI(0x001F);   // sends data (select options)
                             // (reserved[15-8], MISO slew[7], protocol[6], irqen[5], watchdog[4-0])
                             // MISO slew (0), mode A (0), irqen (0), watchdog (max = 0x1F)
                             // 0000_0000_0001_1111 = 0x001F

   switch(target)            // selects target
   {
   case CODE_RAM1:
      memory_area = 0x1;
      start_address = 0;
      codeWidthRegAddr = 0x107;
      RAM_ptr = VFM_65V_code_RAM1;
      size = sizeof(VFM_65V_code_RAM1) / 2;   // gets number of words to be sent
      break;

   case CODE_RAM2:
      memory_area = 0x2;
      start_address = 0;
      codeWidthRegAddr = 0x127;
      RAM_ptr = VFM_65V_code_RAM2;
      size = sizeof(VFM_65V_code_RAM2) / 2;   // gets number of words to be sent
      break;

   case DATA_RAM:
      memory_area = 0x4;
      start_address = 0;
      RAM_ptr = VFM_65V_data_RAM;
      size = sizeof(VFM_65V_data_RAM) / 2;    // gets number of words to be sent
      break;

   default:
      break;
   }

   command = codeWidthRegAddr << 5;   // control width register address
   command |= 1;                      // number of words to follow

   send_16bit_SPI(command);           // sends address width command

   send_16bit_SPI(size);              // sends size

   send_16bit_SPI(0x7FE1);            // sends control word for memory area selection
                                      // (rw[15], offset location[14-5], number of words[4-0])
                                      // write (0), offset (0x3FF), data (1)
                                      // 0111_1111_1110_0001 = 0x7FE1

   send_16bit_SPI(memory_area);       // sends data (selects location)

   command = start_address << 5;
   send_16bit_SPI(command);           // sends start address command

   for(k = 0; k < size; k++)          // downloads RAM
   {
      data = *RAM_ptr;                // retrieves data to be sent
      send_16bit_SPI(data);           // sends data
      RAM_ptr++;
   }

} //end download_RAM



//*******************************************************************************/
//   Function Name   : download_register
//   Engineer        : b39483, b45220
//   Date            : 2013/09/25
//   Parameters      : r_target
//   Returns         : NONE
//   Notes           : - Downloads   register configurations via SPI
//*******************************************************************************/
void download_register(int r_target)
{
   unsigned short r_start_address = 0;  // start address
   unsigned short r_size = 0;           // size of configuration data
   unsigned short r_command = 0;        // command data
   unsigned short r_data = 0;           // configuration data
   int n = 0;                           // used for loop for writing data to the chip
   unsigned short remainder_size = 0;   // remainder size
   unsigned short * reg_ptr;            // pointer to array of data to be sent to the chip

   switch(r_target)                     // selects target
   {
   case 0:                              // channel 1 configurations
      r_start_address = 0x100;
      reg_ptr = VFM_65V_ch1_config;
      r_size = sizeof(VFM_65V_ch1_config) / 2;  // gets number of words to be sent
      break;

   case 1:                              // channel 2 configurations
      r_start_address = 0x120;
      reg_ptr = VFM_65V_ch2_config;
      r_size = sizeof(VFM_65V_ch2_config) / 2;  // gets number of words to be sent
      break;

   case 2:                              // diagnostic configurations
      r_start_address = 0x140;
      reg_ptr = VFM_65V_diag_config;
      r_size = sizeof(VFM_65V_diag_config) / 2; // gets number of words to be sent
      break;

   case 3:                              // IO configurations
      r_start_address = 0x180;
      reg_ptr = VFM_65V_io_config;
      r_size = sizeof(VFM_65V_io_config) / 2;   // gets number of words to be sent
      break;

   case 4:                              // main configurations
      r_start_address = 0x1C0;
      reg_ptr = VFM_65V_main_config;
      r_size = sizeof(VFM_65V_main_config) / 2; // gets number of words to be sent
      break;

   default:
      break;
   }

   send_16bit_SPI(0x7FE1);   // sends control word for memory area selection
                             // (rw[15], offset location[14-5], number of words[4-0])
                             // write (0), offset (0x3FF), data (1)
                             // 0111_1111_1110_0001 = 0x7FE1

   send_16bit_SPI(0x0004);   // sends data (select common page)
                             // (reserved[15-3], data[2-0])
                             // common page (1), CRAM ch2 (0), CRAM ch1 (0)
                             // 0000_0000_0000_0100 = 0x0004

   send_16bit_SPI(0x3901);   // sends control word for communication mode / watchdog
                             // (rw[15], offset location[14-5], number of words[4-0])
                             // write (0), offset (0x1C8), data (1)
                             // 0011_1001_0000_0001 = 0x3901

   send_16bit_SPI(0x001F);   // sends data (select options)
                             // (reserved[15-8], MISO slew[7], protocol[6], irqen[5], watchdog[4-0])
                             // MISO slew (0), mode A (0), irqen (0), watchdog (max = 0x1F)
                             // 0000_0000_0001_1111 = 0x001F

   if(r_size > MAX_SPI_MODE_A_TRANSFER_SIZE)   //if size is too large, split into two sections
   {
      remainder_size = r_size - MAX_SPI_MODE_A_TRANSFER_SIZE;  // creates remaining size
      r_size = MAX_SPI_MODE_A_TRANSFER_SIZE;                   // sets first size
   }

   r_command = r_start_address << 5;      // start address
   r_command += r_size;                   // number of words to follow

   send_16bit_SPI(r_command);             // sends address and number of words to be sent

   for(n = 0; n < r_size; n++)            // downloads register configurations
   {
      r_data = *reg_ptr;                  // retrieves data to be sent
      send_16bit_SPI(r_data);             // sends data
      reg_ptr++;
   }

   if(remainder_size > 0)                 // if remainder size is greater than 0, download the rest
   {
      r_start_address += r_size;          // new start address
      r_command = r_start_address << 5;   // start address
      r_command += remainder_size;        // number of words to follow

      send_16bit_SPI(r_command);          // sends address and number of words to be sent

      for(n = 0; n < remainder_size; n++) // downloads register configurations
      {
         r_data = *reg_ptr;               // retrieves data to be sent
         send_16bit_SPI(r_data);          // sends data
         reg_ptr++;
      }
   }

} // end download_register
