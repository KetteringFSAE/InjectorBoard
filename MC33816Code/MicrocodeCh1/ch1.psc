#include "dram1.def";
*********************************************************************************
*                                               Copyright (c) Freescale 2014    *
* File Name: MC33816_ch1.dfi                                                    *
* Current Revision: 1.0                                                         *
* Purpose: MC33816 example - 4 injectors control with Peak & Hold               *
* Description:  MC33816 Channel 1 main function provide peak and hold current   *
*               profile for Uc0Ch1 and Uc1Ch1                                   *
* File created by:  Freescale Analog, Tempe                                     * 
*                   Freescale Analog, Toulouse                                  *                                        
*                                                                               *
* UPDATE HISTORY                                                                *
* REV  AUTHOR    DATE        DESCRIPTION OF CHANGE                              *
* ---  ------    --------    ---------------------                              *
* 1.0  tboi01    2014/01/10     - initial coding                                *
*                                                                               *
*********************************************************************************

*********************************************************************************
* Freescale reserves  the right to make  changes without  further notice to any *
* product herein to improve  reliability, function,  or design.  Freescale does *
* not  assume  any  liability  arising  out of  the application  or use  of any *
* product, circuit,  or software described herein;  neither does  it convey any *
* license under its patent rights nor the rights of others.  Freescale products *
* are not designed, intended,  or authorized for use as  components  in systems *
* intended for  surgical implant into the body,  or other applications intended *
* to support life,  or for any other  application  in which the failure  of the *
* Freescale product could create a situation where  personal injury or death may*
* occur.  Should Buyer purchase or use Freescale products for any such intended *
* or unauthorized  application,  Buyer shall indemnify and  hold  Freescale and *
* its officers, employees, subsidiaries, affiliates,  and distributors harmless *
* against all claims costs, damages, and expenses, and reasonable attorney  fees*
* arising  out of,  directly or indirectly,  any claim  of personal  injury  or *
* death  associated  with  such unintended  or unauthorized use,  even if  such *
* claim  alleges  that  Freescale   was  negligent   regarding   the  design  or*
* manufacture  of the part.  Freescale and the  Freescale logo  are registered  *
* trademarks of Freescale Ltd.                                                  *
*********************************************************************************

* ### Channel 1 - uCore0 controls the injectors 1 and 2 ###

* ### Variables declaration  ###

* Note: The data are stored into the dataRAM of the channel 1.
#define Iboost 0;       * The boost phase current value is stored in the Data RAM address 0
#define Ipeak 1;        * The peak phase current value is stored in the Data RAM address 1
#define Ihold 2;        * The hold phase current value is stored in the Data RAM address 2
#define Tpeak_off 3;    * The peak off phase time is stored in the Data RAM address 3
#define Tpeak_tot 4;    * The peak phase duration is stored in the Data RAM address 4
#define Tbypass 5;      * The bypass phase time is stored in the Data RAM address 5
#define Thold_off 6;    * The peak phase duration is stored in the Data RAM address 6
#define Thold_tot 7;    * The peak phase duration is stored in the Data RAM address 7
* Note: The Thold_tot variable defines the current profile time out. The active STARTx pin is expected to toggle in is low state before this time out.

* ### Initialization phase ###
init0:      stgn gain5.8 sssc;                     * Set the gain of the opamp of the current measure block 1 
            ldjr1 eoinj0;                           * Load the eoinj line label Code RAM address into the register jr1 
            ldjr2 idle0;                            * Load the idle line label Code RAM address into the register jr2
            cwef jr1 _start row1;                   * If the start signal goes low, go to eoinj phase       

* ### Idle phase- the uPC loops here until start signal is present ###              
idle0:      joslr inj1_start start1;                * Perform an actuation on inj1 if start 1 (only) is active
            joslr inj2_start start2;                * Perform an actuation on inj2 if start 2 (only) is active
            jmpf jr1;                               * If more than 1 start active at the same time(or none), no actuation

