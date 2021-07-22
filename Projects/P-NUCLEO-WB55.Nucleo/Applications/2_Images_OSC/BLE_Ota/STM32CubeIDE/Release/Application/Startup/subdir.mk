################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Application/Startup/startup_stm32wb55rgvx.s 

OBJS += \
./Application/Startup/startup_stm32wb55rgvx.o 

S_DEPS += \
./Application/Startup/startup_stm32wb55rgvx.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Startup/startup_stm32wb55rgvx.o: ../Application/Startup/startup_stm32wb55rgvx.s Application/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -c -x assembler-with-cpp -MMD -MP -MF"Application/Startup/startup_stm32wb55rgvx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

