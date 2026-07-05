-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Jul  5 11:24:23 2026
-- Host        : DESKTOP-139JR2K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Phan_mem/Phan_mem/XilinxVivado/zynq_book/sha_block/hsa_block.srcs/sources_1/bd/design_1/ip/design_1_sha256_core_1_0/design_1_sha256_core_1_0_stub.vhdl
-- Design      : design_1_sha256_core_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_sha256_core_1_0 is
  Port ( 
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    data_in_TVALID : in STD_LOGIC;
    data_in_TREADY : out STD_LOGIC;
    data_in_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_in_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    hash_out_TVALID : out STD_LOGIC;
    hash_out_TREADY : in STD_LOGIC;
    hash_out_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    hash_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    hash_out_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hash_out_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_sha256_core_1_0;

architecture stub of design_1_sha256_core_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CTRL_AWADDR[4:0],s_axi_CTRL_AWVALID,s_axi_CTRL_AWREADY,s_axi_CTRL_WDATA[31:0],s_axi_CTRL_WSTRB[3:0],s_axi_CTRL_WVALID,s_axi_CTRL_WREADY,s_axi_CTRL_BRESP[1:0],s_axi_CTRL_BVALID,s_axi_CTRL_BREADY,s_axi_CTRL_ARADDR[4:0],s_axi_CTRL_ARVALID,s_axi_CTRL_ARREADY,s_axi_CTRL_RDATA[31:0],s_axi_CTRL_RRESP[1:0],s_axi_CTRL_RVALID,s_axi_CTRL_RREADY,ap_clk,ap_rst_n,interrupt,data_in_TVALID,data_in_TREADY,data_in_TDATA[31:0],data_in_TLAST[0:0],data_in_TKEEP[3:0],data_in_TSTRB[3:0],hash_out_TVALID,hash_out_TREADY,hash_out_TDATA[31:0],hash_out_TLAST[0:0],hash_out_TKEEP[3:0],hash_out_TSTRB[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "sha256_core,Vivado 2019.1";
begin
end;
