set SynModuleInfo {
  {SRCNAME readStage MODELNAME readStage RTLNAME fit_readStage
    SUBMODULES {
      {MODELNAME fit_mul_34s_34s_68_1_1 RTLNAME fit_mul_34s_34s_68_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME fit_mul_36s_12s_48_1_1 RTLNAME fit_mul_36s_12s_48_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME fit_sdiv_34ns_12s_34_38_1 RTLNAME fit_sdiv_34ns_12s_34_38_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 37 ALLOW_PRAGMA 1}
      {MODELNAME fit_regslice_both RTLNAME fit_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME fit_regslice_both_U}
      {MODELNAME fit_flow_control_loop_pipe RTLNAME fit_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fit_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME interStage1 MODELNAME interStage1 RTLNAME fit_interStage1
    SUBMODULES {
      {MODELNAME fit_mul_64s_64s_96_5_1 RTLNAME fit_mul_64s_64s_96_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fit_sdiv_96ns_64s_64_100_1 RTLNAME fit_sdiv_96ns_64s_64_100_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 99 ALLOW_PRAGMA 1}
      {MODELNAME fit_sdiv_66ns_64s_64_70_1 RTLNAME fit_sdiv_66ns_64s_64_70_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 69 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME interStage2 MODELNAME interStage2 RTLNAME fit_interStage2
    SUBMODULES {
      {MODELNAME fit_mul_64s_12s_76_5_1 RTLNAME fit_mul_64s_12s_76_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fit_mul_64s_64s_128_5_1 RTLNAME fit_mul_64s_64s_128_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fit_mul_65s_64s_96_5_1 RTLNAME fit_mul_65s_64s_96_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fit_mul_76s_64s_96_5_1 RTLNAME fit_mul_76s_64s_96_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fit_mul_128s_64s_128_5_1 RTLNAME fit_mul_128s_64s_128_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME finalStage MODELNAME finalStage RTLNAME fit_finalStage
    SUBMODULES {
      {MODELNAME fit_mul_64s_44s_96_5_1 RTLNAME fit_mul_64s_44s_96_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fit_sdiv_64ns_13s_64_68_1 RTLNAME fit_sdiv_64ns_13s_64_68_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 67 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fit MODELNAME fit RTLNAME fit IS_TOP 1
    SUBMODULES {
      {MODELNAME fit_fifo_w64_d10_S RTLNAME fit_fifo_w64_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME partialS_U}
      {MODELNAME fit_fifo_w64_d10_S RTLNAME fit_fifo_w64_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME partialSx_U}
      {MODELNAME fit_fifo_w64_d10_S RTLNAME fit_fifo_w64_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME partialSy_U}
      {MODELNAME fit_fifo_w12_d10_S RTLNAME fit_fifo_w12_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME x1_U}
      {MODELNAME fit_fifo_w12_d10_S RTLNAME fit_fifo_w12_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME x2_U}
      {MODELNAME fit_fifo_w12_d10_S RTLNAME fit_fifo_w12_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME y1_U}
      {MODELNAME fit_fifo_w12_d10_S RTLNAME fit_fifo_w12_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME y2_U}
      {MODELNAME fit_fifo_w64_d10_S RTLNAME fit_fifo_w64_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME sigmaDiv1_U}
      {MODELNAME fit_fifo_w64_d10_S RTLNAME fit_fifo_w64_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME sigmaSquaredDiv1_U}
      {MODELNAME fit_fifo_w2_d10_S RTLNAME fit_fifo_w2_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last1_U}
      {MODELNAME fit_fifo_w2_d10_S RTLNAME fit_fifo_w2_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last2_U}
      {MODELNAME fit_fifo_w2_d10_S RTLNAME fit_fifo_w2_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last3_U}
      {MODELNAME fit_fifo_w64_d10_S RTLNAME fit_fifo_w64_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SDiv1_U}
      {MODELNAME fit_fifo_w64_d10_S RTLNAME fit_fifo_w64_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SxDivS_U}
      {MODELNAME fit_fifo_w64_d10_S RTLNAME fit_fifo_w64_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SxSquaredDivS_U}
      {MODELNAME fit_fifo_w64_d10_S RTLNAME fit_fifo_w64_d10_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SyDivS_U}
      {MODELNAME fit_fifo_w332_d10_A RTLNAME fit_fifo_w332_d10_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME resultStream_U}
      {MODELNAME fit_start_for_interStage1_U0 RTLNAME fit_start_for_interStage1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_interStage1_U0_U}
      {MODELNAME fit_start_for_interStage2_U0 RTLNAME fit_start_for_interStage2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_interStage2_U0_U}
      {MODELNAME fit_start_for_finalStage_U0 RTLNAME fit_start_for_finalStage_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_finalStage_U0_U}
      {MODELNAME fit_control_s_axi RTLNAME fit_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
