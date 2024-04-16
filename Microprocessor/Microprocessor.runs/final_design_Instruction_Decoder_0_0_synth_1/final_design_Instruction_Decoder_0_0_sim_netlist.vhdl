-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Fri Mar 15 14:31:07 2024
-- Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ final_design_Instruction_Decoder_0_0_sim_netlist.vhdl
-- Design      : final_design_Instruction_Decoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Instruction_Decoder is
  port (
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
    acc_reset : out STD_LOGIC;
    instruction : in STD_LOGIC_VECTOR ( 3 downto 0 );
    shifter_flag : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Instruction_Decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Instruction_Decoder is
  signal \ALU_Sel_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ALU_Sel_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \ALU_Sel_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \ALU_Sel_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \ALU_Sel_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \^alu_update\ : STD_LOGIC;
  signal ALU_update_reg_i_1_n_0 : STD_LOGIC;
  signal MUX_0_reg_i_1_n_0 : STD_LOGIC;
  signal MUX_0_reg_i_2_n_0 : STD_LOGIC;
  signal MUX_0_reg_i_3_n_0 : STD_LOGIC;
  signal MUX_1_reg_i_1_n_0 : STD_LOGIC;
  signal MUX_1_reg_i_2_n_0 : STD_LOGIC;
  signal acc_reset_reg_i_1_n_0 : STD_LOGIC;
  signal acc_reset_reg_i_2_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 1 to 1 );
  signal loadA_reg_i_1_n_0 : STD_LOGIC;
  signal loadA_reg_i_2_n_0 : STD_LOGIC;
  signal loadB_reg_i_1_n_0 : STD_LOGIC;
  signal loadO_reg_i_1_n_0 : STD_LOGIC;
  signal \^load_shifter\ : STD_LOGIC;
  signal load_shifter_reg_i_1_n_0 : STD_LOGIC;
  signal load_shifter_reg_i_2_n_0 : STD_LOGIC;
  signal shift_direction_reg_i_1_n_0 : STD_LOGIC;
  signal shift_direction_reg_i_2_n_0 : STD_LOGIC;
  signal \^shifter_en\ : STD_LOGIC;
  signal shifter_en_reg_i_1_n_0 : STD_LOGIC;
  signal shifter_en_reg_i_2_n_0 : STD_LOGIC;
  signal \^update_pc\ : STD_LOGIC;
  signal update_PC_reg_i_1_n_0 : STD_LOGIC;
  signal update_PC_reg_i_2_n_0 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \ALU_Sel_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ALU_Sel_reg[0]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \ALU_Sel_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \ALU_Sel_reg[1]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \ALU_Sel_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \ALU_Sel_reg[2]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \ALU_Sel_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \ALU_Sel_reg[3]_i_1\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of ALU_update_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of MUX_0_reg : label is "LD";
  attribute SOFT_HLUTNM of MUX_0_reg_i_3 : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of MUX_1_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of acc_reset_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of loadA_reg : label is "LD";
  attribute SOFT_HLUTNM of loadA_reg_i_1 : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of loadB_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of loadO_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of load_shifter_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of shift_direction_reg : label is "LD";
  attribute SOFT_HLUTNM of shift_direction_reg_i_1 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of shifter_en_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of update_PC_reg : label is "LD";
  attribute SOFT_HLUTNM of update_PC_reg_i_2 : label is "soft_lutpair3";
begin
  ALU_update <= \^alu_update\;
  load_shifter <= \^load_shifter\;
  shifter_en <= \^shifter_en\;
  update_PC <= \^update_pc\;
\ALU_Sel_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ALU_Sel_reg[0]_i_1_n_0\,
      G => \ALU_Sel_reg[3]_i_1_n_0\,
      GE => '1',
      Q => ALU_Sel(0)
    );
\ALU_Sel_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08FB"
    )
        port map (
      I0 => instruction(0),
      I1 => counter(1),
      I2 => acc_reset_reg_i_1_n_0,
      I3 => instruction(3),
      O => \ALU_Sel_reg[0]_i_1_n_0\
    );
\ALU_Sel_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ALU_Sel_reg[1]_i_1_n_0\,
      G => \ALU_Sel_reg[3]_i_1_n_0\,
      GE => '1',
      Q => ALU_Sel(1)
    );
