################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Utilities/subdir.mk
-include Middlewares/SubGHz_Phy/subdir.mk
-include Middlewares/LoRaWAN/Utilities/subdir.mk
-include Middlewares/LoRaWAN/Mac/Region/subdir.mk
-include Middlewares/LoRaWAN/Mac/subdir.mk
-include Middlewares/LoRaWAN/LmHandler/subdir.mk
-include Middlewares/LoRaWAN/Crypto/subdir.mk
-include Drivers/STM32WBxx_HAL_Driver/subdir.mk
-include Drivers/CMSIS/subdir.mk
-include Drivers/BSP/sx1276mb1las/subdir.mk
-include Drivers/BSP/STM32WBxx_Nucleo/subdir.mk
-include Drivers/BSP/IKS01A2/subdir.mk
-include Drivers/BSP/Components/subdir.mk
-include Application/Target/subdir.mk
-include Application/SW4STM32/subdir.mk
-include Application/Core/subdir.mk
-include Application/App/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := UserApp
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX := 
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME).$(BUILD_ARTIFACT_EXTENSION)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
UserApp.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
UserApp.list \

OBJCOPY_BIN += \
UserApp.bin \


# All Target
all:
	+@$(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: UserApp.elf secondary-outputs

dependents:
	-cd /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/STM32CubeIDE/STM32WB55RG_Nucleo_2_Images_SBSFU/Debug && $(MAKE) all

# Tool invocations
UserApp.elf: $(OBJS) $(USER_OBJS) /home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/STM32CubeIDE/STM32WB55RG_Nucleo_2_Images_SBSFU/Debug/SBSFU.elf ../stm32wb55xx_flash_cm4.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "UserApp.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"../stm32wb55xx_flash_cm4.ld" --specs=nosys.specs -Wl,-Map="UserApp.map" -Wl,--gc-sections -static -L../../../../2_Images_SBSFU/STM32CubeIDE/STM32WB55RG_Nucleo_2_Images_SBSFU/Debug -Xlinker -L ../../../../Linker_Common/STM32CubeIDE -l:se_interface_app.o --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

UserApp.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "UserApp.list"
	@echo 'Finished building: $@'
	@echo ' '

UserApp.bin: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "UserApp.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

post-build:
	arm-none-eabi-objcopy -O binary "UserApp.elf" "../../UserApp.bin"
	arm-none-eabi-size "UserApp.elf"
	"../../../../2_Images_SECoreBin/STM32CubeIDE/postbuild.sh" "../.." "./UserApp.elf" "../../UserApp.bin" "1"
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents fail-specified-linker-script-missing warn-no-linker-script-specified
.SECONDARY: post-build
/home/otto/hd_storage/Documentos/Mobit/STM32CubeExpansion_SBSFU_V2.5.0/Projects/P-NUCLEO-WB55_2.Nucleo/Applications/2_Images/2_Images_SBSFU/STM32CubeIDE/STM32WB55RG_Nucleo_2_Images_SBSFU/Debug/SBSFU.elf:

-include ../makefile.targets
