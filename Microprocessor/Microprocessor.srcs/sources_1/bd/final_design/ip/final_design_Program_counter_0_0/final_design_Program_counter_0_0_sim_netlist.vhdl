-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Fri Mar 15 14:29:58 2024
-- Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               U:/EEE228/EEE228_Microprocessor/Microprocessor/Microprocessor.srcs/sources_1/bd/final_design/ip/final_design_Program_counter_0_0/final_design_Program_counter_0_0_sim_netlist.vhdl
-- Design      : final_design_Program_counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_design_Program_counter_0_0_Program_counter is
  port (
    currentPC : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of final_design_Program_counter_0_0_Program_counter : entity is "Program_counter";
end final_design_Program_counter_0_0_Program_counter;

architecture STRUCTURE of final_design_Program_counter_0_0_Program_counter is
  signal \^currentpc\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  currentPC(4 downto 0) <= \^currentpc\(4 downto 0);
\currentPC[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^currentpc\(0),
      O => \^currentpc\(0)
    );
\currentPC[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^currentpc\(0),
      I1 => \^currentpc\(1),
      O => \^currentpc\(1)
    );
\currentPC[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \^currentpc\(0),
      I1 => \^currentpc\(1),
      I2 => \^currentpc\(2),
      O => \^currentpc\(2)
    );
\currentPC[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \^currentpc\(1),
      I1 => \^currentpc\(0),
      I2 => \^currentpc\(2),
      I3 => \^currentpc\(3),
      O => \^currentpc\(3)
    );
\currentPC[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \^currentpc\(2),
      I1 => \^currentpc\(0),
      I2 => \^currentpc\(1),
      I3 => \^currentpc\(3),
      I4 => \^currentpc\(4),
      O => \^currentpc\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_design_Program_counter_0_0 is
  port (
    update_PC : in STD_LOGIC;
    currentPC : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of final_design_Program_counter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of final_design_Program_counter_0_0 : entity is "final_design_Program_counter_0_0,Program_counter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of final_design_Program_counter_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of final_design_Program_counter_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of final_design_Program_counter_0_0 : entity is "Program_counter,Vivado 2019.2";
end final_design_Program_counter_0_0;

architecture STRUCTURE of final_design_Program_counter_0_0 is
begin
inst: entity work.final_design_Program_counter_0_0_Program_counter
     port map (
      currentPC(4 downto 0) => currentPC(4 downto 0)
    );
end STRUCTURE;
