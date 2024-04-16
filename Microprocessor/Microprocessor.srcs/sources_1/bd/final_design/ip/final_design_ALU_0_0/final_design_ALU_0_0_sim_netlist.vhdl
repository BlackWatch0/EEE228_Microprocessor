-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Fri Mar 15 15:27:30 2024
-- Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               U:/EEE228/EEE228_Microprocessor/Microprocessor/Microprocessor.srcs/sources_1/bd/final_design/ip/final_design_ALU_0_0/final_design_ALU_0_0_sim_netlist.vhdl
-- Design      : final_design_ALU_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_design_ALU_0_0_ALU is
  port (
    regO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ALU_Sel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    regA : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of final_design_ALU_0_0_ALU : entity is "ALU";
end final_design_ALU_0_0_ALU;

architecture STRUCTURE of final_design_ALU_0_0_ALU is
  signal \__5_carry__0_n_1\ : STD_LOGIC;
  signal \__5_carry__0_n_2\ : STD_LOGIC;
  signal \__5_carry__0_n_3\ : STD_LOGIC;
  signal \__5_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \__5_carry_i_1_n_0\ : STD_LOGIC;
  signal \__5_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \__5_carry_i_2_n_0\ : STD_LOGIC;
  signal \__5_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \__5_carry_i_3_n_0\ : STD_LOGIC;
  signal \__5_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \__5_carry_i_4_n_0\ : STD_LOGIC;
  signal \__5_carry_i_5_n_0\ : STD_LOGIC;
  signal \__5_carry_n_0\ : STD_LOGIC;
  signal \__5_carry_n_1\ : STD_LOGIC;
  signal \__5_carry_n_2\ : STD_LOGIC;
  signal \__5_carry_n_3\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regO_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \regO_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \regO_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \regO_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \regO_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \regO_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \regO_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \regO_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \regO_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \regO_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \regO_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \regO_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \regO_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \regO_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \regO_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \regO_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \regO_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \NLW___5_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \__5_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \__5_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \regO_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \regO_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \regO_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \regO_reg[1]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \regO_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \regO_reg[2]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \regO_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \regO_reg[3]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \regO_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \regO_reg[4]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \regO_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \regO_reg[5]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \regO_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \regO_reg[6]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \regO_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \regO_reg[7]_i_1\ : label is "soft_lutpair3";
begin
\__5_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \__5_carry_n_0\,
      CO(2) => \__5_carry_n_1\,
      CO(1) => \__5_carry_n_2\,
      CO(0) => \__5_carry_n_3\,
      CYINIT => regA(0),
      DI(3 downto 1) => regA(3 downto 1),
      DI(0) => \__5_carry_i_1__0_n_0\,
      O(3 downto 0) => data0(3 downto 0),
      S(3) => \__5_carry_i_2__0_n_0\,
      S(2) => \__5_carry_i_3__0_n_0\,
      S(1) => \__5_carry_i_4__0_n_0\,
      S(0) => \__5_carry_i_5_n_0\
    );
\__5_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \__5_carry_n_0\,
      CO(3) => \NLW___5_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \__5_carry__0_n_1\,
      CO(1) => \__5_carry__0_n_2\,
      CO(0) => \__5_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => regA(6 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \__5_carry_i_1_n_0\,
      S(2) => \__5_carry_i_2_n_0\,
      S(1) => \__5_carry_i_3_n_0\,
      S(0) => \__5_carry_i_4_n_0\
    );
\__5_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A6"
    )
        port map (
      I0 => regB(7),
      I1 => ALU_Sel(1),
      I2 => ALU_Sel(2),
      I3 => regA(7),
      O => \__5_carry_i_1_n_0\
    );
\__5_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ALU_Sel(1),
      I1 => ALU_Sel(3),
      O => \__5_carry_i_1__0_n_0\
    );
\__5_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A6"
    )
        port map (
      I0 => regB(6),
      I1 => ALU_Sel(1),
      I2 => ALU_Sel(2),
      I3 => regA(6),
      O => \__5_carry_i_2_n_0\
    );
