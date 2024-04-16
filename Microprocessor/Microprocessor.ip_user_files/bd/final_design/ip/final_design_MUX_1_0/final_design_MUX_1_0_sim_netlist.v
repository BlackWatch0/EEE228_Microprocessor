// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Fri Mar 15 14:34:53 2024
// Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               U:/EEE228/EEE228_Microprocessor/Microprocessor/Microprocessor.srcs/sources_1/bd/final_design/ip/final_design_MUX_1_0/final_design_MUX_1_0_sim_netlist.v
// Design      : final_design_MUX_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "final_design_MUX_1_0,MUX,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "MUX,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module final_design_MUX_1_0
   (A,
    B,
    MUX_Sel,
    MUX_Reg);
  input [7:0]A;
  input [7:0]B;
  input MUX_Sel;
  output [7:0]MUX_Reg;

  wire [7:0]A;
  wire [7:0]B;
  wire [7:0]MUX_Reg;
  wire MUX_Sel;

  final_design_MUX_1_0_MUX inst
       (.A(A),
        .B(B),
        .MUX_Reg(MUX_Reg),
        .MUX_Sel(MUX_Sel));
endmodule

(* ORIG_REF_NAME = "MUX" *) 
module final_design_MUX_1_0_MUX
   (MUX_Reg,
    B,
    A,
    MUX_Sel);
  output [7:0]MUX_Reg;
  input [7:0]B;
  input [7:0]A;
  input MUX_Sel;

  wire [7:0]A;
  wire [7:0]B;
  wire [7:0]MUX_Reg;
  wire MUX_Sel;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \MUX_Reg[0]_INST_0 
       (.I0(B[0]),
        .I1(A[0]),
        .I2(MUX_Sel),
        .O(MUX_Reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \MUX_Reg[1]_INST_0 
       (.I0(B[1]),
        .I1(A[1]),
        .I2(MUX_Sel),
        .O(MUX_Reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \MUX_Reg[2]_INST_0 
       (.I0(B[2]),
        .I1(A[2]),
        .I2(MUX_Sel),
        .O(MUX_Reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \MUX_Reg[3]_INST_0 
       (.I0(B[3]),
        .I1(A[3]),
        .I2(MUX_Sel),
        .O(MUX_Reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \MUX_Reg[4]_INST_0 
       (.I0(B[4]),
        .I1(A[4]),
        .I2(MUX_Sel),
        .O(MUX_Reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \MUX_Reg[5]_INST_0 
       (.I0(B[5]),
        .I1(A[5]),
        .I2(MUX_Sel),
        .O(MUX_Reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \MUX_Reg[6]_INST_0 
       (.I0(B[6]),
        .I1(A[6]),
        .I2(MUX_Sel),
        .O(MUX_Reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \MUX_Reg[7]_INST_0 
       (.I0(B[7]),
        .I1(A[7]),
        .I2(MUX_Sel),
        .O(MUX_Reg[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
