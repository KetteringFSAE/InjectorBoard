/* ###################################################################
**     This component module is generated by Processor Expert. Do not modify it.
**     Filename    : TU1.h
**     Project     : ProcessorExpert
**     Processor   : MKL25Z128VLK4
**     Component   : TimerUnit_LDD
**     Version     : Component 01.164, Driver 01.11, CPU db: 3.00.000
**     Compiler    : GNU C Compiler
**     Date/Time   : 2017-02-22, 20:38, # CodeGen: 25
**     Abstract    :
**          This TimerUnit component provides a low level API for unified hardware access across
**          various timer devices using the Prescaler-Counter-Compare-Capture timer structure.
**     Settings    :
**          Component name                                 : TU1
**          Module name                                    : TPM0
**          Counter                                        : TPM0_CNT
**          Counter direction                              : Up
**          Counter width                                  : 16 bits
**          Value type                                     : uint16_t
**          Input clock source                             : Internal
**            Counter frequency                            : Auto select
**          Counter restart                                : On-match
**            Period device                                : TPM0_MOD
**            Period                                       : 1 �s
**            Interrupt                                    : Disabled
**          Channel list                                   : 1
**            Channel 0                                    : 
**              Mode                                       : Compare
**                Compare                                  : TPM0_C2V
**                Offset                                   : 0.5 �s
**                Output on compare                        : Set
**                  Output on overrun                      : Clear
**                  Initial state                          : Low
**                  Output pin                             : PTC3/LLWU_P7/UART1_RX/TPM0_CH2/CLKOUTa
**                  Output pin signal                      : 
**                Interrupt                                : Disabled
**          Initialization                                 : 
**            Enabled in init. code                        : yes
**            Auto initialization                          : no
**            Event mask                                   : 
**              OnCounterRestart                           : Disabled
**              OnChannel0                                 : Disabled
**              OnChannel1                                 : Disabled
**              OnChannel2                                 : Disabled
**              OnChannel3                                 : Disabled
**              OnChannel4                                 : Disabled
**              OnChannel5                                 : Disabled
**              OnChannel6                                 : Disabled
**              OnChannel7                                 : Disabled
**          CPU clock/configuration selection              : 
**            Clock configuration 0                        : This component enabled
**            Clock configuration 1                        : This component disabled
**            Clock configuration 2                        : This component disabled
**            Clock configuration 3                        : This component disabled
**            Clock configuration 4                        : This component disabled
**            Clock configuration 5                        : This component disabled
**            Clock configuration 6                        : This component disabled
**            Clock configuration 7                        : This component disabled
**     Contents    :
**         Init               - LDD_TDeviceData* TU1_Init(LDD_TUserData *UserDataPtr);
**         GetPeriodTicks     - LDD_TError TU1_GetPeriodTicks(LDD_TDeviceData *DeviceDataPtr, TU1_TValueType...
**         GetCounterValue    - TU1_TValueType TU1_GetCounterValue(LDD_TDeviceData *DeviceDataPtr);
**         SetOffsetTicks     - LDD_TError TU1_SetOffsetTicks(LDD_TDeviceData *DeviceDataPtr, uint8_t...
**         GetOffsetTicks     - LDD_TError TU1_GetOffsetTicks(LDD_TDeviceData *DeviceDataPtr, uint8_t...
**         SelectOutputAction - LDD_TError TU1_SelectOutputAction(LDD_TDeviceData *DeviceDataPtr, uint8_t...
**
**     Copyright : 1997 - 2014 Freescale Semiconductor, Inc. 
**     All Rights Reserved.
**     
**     Redistribution and use in source and binary forms, with or without modification,
**     are permitted provided that the following conditions are met:
**     
**     o Redistributions of source code must retain the above copyright notice, this list
**       of conditions and the following disclaimer.
**     
**     o Redistributions in binary form must reproduce the above copyright notice, this
**       list of conditions and the following disclaimer in the documentation and/or
**       other materials provided with the distribution.
**     
**     o Neither the name of Freescale Semiconductor, Inc. nor the names of its
**       contributors may be used to endorse or promote products derived from this
**       software without specific prior written permission.
**     
**     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
**     ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
**     WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
**     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
**     ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
**     (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
**     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
**     ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
**     (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
**     SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**     
**     http: www.freescale.com
**     mail: support@freescale.com
** ###################################################################*/
/*!
** @file TU1.h
** @version 01.11
** @brief
**          This TimerUnit component provides a low level API for unified hardware access across
**          various timer devices using the Prescaler-Counter-Compare-Capture timer structure.
*/         
/*!
**  @addtogroup TU1_module TU1 module documentation
**  @{
*/         