\__5_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A6"
    )
        port map (
      I0 => regB(3),
      I1 => ALU_Sel(1),
      I2 => ALU_Sel(2),
      I3 => regA(3),
      O => \__5_carry_i_2__0_n_0\
    );
\__5_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A6"
    )
        port map (
      I0 => regB(5),
      I1 => ALU_Sel(1),
      I2 => ALU_Sel(2),
      I3 => regA(5),
      O => \__5_carry_i_3_n_0\
    );
\__5_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A6"
    )
        port map (
      I0 => regB(2),
      I1 => ALU_Sel(1),
      I2 => ALU_Sel(2),
      I3 => regA(2),
      O => \__5_carry_i_3__0_n_0\
    );
\__5_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A6"
    )
        port map (
      I0 => regB(4),
      I1 => ALU_Sel(1),
      I2 => ALU_Sel(2),
      I3 => regA(4),
      O => \__5_carry_i_4_n_0\
    );
\__5_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A6"
    )
        port map (
      I0 => regB(1),
      I1 => ALU_Sel(1),
      I2 => ALU_Sel(2),
      I3 => regA(1),
      O => \__5_carry_i_4__0_n_0\
    );
\__5_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6C9C"
    )
        port map (
      I0 => ALU_Sel(3),
      I1 => regB(0),
      I2 => ALU_Sel(1),
      I3 => ALU_Sel(2),
      O => \__5_carry_i_5_n_0\
    );
\regO_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \regO_reg[0]_i_1_n_0\,
      G => \regO_reg[7]_i_2_n_0\,
      GE => '1',
      Q => regO(0)
    );
\regO_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regO_reg[0]_i_2_n_0\,
      I1 => ALU_Sel(3),
      I2 => data0(0),
      O => \regO_reg[0]_i_1_n_0\
    );
\regO_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B7BFBB34B48C880"
    )
        port map (
      I0 => regB(0),
      I1 => ALU_Sel(2),
      I2 => regA(0),
      I3 => ALU_Sel(0),
      I4 => ALU_Sel(1),
      I5 => data0(0),
      O => \regO_reg[0]_i_2_n_0\
    );
\regO_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \regO_reg[1]_i_1_n_0\,
      G => \regO_reg[7]_i_2_n_0\,
      GE => '1',
      Q => regO(1)
    );
\regO_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regO_reg[1]_i_2_n_0\,
      I1 => ALU_Sel(3),
      I2 => data0(1),
      O => \regO_reg[1]_i_1_n_0\
    );
\regO_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B7BFBB34B48C880"
    )
        port map (
      I0 => regB(1),
      I1 => ALU_Sel(2),
      I2 => regA(1),
      I3 => ALU_Sel(0),
      I4 => ALU_Sel(1),
      I5 => data0(1),
      O => \regO_reg[1]_i_2_n_0\
    );
\regO_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \regO_reg[2]_i_1_n_0\,
      G => \regO_reg[7]_i_2_n_0\,
      GE => '1',
      Q => regO(2)
    );
\regO_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regO_reg[2]_i_2_n_0\,
      I1 => ALU_Sel(3),
      I2 => data0(2),
      O => \regO_reg[2]_i_1_n_0\
    );
\regO_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B7BFBB34B48C880"
    )
        port map (
      I0 => regB(2),
      I1 => ALU_Sel(2),
      I2 => regA(2),
      I3 => ALU_Sel(0),
      I4 => ALU_Sel(1),
      I5 => data0(2),
      O => \regO_reg[2]_i_2_n_0\
    );
\regO_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \regO_reg[3]_i_1_n_0\,
      G => \regO_reg[7]_i_2_n_0\,
      GE => '1',
      Q => regO(3)
    );
\regO_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regO_reg[3]_i_2_n_0\,
      I1 => ALU_Sel(3),
      I2 => data0(3),
      O => \regO_reg[3]_i_1_n_0\
    );
