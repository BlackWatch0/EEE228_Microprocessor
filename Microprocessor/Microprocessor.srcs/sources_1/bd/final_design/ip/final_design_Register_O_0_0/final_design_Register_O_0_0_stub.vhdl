-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Fri Mar 15 14:33:33 2024
-- Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               U:/EEE228/EEE228_Microprocessor/Microprocessor/Microprocessor.srcs/sources_1/bd/final_design/ip/final_design_Register_O_0_0/final_design_Register_O_0_0_stub.vhdl
-- Design      : final_design_Register_O_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity final_design_Register_O_0_0 is
  Port ( 
    output_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    loadO : in STD_LOGIC;
    Register_Output : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end final_design_Register_O_0_0;

architecture stub of final_design_Register_O_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "output_data[7:0],loadO,Register_Output[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Register_O,Vivado 2019.2";
begin
end;
