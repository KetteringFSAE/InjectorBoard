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

//==============================================================================
// This file contains data array declarations for the code RAM, data RAM and
// register arrays for the MC33816.
//==============================================================================

#ifndef DATA_H_
#define DATA_H_

extern unsigned short VFM_65V_code_RAM1[88];    // CODE RAM CH 1
extern unsigned short VFM_65V_code_RAM2[42];    // CODE RAM CH 2
extern unsigned short VFM_65V_data_RAM[128];    // DATA RAM
extern unsigned short VFM_65V_main_config[31];  // main configurations
extern unsigned short VFM_65V_ch1_config[19];   // CH 1 configurations
extern unsigned short VFM_65V_ch2_config[19];   // CH 2 configurations
extern unsigned short VFM_65V_io_config[44];    // IO configurations
extern unsigned short VFM_65V_diag_config[44];  // diag configurations

#endif /* DATA_H_ */
