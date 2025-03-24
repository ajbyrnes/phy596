################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../main.cpp 

OBJS += \
./testbench/main.o 

CPP_DEPS += \
./testbench/main.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/main.o: C:/Users/abelo/AppData/Roaming/Xilinx/Vitis/phy596/hw1/baseline/main.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -IE:/Vitis_HLS/2023.1/include/ap_sysc -IE:/Vitis_HLS/2023.1/include -IE:/Vitis_HLS/2023.1/include/etc -IE:/Vitis_HLS/2023.1/win64/tools/auto_cc/include -IE:/Vitis_HLS/2023.1/win64/tools/systemc/include -IC:/Users/abelo/AppData/Roaming/Xilinx/Vitis/phy596/hw1 -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/main.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


