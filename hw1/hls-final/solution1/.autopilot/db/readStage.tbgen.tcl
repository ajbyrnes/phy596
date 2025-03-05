set moduleName readStage
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {readStage}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r int 64 regular {axi_s 0 volatile  { input_r Data } }  }
	{ partialS int 64 regular {fifo 1 volatile }  }
	{ partialSx int 64 regular {fifo 1 volatile }  }
	{ partialSy int 64 regular {fifo 1 volatile }  }
	{ x1 int 12 regular {fifo 1 volatile }  }
	{ x2 int 12 regular {fifo 1 volatile }  }
	{ y1 int 12 regular {fifo 1 volatile }  }
	{ y2 int 12 regular {fifo 1 volatile }  }
	{ sigmaDiv1 int 64 regular {fifo 1 volatile }  }
	{ sigmaSquaredDiv1 int 64 regular {fifo 1 volatile }  }
	{ last1 int 2 regular {fifo 1 volatile }  }
	{ last2 int 2 regular {fifo 1 volatile }  }
	{ last3 int 2 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "partialS", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "partialSx", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "partialSy", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x1", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x2", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "y1", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "y2", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sigmaDiv1", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sigmaSquaredDiv1", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "last1", "interface" : "fifo", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "last2", "interface" : "fifo", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "last3", "interface" : "fifo", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 73
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_TVALID sc_in sc_logic 1 invld 0 } 
	{ x1_din sc_out sc_lv 12 signal 4 } 
	{ x1_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ x1_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ x1_full_n sc_in sc_logic 1 signal 4 } 
	{ x1_write sc_out sc_logic 1 signal 4 } 
	{ x2_din sc_out sc_lv 12 signal 5 } 
	{ x2_num_data_valid sc_in sc_lv 5 signal 5 } 
	{ x2_fifo_cap sc_in sc_lv 5 signal 5 } 
	{ x2_full_n sc_in sc_logic 1 signal 5 } 
	{ x2_write sc_out sc_logic 1 signal 5 } 
	{ y1_din sc_out sc_lv 12 signal 6 } 
	{ y1_num_data_valid sc_in sc_lv 5 signal 6 } 
	{ y1_fifo_cap sc_in sc_lv 5 signal 6 } 
	{ y1_full_n sc_in sc_logic 1 signal 6 } 
	{ y1_write sc_out sc_logic 1 signal 6 } 
	{ y2_din sc_out sc_lv 12 signal 7 } 
	{ y2_num_data_valid sc_in sc_lv 5 signal 7 } 
	{ y2_fifo_cap sc_in sc_lv 5 signal 7 } 
	{ y2_full_n sc_in sc_logic 1 signal 7 } 
	{ y2_write sc_out sc_logic 1 signal 7 } 
	{ sigmaDiv1_din sc_out sc_lv 64 signal 8 } 
	{ sigmaDiv1_num_data_valid sc_in sc_lv 5 signal 8 } 
	{ sigmaDiv1_fifo_cap sc_in sc_lv 5 signal 8 } 
	{ sigmaDiv1_full_n sc_in sc_logic 1 signal 8 } 
	{ sigmaDiv1_write sc_out sc_logic 1 signal 8 } 
	{ sigmaSquaredDiv1_din sc_out sc_lv 64 signal 9 } 
	{ sigmaSquaredDiv1_num_data_valid sc_in sc_lv 5 signal 9 } 
	{ sigmaSquaredDiv1_fifo_cap sc_in sc_lv 5 signal 9 } 
	{ sigmaSquaredDiv1_full_n sc_in sc_logic 1 signal 9 } 
	{ sigmaSquaredDiv1_write sc_out sc_logic 1 signal 9 } 
	{ last1_din sc_out sc_lv 2 signal 10 } 
	{ last1_num_data_valid sc_in sc_lv 5 signal 10 } 
	{ last1_fifo_cap sc_in sc_lv 5 signal 10 } 
	{ last1_full_n sc_in sc_logic 1 signal 10 } 
	{ last1_write sc_out sc_logic 1 signal 10 } 
	{ last2_din sc_out sc_lv 2 signal 11 } 
	{ last2_num_data_valid sc_in sc_lv 5 signal 11 } 
	{ last2_fifo_cap sc_in sc_lv 5 signal 11 } 
	{ last2_full_n sc_in sc_logic 1 signal 11 } 
	{ last2_write sc_out sc_logic 1 signal 11 } 
	{ last3_din sc_out sc_lv 2 signal 12 } 
	{ last3_num_data_valid sc_in sc_lv 5 signal 12 } 
	{ last3_fifo_cap sc_in sc_lv 5 signal 12 } 
	{ last3_full_n sc_in sc_logic 1 signal 12 } 
	{ last3_write sc_out sc_logic 1 signal 12 } 
	{ partialS_din sc_out sc_lv 64 signal 1 } 
	{ partialS_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ partialS_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ partialS_full_n sc_in sc_logic 1 signal 1 } 
	{ partialS_write sc_out sc_logic 1 signal 1 } 
	{ partialSx_din sc_out sc_lv 64 signal 2 } 
	{ partialSx_num_data_valid sc_in sc_lv 5 signal 2 } 
	{ partialSx_fifo_cap sc_in sc_lv 5 signal 2 } 
	{ partialSx_full_n sc_in sc_logic 1 signal 2 } 
	{ partialSx_write sc_out sc_logic 1 signal 2 } 
	{ partialSy_din sc_out sc_lv 64 signal 3 } 
	{ partialSy_num_data_valid sc_in sc_lv 5 signal 3 } 
	{ partialSy_fifo_cap sc_in sc_lv 5 signal 3 } 
	{ partialSy_full_n sc_in sc_logic 1 signal 3 } 
	{ partialSy_write sc_out sc_logic 1 signal 3 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ input_r_TDATA sc_in sc_lv 64 signal 0 } 
	{ input_r_TREADY sc_out sc_logic 1 inacc 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_r_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_r", "role": "TVALID" }} , 
 	{ "name": "x1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x1", "role": "din" }} , 
 	{ "name": "x1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x1", "role": "num_data_valid" }} , 
 	{ "name": "x1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x1", "role": "fifo_cap" }} , 
 	{ "name": "x1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x1", "role": "full_n" }} , 
 	{ "name": "x1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x1", "role": "write" }} , 
 	{ "name": "x2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "x2", "role": "din" }} , 
 	{ "name": "x2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x2", "role": "num_data_valid" }} , 
 	{ "name": "x2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "x2", "role": "fifo_cap" }} , 
 	{ "name": "x2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x2", "role": "full_n" }} , 
 	{ "name": "x2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x2", "role": "write" }} , 
 	{ "name": "y1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "y1", "role": "din" }} , 
 	{ "name": "y1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y1", "role": "num_data_valid" }} , 
 	{ "name": "y1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y1", "role": "fifo_cap" }} , 
 	{ "name": "y1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y1", "role": "full_n" }} , 
 	{ "name": "y1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y1", "role": "write" }} , 
 	{ "name": "y2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "y2", "role": "din" }} , 
 	{ "name": "y2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y2", "role": "num_data_valid" }} , 
 	{ "name": "y2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y2", "role": "fifo_cap" }} , 
 	{ "name": "y2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y2", "role": "full_n" }} , 
 	{ "name": "y2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y2", "role": "write" }} , 
 	{ "name": "sigmaDiv1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sigmaDiv1", "role": "din" }} , 
 	{ "name": "sigmaDiv1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sigmaDiv1", "role": "num_data_valid" }} , 
 	{ "name": "sigmaDiv1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sigmaDiv1", "role": "fifo_cap" }} , 
 	{ "name": "sigmaDiv1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigmaDiv1", "role": "full_n" }} , 
 	{ "name": "sigmaDiv1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigmaDiv1", "role": "write" }} , 
 	{ "name": "sigmaSquaredDiv1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sigmaSquaredDiv1", "role": "din" }} , 
 	{ "name": "sigmaSquaredDiv1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sigmaSquaredDiv1", "role": "num_data_valid" }} , 
 	{ "name": "sigmaSquaredDiv1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sigmaSquaredDiv1", "role": "fifo_cap" }} , 
 	{ "name": "sigmaSquaredDiv1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigmaSquaredDiv1", "role": "full_n" }} , 
 	{ "name": "sigmaSquaredDiv1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigmaSquaredDiv1", "role": "write" }} , 
 	{ "name": "last1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "last1", "role": "din" }} , 
 	{ "name": "last1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "last1", "role": "num_data_valid" }} , 
 	{ "name": "last1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "last1", "role": "fifo_cap" }} , 
 	{ "name": "last1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last1", "role": "full_n" }} , 
 	{ "name": "last1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last1", "role": "write" }} , 
 	{ "name": "last2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "last2", "role": "din" }} , 
 	{ "name": "last2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "last2", "role": "num_data_valid" }} , 
 	{ "name": "last2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "last2", "role": "fifo_cap" }} , 
 	{ "name": "last2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last2", "role": "full_n" }} , 
 	{ "name": "last2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last2", "role": "write" }} , 
 	{ "name": "last3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "last3", "role": "din" }} , 
 	{ "name": "last3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "last3", "role": "num_data_valid" }} , 
 	{ "name": "last3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "last3", "role": "fifo_cap" }} , 
 	{ "name": "last3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last3", "role": "full_n" }} , 
 	{ "name": "last3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last3", "role": "write" }} , 
 	{ "name": "partialS_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "partialS", "role": "din" }} , 
 	{ "name": "partialS_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "partialS", "role": "num_data_valid" }} , 
 	{ "name": "partialS_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "partialS", "role": "fifo_cap" }} , 
 	{ "name": "partialS_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "partialS", "role": "full_n" }} , 
 	{ "name": "partialS_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "partialS", "role": "write" }} , 
 	{ "name": "partialSx_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "partialSx", "role": "din" }} , 
 	{ "name": "partialSx_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "partialSx", "role": "num_data_valid" }} , 
 	{ "name": "partialSx_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "partialSx", "role": "fifo_cap" }} , 
 	{ "name": "partialSx_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "partialSx", "role": "full_n" }} , 
 	{ "name": "partialSx_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "partialSx", "role": "write" }} , 
 	{ "name": "partialSy_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "partialSy", "role": "din" }} , 
 	{ "name": "partialSy_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "partialSy", "role": "num_data_valid" }} , 
 	{ "name": "partialSy_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "partialSy", "role": "fifo_cap" }} , 
 	{ "name": "partialSy_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "partialSy", "role": "full_n" }} , 
 	{ "name": "partialSy_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "partialSy", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "input_r_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "input_r", "role": "TDATA" }} , 
 	{ "name": "input_r_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_r", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
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
			{"Name" : "partialS", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "partialS_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "partialSx", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "partialSx_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "partialSy", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "partialSy_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "y1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "y2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sigmaDiv1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sigmaDiv1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sigmaSquaredDiv1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "sigmaSquaredDiv1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "last1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "last2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "last3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "last3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter40", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter40", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_34s_34s_68_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_48_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_36s_12s_48_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_34ns_12s_34_38_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_input_r_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		last3 {Type O LastRead -1 FirstWrite 40}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_r { axis {  { input_r_TVALID in_vld 0 1 }  { input_r_TDATA in_data 0 64 }  { input_r_TREADY in_acc 1 1 } } }
	partialS { ap_fifo {  { partialS_din fifo_port_we 1 64 }  { partialS_num_data_valid fifo_status_num_data_valid 0 5 }  { partialS_fifo_cap fifo_update 0 5 }  { partialS_full_n fifo_status 0 1 }  { partialS_write fifo_data 1 1 } } }
	partialSx { ap_fifo {  { partialSx_din fifo_port_we 1 64 }  { partialSx_num_data_valid fifo_status_num_data_valid 0 5 }  { partialSx_fifo_cap fifo_update 0 5 }  { partialSx_full_n fifo_status 0 1 }  { partialSx_write fifo_data 1 1 } } }
	partialSy { ap_fifo {  { partialSy_din fifo_port_we 1 64 }  { partialSy_num_data_valid fifo_status_num_data_valid 0 5 }  { partialSy_fifo_cap fifo_update 0 5 }  { partialSy_full_n fifo_status 0 1 }  { partialSy_write fifo_data 1 1 } } }
	x1 { ap_fifo {  { x1_din fifo_port_we 1 12 }  { x1_num_data_valid fifo_status_num_data_valid 0 5 }  { x1_fifo_cap fifo_update 0 5 }  { x1_full_n fifo_status 0 1 }  { x1_write fifo_data 1 1 } } }
	x2 { ap_fifo {  { x2_din fifo_port_we 1 12 }  { x2_num_data_valid fifo_status_num_data_valid 0 5 }  { x2_fifo_cap fifo_update 0 5 }  { x2_full_n fifo_status 0 1 }  { x2_write fifo_data 1 1 } } }
	y1 { ap_fifo {  { y1_din fifo_port_we 1 12 }  { y1_num_data_valid fifo_status_num_data_valid 0 5 }  { y1_fifo_cap fifo_update 0 5 }  { y1_full_n fifo_status 0 1 }  { y1_write fifo_data 1 1 } } }
	y2 { ap_fifo {  { y2_din fifo_port_we 1 12 }  { y2_num_data_valid fifo_status_num_data_valid 0 5 }  { y2_fifo_cap fifo_update 0 5 }  { y2_full_n fifo_status 0 1 }  { y2_write fifo_data 1 1 } } }
	sigmaDiv1 { ap_fifo {  { sigmaDiv1_din fifo_port_we 1 64 }  { sigmaDiv1_num_data_valid fifo_status_num_data_valid 0 5 }  { sigmaDiv1_fifo_cap fifo_update 0 5 }  { sigmaDiv1_full_n fifo_status 0 1 }  { sigmaDiv1_write fifo_data 1 1 } } }
	sigmaSquaredDiv1 { ap_fifo {  { sigmaSquaredDiv1_din fifo_port_we 1 64 }  { sigmaSquaredDiv1_num_data_valid fifo_status_num_data_valid 0 5 }  { sigmaSquaredDiv1_fifo_cap fifo_update 0 5 }  { sigmaSquaredDiv1_full_n fifo_status 0 1 }  { sigmaSquaredDiv1_write fifo_data 1 1 } } }
	last1 { ap_fifo {  { last1_din fifo_port_we 1 2 }  { last1_num_data_valid fifo_status_num_data_valid 0 5 }  { last1_fifo_cap fifo_update 0 5 }  { last1_full_n fifo_status 0 1 }  { last1_write fifo_data 1 1 } } }
	last2 { ap_fifo {  { last2_din fifo_port_we 1 2 }  { last2_num_data_valid fifo_status_num_data_valid 0 5 }  { last2_fifo_cap fifo_update 0 5 }  { last2_full_n fifo_status 0 1 }  { last2_write fifo_data 1 1 } } }
	last3 { ap_fifo {  { last3_din fifo_port_we 1 2 }  { last3_num_data_valid fifo_status_num_data_valid 0 5 }  { last3_fifo_cap fifo_update 0 5 }  { last3_full_n fifo_status 0 1 }  { last3_write fifo_data 1 1 } } }
}
