################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/otto/Documentos/repos/stm32wb55LoRaFuota/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/SBSFU/Target/sfu_low_level.c \
/home/otto/Documentos/repos/stm32wb55LoRaFuota/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/SBSFU/Target/sfu_low_level_flash.c \
/home/otto/Documentos/repos/stm32wb55LoRaFuota/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/SBSFU/Target/sfu_low_level_flash_ext.c \
/home/otto/Documentos/repos/stm32wb55LoRaFuota/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/SBSFU/Target/sfu_low_level_flash_int.c \
/home/otto/Documentos/repos/stm32wb55LoRaFuota/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/SBSFU/Target/sfu_low_level_security.c 

OBJS += \
./Application/SBSFU/Target/sfu_low_level.o \
./Application/SBSFU/Target/sfu_low_level_flash.o \
./Application/SBSFU/Target/sfu_low_level_flash_ext.o \
./Application/SBSFU/Target/sfu_low_level_flash_int.o \
./Application/SBSFU/Target/sfu_low_level_security.o 

C_DEPS += \
./Application/SBSFU/Target/sfu_low_level.d \
./Application/SBSFU/Target/sfu_low_level_flash.d \
./Application/SBSFU/Target/sfu_low_level_flash_ext.d \
./Application/SBSFU/Target/sfu_low_level_flash_int.d \
./Application/SBSFU/Target/sfu_low_level_security.d 


# Each subdirectory must supply rules for building sources it contributes
Application/SBSFU/Target/sfu_low_level.o: /home/otto/Documentos/repos/stm32wb55LoRaFuota/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/SBSFU/Target/sfu_low_level.c Application/SBSFU/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -DCKS_ENABLED -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../Core/Inc -I../../../SBSFU/App -I../../../SBSFU/Target -I../../../../2_Images_SECoreBin/Inc -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Interface -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/SBSFU/Target/sfu_low_level.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/SBSFU/Target/sfu_low_level_flash.o: /home/otto/Documentos/repos/stm32wb55LoRaFuota/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/SBSFU/Target/sfu_low_level_flash.c Application/SBSFU/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -DCKS_ENABLED -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../Core/Inc -I../../../SBSFU/App -I../../../SBSFU/Target -I../../../../2_Images_SECoreBin/Inc -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Interface -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/SBSFU/Target/sfu_low_level_flash.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/SBSFU/Target/sfu_low_level_flash_ext.o: /home/otto/Documentos/repos/stm32wb55LoRaFuota/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/SBSFU/Target/sfu_low_level_flash_ext.c Application/SBSFU/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -DCKS_ENABLED -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../Core/Inc -I../../../SBSFU/App -I../../../SBSFU/Target -I../../../../2_Images_SECoreBin/Inc -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Interface -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/SBSFU/Target/sfu_low_level_flash_ext.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/SBSFU/Target/sfu_low_level_flash_int.o: /home/otto/Documentos/repos/stm32wb55LoRaFuota/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/SBSFU/Target/sfu_low_level_flash_int.c Application/SBSFU/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -DCKS_ENABLED -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../Core/Inc -I../../../SBSFU/App -I../../../SBSFU/Target -I../../../../2_Images_SECoreBin/Inc -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Interface -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/SBSFU/Target/sfu_low_level_flash_int.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/SBSFU/Target/sfu_low_level_security.o: /home/otto/Documentos/repos/stm32wb55LoRaFuota/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/SBSFU/Target/sfu_low_level_security.c Application/SBSFU/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -DCKS_ENABLED -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../Core/Inc -I../../../SBSFU/App -I../../../SBSFU/Target -I../../../../2_Images_SECoreBin/Inc -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Interface -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/SBSFU/Target/sfu_low_level_security.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