\regO_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B7BFBB34B48C880"
    )
        port map (
      I0 => regB(3),
      I1 => ALU_Sel(2),
      I2 => regA(3),
      I3 => ALU_Sel(0),
      I4 => ALU_Sel(1),
      I5 => data0(3),
      O => \regO_reg[3]_i_2_n_0\
    );
\regO_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \regO_reg[4]_i_1_n_0\,
      G => \regO_reg[7]_i_2_n_0\,
      GE => '1',
      Q => regO(4)
    );
\regO_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regO_reg[4]_i_2_n_0\,
      I1 => ALU_Sel(3),
      I2 => data0(4),
      O => \regO_reg[4]_i_1_n_0\
    );
\regO_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B7BFBB34B48C880"
    )
        port map (
      I0 => regB(4),
      I1 => ALU_Sel(2),
      I2 => regA(4),
      I3 => ALU_Sel(0),
      I4 => ALU_Sel(1),
      I5 => data0(4),
      O => \regO_reg[4]_i_2_n_0\
    );
\regO_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \regO_reg[5]_i_1_n_0\,
      G => \regO_reg[7]_i_2_n_0\,
      GE => '1',
      Q => regO(5)
    );
\regO_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regO_reg[5]_i_2_n_0\,
      I1 => ALU_Sel(3),
      I2 => data0(5),
      O => \regO_reg[5]_i_1_n_0\
    );
\regO_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B7BFBB34B48C880"
    )
        port map (
      I0 => regB(5),
      I1 => ALU_Sel(2),
      I2 => regA(5),
      I3 => ALU_Sel(0),
      I4 => ALU_Sel(1),
      I5 => data0(5),
      O => \regO_reg[5]_i_2_n_0\
    );
\regO_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \regO_reg[6]_i_1_n_0\,
      G => \regO_reg[7]_i_2_n_0\,
      GE => '1',
      Q => regO(6)
    );
\regO_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regO_reg[6]_i_2_n_0\,
      I1 => ALU_Sel(3),
      I2 => data0(6),
      O => \regO_reg[6]_i_1_n_0\
    );
\regO_reg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B7BFBB34B48C880"
    )
        port map (
      I0 => regB(6),
      I1 => ALU_Sel(2),
      I2 => regA(6),
      I3 => ALU_Sel(0),
      I4 => ALU_Sel(1),
      I5 => data0(6),
      O => \regO_reg[6]_i_2_n_0\
    );
\regO_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \regO_reg[7]_i_1_n_0\,
      G => \regO_reg[7]_i_2_n_0\,
      GE => '1',
      Q => regO(7)
    );
\regO_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regO_reg[7]_i_3_n_0\,
      I1 => ALU_Sel(3),
      I2 => data0(7),
      O => \regO_reg[7]_i_1_n_0\
    );
\regO_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => ALU_Sel(2),
      I1 => ALU_Sel(1),
      I2 => ALU_Sel(0),
      I3 => ALU_Sel(3),
      O => \regO_reg[7]_i_2_n_0\
    );
\regO_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B7BFBB34B48C880"
    )
        port map (
      I0 => regB(7),
      I1 => ALU_Sel(2),
      I2 => regA(7),
      I3 => ALU_Sel(0),
      I4 => ALU_Sel(1),
      I5 => data0(7),
      O => \regO_reg[7]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_design_ALU_0_0 is
  port (
    regA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    regB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ALU_Sel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ALU_update : in STD_LOGIC;
    regO : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of final_design_ALU_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of final_design_ALU_0_0 : entity is "final_design_ALU_0_0,ALU,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of final_design_ALU_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of final_design_ALU_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of final_design_ALU_0_0 : entity is "ALU,Vivado 2019.2";
end final_design_ALU_0_0;

architecture STRUCTURE of final_design_ALU_0_0 is
begin
inst: entity work.final_design_ALU_0_0_ALU
     port map (
      ALU_Sel(3 downto 0) => ALU_Sel(3 downto 0),
      regA(7 downto 0) => regA(7 downto 0),
      regB(7 downto 0) => regB(7 downto 0),
      regO(7 downto 0) => regO(7 downto 0)
    );
end STRUCTURE;
