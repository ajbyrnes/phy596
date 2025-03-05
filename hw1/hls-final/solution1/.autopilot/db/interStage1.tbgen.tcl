set moduleName interStage1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {interStage1}
set C_modelType { void 0 }
set C_modelArgList {
	{ partialS int 64 regular {fifo 0 volatile }  }
	{ partialSx int 64 regular {fifo 0 volatile }  }
	{ partialSy int 64 regular {fifo 0 volatile }  }
	{ last1 int 2 regular {fifo 0 volatile }  }
	{ SDiv1 int 64 regular {fifo 1 volatile }  }
	{ SxDivS int 64 regular {fifo 1 volatile }  }
	{ SxSquaredDivS int 64 regular {fifo 1 volatile }  }
	{ SyDivS int 64 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "partialS", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "partialSx", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "partialSy", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "last1", "interface" : "fifo", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "SDiv1", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SxDivS", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SxSquaredDivS", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SyDivS", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ partialS_dout sc_in sc_lv 64 signal 0 } 
	{ partialS_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ partialS_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ partialS_empty_n sc_in sc_logic 1 signal 0 } 
	{ partialS_read sc_out sc_logic 1 signal 0 } 
	{ partialSx_dout sc_in sc_lv 64 signal 1 } 
	{ partialSx_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ partialSx_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ partialSx_empty_n sc_in sc_logic 1 signal 1 } 
	{ partialSx_read sc_out sc_logic 1 signal 1 } 
	{ partialSy_dout sc_in sc_lv 64 signal 2 } 
	{ partialSy_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ partialSy_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ partialSy_empty_n sc_in sc_logic 1 signal 2 } 
	{ partialSy_read sc_out sc_logic 1 signal 2 } 
	{ last1_dout sc_in sc_lv 2 signal 3 } 
	{ last1_num_data_valid sc_in sc_lv 5 signal 3 } 
	{ last1_fifo_cap sc_in sc_lv 5 signal 3 } 
	{ last1_empty_n sc_in sc_logic 1 signal 3 } 
	{ last1_read sc_out sc_logic 1 signal 3 } 
	{ SDiv1_din sc_out sc_lv 64 signal 4 } 
	{ SDiv1_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ SDiv1_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ SDiv1_full_n sc_in sc_logic 1 signal 4 } 
	{ SDiv1_write sc_out sc_logic 1 signal 4 } 
	{ SxDivS_din sc_out sc_lv 64 signal 5 } 
	{ SxDivS_num_data_valid sc_in sc_lv 5 signal 5 } 
	{ SxDivS_fifo_cap sc_in sc_lv 5 signal 5 } 
	{ SxDivS_full_n sc_in sc_logic 1 signal 5 } 
	{ SxDivS_write sc_out sc_logic 1 signal 5 } 
	{ SxSquaredDivS_din sc_out sc_lv 64 signal 6 } 
	{ SxSquaredDivS_num_data_valid sc_in sc_lv 5 signal 6 } 
	{ SxSquaredDivS_fifo_cap sc_in sc_lv 5 signal 6 } 
	{ SxSquaredDivS_full_n sc_in sc_logic 1 signal 6 } 
	{ SxSquaredDivS_write sc_out sc_logic 1 signal 6 } 
	{ SyDivS_din sc_out sc_lv 64 signal 7 } 
	{ SyDivS_num_data_valid sc_in sc_lv 5 signal 7 } 
	{ SyDivS_fifo_cap sc_in sc_lv 5 signal 7 } 
	{ SyDivS_full_n sc_in sc_logic 1 signal 7 } 
	{ SyDivS_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "partialS_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "partialS", "role": "dout" }} , 
 	{ "name": "partialS_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "partialS", "role": "num_data_valid" }} , 
 	{ "name": "partialS_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "partialS", "role": "fifo_cap" }} , 
 	{ "name": "partialS_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "partialS", "role": "empty_n" }} , 
 	{ "name": "partialS_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "partialS", "role": "read" }} , 
 	{ "name": "partialSx_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "partialSx", "role": "dout" }} , 
 	{ "name": "partialSx_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "partialSx", "role": "num_data_valid" }} , 
 	{ "name": "partialSx_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "partialSx", "role": "fifo_cap" }} , 
 	{ "name": "partialSx_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "partialSx", "role": "empty_n" }} , 
 	{ "name": "partialSx_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "partialSx", "role": "read" }} , 
 	{ "name": "partialSy_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "partialSy", "role": "dout" }} , 
 	{ "name": "partialSy_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "partialSy", "role": "num_data_valid" }} , 
 	{ "name": "partialSy_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "partialSy", "role": "fifo_cap" }} , 
 	{ "name": "partialSy_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "partialSy", "role": "empty_n" }} , 
 	{ "name": "partialSy_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "partialSy", "role": "read" }} , 
 	{ "name": "last1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "last1", "role": "dout" }} , 
 	{ "name": "last1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "last1", "role": "num_data_valid" }} , 
 	{ "name": "last1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "last1", "role": "fifo_cap" }} , 
 	{ "name": "last1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last1", "role": "empty_n" }} , 
 	{ "name": "last1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last1", "role": "read" }} , 
 	{ "name": "SDiv1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "SDiv1", "role": "din" }} , 
 	{ "name": "SDiv1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SDiv1", "role": "num_data_valid" }} , 
 	{ "name": "SDiv1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SDiv1", "role": "fifo_cap" }} , 
 	{ "name": "SDiv1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SDiv1", "role": "full_n" }} , 
 	{ "name": "SDiv1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SDiv1", "role": "write" }} , 
 	{ "name": "SxDivS_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "SxDivS", "role": "din" }} , 
 	{ "name": "SxDivS_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SxDivS", "role": "num_data_valid" }} , 
 	{ "name": "SxDivS_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SxDivS", "role": "fifo_cap" }} , 
 	{ "name": "SxDivS_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SxDivS", "role": "full_n" }} , 
 	{ "name": "SxDivS_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SxDivS", "role": "write" }} , 
 	{ "name": "SxSquaredDivS_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "SxSquaredDivS", "role": "din" }} , 
 	{ "name": "SxSquaredDivS_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SxSquaredDivS", "role": "num_data_valid" }} , 
 	{ "name": "SxSquaredDivS_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SxSquaredDivS", "role": "fifo_cap" }} , 
 	{ "name": "SxSquaredDivS_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SxSquaredDivS", "role": "full_n" }} , 
 	{ "name": "SxSquaredDivS_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SxSquaredDivS", "role": "write" }} , 
 	{ "name": "SyDivS_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "SyDivS", "role": "din" }} , 
 	{ "name": "SyDivS_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SyDivS", "role": "num_data_valid" }} , 
 	{ "name": "SyDivS_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SyDivS", "role": "fifo_cap" }} , 
 	{ "name": "SyDivS_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SyDivS", "role": "full_n" }} , 
 	{ "name": "SyDivS_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SyDivS", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "interStage1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "535000",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "partialS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "partialS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "partialSx", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "partialSx_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "partialSy", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "partialSy_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "last1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SDiv1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SDiv1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SxDivS", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SxDivS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SxSquaredDivS", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SxSquaredDivS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SyDivS", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SyDivS_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "inter1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "108", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state108"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_64s_96_5_1_U22", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_96ns_64s_64_100_1_U23", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_96ns_64s_64_100_1_U24", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_66ns_64s_64_70_1_U25", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	interStage1 {
		partialS {Type I LastRead 1 FirstWrite -1}
		partialSx {Type I LastRead 1 FirstWrite -1}
		partialSy {Type I LastRead 1 FirstWrite -1}
		last1 {Type I LastRead 107 FirstWrite -1}
		SDiv1 {Type O LastRead -1 FirstWrite 107}
		SxDivS {Type O LastRead -1 FirstWrite 107}
		SxSquaredDivS {Type O LastRead -1 FirstWrite 107}
		SyDivS {Type O LastRead -1 FirstWrite 107}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "535000"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "535000"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	partialS { ap_fifo {  { partialS_dout fifo_port_we 0 64 }  { partialS_num_data_valid fifo_status_num_data_valid 0 5 }  { partialS_fifo_cap fifo_update 0 5 }  { partialS_empty_n fifo_status 0 1 }  { partialS_read fifo_data 1 1 } } }
	partialSx { ap_fifo {  { partialSx_dout fifo_port_we 0 64 }  { partialSx_num_data_valid fifo_status_num_data_valid 0 5 }  { partialSx_fifo_cap fifo_update 0 5 }  { partialSx_empty_n fifo_status 0 1 }  { partialSx_read fifo_data 1 1 } } }
	partialSy { ap_fifo {  { partialSy_dout fifo_port_we 0 64 }  { partialSy_num_data_valid fifo_status_num_data_valid 0 5 }  { partialSy_fifo_cap fifo_update 0 5 }  { partialSy_empty_n fifo_status 0 1 }  { partialSy_read fifo_data 1 1 } } }
	last1 { ap_fifo {  { last1_dout fifo_port_we 0 2 }  { last1_num_data_valid fifo_status_num_data_valid 0 5 }  { last1_fifo_cap fifo_update 0 5 }  { last1_empty_n fifo_status 0 1 }  { last1_read fifo_data 1 1 } } }
	SDiv1 { ap_fifo {  { SDiv1_din fifo_port_we 1 64 }  { SDiv1_num_data_valid fifo_status_num_data_valid 0 5 }  { SDiv1_fifo_cap fifo_update 0 5 }  { SDiv1_full_n fifo_status 0 1 }  { SDiv1_write fifo_data 1 1 } } }
	SxDivS { ap_fifo {  { SxDivS_din fifo_port_we 1 64 }  { SxDivS_num_data_valid fifo_status_num_data_valid 0 5 }  { SxDivS_fifo_cap fifo_update 0 5 }  { SxDivS_full_n fifo_status 0 1 }  { SxDivS_write fifo_data 1 1 } } }
	SxSquaredDivS { ap_fifo {  { SxSquaredDivS_din fifo_port_we 1 64 }  { SxSquaredDivS_num_data_valid fifo_status_num_data_valid 0 5 }  { SxSquaredDivS_fifo_cap fifo_update 0 5 }  { SxSquaredDivS_full_n fifo_status 0 1 }  { SxSquaredDivS_write fifo_data 1 1 } } }
	SyDivS { ap_fifo {  { SyDivS_din fifo_port_we 1 64 }  { SyDivS_num_data_valid fifo_status_num_data_valid 0 5 }  { SyDivS_fifo_cap fifo_update 0 5 }  { SyDivS_full_n fifo_status 0 1 }  { SyDivS_write fifo_data 1 1 } } }
}
