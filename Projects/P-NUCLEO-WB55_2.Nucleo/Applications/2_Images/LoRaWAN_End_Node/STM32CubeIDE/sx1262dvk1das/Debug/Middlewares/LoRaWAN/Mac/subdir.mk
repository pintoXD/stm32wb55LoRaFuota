################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/otto/hd_storage/Downloads/STM32CubeExpansion_LRWAN_V2.0.0/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMac.c \
/home/otto/hd_storage/Downloads/STM32CubeExpansion_LRWAN_V2.0.0/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacAdr.c \
/home/otto/hd_storage/Downloads/STM32CubeExpansion_LRWAN_V2.0.0/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacClassB.c \
/home/otto/hd_storage/Downloads/STM32CubeExpansion_LRWAN_V2.0.0/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacCommands.c \
/home/otto/hd_storage/Downloads/STM32CubeExpansion_LRWAN_V2.0.0/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacConfirmQueue.c \
/home/otto/hd_storage/Downloads/STM32CubeExpansion_LRWAN_V2.0.0/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacCrypto.c \
/home/otto/hd_storage/Downloads/STM32CubeExpansion_LRWAN_V2.0.0/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacParser.c \
/home/otto/hd_storage/Downloads/STM32CubeExpansion_LRWAN_V2.0.0/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacSerializer.c 

OBJS += \
./Middlewares/LoRaWAN/Mac/LoRaMac.o \
./Middlewares/LoRaWAN/Mac/LoRaMacAdr.o \
./Middlewares/LoRaWAN/Mac/LoRaMacClassB.o \
./Middlewares/LoRaWAN/Mac/LoRaMacCommands.o \
./Middlewares/LoRaWAN/Mac/LoRaMacConfirmQueue.o \
./Middlewares/LoRaWAN/Mac/LoRaMacCrypto.o \
./Middlewares/LoRaWAN/Mac/LoRaMacParser.o \
./Middlewares/LoRaWAN/Mac/LoRaMacSerializer.o 

