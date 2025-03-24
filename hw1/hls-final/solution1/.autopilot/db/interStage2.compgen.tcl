# This script segment is generated automatically by AutoPilot

set name fit_mul_64s_12s_76_5_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 4 ALLOW_PRAGMA 1
}


set name fit_mul_64s_64s_128_5_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 4 ALLOW_PRAGMA 1
}


set name fit_mul_65s_64s_96_5_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 4 ALLOW_PRAGMA 1
}


set name fit_mul_76s_64s_96_5_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 4 ALLOW_PRAGMA 1
}


set name fit_mul_128s_64s_128_5_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 4 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name x1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x1 \
    op interface \
    ports { x1_dout { I 12 vector } x1_num_data_valid { I 5 vector } x1_fifo_cap { I 5 vector } x1_empty_n { I 1 bit } x1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name y1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_y1 \
    op interface \
    ports { y1_dout { I 12 vector } y1_num_data_valid { I 5 vector } y1_fifo_cap { I 5 vector } y1_empty_n { I 1 bit } y1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name sigmaDiv1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sigmaDiv1 \
    op interface \
    ports { sigmaDiv1_dout { I 64 vector } sigmaDiv1_num_data_valid { I 5 vector } sigmaDiv1_fifo_cap { I 5 vector } sigmaDiv1_empty_n { I 1 bit } sigmaDiv1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name SDiv1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SDiv1 \
    op interface \
    ports { SDiv1_dout { I 64 vector } SDiv1_num_data_valid { I 5 vector } SDiv1_fifo_cap { I 5 vector } SDiv1_empty_n { I 1 bit } SDiv1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name SxDivS \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SxDivS \
    op interface \
    ports { SxDivS_dout { I 64 vector } SxDivS_num_data_valid { I 5 vector } SxDivS_fifo_cap { I 5 vector } SxDivS_empty_n { I 1 bit } SxDivS_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name SxSquaredDivS \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SxSquaredDivS \
    op interface \
    ports { SxSquaredDivS_dout { I 64 vector } SxSquaredDivS_num_data_valid { I 5 vector } SxSquaredDivS_fifo_cap { I 5 vector } SxSquaredDivS_empty_n { I 1 bit } SxSquaredDivS_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name SyDivS \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SyDivS \
    op interface \
    ports { SyDivS_dout { I 64 vector } SyDivS_num_data_valid { I 5 vector } SyDivS_fifo_cap { I 5 vector } SyDivS_empty_n { I 1 bit } SyDivS_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name last2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_last2 \
    op interface \
    ports { last2_dout { I 2 vector } last2_num_data_valid { I 5 vector } last2_fifo_cap { I 5 vector } last2_empty_n { I 1 bit } last2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name resultStream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_resultStream \
    op interface \
    ports { resultStream_din { O 332 vector } resultStream_num_data_valid { I 5 vector } resultStream_fifo_cap { I 5 vector } resultStream_full_n { I 1 bit } resultStream_write { O 1 bit } } \
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


