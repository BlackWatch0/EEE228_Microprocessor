-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Fri Mar 15 14:31:07 2024
-- Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_design_Instruction_Decoder_0_0_stub.vhdl
-- Design      : final_design_Instruction_Decoder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    instruction : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    shifter_flag : in STD_LOGIC;
    loadA : out STD_LOGIC;
    loadB : out STD_LOGIC;
    loadO : out STD_LOGIC;
    MUX_0 : out STD_LOGIC;
    MUX_1 : out STD_LOGIC;
    shift_direction : out STD_LOGIC;
    shifter_en : out STD_LOGIC;
    load_shifter : out STD_LOGIC;
    ALU_Sel : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ALU_update : out STD_LOGIC;
    update_PC : out STD_LOGIC;
    acc_reset : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "instruction[3:0],clk,shifter_flag,loadA,loadB,loadO,MUX_0,MUX_1,shift_direction,shifter_en,load_shifter,ALU_Sel[3:0],ALU_update,update_PC,acc_reset";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Instruction_Decoder,Vivado 2019.2";
begin
end;