* ### Shortcuts definition per the injector to be actuated ###
inj1_start: dfsct hs1 hs2 ls1;                      * Set the 3 shortcuts: VBAT, VBOOST, LS
            jmpr boost0;                            * Jump to launch phase

inj2_start: dfsct hs1 hs2 ls2;                      * Set the 3 shortcuts: VBAT, VBOOST, LS
            jmpr boost0;                            * Jump to launch phase

* ### Launch phase enable boost ###
boost0:     load Iboost dac_sssc _ofs;              * Load the boost phase current threshold in the current DAC
            cwer peak0 ocur row2;                   * Jump to peak phase when current is over threshold
            stf low b0;                             * set flag0 low to force the DC-DC converter in idle mode
            stos off on on;                         * Turn VBAT off, BOOST on, LS on
            wait row12;                             * Wait for one of the previously defined conditions

* ### Peak phase continue on Vbat ###
peak0:      ldcd rst _ofs keep keep Tpeak_tot c1;   * Load the length of the total peak phase in counter 1
            load Ipeak dac_sssc _ofs;               * Load the peak current threshold in the current DAC
            cwer bypass0 tc1 row2;                  * Jump to bypass phase when tc1 reaches end of count
            cwer peak_on0 tc2 row3;                 * Jump to peak_on when tc2 reaches end of count
            cwer peak_off0 ocur row4;               * Jump to peak_off when current is over threshold
            stf high b0;                            * set flag0 high to release the DC-DC converter idle mode

peak_on0:   stos on off on;                         * Turn VBAT on, BOOST off, LS on
            wait row124;                            * Wait for one of the previously defined conditions

peak_off0:  ldcd rst ofs keep keep Tpeak_off c2;    * Load in the counter 2 the length of the peak_off phase
            stos off off on;                        * Turn VBAT off, BOOST off, LS on
            wait row123;                            * Wait for one of the previously defined conditions
            
* ### Bypass phase ###
bypass0:    ldcd rst ofs keep keep Tbypass c3;      * Load in the counter 3 the length of the off_phase phase
            stos off off off;                       * Turn VBAT off, BOOST off, LS off
            cwer hold0 tc3 row4;                    * Jump to hold when tc3 reaches end of count
            wait row14;                             * Wait for one of the previously defined conditions
            
* ### Hold phase on Vbat ###    
hold0:      ldcd rst _ofs keep keep Thold_tot c1;   * Load the length of the total hold phase in counter 2 
            load Ihold dac_sssc _ofs;               * Load the hold current threshold in the DAC
            cwer eoinj0 tc1 row2;                   * Jump to eoinj phase when tc1 reaches end of count
            cwer hold_on0 tc2 row3;                 * Jump to hold_on when tc2 reaches end of count
            cwer hold_off0 ocur row4;               * Jump to hold_off when current is over threshold

hold_on0:   stos on off on;                         * Turn VBAT on, BOOST off, LS on
            wait row124;                            * Wait for one of the previously defined conditions

hold_off0:  ldcd rst _ofs keep keep Thold_off c2;   * Load the length of the hold_off phase in counter 1
            stos off off on;                        * Turn VBAT off, BOOST off, LS on
            wait row123;                            * Wait for one of the previously defined conditions

* ### End of injection phase ###
eoinj0:     stos off off off;                       * Turn VBAT off, BOOST off, LS off
            stf high b0;                            * set flag0 to high to release the DC-DC converter idle mode
            jmpf jr2;                               * Jump back to idle phase

* ### End of Channel 1 - uCore0 code ###            

*********************************************************************************

* ### Channel 1 - uCore1 controls the injectors 3 and 4 ###

* ### Variables declaration  ###

* Note: The data that defines the profiles are shared between the two microcores.

* ### Initialization phase ###
init1:      stgn gain5.8 sssc;                     * Set the gain of the opamp of the current measure block 2
            ldjr1 eoinj1;                           * Load the eoinj line label Code RAM address into the register jr1 
            ldjr2 idle1;                            * Load the idle line label Code RAM address into the register jr2
            cwef jr1 _start row1;                   * If the start signal goes low, go to eoinj phase
            

