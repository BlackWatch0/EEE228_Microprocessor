-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Fri Mar 15 14:34:52 2024
-- Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_design_MUX_1_0_sim_netlist.vhdl
-- Design      : final_design_MUX_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX is
  port (
    MUX_Reg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MUX_Sel : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \MUX_Reg[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \MUX_Reg[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \MUX_Reg[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \MUX_Reg[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \MUX_Reg[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \MUX_Reg[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \MUX_Reg[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \MUX_Reg[7]_INST_0\ : label is "soft_lutpair3";
begin
\MUX_Reg[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      I2 => MUX_Sel,
      O => MUX_Reg(0)
    );
\MUX_Reg[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(1),
      I1 => A(1),
      I2 => MUX_Sel,
      O => MUX_Reg(1)
    );
\MUX_Reg[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      I2 => MUX_Sel,
      O => MUX_Reg(2)
    );
\MUX_Reg[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
      I2 => MUX_Sel,
      O => MUX_Reg(3)
    );
\MUX_Reg[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      I2 => MUX_Sel,
      O => MUX_Reg(4)
    );
\MUX_Reg[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(5),
      I1 => A(5),
      I2 => MUX_Sel,
      O => MUX_Reg(5)
    );
\MUX_Reg[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      I2 => MUX_Sel,
      O => MUX_Reg(6)
    );
\MUX_Reg[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => B(7),
      I1 => A(7),
      I2 => MUX_Sel,
      O => MUX_Reg(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MUX_Sel : in STD_LOGIC;
    MUX_Reg : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "final_design_MUX_1_0,MUX,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "MUX,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX
     port map (
      A(7 downto 0) => A(7 downto 0),
      B(7 downto 0) => B(7 downto 0),
      MUX_Reg(7 downto 0) => MUX_Reg(7 downto 0),
      MUX_Sel => MUX_Sel
    );
end STRUCTURE;
