-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Fri Mar 15 14:46:17 2024
-- Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               U:/EEE228/EEE228_Microprocessor/Microprocessor/Microprocessor.srcs/sources_1/bd/final_design/ip/final_design_Register_B_0_0/final_design_Register_B_0_0_sim_netlist.vhdl
-- Design      : final_design_Register_B_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_design_Register_B_0_0_Register_B is
  port (
    regB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    loadB : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of final_design_Register_B_0_0_Register_B : entity is "Register_B";
end final_design_Register_B_0_0_Register_B;

architecture STRUCTURE of final_design_Register_B_0_0_Register_B is
begin
\regB_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => loadB,
      CE => '1',
      D => D(0),
      Q => regB(0),
      R => '0'
    );
\regB_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => loadB,
      CE => '1',
      D => D(1),
      Q => regB(1),
      R => '0'
    );
\regB_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => loadB,
      CE => '1',
      D => D(2),
      Q => regB(2),
      R => '0'
    );
\regB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => loadB,
      CE => '1',
      D => D(3),
      Q => regB(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_design_Register_B_0_0 is
  port (
    B0 : in STD_LOGIC;
    B1 : in STD_LOGIC;
    B2 : in STD_LOGIC;
    B3 : in STD_LOGIC;
    loadB : in STD_LOGIC;
    regB : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of final_design_Register_B_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of final_design_Register_B_0_0 : entity is "final_design_Register_B_0_0,Register_B,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of final_design_Register_B_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of final_design_Register_B_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of final_design_Register_B_0_0 : entity is "Register_B,Vivado 2019.2";
end final_design_Register_B_0_0;

architecture STRUCTURE of final_design_Register_B_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^regb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  regB(7) <= \<const0>\;
  regB(6) <= \<const0>\;
  regB(5) <= \<const0>\;
  regB(4) <= \<const0>\;
  regB(3 downto 0) <= \^regb\(3 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.final_design_Register_B_0_0_Register_B
     port map (
      D(3) => B3,
      D(2) => B2,
      D(1) => B1,
      D(0) => B0,
      loadB => loadB,
      regB(3 downto 0) => \^regb\(3 downto 0)
    );
end STRUCTURE;
