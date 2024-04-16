-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Fri Mar 15 14:33:30 2024
-- Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_design_Shifter_0_0_sim_netlist.vhdl
-- Design      : final_design_Shifter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Shifter is
  port (
    shifter_flag : out STD_LOGIC;
    data_in : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    shift_direction : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Shifter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Shifter is
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of shifter_flag_reg : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of shifter_flag_reg : label is "LD";
begin
\data_out[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => shift_direction,
      I1 => data_in(1),
      O => data_in(0)
    );
\data_out[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => shift_direction,
      I1 => data_in(2),
      I2 => data_in(0),
      O => data_in(1)
    );
\data_out[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => shift_direction,
      I1 => data_in(3),
      I2 => data_in(1),
      O => data_in(2)
    );
\data_out[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => shift_direction,
      I1 => data_in(4),
      I2 => data_in(2),
      O => data_in(3)
    );
\data_out[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => shift_direction,
      I1 => data_in(5),
      I2 => data_in(3),
      O => data_in(4)
    );
\data_out[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => shift_direction,
      I1 => data_in(6),
      I2 => data_in(4),
      O => data_in(5)
    );
\data_out[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E4"
    )
        port map (
      I0 => shift_direction,
      I1 => data_in(7),
      I2 => data_in(5),
      O => data_in(6)
    );
\data_out[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => shift_direction,
      I1 => data_in(6),
      O => data_in(7)
    );
shifter_flag_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      CLR => '0',
      D => data_in(0),
      G => shift_direction,
      GE => '1',
      Q => shifter_flag
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    shift_direction : in STD_LOGIC;
    shifter_en : in STD_LOGIC;
    load_shifter : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    shifter_flag : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "final_design_Shifter_0_0,Shifter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Shifter,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^data_in\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  \^data_in\(7 downto 0) <= data_in(7 downto 0);
  data_out(7 downto 0) <= \^data_in\(7 downto 0);
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Shifter
     port map (
      data_in(7 downto 0) => \^data_in\(7 downto 0),
      shift_direction => shift_direction,
      shifter_flag => shifter_flag
    );
end STRUCTURE;
