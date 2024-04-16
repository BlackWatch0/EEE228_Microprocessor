// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Fri Mar 15 14:31:07 2024
// Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_design_Instruction_Decoder_0_0_sim_netlist.v
// Design      : final_design_Instruction_Decoder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Instruction_Decoder
   (loadA,
    loadB,
    loadO,
    MUX_0,
    MUX_1,
    shift_direction,
    shifter_en,
    load_shifter,
    ALU_Sel,
    ALU_update,
    update_PC,
    acc_reset,
    instruction,
    shifter_flag);
  output loadA;
  output loadB;
  output loadO;
  output MUX_0;
  output MUX_1;
  output shift_direction;
  output shifter_en;
  output load_shifter;
  output [3:0]ALU_Sel;
  output ALU_update;
  output update_PC;
  output acc_reset;
  input [3:0]instruction;
  input shifter_flag;

  wire [3:0]ALU_Sel;
  wire \ALU_Sel_reg[0]_i_1_n_0 ;
  wire \ALU_Sel_reg[1]_i_1_n_0 ;
  wire \ALU_Sel_reg[2]_i_1_n_0 ;
  wire \ALU_Sel_reg[3]_i_1_n_0 ;
  wire \ALU_Sel_reg[3]_i_2_n_0 ;
  wire ALU_update;
  wire ALU_update_reg_i_1_n_0;
  wire MUX_0;
  wire MUX_0_reg_i_1_n_0;
  wire MUX_0_reg_i_2_n_0;
  wire MUX_0_reg_i_3_n_0;
  wire MUX_1;
  wire MUX_1_reg_i_1_n_0;
  wire MUX_1_reg_i_2_n_0;
  wire acc_reset;
  wire acc_reset_reg_i_1_n_0;
  wire acc_reset_reg_i_2_n_0;
  wire [1:1]counter;
  wire [3:0]instruction;
  wire loadA;
  wire loadA_reg_i_1_n_0;
  wire loadA_reg_i_2_n_0;
  wire loadB;
  wire loadB_reg_i_1_n_0;
  wire loadO;
  wire loadO_reg_i_1_n_0;
  wire load_shifter;
  wire load_shifter_reg_i_1_n_0;
  wire load_shifter_reg_i_2_n_0;
  wire shift_direction;
  wire shift_direction_reg_i_1_n_0;
  wire shift_direction_reg_i_2_n_0;
  wire shifter_en;
  wire shifter_en_reg_i_1_n_0;
  wire shifter_en_reg_i_2_n_0;
  wire shifter_flag;
  wire update_PC;
  wire update_PC_reg_i_1_n_0;
  wire update_PC_reg_i_2_n_0;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALU_Sel_reg[0] 
       (.CLR(1'b0),
        .D(\ALU_Sel_reg[0]_i_1_n_0 ),
        .G(\ALU_Sel_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(ALU_Sel[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h08FB)) 
    \ALU_Sel_reg[0]_i_1 
       (.I0(instruction[0]),
        .I1(counter),
        .I2(acc_reset_reg_i_1_n_0),
        .I3(instruction[3]),
        .O(\ALU_Sel_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALU_Sel_reg[1] 
       (.CLR(1'b0),
        .D(\ALU_Sel_reg[1]_i_1_n_0 ),
        .G(\ALU_Sel_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(ALU_Sel[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h40FB)) 
    \ALU_Sel_reg[1]_i_1 
       (.I0(acc_reset_reg_i_1_n_0),
        .I1(counter),
        .I2(instruction[1]),
        .I3(instruction[3]),
        .O(\ALU_Sel_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALU_Sel_reg[2] 
       (.CLR(1'b0),
        .D(\ALU_Sel_reg[2]_i_1_n_0 ),
        .G(\ALU_Sel_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(ALU_Sel[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h08FB)) 
    \ALU_Sel_reg[2]_i_1 
       (.I0(instruction[2]),
        .I1(counter),
        .I2(acc_reset_reg_i_1_n_0),
        .I3(instruction[3]),
        .O(\ALU_Sel_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALU_Sel_reg[3] 
       (.CLR(1'b0),
        .D(instruction[3]),
        .G(\ALU_Sel_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(ALU_Sel[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \ALU_Sel_reg[3]_i_1 
       (.I0(counter),
        .I1(acc_reset_reg_i_1_n_0),
        .I2(\ALU_Sel_reg[3]_i_2_n_0 ),
        .O(\ALU_Sel_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80817FFF)) 
    \ALU_Sel_reg[3]_i_2 
       (.I0(instruction[1]),
        .I1(instruction[0]),
        .I2(instruction[2]),
        .I3(shifter_flag),
        .I4(instruction[3]),
        .I5(acc_reset_reg_i_1_n_0),
        .O(\ALU_Sel_reg[3]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ALU_update_reg
       (.CLR(1'b0),
        .D(ALU_update_reg_i_1_n_0),
        .G(\ALU_Sel_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(ALU_update));
  LUT1 #(
    .INIT(2'h1)) 
    ALU_update_reg_i_1
       (.I0(ALU_update),
        .O(ALU_update_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    MUX_0_reg
       (.CLR(1'b0),
        .D(MUX_0_reg_i_1_n_0),
        .G(MUX_0_reg_i_2_n_0),
        .GE(1'b1),
        .Q(MUX_0));
  LUT3 #(
    .INIT(8'h74)) 
    MUX_0_reg_i_1
       (.I0(instruction[1]),
        .I1(instruction[0]),
        .I2(instruction[2]),
        .O(MUX_0_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h4101535100000000)) 
    MUX_0_reg_i_2
       (.I0(instruction[3]),
        .I1(instruction[1]),
        .I2(instruction[0]),
        .I3(shifter_flag),
        .I4(instruction[2]),
        .I5(MUX_0_reg_i_3_n_0),
        .O(MUX_0_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h4)) 
    MUX_0_reg_i_3
       (.I0(counter),
        .I1(acc_reset_reg_i_1_n_0),
        .O(MUX_0_reg_i_3_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    MUX_1_reg
       (.CLR(1'b0),
        .D(MUX_1_reg_i_1_n_0),
        .G(MUX_1_reg_i_2_n_0),
        .GE(1'b1),
        .Q(MUX_1));
  LUT2 #(
    .INIT(4'h8)) 
    MUX_1_reg_i_1
       (.I0(instruction[3]),
        .I1(shifter_flag),
        .O(MUX_1_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h4000005D00000000)) 
    MUX_1_reg_i_2
       (.I0(instruction[3]),
        .I1(shifter_flag),
        .I2(instruction[0]),
        .I3(instruction[2]),
        .I4(instruction[1]),
        .I5(MUX_0_reg_i_3_n_0),
        .O(MUX_1_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    acc_reset_reg
       (.CLR(1'b0),
        .D(acc_reset_reg_i_1_n_0),
        .G(acc_reset_reg_i_2_n_0),
        .GE(1'b1),
        .Q(acc_reset));
  LUT1 #(
    .INIT(2'h1)) 
    acc_reset_reg_i_1
       (.I0(acc_reset_reg_i_1_n_0),
        .O(acc_reset_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h7111111111111111)) 
    acc_reset_reg_i_2
       (.I0(acc_reset_reg_i_1_n_0),
        .I1(counter),
        .I2(instruction[3]),
        .I3(instruction[2]),
        .I4(instruction[0]),
        .I5(instruction[1]),
        .O(acc_reset_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    loadA_reg
       (.CLR(1'b0),
        .D(loadA_reg_i_1_n_0),
        .G(loadA_reg_i_2_n_0),
        .GE(1'b1),
        .Q(loadA));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    loadA_reg_i_1
       (.I0(counter),
        .I1(acc_reset_reg_i_1_n_0),
        .O(loadA_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h1111111111111115)) 
    loadA_reg_i_2
       (.I0(acc_reset_reg_i_1_n_0),
        .I1(counter),
        .I2(instruction[1]),
        .I3(instruction[0]),
        .I4(instruction[2]),
        .I5(instruction[3]),
        .O(loadA_reg_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    loadA_reg_i_3
       (.I0(acc_reset_reg_i_1_n_0),
        .I1(counter),
        .O(counter));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    loadB_reg
       (.CLR(1'b0),
        .D(loadA_reg_i_1_n_0),
        .G(loadB_reg_i_1_n_0),
        .GE(1'b1),
        .Q(loadB));
  LUT6 #(
    .INIT(64'h1111111111111511)) 
    loadB_reg_i_1
       (.I0(acc_reset_reg_i_1_n_0),
        .I1(counter),
        .I2(instruction[1]),
        .I3(instruction[0]),
        .I4(instruction[2]),
        .I5(instruction[3]),
        .O(loadB_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    loadO_reg
       (.CLR(1'b0),
        .D(loadA_reg_i_1_n_0),
        .G(loadO_reg_i_1_n_0),
        .GE(1'b1),
        .Q(loadO));
  LUT6 #(
    .INIT(64'h1111111111111511)) 
    loadO_reg_i_1
       (.I0(acc_reset_reg_i_1_n_0),
        .I1(counter),
        .I2(instruction[0]),
        .I3(instruction[1]),
        .I4(instruction[2]),
        .I5(instruction[3]),
        .O(loadO_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    load_shifter_reg
       (.CLR(1'b0),
        .D(load_shifter_reg_i_1_n_0),
        .G(load_shifter_reg_i_2_n_0),
        .GE(1'b1),
        .Q(load_shifter));
  LUT1 #(
    .INIT(2'h1)) 
    load_shifter_reg_i_1
       (.I0(load_shifter),
        .O(load_shifter_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000002400000000)) 
    load_shifter_reg_i_2
       (.I0(instruction[1]),
        .I1(instruction[2]),
        .I2(instruction[0]),
        .I3(acc_reset_reg_i_1_n_0),
        .I4(instruction[3]),
        .I5(counter),
        .O(load_shifter_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    shift_direction_reg
       (.CLR(1'b0),
        .D(shift_direction_reg_i_1_n_0),
        .G(shift_direction_reg_i_2_n_0),
        .GE(1'b1),
        .Q(shift_direction));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h28)) 
    shift_direction_reg_i_1
       (.I0(instruction[1]),
        .I1(counter),
        .I2(acc_reset_reg_i_1_n_0),
        .O(shift_direction_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h1115151111111111)) 
    shift_direction_reg_i_2
       (.I0(acc_reset_reg_i_1_n_0),
        .I1(counter),
        .I2(instruction[3]),
        .I3(instruction[0]),
        .I4(instruction[1]),
        .I5(instruction[2]),
        .O(shift_direction_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    shifter_en_reg
       (.CLR(1'b0),
        .D(shifter_en_reg_i_1_n_0),
        .G(shifter_en_reg_i_2_n_0),
        .GE(1'b1),
        .Q(shifter_en));
  LUT1 #(
    .INIT(2'h1)) 
    shifter_en_reg_i_1
       (.I0(shifter_en),
        .O(shifter_en_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000014000000)) 
    shifter_en_reg_i_2
       (.I0(instruction[3]),
        .I1(instruction[0]),
        .I2(instruction[1]),
        .I3(instruction[2]),
        .I4(counter),
        .I5(acc_reset_reg_i_1_n_0),
        .O(shifter_en_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    update_PC_reg
       (.CLR(1'b0),
        .D(update_PC_reg_i_1_n_0),
        .G(update_PC_reg_i_2_n_0),
        .GE(1'b1),
        .Q(update_PC));
  LUT1 #(
    .INIT(2'h1)) 
    update_PC_reg_i_1
       (.I0(update_PC),
        .O(update_PC_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    update_PC_reg_i_2
       (.I0(counter),
        .I1(acc_reset_reg_i_1_n_0),
        .O(update_PC_reg_i_2_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "final_design_Instruction_Decoder_0_0,Instruction_Decoder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Instruction_Decoder,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (instruction,
    clk,
    shifter_flag,
    loadA,
    loadB,
    loadO,
    MUX_0,
    MUX_1,
    shift_direction,
    shifter_en,
    load_shifter,
    ALU_Sel,
    ALU_update,
    update_PC,
    acc_reset);
  input [3:0]instruction;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN final_design_clk_0, INSERT_VIP 0" *) input clk;
  input shifter_flag;
  output loadA;
  output loadB;
  output loadO;
  output MUX_0;
  output MUX_1;
  output shift_direction;
  output shifter_en;
  output load_shifter;
  output [3:0]ALU_Sel;
  output ALU_update;
  output update_PC;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 acc_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME acc_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output acc_reset;

  wire [3:0]ALU_Sel;
  wire ALU_update;
  wire MUX_0;
  wire MUX_1;
  wire acc_reset;
  wire [3:0]instruction;
  wire loadA;
  wire loadB;
  wire loadO;
  wire load_shifter;
  wire shift_direction;
  wire shifter_en;
  wire shifter_flag;
  wire update_PC;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Instruction_Decoder inst
       (.ALU_Sel(ALU_Sel),
        .ALU_update(ALU_update),
        .MUX_0(MUX_0),
        .MUX_1(MUX_1),
        .acc_reset(acc_reset),
        .instruction(instruction),
        .loadA(loadA),
        .loadB(loadB),
        .loadO(loadO),
        .load_shifter(load_shifter),
        .shift_direction(shift_direction),
        .shifter_en(shifter_en),
        .shifter_flag(shifter_flag),
        .update_PC(update_PC));
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
