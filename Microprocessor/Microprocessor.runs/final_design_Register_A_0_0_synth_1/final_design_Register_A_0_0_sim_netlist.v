// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Fri Mar 15 14:45:53 2024
// Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_design_Register_A_0_0_sim_netlist.v
// Design      : final_design_Register_A_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Register_A
   (regA,
    D,
    loadA);
  output [3:0]regA;
  input [3:0]D;
  input loadA;

  wire [3:0]D;
  wire loadA;
  wire [3:0]regA;

  FDRE \regA_reg[0] 
       (.C(loadA),
        .CE(1'b1),
        .D(D[0]),
        .Q(regA[0]),
        .R(1'b0));
  FDRE \regA_reg[1] 
       (.C(loadA),
        .CE(1'b1),
        .D(D[1]),
        .Q(regA[1]),
        .R(1'b0));
  FDRE \regA_reg[2] 
       (.C(loadA),
        .CE(1'b1),
        .D(D[2]),
        .Q(regA[2]),
        .R(1'b0));
  FDRE \regA_reg[3] 
       (.C(loadA),
        .CE(1'b1),
        .D(D[3]),
        .Q(regA[3]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "final_design_Register_A_0_0,Register_A,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Register_A,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A0,
    A1,
    A2,
    A3,
    loadA,
    regA);
  input A0;
  input A1;
  input A2;
  input A3;
  input loadA;
  output [7:0]regA;

  wire \<const0> ;
  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire loadA;
  wire [3:0]\^regA ;

  assign regA[7] = \<const0> ;
  assign regA[6] = \<const0> ;
  assign regA[5] = \<const0> ;
  assign regA[4] = \<const0> ;
  assign regA[3:0] = \^regA [3:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Register_A inst
       (.D({A3,A2,A1,A0}),
        .loadA(loadA),
        .regA(\^regA ));
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
