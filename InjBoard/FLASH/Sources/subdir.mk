################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/Events.c" \
"../Sources/MC33816_LoadData.c" \
"../Sources/ProcessorExpert.c" \
"../Sources/functions.c" \
"../Sources/sa_mtb.c" \

C_SRCS += \
../Sources/Events.c \
../Sources/MC33816_LoadData.c \
../Sources/ProcessorExpert.c \
../Sources/functions.c \
../Sources/sa_mtb.c \

OBJS += \
./Sources/Events.o \
./Sources/MC33816_LoadData.o \
./Sources/ProcessorExpert.o \
./Sources/functions.o \
./Sources/sa_mtb.o \

C_DEPS += \
./Sources/Events.d \
./Sources/MC33816_LoadData.d \
./Sources/ProcessorExpert.d \
./Sources/functions.d \
./Sources/sa_mtb.d \

OBJS_QUOTED += \
"./Sources/Events.o" \
"./Sources/MC33816_LoadData.o" \
"./Sources/ProcessorExpert.o" \
"./Sources/functions.o" \
"./Sources/sa_mtb.o" \

C_DEPS_QUOTED += \
"./Sources/Events.d" \
"./Sources/MC33816_LoadData.d" \
"./Sources/ProcessorExpert.d" \
"./Sources/functions.d" \
"./Sources/sa_mtb.d" \

OBJS_OS_FORMAT += \
./Sources/Events.o \
./Sources/MC33816_LoadData.o \
./Sources/ProcessorExpert.o \
./Sources/functions.o \
./Sources/sa_mtb.o \


# Each subdirectory must supply rules for building sources it contributes
Sources/Events.o: ../Sources/Events.c
	@echo 'Building file: $<'
	@echo 'Executing target #1 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/Events.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/Events.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/MC33816_LoadData.o: ../Sources/MC33816_LoadData.c
	@echo 'Building file: $<'
	@echo 'Executing target #2 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/MC33816_LoadData.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/MC33816_LoadData.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/ProcessorExpert.o: ../Sources/ProcessorExpert.c
	@echo 'Building file: $<'
	@echo 'Executing target #3 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/ProcessorExpert.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/ProcessorExpert.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/functions.o: ../Sources/functions.c
	@echo 'Building file: $<'
	@echo 'Executing target #4 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/functions.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/functions.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/sa_mtb.o: ../Sources/sa_mtb.c
	@echo 'Building file: $<'
	@echo 'Executing target #5 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/sa_mtb.args" -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/sa_mtb.o"
	@echo 'Finished building: $<'
	@echo ' '


