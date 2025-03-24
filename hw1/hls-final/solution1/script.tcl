############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project baseline
set_top fit
add_files baseline/data.txt
add_files baseline/fit.cpp
add_files baseline/fit.hpp
add_files -tb baseline/main.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vitis
set_part {xc7s100-fgga676-2}
create_clock -period 10 -name default
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512
config_rtl -register_reset_num 3
config_cosim -enable_dataflow_profiling -tool xsim
config_export -flow syn -format ip_catalog -rtl verilog -vivado_clock 10
source "./baseline/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -enable_dataflow_profiling
export_design -flow syn -rtl verilog -format ip_catalog
