############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ex4_HLS
add_files ex4_HLS/src/ex4.cpp
add_files ex4_HLS/src/ex4.h
open_solution "solution1"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
#source "./ex4_HLS/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
