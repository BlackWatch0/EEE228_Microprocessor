-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Fri Mar 15 14:45:53 2024
-- Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_design_Register_A_0_0_sim_netlist.vhdl
-- Design      : final_design_Register_A_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Register_A is
  port (
    regA : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    loadA : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Register_A;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Register_A is
begin
\regA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => loadA,
      CE => '1',
      D => D(0),
      Q => regA(0),
      R => '0'
    );
\regA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => loadA,
      CE => '1',
      D => D(1),
      Q => regA(1),
      R => '0'
    );
\regA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => loadA,
      CE => '1',
      D => D(2),
      Q => regA(2),
      R => '0'
    );
\regA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => loadA,
      CE => '1',
      D => D(3),
      Q => regA(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    A3 : in STD_LOGIC;
    loadA : in STD_LOGIC;
    regA : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "final_design_Register_A_0_0,Register_A,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Register_A,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^rega\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  regA(7) <= \<const0>\;
  regA(6) <= \<const0>\;
  regA(5) <= \<const0>\;
  regA(4) <= \<const0>\;
  regA(3 downto 0) <= \^rega\(3 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Register_A
     port map (
      D(3) => A3,
      D(2) => A2,
      D(1) => A1,
      D(0) => A0,
      loadA => loadA,
      regA(3 downto 0) => \^rega\(3 downto 0)
    );
end STRUCTURE;
