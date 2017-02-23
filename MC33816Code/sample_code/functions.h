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
// File Name: functions.h                                                       //
// Current Revision: 1.0                                                        //
// Purpose: Initialize MC33816 using an embedded MCU                            //
// Description: Declarations for functions used throughout the program          //
// File created by: Freescale Analog, Tempe                                     //
//                                                                              //
// UPDATE HISTORY                                                               //
// REV   AUTHOR      DATE        DESCRIPTION OF CHANGE                          //
// ---   ------     ----         ---------------------                          //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////

#ifndef FUNCTIONS_H_
#define FUNCTIONS_H_

/********************************* INCLUDES *************************************/
#include "VFM_65V_LoadData.h" 

/********************************* CONSTANTS ************************************/
#define CODE_RAM1 0
#define CODE_RAM2 1
#define DATA_RAM  2

#define CH1_REG   0
#define CH2_REG   1
#define DIAG_REG  2
#define IO_REG    3
#define MAIN_REG  4

#define LOW       0
#define HIGH      1

/********************************* FUNCTIONS ************************************/
extern void init_SPI(void);
extern void init_GPIO(void);
extern void delay(unsigned long msDelay);
extern void send_16bit_SPI(unsigned short data16);
extern int  read_16bit_SPI(void);
extern void download_RAM(int target);
extern void download_register(int r_target);
extern void set_reset_pin(int state);
extern void set_drven_pin(int state);

#endif /* FUNCTIONS_H_ */
