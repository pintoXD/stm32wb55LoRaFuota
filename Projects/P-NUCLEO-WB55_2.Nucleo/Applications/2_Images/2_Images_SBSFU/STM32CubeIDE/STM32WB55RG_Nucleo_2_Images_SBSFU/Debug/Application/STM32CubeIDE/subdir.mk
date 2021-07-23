################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
/home/otto/Documentos/repos/stm32wb55LoRaFuota/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/STM32CubeIDE/startup_stm32wb55xx_cm4.s 

C_SRCS += \
/home/otto/Documentos/repos/stm32wb55LoRaFuota/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/STM32CubeIDE/SE_CORE_Bin.c \
/home/otto/Documentos/repos/stm32wb55LoRaFuota/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/STM32CubeIDE/syscalls.c 

OBJS += \
./Application/STM32CubeIDE/SE_CORE_Bin.o \
./Application/STM32CubeIDE/startup_stm32wb55xx_cm4.o \
./Application/STM32CubeIDE/syscalls.o 

S_DEPS += \
./Application/STM32CubeIDE/startup_stm32wb55xx_cm4.d 

C_DEPS += \
./Application/STM32CubeIDE/SE_CORE_Bin.d \
./Application/STM32CubeIDE/syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
Application/STM32CubeIDE/SE_CORE_Bin.o: /home/otto/Documentos/repos/stm32wb55LoRaFuota/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/STM32CubeIDE/SE_CORE_Bin.c Application/STM32CubeIDE/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -DCKS_ENABLED -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../Core/Inc -I../../../SBSFU/App -I../../../SBSFU/Target -I../../../../2_Images_SECoreBin/Inc -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Interface -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/STM32CubeIDE/SE_CORE_Bin.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/STM32CubeIDE/startup_stm32wb55xx_cm4.o: /home/otto/Documentos/repos/stm32wb55LoRaFuota/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/STM32CubeIDE/startup_stm32wb55xx_cm4.s Application/STM32CubeIDE/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Application/STM32CubeIDE/startup_stm32wb55xx_cm4.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Application/STM32CubeIDE/syscalls.o: /home/otto/Documentos/repos/stm32wb55LoRaFuota/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/STM32CubeIDE/syscalls.c Application/STM32CubeIDE/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -DCKS_ENABLED -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../Core/Inc -I../../../SBSFU/App -I../../../SBSFU/Target -I../../../../2_Images_SECoreBin/Inc -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Interface -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/STM32CubeIDE/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

