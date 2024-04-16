-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Fri Mar 15 14:33:31 2024
-- Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               U:/EEE228/EEE228_Microprocessor/Microprocessor/Microprocessor.srcs/sources_1/bd/final_design/ip/final_design_Shifter_0_0/final_design_Shifter_0_0_stub.vhdl
-- Design      : final_design_Shifter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity final_design_Shifter_0_0 is
  Port ( 
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    shift_direction : in STD_LOGIC;
    shifter_en : in STD_LOGIC;
    load_shifter : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    shifter_flag : out STD_LOGIC
  );

end final_design_Shifter_0_0;

architecture stub of final_design_Shifter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_in[7:0],shift_direction,shifter_en,load_shifter,data_out[7:0],shifter_flag";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Shifter,Vivado 2019.2";
begin
end;