\ALU_Sel_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FB"
    )
        port map (
      I0 => acc_reset_reg_i_1_n_0,
      I1 => counter(1),
      I2 => instruction(1),
      I3 => instruction(3),
      O => \ALU_Sel_reg[1]_i_1_n_0\
    );
\ALU_Sel_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ALU_Sel_reg[2]_i_1_n_0\,
      G => \ALU_Sel_reg[3]_i_1_n_0\,
      GE => '1',
      Q => ALU_Sel(2)
    );
\ALU_Sel_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08FB"
    )
        port map (
      I0 => instruction(2),
      I1 => counter(1),
      I2 => acc_reset_reg_i_1_n_0,
      I3 => instruction(3),
      O => \ALU_Sel_reg[2]_i_1_n_0\
    );
\ALU_Sel_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => instruction(3),
      G => \ALU_Sel_reg[3]_i_1_n_0\,
      GE => '1',
      Q => ALU_Sel(3)
    );
\ALU_Sel_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => counter(1),
      I1 => acc_reset_reg_i_1_n_0,
      I2 => \ALU_Sel_reg[3]_i_2_n_0\,
      O => \ALU_Sel_reg[3]_i_1_n_0\
    );
\ALU_Sel_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80817FFF"
    )
        port map (
      I0 => instruction(1),
      I1 => instruction(0),
      I2 => instruction(2),
      I3 => shifter_flag,
      I4 => instruction(3),
      I5 => acc_reset_reg_i_1_n_0,
      O => \ALU_Sel_reg[3]_i_2_n_0\
    );
ALU_update_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => ALU_update_reg_i_1_n_0,
      G => \ALU_Sel_reg[3]_i_1_n_0\,
      GE => '1',
      Q => \^alu_update\
    );
ALU_update_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^alu_update\,
      O => ALU_update_reg_i_1_n_0
    );
MUX_0_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => MUX_0_reg_i_1_n_0,
      G => MUX_0_reg_i_2_n_0,
      GE => '1',
      Q => MUX_0
    );
MUX_0_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => instruction(1),
      I1 => instruction(0),
      I2 => instruction(2),
      O => MUX_0_reg_i_1_n_0
    );
MUX_0_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4101535100000000"
    )
        port map (
      I0 => instruction(3),
      I1 => instruction(1),
      I2 => instruction(0),
      I3 => shifter_flag,
      I4 => instruction(2),
      I5 => MUX_0_reg_i_3_n_0,
      O => MUX_0_reg_i_2_n_0
    );
MUX_0_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => counter(1),
      I1 => acc_reset_reg_i_1_n_0,
      O => MUX_0_reg_i_3_n_0
    );
MUX_1_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => MUX_1_reg_i_1_n_0,
      G => MUX_1_reg_i_2_n_0,
      GE => '1',
      Q => MUX_1
    );
MUX_1_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => instruction(3),
      I1 => shifter_flag,
      O => MUX_1_reg_i_1_n_0
    );
MUX_1_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000005D00000000"
    )
        port map (
      I0 => instruction(3),
      I1 => shifter_flag,
      I2 => instruction(0),
      I3 => instruction(2),
      I4 => instruction(1),
      I5 => MUX_0_reg_i_3_n_0,
      O => MUX_1_reg_i_2_n_0
    );
acc_reset_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => acc_reset_reg_i_1_n_0,
      G => acc_reset_reg_i_2_n_0,
      GE => '1',
      Q => acc_reset
    );
acc_reset_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => acc_reset_reg_i_1_n_0,
      O => acc_reset_reg_i_1_n_0
    );
acc_reset_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7111111111111111"
    )
        port map (
      I0 => acc_reset_reg_i_1_n_0,
      I1 => counter(1),
      I2 => instruction(3),
      I3 => instruction(2),
      I4 => instruction(0),
      I5 => instruction(1),
      O => acc_reset_reg_i_2_n_0
    );
loadA_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => loadA_reg_i_1_n_0,
      G => loadA_reg_i_2_n_0,
      GE => '1',
      Q => loadA
    );
loadA_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter(1),
      I1 => acc_reset_reg_i_1_n_0,
      O => loadA_reg_i_1_n_0
    );
loadA_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111115"
    )
        port map (
      I0 => acc_reset_reg_i_1_n_0,
      I1 => counter(1),
      I2 => instruction(1),
      I3 => instruction(0),
      I4 => instruction(2),
      I5 => instruction(3),
      O => loadA_reg_i_2_n_0
    );
