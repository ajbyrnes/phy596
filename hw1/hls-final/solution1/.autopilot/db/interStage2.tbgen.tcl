set moduleName interStage2
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
set C_modelName {interStage2}
set C_modelType { void 0 }
set C_modelArgList {
	{ x1 int 12 regular {fifo 0 volatile }  }
	{ y1 int 12 regular {fifo 0 volatile }  }
	{ sigmaDiv1 int 64 regular {fifo 0 volatile }  }
	{ SDiv1 int 64 regular {fifo 0 volatile }  }
	{ SxDivS int 64 regular {fifo 0 volatile }  }
	{ SxSquaredDivS int 64 regular {fifo 0 volatile }  }
	{ SyDivS int 64 regular {fifo 0 volatile }  }
	{ last2 int 2 regular {fifo 0 volatile }  }
	{ resultStream int 332 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "x1", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "y1", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sigmaDiv1", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "SDiv1", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "SxDivS", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "SxSquaredDivS", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "SyDivS", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "last2", "interface" : "fifo", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "resultStream", "interface" : "fifo", "bitwidth" : 332, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 52
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x1_dout sc_in sc_lv 12 signal 0 } 
	{ x1_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ x1_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ x1_empty_n sc_in sc_logic 1 signal 0 } 
	{ x1_read sc_out sc_logic 1 signal 0 } 
	{ y1_dout sc_in sc_lv 12 signal 1 } 
	{ y1_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ y1_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ y1_empty_n sc_in sc_logic 1 signal 1 } 
	{ y1_read sc_out sc_logic 1 signal 1 } 
	{ sigmaDiv1_dout sc_in sc_lv 64 signal 2 } 
	{ sigmaDiv1_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ sigmaDiv1_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ sigmaDiv1_empty_n sc_in sc_logic 1 signal 2 } 
	{ sigmaDiv1_read sc_out sc_logic 1 signal 2 } 
	{ SDiv1_dout sc_in sc_lv 64 signal 3 } 
	{ SDiv1_num_data_valid sc_in sc_lv 5 signal 3 } 
	{ SDiv1_fifo_cap sc_in sc_lv 5 signal 3 } 
	{ SDiv1_empty_n sc_in sc_logic 1 signal 3 } 
	{ SDiv1_read sc_out sc_logic 1 signal 3 } 
	{ SxDivS_dout sc_in sc_lv 64 signal 4 } 
	{ SxDivS_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ SxDivS_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ SxDivS_empty_n sc_in sc_logic 1 signal 4 } 
	{ SxDivS_read sc_out sc_logic 1 signal 4 } 
	{ SxSquaredDivS_dout sc_in sc_lv 64 signal 5 } 
	{ SxSquaredDivS_num_data_valid sc_in sc_lv 5 signal 5 } 
	{ SxSquaredDivS_fifo_cap sc_in sc_lv 5 signal 5 } 
	{ SxSquaredDivS_empty_n sc_in sc_logic 1 signal 5 } 
	{ SxSquaredDivS_read sc_out sc_logic 1 signal 5 } 
	{ SyDivS_dout sc_in sc_lv 64 signal 6 } 
	{ SyDivS_num_data_valid sc_in sc_lv 5 signal 6 } 
	{ SyDivS_fifo_cap sc_in sc_lv 5 signal 6 } 
	{ SyDivS_empty_n sc_in sc_logic 1 signal 6 } 
	{ SyDivS_read sc_out sc_logic 1 signal 6 } 
	{ last2_dout sc_in sc_lv 2 signal 7 } 
	{ last2_num_data_valid sc_in sc_lv 5 signal 7 } 
	{ last2_fifo_cap sc_in sc_lv 5 signal 7 } 
	{ last2_empty_n sc_in sc_logic 1 signal 7 } 
	{ last2_read sc_out sc_logic 1 signal 7 } 
	{ resultStream_din sc_out sc_lv 332 signal 8 } 
	{ resultStream_num_data_valid sc_in sc_lv 5 signal 8 } 
	{ resultStream_fifo_cap sc_in sc_lv 5 signal 8 } 
	{ resultStream_full_n sc_in sc_logic 1 signal 8 } 
	{ resultStream_write sc_out sc_logic 1 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x1", "role": "dout" }} , 
 	{ "name": "x1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x1", "role": "num_data_valid" }} , 
 	{ "name": "x1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x1", "role": "fifo_cap" }} , 
 	{ "name": "x1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x1", "role": "empty_n" }} , 
 	{ "name": "x1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x1", "role": "read" }} , 
 	{ "name": "y1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "y1", "role": "dout" }} , 
 	{ "name": "y1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y1", "role": "num_data_valid" }} , 
 	{ "name": "y1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y1", "role": "fifo_cap" }} , 
 	{ "name": "y1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y1", "role": "empty_n" }} , 
 	{ "name": "y1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y1", "role": "read" }} , 
 	{ "name": "sigmaDiv1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sigmaDiv1", "role": "dout" }} , 
 	{ "name": "sigmaDiv1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sigmaDiv1", "role": "num_data_valid" }} , 
 	{ "name": "sigmaDiv1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sigmaDiv1", "role": "fifo_cap" }} , 
 	{ "name": "sigmaDiv1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigmaDiv1", "role": "empty_n" }} , 
 	{ "name": "sigmaDiv1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigmaDiv1", "role": "read" }} , 
 	{ "name": "SDiv1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "SDiv1", "role": "dout" }} , 
 	{ "name": "SDiv1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SDiv1", "role": "num_data_valid" }} , 
 	{ "name": "SDiv1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SDiv1", "role": "fifo_cap" }} , 
 	{ "name": "SDiv1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SDiv1", "role": "empty_n" }} , 
 	{ "name": "SDiv1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SDiv1", "role": "read" }} , 
 	{ "name": "SxDivS_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "SxDivS", "role": "dout" }} , 
 	{ "name": "SxDivS_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SxDivS", "role": "num_data_valid" }} , 
 	{ "name": "SxDivS_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SxDivS", "role": "fifo_cap" }} , 
 	{ "name": "SxDivS_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SxDivS", "role": "empty_n" }} , 
 	{ "name": "SxDivS_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SxDivS", "role": "read" }} , 
 	{ "name": "SxSquaredDivS_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "SxSquaredDivS", "role": "dout" }} , 
 	{ "name": "SxSquaredDivS_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SxSquaredDivS", "role": "num_data_valid" }} , 
 	{ "name": "SxSquaredDivS_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SxSquaredDivS", "role": "fifo_cap" }} , 
 	{ "name": "SxSquaredDivS_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SxSquaredDivS", "role": "empty_n" }} , 
 	{ "name": "SxSquaredDivS_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SxSquaredDivS", "role": "read" }} , 
 	{ "name": "SyDivS_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "SyDivS", "role": "dout" }} , 
 	{ "name": "SyDivS_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SyDivS", "role": "num_data_valid" }} , 
 	{ "name": "SyDivS_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "SyDivS", "role": "fifo_cap" }} , 
 	{ "name": "SyDivS_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SyDivS", "role": "empty_n" }} , 
 	{ "name": "SyDivS_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SyDivS", "role": "read" }} , 
 	{ "name": "last2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "last2", "role": "dout" }} , 
 	{ "name": "last2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "last2", "role": "num_data_valid" }} , 
 	{ "name": "last2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "last2", "role": "fifo_cap" }} , 
 	{ "name": "last2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last2", "role": "empty_n" }} , 
 	{ "name": "last2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last2", "role": "read" }} , 
 	{ "name": "resultStream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":332, "type": "signal", "bundle":{"name": "resultStream", "role": "din" }} , 
 	{ "name": "resultStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "resultStream", "role": "num_data_valid" }} , 
 	{ "name": "resultStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "resultStream", "role": "fifo_cap" }} , 
 	{ "name": "resultStream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resultStream", "role": "full_n" }} , 
 	{ "name": "resultStream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resultStream", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "interStage2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "485000",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "y1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sigmaDiv1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sigmaDiv1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SDiv1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SDiv1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SxDivS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SxDivS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SxSquaredDivS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SxSquaredDivS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SyDivS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SyDivS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "last2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resultStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "resultStream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "inter2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "98", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state98"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_12s_76_5_1_U37", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_64s_96_5_1_U38", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_64s_128_5_1_U39", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_65s_64s_96_5_1_U40", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_76s_64s_96_5_1_U41", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_128s_64s_128_5_1_U42", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_66ns_64s_64_70_1_U43", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	interStage2 {
		x1 {Type I LastRead 1 FirstWrite -1}
		y1 {Type I LastRead 1 FirstWrite -1}
		sigmaDiv1 {Type I LastRead 1 FirstWrite -1}
		SDiv1 {Type I LastRead 86 FirstWrite -1}
		SxDivS {Type I LastRead 97 FirstWrite -1}
		SxSquaredDivS {Type I LastRead 86 FirstWrite -1}
		SyDivS {Type I LastRead 86 FirstWrite -1}
		last2 {Type I LastRead 97 FirstWrite -1}
		resultStream {Type O LastRead -1 FirstWrite 97}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "485000"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "485000"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	x1 { ap_fifo {  { x1_dout fifo_port_we 0 12 }  { x1_num_data_valid fifo_status_num_data_valid 0 5 }  { x1_fifo_cap fifo_update 0 5 }  { x1_empty_n fifo_status 0 1 }  { x1_read fifo_data 1 1 } } }
	y1 { ap_fifo {  { y1_dout fifo_port_we 0 12 }  { y1_num_data_valid fifo_status_num_data_valid 0 5 }  { y1_fifo_cap fifo_update 0 5 }  { y1_empty_n fifo_status 0 1 }  { y1_read fifo_data 1 1 } } }
	sigmaDiv1 { ap_fifo {  { sigmaDiv1_dout fifo_port_we 0 64 }  { sigmaDiv1_num_data_valid fifo_status_num_data_valid 0 5 }  { sigmaDiv1_fifo_cap fifo_update 0 5 }  { sigmaDiv1_empty_n fifo_status 0 1 }  { sigmaDiv1_read fifo_data 1 1 } } }
	SDiv1 { ap_fifo {  { SDiv1_dout fifo_port_we 0 64 }  { SDiv1_num_data_valid fifo_status_num_data_valid 0 5 }  { SDiv1_fifo_cap fifo_update 0 5 }  { SDiv1_empty_n fifo_status 0 1 }  { SDiv1_read fifo_data 1 1 } } }
	SxDivS { ap_fifo {  { SxDivS_dout fifo_port_we 0 64 }  { SxDivS_num_data_valid fifo_status_num_data_valid 0 5 }  { SxDivS_fifo_cap fifo_update 0 5 }  { SxDivS_empty_n fifo_status 0 1 }  { SxDivS_read fifo_data 1 1 } } }
	SxSquaredDivS { ap_fifo {  { SxSquaredDivS_dout fifo_port_we 0 64 }  { SxSquaredDivS_num_data_valid fifo_status_num_data_valid 0 5 }  { SxSquaredDivS_fifo_cap fifo_update 0 5 }  { SxSquaredDivS_empty_n fifo_status 0 1 }  { SxSquaredDivS_read fifo_data 1 1 } } }
	SyDivS { ap_fifo {  { SyDivS_dout fifo_port_we 0 64 }  { SyDivS_num_data_valid fifo_status_num_data_valid 0 5 }  { SyDivS_fifo_cap fifo_update 0 5 }  { SyDivS_empty_n fifo_status 0 1 }  { SyDivS_read fifo_data 1 1 } } }
	last2 { ap_fifo {  { last2_dout fifo_port_we 0 2 }  { last2_num_data_valid fifo_status_num_data_valid 0 5 }  { last2_fifo_cap fifo_update 0 5 }  { last2_empty_n fifo_status 0 1 }  { last2_read fifo_data 1 1 } } }
	resultStream { ap_fifo {  { resultStream_din fifo_port_we 1 332 }  { resultStream_num_data_valid fifo_status_num_data_valid 0 5 }  { resultStream_fifo_cap fifo_update 0 5 }  { resultStream_full_n fifo_status 0 1 }  { resultStream_write fifo_data 1 1 } } }
}
