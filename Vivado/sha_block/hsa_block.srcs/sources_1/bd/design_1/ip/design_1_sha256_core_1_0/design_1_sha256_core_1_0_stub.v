// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Jul  5 11:24:23 2026
// Host        : DESKTOP-139JR2K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Phan_mem/Phan_mem/XilinxVivado/zynq_book/sha_block/hsa_block.srcs/sources_1/bd/design_1/ip/design_1_sha256_core_1_0/design_1_sha256_core_1_0_stub.v
// Design      : design_1_sha256_core_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sha256_core,Vivado 2019.1" *)
module design_1_sha256_core_1_0(s_axi_CTRL_AWADDR, s_axi_CTRL_AWVALID, 
  s_axi_CTRL_AWREADY, s_axi_CTRL_WDATA, s_axi_CTRL_WSTRB, s_axi_CTRL_WVALID, 
  s_axi_CTRL_WREADY, s_axi_CTRL_BRESP, s_axi_CTRL_BVALID, s_axi_CTRL_BREADY, 
  s_axi_CTRL_ARADDR, s_axi_CTRL_ARVALID, s_axi_CTRL_ARREADY, s_axi_CTRL_RDATA, 
  s_axi_CTRL_RRESP, s_axi_CTRL_RVALID, s_axi_CTRL_RREADY, ap_clk, ap_rst_n, interrupt, 
  data_in_TVALID, data_in_TREADY, data_in_TDATA, data_in_TLAST, data_in_TKEEP, data_in_TSTRB, 
  hash_out_TVALID, hash_out_TREADY, hash_out_TDATA, hash_out_TLAST, hash_out_TKEEP, 
  hash_out_TSTRB)
/* synthesis syn_black_box black_box_pad_pin="s_axi_CTRL_AWADDR[4:0],s_axi_CTRL_AWVALID,s_axi_CTRL_AWREADY,s_axi_CTRL_WDATA[31:0],s_axi_CTRL_WSTRB[3:0],s_axi_CTRL_WVALID,s_axi_CTRL_WREADY,s_axi_CTRL_BRESP[1:0],s_axi_CTRL_BVALID,s_axi_CTRL_BREADY,s_axi_CTRL_ARADDR[4:0],s_axi_CTRL_ARVALID,s_axi_CTRL_ARREADY,s_axi_CTRL_RDATA[31:0],s_axi_CTRL_RRESP[1:0],s_axi_CTRL_RVALID,s_axi_CTRL_RREADY,ap_clk,ap_rst_n,interrupt,data_in_TVALID,data_in_TREADY,data_in_TDATA[31:0],data_in_TLAST[0:0],data_in_TKEEP[3:0],data_in_TSTRB[3:0],hash_out_TVALID,hash_out_TREADY,hash_out_TDATA[31:0],hash_out_TLAST[0:0],hash_out_TKEEP[3:0],hash_out_TSTRB[3:0]" */;
  input [4:0]s_axi_CTRL_AWADDR;
  input s_axi_CTRL_AWVALID;
  output s_axi_CTRL_AWREADY;
  input [31:0]s_axi_CTRL_WDATA;
  input [3:0]s_axi_CTRL_WSTRB;
  input s_axi_CTRL_WVALID;
  output s_axi_CTRL_WREADY;
  output [1:0]s_axi_CTRL_BRESP;
  output s_axi_CTRL_BVALID;
  input s_axi_CTRL_BREADY;
  input [4:0]s_axi_CTRL_ARADDR;
  input s_axi_CTRL_ARVALID;
  output s_axi_CTRL_ARREADY;
  output [31:0]s_axi_CTRL_RDATA;
  output [1:0]s_axi_CTRL_RRESP;
  output s_axi_CTRL_RVALID;
  input s_axi_CTRL_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input data_in_TVALID;
  output data_in_TREADY;
  input [31:0]data_in_TDATA;
  input [0:0]data_in_TLAST;
  input [3:0]data_in_TKEEP;
  input [3:0]data_in_TSTRB;
  output hash_out_TVALID;
  input hash_out_TREADY;
  output [31:0]hash_out_TDATA;
  output [0:0]hash_out_TLAST;
  output [3:0]hash_out_TKEEP;
  output [3:0]hash_out_TSTRB;
endmodule
