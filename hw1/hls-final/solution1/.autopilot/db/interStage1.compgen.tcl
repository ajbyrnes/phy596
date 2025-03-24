# This script segment is generated automatically by AutoPilot

set name fit_mul_64s_64s_96_5_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 4 ALLOW_PRAGMA 1
}


set name fit_sdiv_96ns_64s_64_100_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sdiv} IMPL {auto} LATENCY 99 ALLOW_PRAGMA 1
}


set name fit_sdiv_66ns_64s_64_70_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sdiv} IMPL {auto} LATENCY 69 ALLOW_PRAGMA 1
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
    id 29 \
    name partialS \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_partialS \
    op interface \
    ports { partialS_dout { I 64 vector } partialS_num_data_valid { I 5 vector } partialS_fifo_cap { I 5 vector } partialS_empty_n { I 1 bit } partialS_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name partialSx \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_partialSx \
    op interface \
    ports { partialSx_dout { I 64 vector } partialSx_num_data_valid { I 5 vector } partialSx_fifo_cap { I 5 vector } partialSx_empty_n { I 1 bit } partialSx_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name partialSy \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_partialSy \
    op interface \
    ports { partialSy_dout { I 64 vector } partialSy_num_data_valid { I 5 vector } partialSy_fifo_cap { I 5 vector } partialSy_empty_n { I 1 bit } partialSy_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name last1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_last1 \
    op interface \
    ports { last1_dout { I 2 vector } last1_num_data_valid { I 5 vector } last1_fifo_cap { I 5 vector } last1_empty_n { I 1 bit } last1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name SDiv1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SDiv1 \
    op interface \
    ports { SDiv1_din { O 64 vector } SDiv1_num_data_valid { I 5 vector } SDiv1_fifo_cap { I 5 vector } SDiv1_full_n { I 1 bit } SDiv1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name SxDivS \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SxDivS \
    op interface \
    ports { SxDivS_din { O 64 vector } SxDivS_num_data_valid { I 5 vector } SxDivS_fifo_cap { I 5 vector } SxDivS_full_n { I 1 bit } SxDivS_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name SxSquaredDivS \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SxSquaredDivS \
    op interface \
    ports { SxSquaredDivS_din { O 64 vector } SxSquaredDivS_num_data_valid { I 5 vector } SxSquaredDivS_fifo_cap { I 5 vector } SxSquaredDivS_full_n { I 1 bit } SxSquaredDivS_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name SyDivS \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SyDivS \
    op interface \
    ports { SyDivS_din { O 64 vector } SyDivS_num_data_valid { I 5 vector } SyDivS_fifo_cap { I 5 vector } SyDivS_full_n { I 1 bit } SyDivS_write { O 1 bit } } \
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


