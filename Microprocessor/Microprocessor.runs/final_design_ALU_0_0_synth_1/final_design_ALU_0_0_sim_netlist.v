// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Fri Mar 15 15:27:29 2024
// Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_design_ALU_0_0_sim_netlist.v
// Design      : final_design_ALU_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU
   (regO,
    ALU_Sel,
    regB,
    regA);
  output [7:0]regO;
  input [3:0]ALU_Sel;
  input [7:0]regB;
  input [7:0]regA;

  wire [3:0]ALU_Sel;
  wire __5_carry__0_n_1;
  wire __5_carry__0_n_2;
  wire __5_carry__0_n_3;
  wire __5_carry_i_1__0_n_0;
  wire __5_carry_i_1_n_0;
  wire __5_carry_i_2__0_n_0;
  wire __5_carry_i_2_n_0;
  wire __5_carry_i_3__0_n_0;
  wire __5_carry_i_3_n_0;
  wire __5_carry_i_4__0_n_0;
  wire __5_carry_i_4_n_0;
  wire __5_carry_i_5_n_0;
  wire __5_carry_n_0;
  wire __5_carry_n_1;
  wire __5_carry_n_2;
  wire __5_carry_n_3;
  wire [7:0]data0;
  wire [7:0]regA;
  wire [7:0]regB;
  wire [7:0]regO;
  wire \regO_reg[0]_i_1_n_0 ;
  wire \regO_reg[0]_i_2_n_0 ;
  wire \regO_reg[1]_i_1_n_0 ;
  wire \regO_reg[1]_i_2_n_0 ;
  wire \regO_reg[2]_i_1_n_0 ;
  wire \regO_reg[2]_i_2_n_0 ;
  wire \regO_reg[3]_i_1_n_0 ;
  wire \regO_reg[3]_i_2_n_0 ;
  wire \regO_reg[4]_i_1_n_0 ;
  wire \regO_reg[4]_i_2_n_0 ;
  wire \regO_reg[5]_i_1_n_0 ;
  wire \regO_reg[5]_i_2_n_0 ;
  wire \regO_reg[6]_i_1_n_0 ;
  wire \regO_reg[6]_i_2_n_0 ;
  wire \regO_reg[7]_i_1_n_0 ;
  wire \regO_reg[7]_i_2_n_0 ;
  wire \regO_reg[7]_i_3_n_0 ;
  wire [3:3]NLW___5_carry__0_CO_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 __5_carry
       (.CI(1'b0),
        .CO({__5_carry_n_0,__5_carry_n_1,__5_carry_n_2,__5_carry_n_3}),
        .CYINIT(regA[0]),
        .DI({regA[3:1],__5_carry_i_1__0_n_0}),
        .O(data0[3:0]),
        .S({__5_carry_i_2__0_n_0,__5_carry_i_3__0_n_0,__5_carry_i_4__0_n_0,__5_carry_i_5_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 __5_carry__0
       (.CI(__5_carry_n_0),
        .CO({NLW___5_carry__0_CO_UNCONNECTED[3],__5_carry__0_n_1,__5_carry__0_n_2,__5_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,regA[6:4]}),
        .O(data0[7:4]),
        .S({__5_carry_i_1_n_0,__5_carry_i_2_n_0,__5_carry_i_3_n_0,__5_carry_i_4_n_0}));
  LUT4 #(
    .INIT(16'h59A6)) 
    __5_carry_i_1
       (.I0(regB[7]),
        .I1(ALU_Sel[1]),
        .I2(ALU_Sel[2]),
        .I3(regA[7]),
        .O(__5_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    __5_carry_i_1__0
       (.I0(ALU_Sel[1]),
        .I1(ALU_Sel[3]),
        .O(__5_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    __5_carry_i_2
       (.I0(regB[6]),
        .I1(ALU_Sel[1]),
        .I2(ALU_Sel[2]),
        .I3(regA[6]),
        .O(__5_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    __5_carry_i_2__0
       (.I0(regB[3]),
        .I1(ALU_Sel[1]),
        .I2(ALU_Sel[2]),
        .I3(regA[3]),
        .O(__5_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    __5_carry_i_3
       (.I0(regB[5]),
        .I1(ALU_Sel[1]),
        .I2(ALU_Sel[2]),
        .I3(regA[5]),
        .O(__5_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    __5_carry_i_3__0
       (.I0(regB[2]),
        .I1(ALU_Sel[1]),
        .I2(ALU_Sel[2]),
        .I3(regA[2]),
        .O(__5_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    __5_carry_i_4
       (.I0(regB[4]),
        .I1(ALU_Sel[1]),
        .I2(ALU_Sel[2]),
        .I3(regA[4]),
        .O(__5_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h59A6)) 
    __5_carry_i_4__0
       (.I0(regB[1]),
        .I1(ALU_Sel[1]),
        .I2(ALU_Sel[2]),
        .I3(regA[1]),
        .O(__5_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h6C9C)) 
    __5_carry_i_5
       (.I0(ALU_Sel[3]),
        .I1(regB[0]),
        .I2(ALU_Sel[1]),
        .I3(ALU_Sel[2]),
        .O(__5_carry_i_5_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regO_reg[0] 
       (.CLR(1'b0),
        .D(\regO_reg[0]_i_1_n_0 ),
        .G(\regO_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(regO[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \regO_reg[0]_i_1 
       (.I0(\regO_reg[0]_i_2_n_0 ),
        .I1(ALU_Sel[3]),
        .I2(data0[0]),
        .O(\regO_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4B7BFBB34B48C880)) 
    \regO_reg[0]_i_2 
       (.I0(regB[0]),
        .I1(ALU_Sel[2]),
        .I2(regA[0]),
        .I3(ALU_Sel[0]),
        .I4(ALU_Sel[1]),
        .I5(data0[0]),
        .O(\regO_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regO_reg[1] 
       (.CLR(1'b0),
        .D(\regO_reg[1]_i_1_n_0 ),
        .G(\regO_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(regO[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \regO_reg[1]_i_1 
       (.I0(\regO_reg[1]_i_2_n_0 ),
        .I1(ALU_Sel[3]),
        .I2(data0[1]),
        .O(\regO_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4B7BFBB34B48C880)) 
    \regO_reg[1]_i_2 
       (.I0(regB[1]),
        .I1(ALU_Sel[2]),
        .I2(regA[1]),
        .I3(ALU_Sel[0]),
        .I4(ALU_Sel[1]),
        .I5(data0[1]),
        .O(\regO_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regO_reg[2] 
       (.CLR(1'b0),
        .D(\regO_reg[2]_i_1_n_0 ),
        .G(\regO_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(regO[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \regO_reg[2]_i_1 
       (.I0(\regO_reg[2]_i_2_n_0 ),
        .I1(ALU_Sel[3]),
        .I2(data0[2]),
        .O(\regO_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4B7BFBB34B48C880)) 
    \regO_reg[2]_i_2 
       (.I0(regB[2]),
        .I1(ALU_Sel[2]),
        .I2(regA[2]),
        .I3(ALU_Sel[0]),
        .I4(ALU_Sel[1]),
        .I5(data0[2]),
        .O(\regO_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regO_reg[3] 
       (.CLR(1'b0),
        .D(\regO_reg[3]_i_1_n_0 ),
        .G(\regO_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(regO[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \regO_reg[3]_i_1 
       (.I0(\regO_reg[3]_i_2_n_0 ),
        .I1(ALU_Sel[3]),
        .I2(data0[3]),
        .O(\regO_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4B7BFBB34B48C880)) 
    \regO_reg[3]_i_2 
       (.I0(regB[3]),
        .I1(ALU_Sel[2]),
        .I2(regA[3]),
        .I3(ALU_Sel[0]),
        .I4(ALU_Sel[1]),
        .I5(data0[3]),
        .O(\regO_reg[3]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regO_reg[4] 
       (.CLR(1'b0),
        .D(\regO_reg[4]_i_1_n_0 ),
        .G(\regO_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(regO[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \regO_reg[4]_i_1 
       (.I0(\regO_reg[4]_i_2_n_0 ),
        .I1(ALU_Sel[3]),
        .I2(data0[4]),
        .O(\regO_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4B7BFBB34B48C880)) 
    \regO_reg[4]_i_2 
       (.I0(regB[4]),
        .I1(ALU_Sel[2]),
        .I2(regA[4]),
        .I3(ALU_Sel[0]),
        .I4(ALU_Sel[1]),
        .I5(data0[4]),
        .O(\regO_reg[4]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regO_reg[5] 
       (.CLR(1'b0),
        .D(\regO_reg[5]_i_1_n_0 ),
        .G(\regO_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(regO[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \regO_reg[5]_i_1 
       (.I0(\regO_reg[5]_i_2_n_0 ),
        .I1(ALU_Sel[3]),
        .I2(data0[5]),
        .O(\regO_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4B7BFBB34B48C880)) 
    \regO_reg[5]_i_2 
       (.I0(regB[5]),
        .I1(ALU_Sel[2]),
        .I2(regA[5]),
        .I3(ALU_Sel[0]),
        .I4(ALU_Sel[1]),
        .I5(data0[5]),
        .O(\regO_reg[5]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regO_reg[6] 
       (.CLR(1'b0),
        .D(\regO_reg[6]_i_1_n_0 ),
        .G(\regO_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(regO[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \regO_reg[6]_i_1 
       (.I0(\regO_reg[6]_i_2_n_0 ),
        .I1(ALU_Sel[3]),
        .I2(data0[6]),
        .O(\regO_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4B7BFBB34B48C880)) 
    \regO_reg[6]_i_2 
       (.I0(regB[6]),
        .I1(ALU_Sel[2]),
        .I2(regA[6]),
        .I3(ALU_Sel[0]),
        .I4(ALU_Sel[1]),
        .I5(data0[6]),
        .O(\regO_reg[6]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regO_reg[7] 
       (.CLR(1'b0),
        .D(\regO_reg[7]_i_1_n_0 ),
        .G(\regO_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(regO[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \regO_reg[7]_i_1 
       (.I0(\regO_reg[7]_i_3_n_0 ),
        .I1(ALU_Sel[3]),
        .I2(data0[7]),
        .O(\regO_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \regO_reg[7]_i_2 
       (.I0(ALU_Sel[2]),
        .I1(ALU_Sel[1]),
        .I2(ALU_Sel[0]),
        .I3(ALU_Sel[3]),
        .O(\regO_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4B7BFBB34B48C880)) 
    \regO_reg[7]_i_3 
       (.I0(regB[7]),
        .I1(ALU_Sel[2]),
        .I2(regA[7]),
        .I3(ALU_Sel[0]),
        .I4(ALU_Sel[1]),
        .I5(data0[7]),
        .O(\regO_reg[7]_i_3_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "final_design_ALU_0_0,ALU,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ALU,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (regA,
    regB,
    ALU_Sel,
    ALU_update,
    regO);
  input [7:0]regA;
  input [7:0]regB;
  input [3:0]ALU_Sel;
  input ALU_update;
  output [7:0]regO;

  wire [3:0]ALU_Sel;
  wire [7:0]regA;
  wire [7:0]regB;
  wire [7:0]regO;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU inst
       (.ALU_Sel(ALU_Sel),
        .regA(regA),
        .regB(regB),
        .regO(regO));
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