loadA_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc_reset_reg_i_1_n_0,
      I1 => counter(1),
      O => counter(1)
    );
loadB_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => loadA_reg_i_1_n_0,
      G => loadB_reg_i_1_n_0,
      GE => '1',
      Q => loadB
    );
loadB_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111511"
    )
        port map (
      I0 => acc_reset_reg_i_1_n_0,
      I1 => counter(1),
      I2 => instruction(1),
      I3 => instruction(0),
      I4 => instruction(2),
      I5 => instruction(3),
      O => loadB_reg_i_1_n_0
    );
loadO_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => loadA_reg_i_1_n_0,
      G => loadO_reg_i_1_n_0,
      GE => '1',
      Q => loadO
    );
loadO_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111511"
    )
        port map (
      I0 => acc_reset_reg_i_1_n_0,
      I1 => counter(1),
      I2 => instruction(0),
      I3 => instruction(1),
      I4 => instruction(2),
      I5 => instruction(3),
      O => loadO_reg_i_1_n_0
    );
load_shifter_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => load_shifter_reg_i_1_n_0,
      G => load_shifter_reg_i_2_n_0,
      GE => '1',
      Q => \^load_shifter\
    );
load_shifter_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^load_shifter\,
      O => load_shifter_reg_i_1_n_0
    );
load_shifter_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002400000000"
    )
        port map (
      I0 => instruction(1),
      I1 => instruction(2),
      I2 => instruction(0),
      I3 => acc_reset_reg_i_1_n_0,
      I4 => instruction(3),
      I5 => counter(1),
      O => load_shifter_reg_i_2_n_0
    );
shift_direction_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => shift_direction_reg_i_1_n_0,
      G => shift_direction_reg_i_2_n_0,
      GE => '1',
      Q => shift_direction
    );
shift_direction_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => instruction(1),
      I1 => counter(1),
      I2 => acc_reset_reg_i_1_n_0,
      O => shift_direction_reg_i_1_n_0
    );
shift_direction_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1115151111111111"
    )
        port map (
      I0 => acc_reset_reg_i_1_n_0,
      I1 => counter(1),
      I2 => instruction(3),
      I3 => instruction(0),
      I4 => instruction(1),
      I5 => instruction(2),
      O => shift_direction_reg_i_2_n_0
    );
shifter_en_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => shifter_en_reg_i_1_n_0,
      G => shifter_en_reg_i_2_n_0,
      GE => '1',
      Q => \^shifter_en\
    );
shifter_en_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^shifter_en\,
      O => shifter_en_reg_i_1_n_0
    );
shifter_en_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000014000000"
    )
        port map (
      I0 => instruction(3),
      I1 => instruction(0),
      I2 => instruction(1),
      I3 => instruction(2),
      I4 => counter(1),
      I5 => acc_reset_reg_i_1_n_0,
      O => shifter_en_reg_i_2_n_0
    );
update_PC_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => update_PC_reg_i_1_n_0,
      G => update_PC_reg_i_2_n_0,
      GE => '1',
      Q => \^update_pc\
    );
update_PC_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^update_pc\,
      O => update_PC_reg_i_1_n_0
    );
update_PC_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter(1),
      I1 => acc_reset_reg_i_1_n_0,
      O => update_PC_reg_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "final_design_Instruction_Decoder_0_0,Instruction_Decoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Instruction_Decoder,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of acc_reset : signal is "xilinx.com:signal:reset:1.0 acc_reset RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of acc_reset : signal is "XIL_INTERFACENAME acc_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN final_design_clk_0, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Instruction_Decoder
     port map (
      ALU_Sel(3 downto 0) => ALU_Sel(3 downto 0),
      ALU_update => ALU_update,
      MUX_0 => MUX_0,
      MUX_1 => MUX_1,
      acc_reset => acc_reset,
      instruction(3 downto 0) => instruction(3 downto 0),
      loadA => loadA,
      loadB => loadB,
      loadO => loadO,
      load_shifter => load_shifter,
      shift_direction => shift_direction,
      shifter_en => shifter_en,
      shifter_flag => shifter_flag,
      update_PC => update_PC
    );
end STRUCTURE;
