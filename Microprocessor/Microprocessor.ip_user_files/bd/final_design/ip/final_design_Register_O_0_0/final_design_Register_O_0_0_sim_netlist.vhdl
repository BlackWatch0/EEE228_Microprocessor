-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
-- Date        : Fri Mar 15 14:33:33 2024
-- Host        : TEN14B31F0D48DB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               U:/EEE228/EEE228_Microprocessor/Microprocessor/Microprocessor.srcs/sources_1/bd/final_design/ip/final_design_Register_O_0_0/final_design_Register_O_0_0_sim_netlist.vhdl
-- Design      : final_design_Register_O_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_design_Register_O_0_0_Register_O is
  port (
    Register_Output : out STD_LOGIC_VECTOR ( 7 downto 0 );
    output_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    loadO : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of final_design_Register_O_0_0_Register_O : entity is "Register_O";
end final_design_Register_O_0_0_Register_O;

architecture STRUCTURE of final_design_Register_O_0_0_Register_O is
begin
\Register_Output_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => loadO,
      CE => '1',
      D => output_data(0),
      Q => Register_Output(0),
      R => '0'
    );
\Register_Output_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => loadO,
      CE => '1',
      D => output_data(1),
      Q => Register_Output(1),
      R => '0'
    );
\Register_Output_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => loadO,
      CE => '1',
      D => output_data(2),
      Q => Register_Output(2),
      R => '0'
    );
\Register_Output_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => loadO,
      CE => '1',
      D => output_data(3),
      Q => Register_Output(3),
      R => '0'
    );
\Register_Output_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => loadO,
      CE => '1',
      D => output_data(4),
      Q => Register_Output(4),
      R => '0'
    );
\Register_Output_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => loadO,
      CE => '1',
      D => output_data(5),
      Q => Register_Output(5),
      R => '0'
    );
\Register_Output_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => loadO,
      CE => '1',
      D => output_data(6),
      Q => Register_Output(6),
      R => '0'
    );
\Register_Output_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => loadO,
      CE => '1',
      D => output_data(7),
      Q => Register_Output(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity final_design_Register_O_0_0 is
  port (
    output_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    loadO : in STD_LOGIC;
    Register_Output : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of final_design_Register_O_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of final_design_Register_O_0_0 : entity is "final_design_Register_O_0_0,Register_O,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of final_design_Register_O_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of final_design_Register_O_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of final_design_Register_O_0_0 : entity is "Register_O,Vivado 2019.2";
end final_design_Register_O_0_0;

architecture STRUCTURE of final_design_Register_O_0_0 is
begin
inst: entity work.final_design_Register_O_0_0_Register_O
     port map (
      Register_Output(7 downto 0) => Register_Output(7 downto 0),
      loadO => loadO,
      output_data(7 downto 0) => output_data(7 downto 0)
    );
end STRUCTURE;