* ### Idle phase- the uPC loops here until start signal is present ###              
idle1:      joslr inj3_start start3;                * Perform an actuation on inj3 if start 3 (only) is active
            joslr inj4_start start4;                * Perform an actuation on inj4 if start 4 (only) is active
            jmpf jr1;                               * If more than 1 start active at the same time(or none), no actuation

* ### Shortcuts definition per the injector to be actuated ###
inj3_start: dfsct hs3 hs4 ls3;                      * Set the 3 shortcuts: VBAT, VBOOST, LS
            jmpr boost1;                            * Jump to launch phase

inj4_start: dfsct hs3 hs4 ls4;                      * Set the 3 shortcuts: VBAT, VBOOST, LS
            jmpr boost1;                            * Jump to launch phase

* ### Launch phase enable boost ###
boost1:     load Iboost dac_sssc _ofs;              * Load the boost phase current threshold in the current DAC
            cwer peak1 ocur row2;                   * Jump to peak phase when current is over threshold
            stf low b0;                             * set flag0 low to force the DC-DC converter in idle mode
            stos off on on;                         * Turn VBAT off, BOOST on, LS on
            wait row12;                             * Wait for one of the previously defined conditions

* ### Peak phase continue on Vbat ###
peak1:      ldcd rst _ofs keep keep Tpeak_tot c1;   * Load the length of the total peak phase in counter 1
            load Ipeak dac_sssc _ofs;               * Load the peak current threshold in the current DAC
            cwer bypass1 tc1 row2;                  * Jump to bypass phase when tc1 reaches end of count
            cwer peak_on1 tc2 row3;                 * Jump to peak_on when tc2 reaches end of count
            cwer peak_off1 ocur row4;               * Jump to peak_off when current is over threshold
            stf high b0;                            * set flag0 high to release the DC-DC converter idle mode
            
peak_on1:   stos on off on;                         * Turn VBAT on, BOOST off, LS on
            wait row124;                            * Wait for one of the previously defined conditions

peak_off1:  ldcd rst ofs keep keep Tpeak_off c2;    * Load in the counter 2 the length of the peak_off phase
            stos off off on;                        * Turn VBAT off, BOOST off, LS on
            wait row123;                            * Wait for one of the previously defined conditions
            
* ### Bypass phase ###
bypass1:    ldcd rst ofs keep keep Tbypass c3;      * Load in the counter 3 the length of the off_phase phase
            stos off off off;                       * Turn VBAT off, BOOST off, LS off
            cwer hold1 tc3 row4;                    * Jump to hold when tc3 reaches end of count
            wait row14;                             * Wait for one of the previously defined conditions
            
* ### Hold phase on Vbat ###    
hold1:      ldcd rst _ofs keep keep Thold_tot c1;   * Load the length of the total hold phase in counter 2 
            load Ihold dac_sssc _ofs;               * Load the hold current threshold in the DAC
            cwer eoinj1 tc1 row2;                   * Jump to eoinj phase when tc1 reaches end of count
            cwer hold_on1 tc2 row3;                 * Jump to hold_on when tc2 reaches end of count
            cwer hold_off1 ocur row4;               * Jump to hold_off when current is over threshold

hold_on1:   stos on off on;                         * Turn VBAT on, BOOST off, LS on
            wait row124;                            * Wait for one of the previously defined conditions

hold_off1:  ldcd rst _ofs keep keep Thold_off c2;   * Load the length of the hold_off phase in counter 1
            stos off off on;                        * Turn VBAT off, BOOST off, LS on
            wait row123;                            * Wait for one of the previously defined conditions

* ### End of injection phase ###
eoinj1:     stos off off off;                       * Turn VBAT off, BOOST off, LS off
            stf high b0;                            * set flag0 to high to release the DC-DC converter idle mode
            jmpf jr2;                               * Jump back to idle phase

* ### End of Channel 1 - uCore1 code ###