################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/otto/Documentos/repos/stm32wb55LoRaFuota/Middlewares/Third_Party/SubGHz_Phy/sx1276/sx1276.c 

OBJS += \
./Middlewares/SubGHz_Phy/sx1276.o 

C_DEPS += \
./Middlewares/SubGHz_Phy/sx1276.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/SubGHz_Phy/sx1276.o: /home/otto/Documentos/repos/stm32wb55LoRaFuota/Middlewares/Third_Party/SubGHz_Phy/sx1276/sx1276.c Middlewares/SubGHz_Phy/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DSX1276MB1LAS -DUSE_HAL_DRIVER -c -I../../../LoRaWAN/App -I../../../LoRaWAN/Target -I../../../Core/Inc -I../../../../../../../../Utilities/misc -I../../../../../../../../Utilities/timer -I../../../../../../../../Utilities/trace/adv_trace -I../../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../../Utilities/sequencer -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Drivers/BSP/sx1276mb1las -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy/sx1276 -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Crypto -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Mac/Region -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/Utilities -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler -I../../../../../../../../Middlewares/Third_Party/LoRaWAN/LmHandler/Packages -I../../../../../../../../Drivers/BSP/IKS01A2 -I../../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../../Drivers/BSP/Components/hts221 -I../../../../../../../../Drivers/BSP/Components/lps22hb -I../../../../../../../../Drivers/BSP/Components/lsm6dsl -I../../../../../../../../Drivers/BSP/Components/lsm303agr -I../../../../Linker_Common/STM32CubeIDE -I../../../../2_Images_SECoreBin/Inc -I"/home/otto/Documentos/repos/stm32wb55LoRaFuota/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/LoRaWAN_End_Node/STM32CubeIDE/sx1276mb1las/Middlewares/LoRaWAN/LmHandler" -Os -ffunction-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/SubGHz_Phy/sx1276.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

