################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/com.c \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/common.c \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/flash_if.c \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/fw_update_app.c \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/main.c \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/se_user_code.c \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/stm32wbxx_it.c \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/test_protections.c \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/ymodem.c 

OBJS += \
./Application/User/com.o \
./Application/User/common.o \
./Application/User/flash_if.o \
./Application/User/fw_update_app.o \
./Application/User/main.o \
./Application/User/se_user_code.o \
./Application/User/stm32wbxx_it.o \
./Application/User/test_protections.o \
./Application/User/ymodem.o 

C_DEPS += \
./Application/User/com.d \
./Application/User/common.d \
./Application/User/flash_if.d \
./Application/User/fw_update_app.d \
./Application/User/main.d \
./Application/User/se_user_code.d \
./Application/User/stm32wbxx_it.d \
./Application/User/test_protections.d \
./Application/User/ymodem.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/com.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/com.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../2_Images_SECoreBin/Inc -I../../../../2_Images_SBSFU/SBSFU/App -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/User/com.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/common.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/common.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../2_Images_SECoreBin/Inc -I../../../../2_Images_SBSFU/SBSFU/App -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/User/common.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/flash_if.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/flash_if.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../2_Images_SECoreBin/Inc -I../../../../2_Images_SBSFU/SBSFU/App -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/User/flash_if.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/fw_update_app.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/fw_update_app.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../2_Images_SECoreBin/Inc -I../../../../2_Images_SBSFU/SBSFU/App -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/User/fw_update_app.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/main.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/main.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../2_Images_SECoreBin/Inc -I../../../../2_Images_SBSFU/SBSFU/App -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/User/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/se_user_code.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/se_user_code.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../2_Images_SECoreBin/Inc -I../../../../2_Images_SBSFU/SBSFU/App -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/User/se_user_code.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32wbxx_it.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/stm32wbxx_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../2_Images_SECoreBin/Inc -I../../../../2_Images_SBSFU/SBSFU/App -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/User/stm32wbxx_it.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/test_protections.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/test_protections.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../2_Images_SECoreBin/Inc -I../../../../2_Images_SBSFU/SBSFU/App -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/User/test_protections.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/ymodem.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/ymodem.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../2_Images_SECoreBin/Inc -I../../../../2_Images_SBSFU/SBSFU/App -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/User/ymodem.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

