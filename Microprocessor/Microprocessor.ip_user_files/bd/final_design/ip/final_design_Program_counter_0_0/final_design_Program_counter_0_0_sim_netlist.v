// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Fri Mar 15 14:29:58 2024
// Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               U:/EEE228/EEE228_Microprocessor/Microprocessor/Microprocessor.srcs/sources_1/bd/final_design/ip/final_design_Program_counter_0_0/final_design_Program_counter_0_0_sim_netlist.v
// Design      : final_design_Program_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "final_design_Program_counter_0_0,Program_counter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Program_counter,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module final_design_Program_counter_0_0
   (update_PC,
    currentPC);
  input update_PC;
  output [4:0]currentPC;

  wire [4:0]currentPC;

  final_design_Program_counter_0_0_Program_counter inst
       (.currentPC(currentPC));
endmodule

(* ORIG_REF_NAME = "Program_counter" *) 
module final_design_Program_counter_0_0_Program_counter
   (currentPC);
  output [4:0]currentPC;

  wire [4:0]currentPC;

  LUT1 #(
    .INIT(2'h1)) 
    \currentPC[0]_INST_0 
       (.I0(currentPC[0]),
        .O(currentPC[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \currentPC[1]_INST_0 
       (.I0(currentPC[0]),
        .I1(currentPC[1]),
        .O(currentPC[1]));
  LUT3 #(
    .INIT(8'hE1)) 
    \currentPC[2]_INST_0 
       (.I0(currentPC[0]),
        .I1(currentPC[1]),
        .I2(currentPC[2]),
        .O(currentPC[2]));
  LUT4 #(
    .INIT(16'hFE01)) 
    \currentPC[3]_INST_0 
       (.I0(currentPC[1]),
        .I1(currentPC[0]),
        .I2(currentPC[2]),
        .I3(currentPC[3]),
        .O(currentPC[3]));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \currentPC[4]_INST_0 
       (.I0(currentPC[2]),
        .I1(currentPC[0]),
        .I2(currentPC[1]),
        .I3(currentPC[3]),
        .I4(currentPC[4]),
        .O(currentPC[4]));
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
