# This script segment is generated automatically by AutoPilot

set name fit_mul_34s_34s_68_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name fit_mul_36s_12s_48_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name fit_sdiv_34ns_12s_34_38_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sdiv} IMPL {auto} LATENCY 37 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 8 \
    name input_r \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { input_r_TVALID { I 1 bit } input_r_TDATA { I 64 vector } input_r_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_r'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name partialS \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_partialS \
    op interface \
    ports { partialS_din { O 64 vector } partialS_num_data_valid { I 5 vector } partialS_fifo_cap { I 5 vector } partialS_full_n { I 1 bit } partialS_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name partialSx \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_partialSx \
    op interface \
    ports { partialSx_din { O 64 vector } partialSx_num_data_valid { I 5 vector } partialSx_fifo_cap { I 5 vector } partialSx_full_n { I 1 bit } partialSx_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name partialSy \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_partialSy \
    op interface \
    ports { partialSy_din { O 64 vector } partialSy_num_data_valid { I 5 vector } partialSy_fifo_cap { I 5 vector } partialSy_full_n { I 1 bit } partialSy_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name x1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_x1 \
    op interface \
    ports { x1_din { O 12 vector } x1_num_data_valid { I 5 vector } x1_fifo_cap { I 5 vector } x1_full_n { I 1 bit } x1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name x2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_x2 \
    op interface \
    ports { x2_din { O 12 vector } x2_num_data_valid { I 5 vector } x2_fifo_cap { I 5 vector } x2_full_n { I 1 bit } x2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name y1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_y1 \
    op interface \
    ports { y1_din { O 12 vector } y1_num_data_valid { I 5 vector } y1_fifo_cap { I 5 vector } y1_full_n { I 1 bit } y1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name y2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_y2 \
    op interface \
    ports { y2_din { O 12 vector } y2_num_data_valid { I 5 vector } y2_fifo_cap { I 5 vector } y2_full_n { I 1 bit } y2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name sigmaDiv1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sigmaDiv1 \
    op interface \
    ports { sigmaDiv1_din { O 64 vector } sigmaDiv1_num_data_valid { I 5 vector } sigmaDiv1_fifo_cap { I 5 vector } sigmaDiv1_full_n { I 1 bit } sigmaDiv1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name sigmaSquaredDiv1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sigmaSquaredDiv1 \
    op interface \
    ports { sigmaSquaredDiv1_din { O 64 vector } sigmaSquaredDiv1_num_data_valid { I 5 vector } sigmaSquaredDiv1_fifo_cap { I 5 vector } sigmaSquaredDiv1_full_n { I 1 bit } sigmaSquaredDiv1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name last1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_last1 \
    op interface \
    ports { last1_din { O 2 vector } last1_num_data_valid { I 5 vector } last1_fifo_cap { I 5 vector } last1_full_n { I 1 bit } last1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name last2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_last2 \
    op interface \
    ports { last2_din { O 2 vector } last2_num_data_valid { I 5 vector } last2_fifo_cap { I 5 vector } last2_full_n { I 1 bit } last2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name last3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_last3 \
    op interface \
    ports { last3_din { O 2 vector } last3_num_data_valid { I 5 vector } last3_fifo_cap { I 5 vector } last3_full_n { I 1 bit } last3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# RegSlice definition:
set ID 21
set RegSliceName fit_regslice_both
set RegSliceInstName fit_regslice_both_U
set CoreName ap_simcore_fit_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName BINDTYPE interface TYPE interface_regslice INSTNAME $RegSliceInstName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix fit_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# flow_control definition:
set InstName fit_flow_control_loop_pipe_U
set CompName fit_flow_control_loop_pipe
set name flow_control_loop_pipe
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix fit_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


