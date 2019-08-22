############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project -reset yolov2_ap16_n2m32_inburst
set_top YOLO2_FPGA

add_files src/cnn.h
add_files src/cnn.cpp
add_files -tb tb/main.cpp
add_files -tb tb/yolov2.cfg
add_files -tb tb/coco.names
open_solution -reset "solution1"
set_part {xc7z020clg400-1}
create_clock -period 5.2 -name default
csim_design
csynth_design
# cosim_design
export_design -rtl verilog -format ip_catalog
close_project

exit
