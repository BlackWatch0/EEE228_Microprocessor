//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
//Date        : Fri Mar  1 14:18:33 2024
//Host        : TEN14B31F0D46B1 running 64-bit major release  (build 9200)
//Command     : generate_target final_design_wrapper.bd
//Design      : final_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module final_design_wrapper
   (A0_0,
    A1_0,
    A2_0,
    A3_0,
    B0_0,
    B1_0,
    B2_0,
    B3_0,
    clk_0,
    currentPC_0,
    regO_0,
    start_0);
  input A0_0;
  input A1_0;
  input A2_0;
  input A3_0;
  input B0_0;
  input B1_0;
  input B2_0;
  input B3_0;
  input clk_0;
  output [4:0]currentPC_0;
  output [7:0]regO_0;
  input start_0;

  wire A0_0;
  wire A1_0;
  wire A2_0;
  wire A3_0;
  wire B0_0;
  wire B1_0;
  wire B2_0;
  wire B3_0;
  wire clk_0;
  wire [4:0]currentPC_0;
  wire [7:0]regO_0;
  wire start_0;

  final_design final_design_i
       (.A0_0(A0_0),
        .A1_0(A1_0),
        .A2_0(A2_0),
        .A3_0(A3_0),
        .B0_0(B0_0),
        .B1_0(B1_0),
        .B2_0(B2_0),
        .B3_0(B3_0),
        .clk_0(clk_0),
        .currentPC_0(currentPC_0),
        .regO_0(regO_0),
        .start_0(start_0));
endmodule
