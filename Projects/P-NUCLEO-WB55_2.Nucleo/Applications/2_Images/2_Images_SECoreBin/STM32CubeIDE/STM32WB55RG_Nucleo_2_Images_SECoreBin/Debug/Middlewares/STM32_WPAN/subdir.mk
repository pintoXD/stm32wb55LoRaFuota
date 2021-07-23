################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/STM32_WPAN/shci.c \
../Middlewares/STM32_WPAN/shci_tl.c \
../Middlewares/STM32_WPAN/shci_tl_if.c \
../Middlewares/STM32_WPAN/stm_list.c \
../Middlewares/STM32_WPAN/tl_mbox.c 

OBJS += \
./Middlewares/STM32_WPAN/shci.o \
./Middlewares/STM32_WPAN/shci_tl.o \
./Middlewares/STM32_WPAN/shci_tl_if.o \
./Middlewares/STM32_WPAN/stm_list.o \
./Middlewares/STM32_WPAN/tl_mbox.o 

C_DEPS += \
./Middlewares/STM32_WPAN/shci.d \
./Middlewares/STM32_WPAN/shci_tl.d \
./Middlewares/STM32_WPAN/shci_tl_if.d \
./Middlewares/STM32_WPAN/stm_list.d \
./Middlewares/STM32_WPAN/tl_mbox.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/STM32_WPAN/shci.o: ../Middlewares/STM32_WPAN/shci.c Middlewares/STM32_WPAN/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -DCKS_ENABLED -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Key -I../../../../2_Images_SBSFU/SBSFU/App -I../../../../2_Images_SBSFU/SBSFU/Target -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Middlewares/ST/STM32_Cryptographic/Fw_Crypto/STM32WB/Inc -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/ST/STM32_WPAN -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../../../../../../../Middlewares/ST/STM32_WPAN/utilities -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Middlewares/STM32_WPAN/shci.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Middlewares/STM32_WPAN/shci_tl.o: ../Middlewares/STM32_WPAN/shci_tl.c Middlewares/STM32_WPAN/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -DCKS_ENABLED -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Key -I../../../../2_Images_SBSFU/SBSFU/App -I../../../../2_Images_SBSFU/SBSFU/Target -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Middlewares/ST/STM32_Cryptographic/Fw_Crypto/STM32WB/Inc -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/ST/STM32_WPAN -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../../../../../../../Middlewares/ST/STM32_WPAN/utilities -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Middlewares/STM32_WPAN/shci_tl.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Middlewares/STM32_WPAN/shci_tl_if.o: ../Middlewares/STM32_WPAN/shci_tl_if.c Middlewares/STM32_WPAN/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -DCKS_ENABLED -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Key -I../../../../2_Images_SBSFU/SBSFU/App -I../../../../2_Images_SBSFU/SBSFU/Target -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Middlewares/ST/STM32_Cryptographic/Fw_Crypto/STM32WB/Inc -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/ST/STM32_WPAN -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../../../../../../../Middlewares/ST/STM32_WPAN/utilities -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Middlewares/STM32_WPAN/shci_tl_if.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Middlewares/STM32_WPAN/stm_list.o: ../Middlewares/STM32_WPAN/stm_list.c Middlewares/STM32_WPAN/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -DCKS_ENABLED -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Key -I../../../../2_Images_SBSFU/SBSFU/App -I../../../../2_Images_SBSFU/SBSFU/Target -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Middlewares/ST/STM32_Cryptographic/Fw_Crypto/STM32WB/Inc -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/ST/STM32_WPAN -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../../../../../../../Middlewares/ST/STM32_WPAN/utilities -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Middlewares/STM32_WPAN/stm_list.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Middlewares/STM32_WPAN/tl_mbox.o: ../Middlewares/STM32_WPAN/tl_mbox.c Middlewares/STM32_WPAN/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -DCKS_ENABLED -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Key -I../../../../2_Images_SBSFU/SBSFU/App -I../../../../2_Images_SBSFU/SBSFU/Target -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Middlewares/ST/STM32_Cryptographic/Fw_Crypto/STM32WB/Inc -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/ST/STM32_WPAN -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../../../../../../../Middlewares/ST/STM32_WPAN/utilities -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Middlewares/STM32_WPAN/tl_mbox.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"

