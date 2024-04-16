// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Fri Mar 15 14:46:16 2024
// Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               U:/EEE228/EEE228_Microprocessor/Microprocessor/Microprocessor.srcs/sources_1/bd/final_design/ip/final_design_Register_B_0_0/final_design_Register_B_0_0_stub.v
// Design      : final_design_Register_B_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Register_B,Vivado 2019.2" *)
module final_design_Register_B_0_0(B0, B1, B2, B3, loadB, regB)
/* synthesis syn_black_box black_box_pad_pin="B0,B1,B2,B3,loadB,regB[7:0]" */;
  input B0;
  input B1;
  input B2;
  input B3;
  input loadB;
  output [7:0]regB;
endmodule
