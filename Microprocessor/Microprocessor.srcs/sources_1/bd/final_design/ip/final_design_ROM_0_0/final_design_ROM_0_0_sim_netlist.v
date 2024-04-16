// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Fri Mar 15 14:57:27 2024
// Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               U:/EEE228/EEE228_Microprocessor/Microprocessor/Microprocessor.srcs/sources_1/bd/final_design/ip/final_design_ROM_0_0/final_design_ROM_0_0_sim_netlist.v
// Design      : final_design_ROM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "final_design_ROM_0_0,ROM,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ROM,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module final_design_ROM_0_0
   (address,
    data,
    update);
  input [4:0]address;
  output [3:0]data;
  output update;

  wire [4:0]address;
  wire [3:0]data;
  wire update;

  LUT5 #(
    .INIT(32'hF07C3C7A)) 
    g0_b0
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[2]),
        .I3(address[3]),
        .I4(address[4]),
        .O(data[0]));
  LUT5 #(
    .INIT(32'hFBC0E0D0)) 
    g0_b1
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[2]),
        .I3(address[3]),
        .I4(address[4]),
        .O(data[1]));
  LUT5 #(
    .INIT(32'hF3BEDEBC)) 
    g0_b2
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[2]),
        .I3(address[3]),
        .I4(address[4]),
        .O(data[2]));
  LUT5 #(
    .INIT(32'hF4010100)) 
    g0_b3
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[2]),
        .I3(address[3]),
        .I4(address[4]),
        .O(data[3]));
  LUT1 #(
    .INIT(2'h1)) 
    update_INST_0
       (.I0(update),
        .O(update));
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
