################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/STM32CubeIDE/startup_stm32wb55xx_cm4.s 

C_SRCS += \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/STM32CubeIDE/syscalls.c 

OBJS += \
./Application/STM32CubeIDE/startup_stm32wb55xx_cm4.o \
./Application/STM32CubeIDE/syscalls.o 

S_DEPS += \
./Application/STM32CubeIDE/startup_stm32wb55xx_cm4.d 

C_DEPS += \
./Application/STM32CubeIDE/syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
Application/STM32CubeIDE/startup_stm32wb55xx_cm4.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/STM32CubeIDE/startup_stm32wb55xx_cm4.s Application/STM32CubeIDE/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Application/STM32CubeIDE/startup_stm32wb55xx_cm4.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Application/STM32CubeIDE/syscalls.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/STM32CubeIDE/syscalls.c Application/STM32CubeIDE/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../2_Images_SECoreBin/Inc -I../../../../2_Images_SBSFU/SBSFU/App -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/STM32CubeIDE/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