#ifndef __TU1_H
#define __TU1_H

/* MODULE TU1. */

/* Include shared modules, which are used for whole project */
#include "PE_Types.h"
#include "PE_Error.h"
#include "PE_Const.h"
#include "IO_Map.h"
/* Include inherited beans */

#include "TPM_PDD.h"
#include "Cpu.h"

#ifdef __cplusplus
extern "C" {
#endif 


#ifndef __BWUserType_TU1_TValueType
#define __BWUserType_TU1_TValueType
  typedef uint16_t TU1_TValueType ;    /* Type for data parameters of methods */
#endif
#define TU1_CNT_INP_FREQ_U_0 0x02DC6C00UL /* Counter input frequency in Hz */
#define TU1_CNT_INP_FREQ_R_0 48000768.0122882F /* Counter input frequency in Hz */
#define TU1_CNT_INP_FREQ_COUNT 0U      /* Count of predefined counter input frequencies */
#define TU1_PERIOD_TICKS   0x30UL      /* Initialization value of period in 'counter ticks' */
#define TU1_NUMBER_OF_CHANNELS 0x01U   /* Count of predefined channels */
#define TU1_COUNTER_WIDTH  0x10U       /* Counter width in bits  */
#define TU1_COUNTER_DIR    DIR_UP      /* Direction of counting */
#define TU1_OFFSET_0_TICKS 0x18ul      /* Initialization value of offset as 'counter ticks' for channel 0 */
/*! Peripheral base address of a device allocated by the component. This constant can be used directly in PDD macros. */
#define TU1_PRPH_BASE_ADDRESS  0x40038000U
  
/* Methods configuration constants - generated for all enabled component's methods */
#define TU1_Init_METHOD_ENABLED        /*!< Init method of the component TU1 is enabled (generated) */
#define TU1_GetPeriodTicks_METHOD_ENABLED /*!< GetPeriodTicks method of the component TU1 is enabled (generated) */
#define TU1_GetCounterValue_METHOD_ENABLED /*!< GetCounterValue method of the component TU1 is enabled (generated) */
#define TU1_SetOffsetTicks_METHOD_ENABLED /*!< SetOffsetTicks method of the component TU1 is enabled (generated) */
#define TU1_GetOffsetTicks_METHOD_ENABLED /*!< GetOffsetTicks method of the component TU1 is enabled (generated) */
#define TU1_SelectOutputAction_METHOD_ENABLED /*!< SelectOutputAction method of the component TU1 is enabled (generated) */

/* Events configuration constants - generated for all enabled component's events */



/*
** ===================================================================
**     Method      :  TU1_Init (component TimerUnit_LDD)
*/
/*!
**     @brief
**         Initializes the device. Allocates memory for the device data
**         structure, allocates interrupt vectors and sets interrupt
**         priority, sets pin routing, sets timing, etc. If the
**         property ["Enable in init. code"] is set to "yes" value then
**         the device is also enabled (see the description of the
**         [Enable] method). In this case the [Enable] method is not
**         necessary and needn't to be generated. This method can be
**         called only once. Before the second call of Init the [Deinit]
**         must be called first.
**     @param
**         UserDataPtr     - Pointer to the user or
**                           RTOS specific data. This pointer will be
**                           passed as an event or callback parameter.
**     @return
**                         - Pointer to the dynamically allocated private
**                           structure or NULL if there was an error.
*/
/* ===================================================================*/
LDD_TDeviceData* TU1_Init(LDD_TUserData *UserDataPtr);

/*
** ===================================================================
**     Method      :  TU1_GetPeriodTicks (component TimerUnit_LDD)
*/
/*!
**     @brief
**         Returns the number of counter ticks before re-initialization.
**         See also method [SetPeriodTicks]. This method is available
**         only if the property ["Counter restart"] is switched to
**         'on-match' value.
**     @param
**         DeviceDataPtr   - Device data structure
**                           pointer returned by [Init] method.
**     @param
**         TicksPtr        - Pointer to return value of the
**                           number of counter ticks before
**                           re-initialization
**     @return
**                         - Error code, possible codes:
**                           ERR_OK - OK 
**                           ERR_SPEED - The component does not work in
**                           the active clock configuration
*/
/* ===================================================================*/
LDD_TError TU1_GetPeriodTicks(LDD_TDeviceData *DeviceDataPtr, TU1_TValueType *TicksPtr);

/*
** ===================================================================
**     Method      :  TU1_GetCounterValue (component TimerUnit_LDD)
*/
/*!
**     @brief
**         Returns the content of counter register. This method can be
**         used both if counter is enabled and if counter is disabled.
**         The method is not available if HW doesn't allow reading of
**         the counter.
**     @param
**         DeviceDataPtr   - Device data structure
**                           pointer returned by [Init] method.
**     @return
**                         - Counter value (number of counted ticks).
*/
/* ===================================================================*/
TU1_TValueType TU1_GetCounterValue(LDD_TDeviceData *DeviceDataPtr);

/*
** ===================================================================
**     Method      :  TU1_SetOffsetTicks (component TimerUnit_LDD)
*/
/*!
**     @brief
**         Sets the new offset value to channel specified by the
**         parameter ChannelIdx. It is user responsibility to use value
**         below selected period. This method is available when at
**         least one channel is configured.
**     @param
**         DeviceDataPtr   - Device data structure
**                           pointer returned by [Init] method.
**     @param
**         ChannelIdx      - Index of the component
**                           channel.
**     @param
**         Ticks           - Number of counter ticks to compare
**                           match.
**     @return
**                         - Error code, possible codes:
**                           ERR_OK - OK 
**                           ERR_PARAM_INDEX - ChannelIdx parameter is
**                           out of possible range.
**                           ERR_NOTAVAIL -  The compare mode is not
**                           selected for selected channel
**                           ERR_PARAM_TICKS - Ticks parameter is out of
**                           possible range.
**                           ERR_SPEED - The component does not work in
**                           the active clock configuration
*/
/* ===================================================================*/
LDD_TError TU1_SetOffsetTicks(LDD_TDeviceData *DeviceDataPtr, uint8_t ChannelIdx, TU1_TValueType Ticks);

/*
** ===================================================================
**     Method      :  TU1_GetOffsetTicks (component TimerUnit_LDD)
*/
/*!
**     @brief
**         Returns the number of counter ticks to compare match channel
**         specified by the parameter ChannelIdx. See also method
**         [SetOffsetTicks]. This method is available when at least one
**         channel is configured.
**     @param
**         DeviceDataPtr   - Device data structure
**                           pointer returned by [Init] method.
**     @param
**         ChannelIdx      - Index of the component
**                           channel.
**     @param
**         TicksPtr        - Pointer to return value of the
**                           number of counter ticks to compare match.
**     @return
**                         - Error code, possible codes:
**                           ERR_OK - OK 
**                           ERR_PARAM_INDEX - ChannelIdx parameter is
**                           out of possible range.
**                           ERR_NOTAVAIL -  The compare mode is not
**                           selected for selected channel.
**                           ERR_SPEED - The component does not work in
**                           the active clock configuration
*/
/* ===================================================================*/
LDD_TError TU1_GetOffsetTicks(LDD_TDeviceData *DeviceDataPtr, uint8_t ChannelIdx, TU1_TValueType *TicksPtr);

/*
** ===================================================================
**     Method      :  TU1_SelectOutputAction (component TimerUnit_LDD)
*/
/*!
**     @brief
**         Sets the type of compare match and counter overflow action
**         on channel output. This method is available when at least
**         one channel is configured.
**     @param
**         DeviceDataPtr   - Device data structure
**                           pointer returned by [Init] method.
**     @param
**         ChannelIdx      - Index of the component
**                           channel.
**     @param
**         CompareAction   - Select output action
**                           on compare match
**     @param
**         CounterAction   - Select output action
**                           on counter overflow
**     @return
**                         - Error code, possible codes:
**                           ERR_OK - OK
**                           ERR_PARAM_INDEX - ChannelIdx parameter is
**                           out of possible range
**                           ERR_NOTAVAIL -  Action is not possible on
**                           selected channel or counter. Supported
**                           combinations are HW specific.
**                           ERR_SPEED - The component does not work in
**                           the active clock configuration
*/
/* ===================================================================*/
LDD_TError TU1_SelectOutputAction(LDD_TDeviceData *DeviceDataPtr, uint8_t ChannelIdx, LDD_TimerUnit_TOutAction CompareAction, LDD_TimerUnit_TOutAction CounterAction);

/* END TU1. */

#ifdef __cplusplus
}  /* extern "C" */
#endif 

#endif
/* ifndef __TU1_H */
/*!
** @}
*/
/*
** ###################################################################
**
**     This file was created by Processor Expert 10.3 [05.09]
**     for the Freescale Kinetis series of microcontrollers.
**
** ###################################################################
*/
