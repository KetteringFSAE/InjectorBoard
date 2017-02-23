/*******************************************************************************
* Example Code
*
* Copyright(C) 2017 NXP Semiconductors
* NXP Semiconductors Confidential and Proprietary
*
* Software that is described herein is for illustrative purposes only
* which provides customers with programming information regarding the
* NXP products.  This software is supplied "AS IS" without any warranties
* of any kind, and NXP Semiconductors and its licensor disclaim any and
* all warranties, express or implied, including all implied warranties of
* merchantability, fitness for a particular purpose and non-infringement of
* intellectual property rights.  NXP Semiconductors assumes no responsibility
* or liability for the use of the software, conveys no license or rights
* under any patent, copyright, mask work right, or any other intellectual
* property rights in or to any products. NXP Semiconductors reserves the
* right to make changes in the software without notification. NXP
* Semiconductors also makes no representation or warranty that such
* application will be suitable for the specified use without further testing
* or modification.
*
* IN NO EVENT WILL NXP SEMICONDUCTORS BE LIABLE, WHETHER IN CONTRACT, 
* TORT, OR OTHERWISE, FOR ANY INCIDENTAL, SPECIAL, INDIRECT, CONSEQUENTIAL 
* OR PUNITIVE DAMAGES, INCLUDING, BUT NOT LIMITED TO, DAMAGES FOR ANY 
* LOSS OF USE, LOSS OF TIME, INCONVENIENCE, COMMERCIAL LOSS, OR LOST 
* PROFITS, SAVINGS, OR REVENUES, TO THE FULL EXTENT SUCH MAY BE DISCLAIMED  
* BY LAW. NXP SEMICONDUCTOR’S TOTAL LIABILITY FOR ALL COSTS, DAMAGES, 
* CLAIMS, OR LOSSES WHATSOEVER ARISING OUT OF OR IN CONNECTION WITH THE 
* SOFTWARE IS LIMITED TO THE AGGREGATE AMOUNT PAID BY YOU TO NXP SEMICONDUCTORS
* IN CONNECTION WITH THE SOFTWARE TO WHICH LOSSES OR DAMAGES ARE CLAIMED.
*
* Permission to use, copy, modify, and distribute this software and its
* documentation is hereby granted, under NXP Semiconductors' and its
* licensor's relevant copyrights in the software, without fee, provided
* that it is used in conjunction with NXP Semiconductors devices.  This
* copyright, permission, and disclaimer notice must appear in all copies
* of this code.
*******************************************************************************/

/*
 * MC33816_dram.h
 *
 *  DRAM Header File
 *
 */

#ifndef MC33816_DRAM_H_
#define MC33816_DRAM_H_

// DRAM 1 Parameter Addresses
#define MC33816_D1_IBoost  0x00;
#define MC33816_D1_IPeak  0x01;
#define MC33816_D1_IHold  0x02;
#define MC33816_D1_TPeak_Off  0x03;
#define MC33816_D1_TPeak_Tot  0x04;
#define MC33816_D1_TBypass  0x05;
#define MC33816_D1_THold_Off  0x06;
#define MC33816_D1_THold_Tot  0x07;

// DRAM 2 Parameter Addresses
#define MC33816_D2_VBoost_High  0x40;
#define MC33816_D2_VBoost_Low  0x41;
#define MC33816_D2_ISense4_High  0x42;
#define MC33816_D2_ISense4_Low  0x43;

#endif /* MC33816_DRAM_H_ */
