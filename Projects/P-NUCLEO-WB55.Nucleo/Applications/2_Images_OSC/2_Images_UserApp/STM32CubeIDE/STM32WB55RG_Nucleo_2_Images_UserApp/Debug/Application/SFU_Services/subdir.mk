################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/sfu_app_new_image.c 

OBJS += \
./Application/SFU_Services/sfu_app_new_image.o 

C_DEPS += \
./Application/SFU_Services/sfu_app_new_image.d 


# Each subdirectory must supply rules for building sources it contributes
Application/SFU_Services/sfu_app_new_image.o: /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55.Nucleo/Applications/2_Images_OSC/2_Images_UserApp/Src/sfu_app_new_image.c Application/SFU_Services/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32WB55xx -DUSE_STM32WBXX_NUCLEO -DUSE_HAL_DRIVER -c -I../../../Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32WBxx/Include -I../../../../../../../../Drivers/STM32WBxx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/P-NUCLEO-WB55.Nucleo -I../../../../../../../../Middlewares/ST/STM32_Secure_Engine/Core -I../../../../2_Images_SECoreBin/Inc -I../../../../2_Images_SBSFU/SBSFU/App -I../../../../Linker_Common/STM32CubeIDE -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-format -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"Application/SFU_Services/sfu_app_new_image.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

