set moduleName sha256_core
set isTopModule 1
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
set C_modelName {sha256_core}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_in_V_data_V int 32 regular {axi_s 0 volatile  { data_in Data } }  }
	{ data_in_V_keep_V int 4 regular {axi_s 0 volatile  { data_in Keep } }  }
	{ data_in_V_strb_V int 4 regular {axi_s 0 volatile  { data_in Strb } }  }
	{ data_in_V_last_V int 1 regular {axi_s 0 volatile  { data_in Last } }  }
	{ hash_out_V_data_V int 32 regular {axi_s 1 volatile  { hash_out Data } }  }
	{ hash_out_V_keep_V int 4 regular {axi_s 1 volatile  { hash_out Keep } }  }
	{ hash_out_V_strb_V int 4 regular {axi_s 1 volatile  { hash_out Strb } }  }
	{ hash_out_V_last_V int 1 regular {axi_s 1 volatile  { hash_out Last } }  }
	{ num_blocks int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_in_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_in.V.data.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_in_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "data_in.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_in_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "data_in.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "data_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "hash_out_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "hash_out.V.data.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "hash_out_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "hash_out.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "hash_out_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "hash_out.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "hash_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "hash_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "num_blocks", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "num_blocks","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ data_in_TDATA sc_in sc_lv 32 signal 0 } 
	{ data_in_TVALID sc_in sc_logic 1 invld 3 } 
	{ data_in_TREADY sc_out sc_logic 1 inacc 3 } 
	{ data_in_TKEEP sc_in sc_lv 4 signal 1 } 
	{ data_in_TSTRB sc_in sc_lv 4 signal 2 } 
	{ data_in_TLAST sc_in sc_lv 1 signal 3 } 
	{ hash_out_TDATA sc_out sc_lv 32 signal 4 } 
	{ hash_out_TVALID sc_out sc_logic 1 outvld 7 } 
	{ hash_out_TREADY sc_in sc_logic 1 outacc 4 } 
	{ hash_out_TKEEP sc_out sc_lv 4 signal 5 } 
	{ hash_out_TSTRB sc_out sc_lv 4 signal 6 } 
	{ hash_out_TLAST sc_out sc_lv 1 signal 7 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"sha256_core","role":"start","value":"0","valid_bit":"0"},{"name":"sha256_core","role":"continue","value":"0","valid_bit":"4"},{"name":"sha256_core","role":"auto_start","value":"0","valid_bit":"7"},{"name":"num_blocks","role":"data","value":"16"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"sha256_core","role":"start","value":"0","valid_bit":"0"},{"name":"sha256_core","role":"done","value":"0","valid_bit":"1"},{"name":"sha256_core","role":"idle","value":"0","valid_bit":"2"},{"name":"sha256_core","role":"ready","value":"0","valid_bit":"3"},{"name":"sha256_core","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "data_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in_V_data_V", "role": "default" }} , 
 	{ "name": "data_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_in_V_keep_V", "role": "default" }} , 
 	{ "name": "data_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_in_V_strb_V", "role": "default" }} , 
 	{ "name": "data_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "hash_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hash_out_V_data_V", "role": "default" }} , 
 	{ "name": "hash_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hash_out_V_last_V", "role": "default" }} , 
 	{ "name": "hash_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "hash_out_V_data_V", "role": "default" }} , 
 	{ "name": "hash_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hash_out_V_keep_V", "role": "default" }} , 
 	{ "name": "hash_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hash_out_V_strb_V", "role": "default" }} , 
 	{ "name": "hash_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hash_out_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "13"],
		"CDFG" : "sha256_core",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sha256_transform_fu_359"}],
		"Port" : [
			{"Name" : "data_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_in_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "hash_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "hash_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hash_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "hash_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "hash_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "num_blocks", "Type" : "None", "Direction" : "I"},
			{"Name" : "K", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_sha256_transform_fu_359", "Port" : "K"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256_core_CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_359", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_359.K_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_359.sha256_core_mux_1bkb_U1", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_359.sha256_core_mux_6cud_U2", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_359.sha256_core_mux_6cud_U3", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_359.sha256_core_mux_6cud_U4", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_359.sha256_core_mux_6cud_U5", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_359.sha256_core_mux_6cud_U6", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_359.sha256_core_mux_6cud_U7", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_359.sha256_core_mux_6cud_U8", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sha256_transform_fu_359.sha256_core_mux_6cud_U9", "Parent" : "2"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sha256_core_mux_8dEe_U37", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_core {
		data_in_V_data_V {Type I LastRead 2 FirstWrite -1}
		data_in_V_keep_V {Type I LastRead 2 FirstWrite -1}
		data_in_V_strb_V {Type I LastRead 2 FirstWrite -1}
		data_in_V_last_V {Type I LastRead 2 FirstWrite -1}
		hash_out_V_data_V {Type O LastRead -1 FirstWrite 4}
		hash_out_V_keep_V {Type O LastRead -1 FirstWrite 4}
		hash_out_V_strb_V {Type O LastRead -1 FirstWrite 4}
		hash_out_V_last_V {Type O LastRead -1 FirstWrite 4}
		num_blocks {Type I LastRead 0 FirstWrite -1}
		K {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_in_V_data_V { axis {  { data_in_TDATA in_data 0 32 } } }
	data_in_V_keep_V { axis {  { data_in_TKEEP in_data 0 4 } } }
	data_in_V_strb_V { axis {  { data_in_TSTRB in_data 0 4 } } }
	data_in_V_last_V { axis {  { data_in_TVALID in_vld 0 1 }  { data_in_TREADY in_acc 1 1 }  { data_in_TLAST in_data 0 1 } } }
	hash_out_V_data_V { axis {  { hash_out_TDATA out_data 1 32 }  { hash_out_TREADY out_acc 0 1 } } }
	hash_out_V_keep_V { axis {  { hash_out_TKEEP out_data 1 4 } } }
	hash_out_V_strb_V { axis {  { hash_out_TSTRB out_data 1 4 } } }
	hash_out_V_last_V { axis {  { hash_out_TVALID out_vld 1 1 }  { hash_out_TLAST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

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