C_DEPS += \
./Middlewares/LoRaWAN/Mac/LoRaMac.d \
./Middlewares/LoRaWAN/Mac/LoRaMacAdr.d \
./Middlewares/LoRaWAN/Mac/LoRaMacClassB.d \
./Middlewares/LoRaWAN/Mac/LoRaMacCommands.d \
./Middlewares/LoRaWAN/Mac/LoRaMacConfirmQueue.d \
./Middlewares/LoRaWAN/Mac/LoRaMacCrypto.d \
./Middlewares/LoRaWAN/Mac/LoRaMacParser.d \
./Middlewares/LoRaWAN/Mac/LoRaMacSerializer.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/LoRaWAN/Mac/LoRaMac.o: /home/otto/hd_storage/Downloads/STM32CubeExpansion_LRWAN_V2.0.0/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMac.c Middlewares/LoRaWAN/Mac/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -DSX1262DVK1DAS -DUSE_HAL_DRIVER -c -I../../../LoRaWAN/App -I../../../LoRaWAN/Target -I../../../Core/Inc -I../../../../../../../../Utilities/misc -I../../../../../../../../Utilities/timer -I../../../../../../../../Utilities/trace/adv_trace -I../../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../../Utilities/sequencer -I../../../../../../../../Drivers/BSP/STM32L4xx_Nucleo -I../../../../../../../../Drivers/BSP/SX1262DVK1DAS -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy/sx126x -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/packages -I../../../../../../../../Drivers/BSP/IKS01A2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/Components/hts221 -I../../../../../../../../Drivers/BSP/Components/lps22hb -I../../../../../../../../Drivers/BSP/Components/lsm6dsl -I../../../../../../../../Drivers/BSP/Components/lsm303agr -I../../../../Linker_Common/STM32CubeIDE -I../../../../2_Images_SECoreBin/Inc -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/LoRaWAN/Mac/LoRaMac.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/LoRaWAN/Mac/LoRaMacAdr.o: /home/otto/hd_storage/Downloads/STM32CubeExpansion_LRWAN_V2.0.0/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacAdr.c Middlewares/LoRaWAN/Mac/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -DSX1262DVK1DAS -DUSE_HAL_DRIVER -c -I../../../LoRaWAN/App -I../../../LoRaWAN/Target -I../../../Core/Inc -I../../../../../../../../Utilities/misc -I../../../../../../../../Utilities/timer -I../../../../../../../../Utilities/trace/adv_trace -I../../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../../Utilities/sequencer -I../../../../../../../../Drivers/BSP/STM32L4xx_Nucleo -I../../../../../../../../Drivers/BSP/SX1262DVK1DAS -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy/sx126x -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/packages -I../../../../../../../../Drivers/BSP/IKS01A2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/Components/hts221 -I../../../../../../../../Drivers/BSP/Components/lps22hb -I../../../../../../../../Drivers/BSP/Components/lsm6dsl -I../../../../../../../../Drivers/BSP/Components/lsm303agr -I../../../../Linker_Common/STM32CubeIDE -I../../../../2_Images_SECoreBin/Inc -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/LoRaWAN/Mac/LoRaMacAdr.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/LoRaWAN/Mac/LoRaMacClassB.o: /home/otto/hd_storage/Downloads/STM32CubeExpansion_LRWAN_V2.0.0/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacClassB.c Middlewares/LoRaWAN/Mac/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -DSX1262DVK1DAS -DUSE_HAL_DRIVER -c -I../../../LoRaWAN/App -I../../../LoRaWAN/Target -I../../../Core/Inc -I../../../../../../../../Utilities/misc -I../../../../../../../../Utilities/timer -I../../../../../../../../Utilities/trace/adv_trace -I../../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../../Utilities/sequencer -I../../../../../../../../Drivers/BSP/STM32L4xx_Nucleo -I../../../../../../../../Drivers/BSP/SX1262DVK1DAS -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy/sx126x -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/packages -I../../../../../../../../Drivers/BSP/IKS01A2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/Components/hts221 -I../../../../../../../../Drivers/BSP/Components/lps22hb -I../../../../../../../../Drivers/BSP/Components/lsm6dsl -I../../../../../../../../Drivers/BSP/Components/lsm303agr -I../../../../Linker_Common/STM32CubeIDE -I../../../../2_Images_SECoreBin/Inc -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/LoRaWAN/Mac/LoRaMacClassB.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/LoRaWAN/Mac/LoRaMacCommands.o: /home/otto/hd_storage/Downloads/STM32CubeExpansion_LRWAN_V2.0.0/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacCommands.c Middlewares/LoRaWAN/Mac/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -DSX1262DVK1DAS -DUSE_HAL_DRIVER -c -I../../../LoRaWAN/App -I../../../LoRaWAN/Target -I../../../Core/Inc -I../../../../../../../../Utilities/misc -I../../../../../../../../Utilities/timer -I../../../../../../../../Utilities/trace/adv_trace -I../../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../../Utilities/sequencer -I../../../../../../../../Drivers/BSP/STM32L4xx_Nucleo -I../../../../../../../../Drivers/BSP/SX1262DVK1DAS -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy/sx126x -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/packages -I../../../../../../../../Drivers/BSP/IKS01A2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/Components/hts221 -I../../../../../../../../Drivers/BSP/Components/lps22hb -I../../../../../../../../Drivers/BSP/Components/lsm6dsl -I../../../../../../../../Drivers/BSP/Components/lsm303agr -I../../../../Linker_Common/STM32CubeIDE -I../../../../2_Images_SECoreBin/Inc -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/LoRaWAN/Mac/LoRaMacCommands.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/LoRaWAN/Mac/LoRaMacConfirmQueue.o: /home/otto/hd_storage/Downloads/STM32CubeExpansion_LRWAN_V2.0.0/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacConfirmQueue.c Middlewares/LoRaWAN/Mac/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -DSX1262DVK1DAS -DUSE_HAL_DRIVER -c -I../../../LoRaWAN/App -I../../../LoRaWAN/Target -I../../../Core/Inc -I../../../../../../../../Utilities/misc -I../../../../../../../../Utilities/timer -I../../../../../../../../Utilities/trace/adv_trace -I../../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../../Utilities/sequencer -I../../../../../../../../Drivers/BSP/STM32L4xx_Nucleo -I../../../../../../../../Drivers/BSP/SX1262DVK1DAS -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy/sx126x -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/packages -I../../../../../../../../Drivers/BSP/IKS01A2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/Components/hts221 -I../../../../../../../../Drivers/BSP/Components/lps22hb -I../../../../../../../../Drivers/BSP/Components/lsm6dsl -I../../../../../../../../Drivers/BSP/Components/lsm303agr -I../../../../Linker_Common/STM32CubeIDE -I../../../../2_Images_SECoreBin/Inc -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/LoRaWAN/Mac/LoRaMacConfirmQueue.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/LoRaWAN/Mac/LoRaMacCrypto.o: /home/otto/hd_storage/Downloads/STM32CubeExpansion_LRWAN_V2.0.0/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacCrypto.c Middlewares/LoRaWAN/Mac/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -DSX1262DVK1DAS -DUSE_HAL_DRIVER -c -I../../../LoRaWAN/App -I../../../LoRaWAN/Target -I../../../Core/Inc -I../../../../../../../../Utilities/misc -I../../../../../../../../Utilities/timer -I../../../../../../../../Utilities/trace/adv_trace -I../../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../../Utilities/sequencer -I../../../../../../../../Drivers/BSP/STM32L4xx_Nucleo -I../../../../../../../../Drivers/BSP/SX1262DVK1DAS -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy/sx126x -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/packages -I../../../../../../../../Drivers/BSP/IKS01A2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/Components/hts221 -I../../../../../../../../Drivers/BSP/Components/lps22hb -I../../../../../../../../Drivers/BSP/Components/lsm6dsl -I../../../../../../../../Drivers/BSP/Components/lsm303agr -I../../../../Linker_Common/STM32CubeIDE -I../../../../2_Images_SECoreBin/Inc -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/LoRaWAN/Mac/LoRaMacCrypto.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/LoRaWAN/Mac/LoRaMacParser.o: /home/otto/hd_storage/Downloads/STM32CubeExpansion_LRWAN_V2.0.0/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacParser.c Middlewares/LoRaWAN/Mac/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -DSX1262DVK1DAS -DUSE_HAL_DRIVER -c -I../../../LoRaWAN/App -I../../../LoRaWAN/Target -I../../../Core/Inc -I../../../../../../../../Utilities/misc -I../../../../../../../../Utilities/timer -I../../../../../../../../Utilities/trace/adv_trace -I../../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../../Utilities/sequencer -I../../../../../../../../Drivers/BSP/STM32L4xx_Nucleo -I../../../../../../../../Drivers/BSP/SX1262DVK1DAS -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy/sx126x -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/packages -I../../../../../../../../Drivers/BSP/IKS01A2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/Components/hts221 -I../../../../../../../../Drivers/BSP/Components/lps22hb -I../../../../../../../../Drivers/BSP/Components/lsm6dsl -I../../../../../../../../Drivers/BSP/Components/lsm303agr -I../../../../Linker_Common/STM32CubeIDE -I../../../../2_Images_SECoreBin/Inc -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/LoRaWAN/Mac/LoRaMacParser.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/LoRaWAN/Mac/LoRaMacSerializer.o: /home/otto/hd_storage/Downloads/STM32CubeExpansion_LRWAN_V2.0.0/Middlewares/Third_Party/LoRaWAN/Mac/LoRaMacSerializer.c Middlewares/LoRaWAN/Mac/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -DSX1262DVK1DAS -DUSE_HAL_DRIVER -c -I../../../LoRaWAN/App -I../../../LoRaWAN/Target -I../../../Core/Inc -I../../../../../../../../Utilities/misc -I../../../../../../../../Utilities/timer -I../../../../../../../../Utilities/trace/adv_trace -I../../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../../Utilities/sequencer -I../../../../../../../../Drivers/BSP/STM32L4xx_Nucleo -I../../../../../../../../Drivers/BSP/SX1262DVK1DAS -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy/sx126x -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/packages -I../../../../../../../../Drivers/BSP/IKS01A2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/Components/hts221 -I../../../../../../../../Drivers/BSP/Components/lps22hb -I../../../../../../../../Drivers/BSP/Components/lsm6dsl -I../../../../../../../../Drivers/BSP/Components/lsm303agr -I../../../../Linker_Common/STM32CubeIDE -I../../../../2_Images_SECoreBin/Inc -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/LoRaWAN/Mac/LoRaMacSerializer.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

