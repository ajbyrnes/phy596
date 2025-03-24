set moduleName finalStage
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
set C_modelName {finalStage}
set C_modelType { void 0 }
set C_modelArgList {
	{ resultStream int 332 regular {fifo 0 volatile }  }
	{ x2 int 12 regular {fifo 0 volatile }  }
	{ y2 int 12 regular {fifo 0 volatile }  }
	{ sigmaSquaredDiv1 int 64 regular {fifo 0 volatile }  }
	{ last3 int 2 regular {fifo 0 volatile }  }
	{ output_r int 384 regular {axi_s 1 volatile  { output_r Data } }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "resultStream", "interface" : "fifo", "bitwidth" : 332, "direction" : "READONLY"} , 
 	{ "Name" : "x2", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "y2", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sigmaSquaredDiv1", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "last3", "interface" : "fifo", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "axis", "bitwidth" : 384, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ resultStream_dout sc_in sc_lv 332 signal 0 } 
	{ resultStream_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ resultStream_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ resultStream_empty_n sc_in sc_logic 1 signal 0 } 
	{ resultStream_read sc_out sc_logic 1 signal 0 } 
	{ x2_dout sc_in sc_lv 12 signal 1 } 
	{ x2_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ x2_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ x2_empty_n sc_in sc_logic 1 signal 1 } 
	{ x2_read sc_out sc_logic 1 signal 1 } 
	{ y2_dout sc_in sc_lv 12 signal 2 } 
	{ y2_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ y2_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ y2_empty_n sc_in sc_logic 1 signal 2 } 
	{ y2_read sc_out sc_logic 1 signal 2 } 
	{ sigmaSquaredDiv1_dout sc_in sc_lv 64 signal 3 } 
	{ sigmaSquaredDiv1_num_data_valid sc_in sc_lv 5 signal 3 } 
	{ sigmaSquaredDiv1_fifo_cap sc_in sc_lv 5 signal 3 } 
	{ sigmaSquaredDiv1_empty_n sc_in sc_logic 1 signal 3 } 
	{ sigmaSquaredDiv1_read sc_out sc_logic 1 signal 3 } 
	{ last3_dout sc_in sc_lv 2 signal 4 } 
	{ last3_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ last3_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ last3_empty_n sc_in sc_logic 1 signal 4 } 
	{ last3_read sc_out sc_logic 1 signal 4 } 
	{ output_r_TDATA sc_out sc_lv 384 signal 5 } 
	{ output_r_TVALID sc_out sc_logic 1 outvld 5 } 
	{ output_r_TREADY sc_in sc_logic 1 outacc 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "resultStream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":332, "type": "signal", "bundle":{"name": "resultStream", "role": "dout" }} , 
 	{ "name": "resultStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "resultStream", "role": "num_data_valid" }} , 
 	{ "name": "resultStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "resultStream", "role": "fifo_cap" }} , 
 	{ "name": "resultStream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resultStream", "role": "empty_n" }} , 
 	{ "name": "resultStream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resultStream", "role": "read" }} , 
 	{ "name": "x2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x2", "role": "dout" }} , 
 	{ "name": "x2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x2", "role": "num_data_valid" }} , 
 	{ "name": "x2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x2", "role": "fifo_cap" }} , 
 	{ "name": "x2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x2", "role": "empty_n" }} , 
 	{ "name": "x2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x2", "role": "read" }} , 
 	{ "name": "y2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "y2", "role": "dout" }} , 
 	{ "name": "y2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y2", "role": "num_data_valid" }} , 
 	{ "name": "y2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y2", "role": "fifo_cap" }} , 
 	{ "name": "y2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y2", "role": "empty_n" }} , 
 	{ "name": "y2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y2", "role": "read" }} , 
 	{ "name": "sigmaSquaredDiv1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sigmaSquaredDiv1", "role": "dout" }} , 
 	{ "name": "sigmaSquaredDiv1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sigmaSquaredDiv1", "role": "num_data_valid" }} , 
 	{ "name": "sigmaSquaredDiv1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sigmaSquaredDiv1", "role": "fifo_cap" }} , 
 	{ "name": "sigmaSquaredDiv1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigmaSquaredDiv1", "role": "empty_n" }} , 
 	{ "name": "sigmaSquaredDiv1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigmaSquaredDiv1", "role": "read" }} , 
 	{ "name": "last3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "last3", "role": "dout" }} , 
 	{ "name": "last3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "last3", "role": "num_data_valid" }} , 
 	{ "name": "last3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "last3", "role": "fifo_cap" }} , 
 	{ "name": "last3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last3", "role": "empty_n" }} , 
 	{ "name": "last3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last3", "role": "read" }} , 
 	{ "name": "output_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":384, "type": "signal", "bundle":{"name": "output_r", "role": "TDATA" }} , 
 	{ "name": "output_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_r", "role": "TVALID" }} , 
 	{ "name": "output_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_r", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "finalStage",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "430000",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "resultStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "resultStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "y2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sigmaSquaredDiv1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sigmaSquaredDiv1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "last3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_r", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "n", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "readResult", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "87", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state87"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_44s_96_5_1_U58", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64s_64s_128_5_1_U59", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_128s_64s_128_5_1_U60", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_64ns_13s_64_68_1_U61", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_r_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	finalStage {
		resultStream {Type I LastRead 86 FirstWrite -1}
		x2 {Type I LastRead 1 FirstWrite -1}
		y2 {Type I LastRead 1 FirstWrite -1}
		sigmaSquaredDiv1 {Type I LastRead 1 FirstWrite -1}
		last3 {Type I LastRead 86 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 85}
		n {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "430000"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "430000"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	resultStream { ap_fifo {  { resultStream_dout fifo_port_we 0 332 }  { resultStream_num_data_valid fifo_status_num_data_valid 0 5 }  { resultStream_fifo_cap fifo_update 0 5 }  { resultStream_empty_n fifo_status 0 1 }  { resultStream_read fifo_data 1 1 } } }
	x2 { ap_fifo {  { x2_dout fifo_port_we 0 12 }  { x2_num_data_valid fifo_status_num_data_valid 0 5 }  { x2_fifo_cap fifo_update 0 5 }  { x2_empty_n fifo_status 0 1 }  { x2_read fifo_data 1 1 } } }
	y2 { ap_fifo {  { y2_dout fifo_port_we 0 12 }  { y2_num_data_valid fifo_status_num_data_valid 0 5 }  { y2_fifo_cap fifo_update 0 5 }  { y2_empty_n fifo_status 0 1 }  { y2_read fifo_data 1 1 } } }
	sigmaSquaredDiv1 { ap_fifo {  { sigmaSquaredDiv1_dout fifo_port_we 0 64 }  { sigmaSquaredDiv1_num_data_valid fifo_status_num_data_valid 0 5 }  { sigmaSquaredDiv1_fifo_cap fifo_update 0 5 }  { sigmaSquaredDiv1_empty_n fifo_status 0 1 }  { sigmaSquaredDiv1_read fifo_data 1 1 } } }
	last3 { ap_fifo {  { last3_dout fifo_port_we 0 2 }  { last3_num_data_valid fifo_status_num_data_valid 0 5 }  { last3_fifo_cap fifo_update 0 5 }  { last3_empty_n fifo_status 0 1 }  { last3_read fifo_data 1 1 } } }
	output_r { axis {  { output_r_TDATA out_data 1 384 }  { output_r_TVALID out_vld 1 1 }  { output_r_TREADY out_acc 0 1 } } }
}
