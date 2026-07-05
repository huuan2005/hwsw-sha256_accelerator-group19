############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sha256_core
set_top sha256_core
add_files ../../../../../Dell/Documents/HK2_2526/HW_SW/Project_ck/HLS/sha256.cpp
add_files ../../../../../Dell/Documents/HK2_2526/HW_SW/Project_ck/HLS/sha256.h
add_files -tb ../../../../../Dell/Documents/HK2_2526/HW_SW/Project_ck/HLS/tb_sha256.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg484-1} -tool vivado
create_clock -period 15 -name default
config_export -format ip_catalog -rtl verilog -vivado_optimization_level 2 -vivado_phys_opt place -vivado_report_level 0
config_sdx -optimization_level none -target none
set_clock_uncertainty 12.5%
#source "./sha256_core/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -tool xsim
export_design -rtl verilog -format ip_catalog
