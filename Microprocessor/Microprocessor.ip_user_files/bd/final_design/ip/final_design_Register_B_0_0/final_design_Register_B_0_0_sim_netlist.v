// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Fri Mar 15 14:46:16 2024
// Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               U:/EEE228/EEE228_Microprocessor/Microprocessor/Microprocessor.srcs/sources_1/bd/final_design/ip/final_design_Register_B_0_0/final_design_Register_B_0_0_sim_netlist.v
// Design      : final_design_Register_B_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "final_design_Register_B_0_0,Register_B,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Register_B,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module final_design_Register_B_0_0
   (B0,
    B1,
    B2,
    B3,
    loadB,
    regB);
  input B0;
  input B1;
  input B2;
  input B3;
  input loadB;
  output [7:0]regB;

  wire \<const0> ;
  wire B0;
  wire B1;
  wire B2;
  wire B3;
  wire loadB;
  wire [3:0]\^regB ;

  assign regB[7] = \<const0> ;
  assign regB[6] = \<const0> ;
  assign regB[5] = \<const0> ;
  assign regB[4] = \<const0> ;
  assign regB[3:0] = \^regB [3:0];
  GND GND
       (.G(\<const0> ));
  final_design_Register_B_0_0_Register_B inst
       (.D({B3,B2,B1,B0}),
        .loadB(loadB),
        .regB(\^regB ));
endmodule

(* ORIG_REF_NAME = "Register_B" *) 
module final_design_Register_B_0_0_Register_B
   (regB,
    D,
    loadB);
  output [3:0]regB;
  input [3:0]D;
  input loadB;

  wire [3:0]D;
  wire loadB;
  wire [3:0]regB;

  FDRE \regB_reg[0] 
       (.C(loadB),
        .CE(1'b1),
        .D(D[0]),
        .Q(regB[0]),
        .R(1'b0));
  FDRE \regB_reg[1] 
       (.C(loadB),
        .CE(1'b1),
        .D(D[1]),
        .Q(regB[1]),
        .R(1'b0));
  FDRE \regB_reg[2] 
       (.C(loadB),
        .CE(1'b1),
        .D(D[2]),
        .Q(regB[2]),
        .R(1'b0));
  FDRE \regB_reg[3] 
       (.C(loadB),
        .CE(1'b1),
        .D(D[3]),
        .Q(regB[3]),
        .R(1'b0));
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
