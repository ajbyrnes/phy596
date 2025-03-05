set moduleName fit
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {fit}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r int 64 regular {axi_s 0 volatile  { input_r Data } }  }
	{ output_r int 384 regular {axi_s 1 volatile  { output_r Data } }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "axis", "bitwidth" : 384, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ input_r_TDATA sc_in sc_lv 64 signal 0 } 
	{ output_r_TDATA sc_out sc_lv 384 signal 1 } 
	{ input_r_TVALID sc_in sc_logic 1 invld 0 } 
	{ input_r_TREADY sc_out sc_logic 1 inacc 0 } 
	{ output_r_TVALID sc_out sc_logic 1 outvld 1 } 
	{ output_r_TREADY sc_in sc_logic 1 outacc 1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"fit","role":"start","value":"0","valid_bit":"0"},{"name":"fit","role":"continue","value":"0","valid_bit":"4"},{"name":"fit","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"fit","role":"start","value":"0","valid_bit":"0"},{"name":"fit","role":"done","value":"0","valid_bit":"1"},{"name":"fit","role":"idle","value":"0","valid_bit":"2"},{"name":"fit","role":"ready","value":"0","valid_bit":"3"},{"name":"fit","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "input_r_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "input_r", "role": "TDATA" }} , 
 	{ "name": "output_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":384, "type": "signal", "bundle":{"name": "output_r", "role": "TDATA" }} , 
 	{ "name": "input_r_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_r", "role": "TVALID" }} , 
 	{ "name": "input_r_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_r", "role": "TREADY" }} , 
 	{ "name": "output_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_r", "role": "TVALID" }} , 
 	{ "name": "output_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_r", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "9", "14", "22", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47"],
		"CDFG" : "fit",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "readStage_U0"}],
		"OutputProcess" : [
			{"ID" : "22", "Name" : "finalStage_U0"}],
		"Port" : [
			{"Name" : "input_r", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "readStage_U0", "Port" : "input_r"}]},
			{"Name" : "output_r", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "finalStage_U0", "Port" : "output_r"}]},
			{"Name" : "n", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "finalStage_U0", "Port" : "n"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.readStage_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8"],
		"CDFG" : "readStage",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "partialS", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "28", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "partialS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "partialSx", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "29", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "partialSx_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "partialSy", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "30", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "partialSy_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "31", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "32", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "33", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "y1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "34", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "y2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sigmaDiv1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "35", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sigmaDiv1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sigmaSquaredDiv1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "36", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sigmaSquaredDiv1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "37", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "last1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "38", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "last2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "39", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "last3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter40", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter40", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.readStage_U0.mul_34s_34s_68_1_1_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.readStage_U0.mul_36s_12s_48_1_1_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.readStage_U0.mul_36s_12s_48_1_1_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.readStage_U0.sdiv_34ns_12s_34_38_1_U4", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.readStage_U0.flow_control_loop_pipe_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.readStage_U0.regslice_both_input_r_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.interStage1_U0", "Parent" : "0", "Child" : ["10", "11", "12", "13"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_interStage1_U0_U",
		"Port" : [
			{"Name" : "partialS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "28", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "partialS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "partialSx", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "29", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "partialSx_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "partialSy", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "30", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "partialSy_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "37", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "last1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SDiv1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "40", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SDiv1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SxDivS", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "41", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SxDivS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SxSquaredDivS", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "42", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SxSquaredDivS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SyDivS", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["14"], "DependentChan" : "43", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SyDivS_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "inter1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "108", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state108"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.interStage1_U0.mul_64s_64s_96_5_1_U22", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.interStage1_U0.sdiv_96ns_64s_64_100_1_U23", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.interStage1_U0.sdiv_96ns_64s_64_100_1_U24", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.interStage1_U0.sdiv_66ns_64s_64_70_1_U25", "Parent" : "9"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.interStage2_U0", "Parent" : "0", "Child" : ["15", "16", "17", "18", "19", "20", "21"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_interStage2_U0_U",
		"Port" : [
			{"Name" : "x1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "31", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "33", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "y1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sigmaDiv1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "35", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sigmaDiv1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SDiv1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "40", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SDiv1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SxDivS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "41", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SxDivS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SxSquaredDivS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "42", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SxSquaredDivS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SyDivS", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "43", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "SyDivS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "38", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "last2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resultStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "44", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "resultStream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "inter2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "98", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state98"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.interStage2_U0.mul_64s_12s_76_5_1_U37", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.interStage2_U0.mul_64s_64s_96_5_1_U38", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.interStage2_U0.mul_64s_64s_128_5_1_U39", "Parent" : "14"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.interStage2_U0.mul_65s_64s_96_5_1_U40", "Parent" : "14"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.interStage2_U0.mul_76s_64s_96_5_1_U41", "Parent" : "14"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.interStage2_U0.mul_128s_64s_128_5_1_U42", "Parent" : "14"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.interStage2_U0.sdiv_66ns_64s_64_70_1_U43", "Parent" : "14"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.finalStage_U0", "Parent" : "0", "Child" : ["23", "24", "25", "26", "27"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_finalStage_U0_U",
		"Port" : [
			{"Name" : "resultStream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["14"], "DependentChan" : "44", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "resultStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "32", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "34", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "y2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sigmaSquaredDiv1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "36", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sigmaSquaredDiv1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "39", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "last3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_r", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "n", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "readResult", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "87", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state87"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalStage_U0.mul_64s_44s_96_5_1_U58", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalStage_U0.mul_64s_64s_128_5_1_U59", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalStage_U0.mul_128s_64s_128_5_1_U60", "Parent" : "22"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalStage_U0.sdiv_64ns_13s_64_68_1_U61", "Parent" : "22"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.finalStage_U0.regslice_both_output_r_U", "Parent" : "22"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.partialS_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.partialSx_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.partialSy_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x1_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x2_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y1_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y2_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sigmaDiv1_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sigmaSquaredDiv1_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.last1_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.last2_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.last3_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SDiv1_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SxDivS_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SxSquaredDivS_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SyDivS_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.resultStream_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_interStage1_U0_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_interStage2_U0_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_finalStage_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fit {
		input_r {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 85}
		n {Type IO LastRead -1 FirstWrite -1}}
	readStage {
		input_r {Type I LastRead 0 FirstWrite -1}
		partialS {Type O LastRead -1 FirstWrite 40}
		partialSx {Type O LastRead -1 FirstWrite 40}
		partialSy {Type O LastRead -1 FirstWrite 40}
		x1 {Type O LastRead -1 FirstWrite 40}
		x2 {Type O LastRead -1 FirstWrite 40}
		y1 {Type O LastRead -1 FirstWrite 40}
		y2 {Type O LastRead -1 FirstWrite 40}
		sigmaDiv1 {Type O LastRead -1 FirstWrite 40}
		sigmaSquaredDiv1 {Type O LastRead -1 FirstWrite 40}
		last1 {Type O LastRead -1 FirstWrite 40}
		last2 {Type O LastRead -1 FirstWrite 40}
		last3 {Type O LastRead -1 FirstWrite 40}}
	interStage1 {
		partialS {Type I LastRead 1 FirstWrite -1}
		partialSx {Type I LastRead 1 FirstWrite -1}
		partialSy {Type I LastRead 1 FirstWrite -1}
		last1 {Type I LastRead 107 FirstWrite -1}
		SDiv1 {Type O LastRead -1 FirstWrite 107}
		SxDivS {Type O LastRead -1 FirstWrite 107}
		SxSquaredDivS {Type O LastRead -1 FirstWrite 107}
		SyDivS {Type O LastRead -1 FirstWrite 107}}
	interStage2 {
		x1 {Type I LastRead 1 FirstWrite -1}
		y1 {Type I LastRead 1 FirstWrite -1}
		sigmaDiv1 {Type I LastRead 1 FirstWrite -1}
		SDiv1 {Type I LastRead 86 FirstWrite -1}
		SxDivS {Type I LastRead 97 FirstWrite -1}
		SxSquaredDivS {Type I LastRead 86 FirstWrite -1}
		SyDivS {Type I LastRead 86 FirstWrite -1}
		last2 {Type I LastRead 97 FirstWrite -1}
		resultStream {Type O LastRead -1 FirstWrite 97}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_r { axis {  { input_r_TDATA in_data 0 64 }  { input_r_TVALID in_vld 0 1 }  { input_r_TREADY in_acc 1 1 } } }
	output_r { axis {  { output_r_TDATA out_data 1 384 }  { output_r_TVALID out_vld 1 1 }  { output_r_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
