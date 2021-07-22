################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_SECoreBin/STM32CubeIDE/se_key.s \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_SECoreBin/STM32CubeIDE/startup_stm32wb55xx_cm4.s 

C_SRCS += \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_SECoreBin/STM32CubeIDE/data_init.c 

OBJS += \
./Application/STM32CubeIDE/data_init.o \
./Application/STM32CubeIDE/se_key.o \
./Application/STM32CubeIDE/startup_stm32wb55xx_cm4.o 

S_DEPS += \
./Application/STM32CubeIDE/se_key.d \
./Application/STM32CubeIDE/startup_stm32wb55xx_cm4.d 

C_DEPS += \
./Application/STM32CubeIDE/data_init.d 


# Each subdirectory must supply rules for building sources it contributes
Application/STM32CubeIDE/data_init.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_SECoreBin/STM32CubeIDE/data_init.c Application/STM32CubeIDE/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -DCKS_ENABLED '-DMBEDTLS_CONFIG_FILE=<se_mbedtls_config.h>' -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Key -I../../../../2_Images_SBSFU/SBSFU/App -I../../../../2_Images_SBSFU/SBSFU/Target -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Middlewares/ST/STM32_Cryptographic/Fw_Crypto/STM32WB/Inc -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/ST/STM32_WPAN -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/tl -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread -I../../../../../../../../Middlewares/ST/STM32_WPAN/interface/patterns/ble_thread/shci -I../../../../../../../../Middlewares/ST/STM32_WPAN/utilities -I../../../../../../../../Middlewares/Third_Party/mbedTLS/include -I../../../../../../../../Middlewares/Third_Party/mbedTLS/include/mbedtls -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/STM32CubeIDE/data_init.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@"
Application/STM32CubeIDE/se_key.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_SECoreBin/STM32CubeIDE/se_key.s Application/STM32CubeIDE/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Application/STM32CubeIDE/se_key.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@" "$<"
Application/STM32CubeIDE/startup_stm32wb55xx_cm4.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_SECoreBin/STM32CubeIDE/startup_stm32wb55xx_cm4.s Application/STM32CubeIDE/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Application/STM32CubeIDE/startup_stm32wb55xx_cm4.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -o "$@" "$<"

