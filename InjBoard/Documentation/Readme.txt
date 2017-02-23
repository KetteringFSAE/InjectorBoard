******************************************************************************
******************* Processor Expert Demonstration Project *******************
******************************************************************************

Project: I2C_RGB

Short description: RGB LED is dimmed in dependence on accelerometer tilt.

Target platforms: FRDM-KL25Z


Function Description
====================
External accelerometer MMA8451Q is used to meassure tilt of the Freedom Board.
PWM is used to dimm RGB LED in dependence on the board tilt. Moving the board
cause changing the LED colors. 
Comments and test results are sent to CsIO1 (ConsoleIO) through
OpenSDA virtual serial port.
RS232 settings: 38400baud rate, 8-bit, 1-stop bit, no parity.

Component brief description
===========================
PWMTimerRG(TimerUnit_LDD) - Timer to generate the PWM pulses for red and green LED.
PWMTimerB (TimerUnit_LDD) - Timer to generate the PWM pulses for blue LED.
I2C (I2C_LDD) - I2C bus to communicate with accelerometer (MMA8451Q).
CsIO1 (ConsoleIO) - OpenSDA virtual serial port

Required Hardware and Settings
==============================
FRDM-KL25Z board

Building The Project
====================
Build the project usual way in CodeWarrior.
No special settings are required.

Running The Project
===================
Run the project usual way. 

*** End Of File ***
