-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Fri Mar 15 14:31:08 2024
-- Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               U:/EEE228/EEE228_Microprocessor/Microprocessor/Microprocessor.srcs/sources_1/bd/final_design/ip/final_design_Instruction_Register_0_0/final_design_Instruction_Register_0_0_sim_netlist.vhdl
-- Design      : final_design_Instruction_Register_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_design_Instruction_Register_0_0 is
  port (
    instructionIn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    update : in STD_LOGIC;
    instructionOut : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of final_design_Instruction_Register_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of final_design_Instruction_Register_0_0 : entity is "final_design_Instruction_Register_0_0,Instruction_Register,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of final_design_Instruction_Register_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of final_design_Instruction_Register_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of final_design_Instruction_Register_0_0 : entity is "Instruction_Register,Vivado 2019.2";
end final_design_Instruction_Register_0_0;

architecture STRUCTURE of final_design_Instruction_Register_0_0 is
  signal \^instructionin\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \^instructionin\(3 downto 0) <= instructionIn(3 downto 0);
  instructionOut(3 downto 0) <= \^instructionin\(3 downto 0);
end STRUCTURE;
