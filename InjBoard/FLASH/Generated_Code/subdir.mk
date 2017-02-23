################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Generated_Code/CSBit.c" \
"../Generated_Code/Cpu.c" \
"../Generated_Code/CsIO1.c" \
"../Generated_Code/GPIO1.c" \
"../Generated_Code/IO1.c" \
"../Generated_Code/LEDGreen.c" \
"../Generated_Code/LEDRed.c" \
"../Generated_Code/PE_LDD.c" \
"../Generated_Code/PWM1.c" \
"../Generated_Code/TU1.c" \
"../Generated_Code/Vectors.c" \

C_SRCS += \
../Generated_Code/CSBit.c \
../Generated_Code/Cpu.c \
../Generated_Code/CsIO1.c \
../Generated_Code/GPIO1.c \
../Generated_Code/IO1.c \
../Generated_Code/LEDGreen.c \
../Generated_Code/LEDRed.c \
../Generated_Code/PE_LDD.c \
../Generated_Code/PWM1.c \
../Generated_Code/TU1.c \
../Generated_Code/Vectors.c \

OBJS += \
./Generated_Code/CSBit.o \
./Generated_Code/Cpu.o \
./Generated_Code/CsIO1.o \
./Generated_Code/GPIO1.o \
./Generated_Code/IO1.o \
./Generated_Code/LEDGreen.o \
./Generated_Code/LEDRed.o \
./Generated_Code/PE_LDD.o \
./Generated_Code/PWM1.o \
./Generated_Code/TU1.o \
./Generated_Code/Vectors.o \

C_DEPS += \
./Generated_Code/CSBit.d \
./Generated_Code/Cpu.d \
./Generated_Code/CsIO1.d \
./Generated_Code/GPIO1.d \
./Generated_Code/IO1.d \
./Generated_Code/LEDGreen.d \
./Generated_Code/LEDRed.d \
./Generated_Code/PE_LDD.d \
./Generated_Code/PWM1.d \
./Generated_Code/TU1.d \
./Generated_Code/Vectors.d \

OBJS_QUOTED += \
"./Generated_Code/CSBit.o" \
"./Generated_Code/Cpu.o" \
"./Generated_Code/CsIO1.o" \
"./Generated_Code/GPIO1.o" \
"./Generated_Code/IO1.o" \
"./Generated_Code/LEDGreen.o" \
"./Generated_Code/LEDRed.o" \
"./Generated_Code/PE_LDD.o" \
"./Generated_Code/PWM1.o" \
"./Generated_Code/TU1.o" \
"./Generated_Code/Vectors.o" \

C_DEPS_QUOTED += \
"./Generated_Code/CSBit.d" \
"./Generated_Code/Cpu.d" \
"./Generated_Code/CsIO1.d" \
"./Generated_Code/GPIO1.d" \
"./Generated_Code/IO1.d" \
"./Generated_Code/LEDGreen.d" \
"./Generated_Code/LEDRed.d" \
"./Generated_Code/PE_LDD.d" \
"./Generated_Code/PWM1.d" \
"./Generated_Code/TU1.d" \
"./Generated_Code/Vectors.d" \

OBJS_OS_FORMAT += \
./Generated_Code/CSBit.o \
./Generated_Code/Cpu.o \
./Generated_Code/CsIO1.o \
./Generated_Code/GPIO1.o \
./Generated_Code/IO1.o \
./Generated_Code/LEDGreen.o \
./Generated_Code/LEDRed.o \
./Generated_Code/PE_LDD.o \
./Generated_Code/PWM1.o \
./Generated_Code/TU1.o \
./Generated_Code/Vectors.o \


# Each subdirectory must supply rules for building sources it contributes
Generated_Code/CSBit.o: ../Generated_Code/CSBit.c
	@echo 'Building file: $<'
	@echo 'Executing target #8 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/CSBit.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/CSBit.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/Cpu.o: ../Generated_Code/Cpu.c
	@echo 'Building file: $<'
	@echo 'Executing target #9 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/Cpu.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/Cpu.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/CsIO1.o: ../Generated_Code/CsIO1.c
	@echo 'Building file: $<'
	@echo 'Executing target #10 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/CsIO1.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/CsIO1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/GPIO1.o: ../Generated_Code/GPIO1.c
	@echo 'Building file: $<'
	@echo 'Executing target #11 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/GPIO1.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/GPIO1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/IO1.o: ../Generated_Code/IO1.c
	@echo 'Building file: $<'
	@echo 'Executing target #12 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/IO1.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/IO1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/LEDGreen.o: ../Generated_Code/LEDGreen.c
	@echo 'Building file: $<'
	@echo 'Executing target #13 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/LEDGreen.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/LEDGreen.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/LEDRed.o: ../Generated_Code/LEDRed.c
	@echo 'Building file: $<'
	@echo 'Executing target #14 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/LEDRed.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/LEDRed.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/PE_LDD.o: ../Generated_Code/PE_LDD.c
	@echo 'Building file: $<'
	@echo 'Executing target #15 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/PE_LDD.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/PE_LDD.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/PWM1.o: ../Generated_Code/PWM1.c
	@echo 'Building file: $<'
	@echo 'Executing target #16 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/PWM1.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/PWM1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/TU1.o: ../Generated_Code/TU1.c
	@echo 'Building file: $<'
	@echo 'Executing target #17 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/TU1.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/TU1.o"
	@echo 'Finished building: $<'
	@echo ' '

Generated_Code/Vectors.o: ../Generated_Code/Vectors.c
	@echo 'Building file: $<'
	@echo 'Executing target #18 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Generated_Code/Vectors.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Generated_Code/Vectors.o"
	@echo 'Finished building: $<'
	@echo ' '


