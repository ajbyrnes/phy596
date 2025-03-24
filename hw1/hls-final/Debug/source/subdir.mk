################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../fit.cpp 

OBJS += \
./source/fit.o 

CPP_DEPS += \
./source/fit.d 


# Each subdirectory must supply rules for building sources it contributes
source/fit.o: C:/Users/abelo/AppData/Roaming/Xilinx/Vitis/phy596/hw1/baseline/fit.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IE:/Vitis_HLS/2023.1/include/ap_sysc -IE:/Vitis_HLS/2023.1/include -IE:/Vitis_HLS/2023.1/include/etc -IE:/Vitis_HLS/2023.1/win64/tools/auto_cc/include -IE:/Vitis_HLS/2023.1/win64/tools/systemc/include -IC:/Users/abelo/AppData/Roaming/Xilinx/Vitis/phy596/hw1 -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


