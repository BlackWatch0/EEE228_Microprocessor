-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Fri Mar 15 14:57:26 2024
-- Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_design_ROM_0_0_sim_netlist.vhdl
-- Design      : final_design_ROM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    address : in STD_LOGIC_VECTOR ( 4 downto 0 );
    data : out STD_LOGIC_VECTOR ( 3 downto 0 );
    update : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "final_design_ROM_0_0,ROM,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ROM,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^update\ : STD_LOGIC;
begin
  update <= \^update\;
g0_b0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F07C3C7A"
    )
        port map (
      I0 => address(0),
      I1 => address(1),
      I2 => address(2),
      I3 => address(3),
      I4 => address(4),
      O => data(0)
    );
g0_b1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBC0E0D0"
    )
        port map (
      I0 => address(0),
      I1 => address(1),
      I2 => address(2),
      I3 => address(3),
      I4 => address(4),
      O => data(1)
    );
g0_b2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3BEDEBC"
    )
        port map (
      I0 => address(0),
      I1 => address(1),
      I2 => address(2),
      I3 => address(3),
      I4 => address(4),
      O => data(2)
    );
g0_b3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4010100"
    )
        port map (
      I0 => address(0),
      I1 => address(1),
      I2 => address(2),
      I3 => address(3),
      I4 => address(4),
      O => data(3)
    );
update_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^update\,
      O => \^update\
    );
end STRUCTURE;
