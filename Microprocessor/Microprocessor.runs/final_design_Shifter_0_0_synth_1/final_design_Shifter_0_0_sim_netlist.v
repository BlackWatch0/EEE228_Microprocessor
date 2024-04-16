// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Fri Mar 15 14:33:30 2024
// Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_design_Shifter_0_0_sim_netlist.v
// Design      : final_design_Shifter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Shifter
   (shifter_flag,
    data_in,
    shift_direction);
  output shifter_flag;
  inout [7:0]data_in;
  input shift_direction;

  wire [7:0]data_in;
  wire shift_direction;
  wire shifter_flag;

  LUT2 #(
    .INIT(4'h4)) 
    \data_out[0]_INST_0 
       (.I0(shift_direction),
        .I1(data_in[1]),
        .O(data_in[0]));
  LUT3 #(
    .INIT(8'hE4)) 
    \data_out[1]_INST_0 
       (.I0(shift_direction),
        .I1(data_in[2]),
        .I2(data_in[0]),
        .O(data_in[1]));
  LUT3 #(
    .INIT(8'hE4)) 
    \data_out[2]_INST_0 
       (.I0(shift_direction),
        .I1(data_in[3]),
        .I2(data_in[1]),
        .O(data_in[2]));
  LUT3 #(
    .INIT(8'hE4)) 
    \data_out[3]_INST_0 
       (.I0(shift_direction),
        .I1(data_in[4]),
        .I2(data_in[2]),
        .O(data_in[3]));
  LUT3 #(
    .INIT(8'hE4)) 
    \data_out[4]_INST_0 
       (.I0(shift_direction),
        .I1(data_in[5]),
        .I2(data_in[3]),
        .O(data_in[4]));
  LUT3 #(
    .INIT(8'hE4)) 
    \data_out[5]_INST_0 
       (.I0(shift_direction),
        .I1(data_in[6]),
        .I2(data_in[4]),
        .O(data_in[5]));
  LUT3 #(
    .INIT(8'hE4)) 
    \data_out[6]_INST_0 
       (.I0(shift_direction),
        .I1(data_in[7]),
        .I2(data_in[5]),
        .O(data_in[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[7]_INST_0 
       (.I0(shift_direction),
        .I1(data_in[6]),
        .O(data_in[7]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    shifter_flag_reg
       (.CLR(1'b0),
        .D(data_in[0]),
        .G(shift_direction),
        .GE(1'b1),
        .Q(shifter_flag));
endmodule

(* CHECK_LICENSE_TYPE = "final_design_Shifter_0_0,Shifter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Shifter,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (data_in,
    shift_direction,
    shifter_en,
    load_shifter,
    data_out,
    shifter_flag);
  input [7:0]data_in;
  input shift_direction;
  input shifter_en;
  input load_shifter;
  output [7:0]data_out;
  output shifter_flag;

  wire [7:0]data_in;
  wire shift_direction;
  wire shifter_flag;

  assign data_out[7:0] = data_in;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Shifter inst
       (.data_in(data_in),
        .shift_direction(shift_direction),
        .shifter_flag(shifter_flag));
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
