################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_gap_aci.c \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_gatt_aci.c \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_hal_aci.c \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_hci_le.c \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_l2cap_aci.c \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Middlewares/ST/STM32_WPAN/ble/core/template/osal.c 

OBJS += \
./Middlewares/STM32_WPAN/ble/core/ble_gap_aci.o \
./Middlewares/STM32_WPAN/ble/core/ble_gatt_aci.o \
./Middlewares/STM32_WPAN/ble/core/ble_hal_aci.o \
./Middlewares/STM32_WPAN/ble/core/ble_hci_le.o \
./Middlewares/STM32_WPAN/ble/core/ble_l2cap_aci.o \
./Middlewares/STM32_WPAN/ble/core/osal.o 

C_DEPS += \
./Middlewares/STM32_WPAN/ble/core/ble_gap_aci.d \
./Middlewares/STM32_WPAN/ble/core/ble_gatt_aci.d \
./Middlewares/STM32_WPAN/ble/core/ble_hal_aci.d \
./Middlewares/STM32_WPAN/ble/core/ble_hci_le.d \
./Middlewares/STM32_WPAN/ble/core/ble_l2cap_aci.d \
./Middlewares/STM32_WPAN/ble/core/osal.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/STM32_WPAN/ble/core/ble_gap_aci.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_gap_aci.c Middlewares/STM32_WPAN/ble/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DUSE_STM32WBXX_NUCLEO -DCORE_CM4 -DSTM32WB55xx -DOTA_SBSFU -c -I../../Core/Inc -I../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../../../../../../Utilities/sequencer -I../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../STM32_WPAN/App -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core -I../../../../../../../Middlewares/ST/STM32_WPAN -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core/template -I../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core/auto -I../../../../../../../Middlewares/ST/STM32_WPAN/utilities -I../../../../../../../Middlewares/ST/STM32_WPAN/ble -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -I../../../2_Images_SBSFU/SBSFU/App -I../../../2_Images_SECoreBin/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/STM32_WPAN/ble/core/ble_gap_aci.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_WPAN/ble/core/ble_gatt_aci.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_gatt_aci.c Middlewares/STM32_WPAN/ble/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DUSE_STM32WBXX_NUCLEO -DCORE_CM4 -DSTM32WB55xx -DOTA_SBSFU -c -I../../Core/Inc -I../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../../../../../../Utilities/sequencer -I../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../STM32_WPAN/App -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core -I../../../../../../../Middlewares/ST/STM32_WPAN -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core/template -I../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core/auto -I../../../../../../../Middlewares/ST/STM32_WPAN/utilities -I../../../../../../../Middlewares/ST/STM32_WPAN/ble -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -I../../../2_Images_SBSFU/SBSFU/App -I../../../2_Images_SECoreBin/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/STM32_WPAN/ble/core/ble_gatt_aci.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_WPAN/ble/core/ble_hal_aci.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_hal_aci.c Middlewares/STM32_WPAN/ble/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DUSE_STM32WBXX_NUCLEO -DCORE_CM4 -DSTM32WB55xx -DOTA_SBSFU -c -I../../Core/Inc -I../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../../../../../../Utilities/sequencer -I../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../STM32_WPAN/App -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core -I../../../../../../../Middlewares/ST/STM32_WPAN -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core/template -I../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core/auto -I../../../../../../../Middlewares/ST/STM32_WPAN/utilities -I../../../../../../../Middlewares/ST/STM32_WPAN/ble -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -I../../../2_Images_SBSFU/SBSFU/App -I../../../2_Images_SECoreBin/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/STM32_WPAN/ble/core/ble_hal_aci.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_WPAN/ble/core/ble_hci_le.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_hci_le.c Middlewares/STM32_WPAN/ble/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DUSE_STM32WBXX_NUCLEO -DCORE_CM4 -DSTM32WB55xx -DOTA_SBSFU -c -I../../Core/Inc -I../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../../../../../../Utilities/sequencer -I../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../STM32_WPAN/App -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core -I../../../../../../../Middlewares/ST/STM32_WPAN -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core/template -I../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core/auto -I../../../../../../../Middlewares/ST/STM32_WPAN/utilities -I../../../../../../../Middlewares/ST/STM32_WPAN/ble -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -I../../../2_Images_SBSFU/SBSFU/App -I../../../2_Images_SECoreBin/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/STM32_WPAN/ble/core/ble_hci_le.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_WPAN/ble/core/ble_l2cap_aci.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Middlewares/ST/STM32_WPAN/ble/core/auto/ble_l2cap_aci.c Middlewares/STM32_WPAN/ble/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DUSE_STM32WBXX_NUCLEO -DCORE_CM4 -DSTM32WB55xx -DOTA_SBSFU -c -I../../Core/Inc -I../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../../../../../../Utilities/sequencer -I../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../STM32_WPAN/App -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core -I../../../../../../../Middlewares/ST/STM32_WPAN -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core/template -I../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core/auto -I../../../../../../../Middlewares/ST/STM32_WPAN/utilities -I../../../../../../../Middlewares/ST/STM32_WPAN/ble -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -I../../../2_Images_SBSFU/SBSFU/App -I../../../2_Images_SECoreBin/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/STM32_WPAN/ble/core/ble_l2cap_aci.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_WPAN/ble/core/osal.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Middlewares/ST/STM32_WPAN/ble/core/template/osal.c Middlewares/STM32_WPAN/ble/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DUSE_STM32WBXX_NUCLEO -DCORE_CM4 -DSTM32WB55xx -DOTA_SBSFU -c -I../../Core/Inc -I../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../../../../../../Utilities/sequencer -I../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../STM32_WPAN/App -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core -I../../../../../../../Middlewares/ST/STM32_WPAN -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core/template -I../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../Middlewares/ST/STM32_WPAN/ble/core/auto -I../../../../../../../Middlewares/ST/STM32_WPAN/utilities -I../../../../../../../Middlewares/ST/STM32_WPAN/ble -I../../../../../../../Drivers/CMSIS/Include -I../../../Linker_Common/STM32CubeIDE -I../../../2_Images_SBSFU/SBSFU/App -I../../../2_Images_SECoreBin/Inc -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/STM32_WPAN/ble/core/osal.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
