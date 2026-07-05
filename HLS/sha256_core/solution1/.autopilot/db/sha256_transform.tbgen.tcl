set moduleName sha256_transform
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {sha256_transform}
set C_modelType { int 256 }
set C_modelArgList {
	{ state_0_V_read int 32 regular  }
	{ state_1_V_read int 32 regular  }
	{ state_2_V_read int 32 regular  }
	{ state_3_V_read int 32 regular  }
	{ state_4_V_read int 32 regular  }
	{ state_5_V_read int 32 regular  }
	{ state_6_V_read int 32 regular  }
	{ state_7_V_read int 32 regular  }
	{ block_0_V_read int 32 regular  }
	{ block_1_V_read int 32 regular  }
	{ block_2_V_read int 32 regular  }
	{ block_3_V_read int 32 regular  }
	{ block_4_V_read int 32 regular  }
	{ block_5_V_read int 32 regular  }
	{ block_6_V_read int 32 regular  }
	{ block_7_V_read int 32 regular  }
	{ block_8_V_read int 32 regular  }
	{ block_9_V_read int 32 regular  }
	{ block_10_V_read int 32 regular  }
	{ block_11_V_read int 32 regular  }
	{ block_12_V_read int 32 regular  }
	{ block_13_V_read int 32 regular  }
	{ block_14_V_read int 32 regular  }
	{ block_15_V_read int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state_0_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_1_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_2_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_3_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_4_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_5_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_6_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "state_7_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_0_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_1_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_2_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_3_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_4_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_5_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_6_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_7_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_8_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_9_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_10_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_11_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_12_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_13_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_14_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "block_15_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 256} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ state_0_V_read sc_in sc_lv 32 signal 0 } 
	{ state_1_V_read sc_in sc_lv 32 signal 1 } 
	{ state_2_V_read sc_in sc_lv 32 signal 2 } 
	{ state_3_V_read sc_in sc_lv 32 signal 3 } 
	{ state_4_V_read sc_in sc_lv 32 signal 4 } 
	{ state_5_V_read sc_in sc_lv 32 signal 5 } 
	{ state_6_V_read sc_in sc_lv 32 signal 6 } 
	{ state_7_V_read sc_in sc_lv 32 signal 7 } 
	{ block_0_V_read sc_in sc_lv 32 signal 8 } 
	{ block_1_V_read sc_in sc_lv 32 signal 9 } 
	{ block_2_V_read sc_in sc_lv 32 signal 10 } 
	{ block_3_V_read sc_in sc_lv 32 signal 11 } 
	{ block_4_V_read sc_in sc_lv 32 signal 12 } 
	{ block_5_V_read sc_in sc_lv 32 signal 13 } 
	{ block_6_V_read sc_in sc_lv 32 signal 14 } 
	{ block_7_V_read sc_in sc_lv 32 signal 15 } 
	{ block_8_V_read sc_in sc_lv 32 signal 16 } 
	{ block_9_V_read sc_in sc_lv 32 signal 17 } 
	{ block_10_V_read sc_in sc_lv 32 signal 18 } 
	{ block_11_V_read sc_in sc_lv 32 signal 19 } 
	{ block_12_V_read sc_in sc_lv 32 signal 20 } 
	{ block_13_V_read sc_in sc_lv 32 signal 21 } 
	{ block_14_V_read sc_in sc_lv 32 signal 22 } 
	{ block_15_V_read sc_in sc_lv 32 signal 23 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 32 signal -1 } 
	{ ap_return_5 sc_out sc_lv 32 signal -1 } 
	{ ap_return_6 sc_out sc_lv 32 signal -1 } 
	{ ap_return_7 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "state_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_0_V_read", "role": "default" }} , 
 	{ "name": "state_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_1_V_read", "role": "default" }} , 
 	{ "name": "state_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_2_V_read", "role": "default" }} , 
 	{ "name": "state_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_3_V_read", "role": "default" }} , 
 	{ "name": "state_4_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_4_V_read", "role": "default" }} , 
 	{ "name": "state_5_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_5_V_read", "role": "default" }} , 
 	{ "name": "state_6_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_6_V_read", "role": "default" }} , 
 	{ "name": "state_7_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "state_7_V_read", "role": "default" }} , 
 	{ "name": "block_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_0_V_read", "role": "default" }} , 
 	{ "name": "block_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_1_V_read", "role": "default" }} , 
 	{ "name": "block_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_2_V_read", "role": "default" }} , 
 	{ "name": "block_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_3_V_read", "role": "default" }} , 
 	{ "name": "block_4_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_4_V_read", "role": "default" }} , 
 	{ "name": "block_5_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_5_V_read", "role": "default" }} , 
 	{ "name": "block_6_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_6_V_read", "role": "default" }} , 
 	{ "name": "block_7_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_7_V_read", "role": "default" }} , 
 	{ "name": "block_8_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_8_V_read", "role": "default" }} , 
 	{ "name": "block_9_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_9_V_read", "role": "default" }} , 
 	{ "name": "block_10_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_10_V_read", "role": "default" }} , 
 	{ "name": "block_11_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_11_V_read", "role": "default" }} , 
 	{ "name": "block_12_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_12_V_read", "role": "default" }} , 
 	{ "name": "block_13_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_13_V_read", "role": "default" }} , 
 	{ "name": "block_14_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_14_V_read", "role": "default" }} , 
 	{ "name": "block_15_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "block_15_V_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "sha256_transform",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "307", "EstimateLatencyMax" : "307",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_9_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_10_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_11_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_12_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_13_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_14_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "block_15_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.K_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256_core_mux_1bkb_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256_core_mux_6cud_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256_core_mux_6cud_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256_core_mux_6cud_U4", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256_core_mux_6cud_U5", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256_core_mux_6cud_U6", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256_core_mux_6cud_U7", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256_core_mux_6cud_U8", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256_core_mux_6cud_U9", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_transform {
		state_0_V_read {Type I LastRead 0 FirstWrite -1}
		state_1_V_read {Type I LastRead 0 FirstWrite -1}
		state_2_V_read {Type I LastRead 0 FirstWrite -1}
		state_3_V_read {Type I LastRead 0 FirstWrite -1}
		state_4_V_read {Type I LastRead 0 FirstWrite -1}
		state_5_V_read {Type I LastRead 0 FirstWrite -1}
		state_6_V_read {Type I LastRead 0 FirstWrite -1}
		state_7_V_read {Type I LastRead 0 FirstWrite -1}
		block_0_V_read {Type I LastRead 0 FirstWrite -1}
		block_1_V_read {Type I LastRead 0 FirstWrite -1}
		block_2_V_read {Type I LastRead 0 FirstWrite -1}
		block_3_V_read {Type I LastRead 0 FirstWrite -1}
		block_4_V_read {Type I LastRead 0 FirstWrite -1}
		block_5_V_read {Type I LastRead 0 FirstWrite -1}
		block_6_V_read {Type I LastRead 0 FirstWrite -1}
		block_7_V_read {Type I LastRead 0 FirstWrite -1}
		block_8_V_read {Type I LastRead 0 FirstWrite -1}
		block_9_V_read {Type I LastRead 0 FirstWrite -1}
		block_10_V_read {Type I LastRead 0 FirstWrite -1}
		block_11_V_read {Type I LastRead 0 FirstWrite -1}
		block_12_V_read {Type I LastRead 0 FirstWrite -1}
		block_13_V_read {Type I LastRead 0 FirstWrite -1}
		block_14_V_read {Type I LastRead 0 FirstWrite -1}
		block_15_V_read {Type I LastRead 0 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "307", "Max" : "307"}
	, {"Name" : "Interval", "Min" : "307", "Max" : "307"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	state_0_V_read { ap_none {  { state_0_V_read in_data 0 32 } } }
	state_1_V_read { ap_none {  { state_1_V_read in_data 0 32 } } }
	state_2_V_read { ap_none {  { state_2_V_read in_data 0 32 } } }
	state_3_V_read { ap_none {  { state_3_V_read in_data 0 32 } } }
	state_4_V_read { ap_none {  { state_4_V_read in_data 0 32 } } }
	state_5_V_read { ap_none {  { state_5_V_read in_data 0 32 } } }
	state_6_V_read { ap_none {  { state_6_V_read in_data 0 32 } } }
	state_7_V_read { ap_none {  { state_7_V_read in_data 0 32 } } }
	block_0_V_read { ap_none {  { block_0_V_read in_data 0 32 } } }
	block_1_V_read { ap_none {  { block_1_V_read in_data 0 32 } } }
	block_2_V_read { ap_none {  { block_2_V_read in_data 0 32 } } }
	block_3_V_read { ap_none {  { block_3_V_read in_data 0 32 } } }
	block_4_V_read { ap_none {  { block_4_V_read in_data 0 32 } } }
	block_5_V_read { ap_none {  { block_5_V_read in_data 0 32 } } }
	block_6_V_read { ap_none {  { block_6_V_read in_data 0 32 } } }
	block_7_V_read { ap_none {  { block_7_V_read in_data 0 32 } } }
	block_8_V_read { ap_none {  { block_8_V_read in_data 0 32 } } }
	block_9_V_read { ap_none {  { block_9_V_read in_data 0 32 } } }
	block_10_V_read { ap_none {  { block_10_V_read in_data 0 32 } } }
	block_11_V_read { ap_none {  { block_11_V_read in_data 0 32 } } }
	block_12_V_read { ap_none {  { block_12_V_read in_data 0 32 } } }
	block_13_V_read { ap_none {  { block_13_V_read in_data 0 32 } } }
	block_14_V_read { ap_none {  { block_14_V_read in_data 0 32 } } }
	block_15_V_read { ap_none {  { block_15_V_read in_data 0 32 } } }
}
