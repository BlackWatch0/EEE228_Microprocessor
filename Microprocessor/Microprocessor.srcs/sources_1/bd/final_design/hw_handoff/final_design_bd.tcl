
################################################################
# This is a generated script based on design: final_design
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source final_design_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# ALU, Accumulator, Instruction_Decoder, Instruction_Register, MUX, MUX, Program_counter, ROM, Register_A, Register_B, Register_O, Shifter

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name final_design

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set A0_0 [ create_bd_port -dir I A0_0 ]
  set A1_0 [ create_bd_port -dir I A1_0 ]
  set A2_0 [ create_bd_port -dir I A2_0 ]
  set A3_0 [ create_bd_port -dir I A3_0 ]
  set B0_0 [ create_bd_port -dir I B0_0 ]
  set B1_0 [ create_bd_port -dir I B1_0 ]
  set B2_0 [ create_bd_port -dir I B2_0 ]
  set B3_0 [ create_bd_port -dir I B3_0 ]
  set clk_0 [ create_bd_port -dir I -type clk clk_0 ]
  set currentPC_0 [ create_bd_port -dir O -from 4 -to 0 currentPC_0 ]
  set regO_0 [ create_bd_port -dir O -from 7 -to 0 regO_0 ]
  set start_0 [ create_bd_port -dir I start_0 ]

  # Create instance: ALU_0, and set properties
  set block_name ALU
  set block_cell_name ALU_0
  if { [catch {set ALU_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ALU_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Accumulator_0, and set properties
  set block_name Accumulator
  set block_cell_name Accumulator_0
  if { [catch {set Accumulator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Accumulator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Instruction_Decoder_0, and set properties
  set block_name Instruction_Decoder
  set block_cell_name Instruction_Decoder_0
  if { [catch {set Instruction_Decoder_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Instruction_Decoder_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Instruction_Register_0, and set properties
  set block_name Instruction_Register
  set block_cell_name Instruction_Register_0
  if { [catch {set Instruction_Register_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Instruction_Register_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: MUX_0, and set properties
  set block_name MUX
  set block_cell_name MUX_0
  if { [catch {set MUX_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MUX_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: MUX_1, and set properties
  set block_name MUX
  set block_cell_name MUX_1
  if { [catch {set MUX_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $MUX_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Program_counter_0, and set properties
  set block_name Program_counter
  set block_cell_name Program_counter_0
  if { [catch {set Program_counter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Program_counter_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ROM_0, and set properties
  set block_name ROM
  set block_cell_name ROM_0
  if { [catch {set ROM_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ROM_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Register_A_0, and set properties
  set block_name Register_A
  set block_cell_name Register_A_0
  if { [catch {set Register_A_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Register_A_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Register_B_0, and set properties
  set block_name Register_B
  set block_cell_name Register_B_0
  if { [catch {set Register_B_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Register_B_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Register_O_0, and set properties
  set block_name Register_O
  set block_cell_name Register_O_0
  if { [catch {set Register_O_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Register_O_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Shifter_0, and set properties
  set block_name Shifter
  set block_cell_name Shifter_0
  if { [catch {set Shifter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Shifter_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net A0_0_1 [get_bd_ports A0_0] [get_bd_pins Register_A_0/A0]
  connect_bd_net -net A1_0_1 [get_bd_ports A1_0] [get_bd_pins Register_A_0/A1]
  connect_bd_net -net A2_0_1 [get_bd_ports A2_0] [get_bd_pins Register_A_0/A2]
  connect_bd_net -net A3_0_1 [get_bd_ports A3_0] [get_bd_pins Register_A_0/A3]
  connect_bd_net -net ALU_0_acc_update [get_bd_pins ALU_0/acc_update] [get_bd_pins Accumulator_0/update]
  connect_bd_net -net ALU_0_regO [get_bd_pins ALU_0/regO] [get_bd_pins Accumulator_0/alu_result]
  connect_bd_net -net Accumulator_0_acc [get_bd_pins ALU_0/regA] [get_bd_pins Accumulator_0/acc] [get_bd_pins Register_O_0/output_data]
  connect_bd_net -net B0_0_1 [get_bd_ports B0_0] [get_bd_pins Register_B_0/B0]
  connect_bd_net -net B1_0_1 [get_bd_ports B1_0] [get_bd_pins Register_B_0/B1]
  connect_bd_net -net B2_0_1 [get_bd_ports B2_0] [get_bd_pins Register_B_0/B2]
  connect_bd_net -net B3_0_1 [get_bd_ports B3_0] [get_bd_pins Register_B_0/B3]
  connect_bd_net -net Instruction_Decoder_0_ALU_Sel [get_bd_pins ALU_0/ALU_Sel] [get_bd_pins Instruction_Decoder_0/ALU_Sel]
  connect_bd_net -net Instruction_Decoder_0_MUX_0 [get_bd_pins Instruction_Decoder_0/MUX_0] [get_bd_pins MUX_0/MUX_Sel]
  connect_bd_net -net Instruction_Decoder_0_MUX_1 [get_bd_pins Instruction_Decoder_0/MUX_1] [get_bd_pins MUX_1/MUX_Sel]
  connect_bd_net -net Instruction_Decoder_0_acc_reset [get_bd_pins Accumulator_0/reset] [get_bd_pins Instruction_Decoder_0/acc_reset]
  connect_bd_net -net Instruction_Decoder_0_loadA [get_bd_pins Instruction_Decoder_0/loadA] [get_bd_pins Register_A_0/loadA]
  connect_bd_net -net Instruction_Decoder_0_loadB [get_bd_pins Instruction_Decoder_0/loadB] [get_bd_pins Register_B_0/loadB]
  connect_bd_net -net Instruction_Decoder_0_loadO [get_bd_pins Instruction_Decoder_0/loadO] [get_bd_pins Register_O_0/loadO]
  connect_bd_net -net Instruction_Decoder_0_load_shifter [get_bd_pins Instruction_Decoder_0/load_shifter] [get_bd_pins Shifter_0/load_shifter]
  connect_bd_net -net Instruction_Decoder_0_shift_direction [get_bd_pins Instruction_Decoder_0/shift_direction] [get_bd_pins Shifter_0/shift_direction]
  connect_bd_net -net Instruction_Decoder_0_shifter_en [get_bd_pins Instruction_Decoder_0/shifter_en] [get_bd_pins Shifter_0/shifter_en]
  connect_bd_net -net Instruction_Decoder_0_update_PC [get_bd_pins Instruction_Decoder_0/update_PC] [get_bd_pins Program_counter_0/update]
  connect_bd_net -net Instruction_Register_0_instructionOut [get_bd_pins Instruction_Decoder_0/instruction] [get_bd_pins Instruction_Register_0/instructionOut]
  connect_bd_net -net MUX_0_MUX_Reg [get_bd_pins MUX_0/MUX_Reg] [get_bd_pins MUX_1/A] [get_bd_pins Shifter_0/data_in]
  connect_bd_net -net MUX_1_MUX_Reg [get_bd_pins ALU_0/regB] [get_bd_pins MUX_1/MUX_Reg]
  connect_bd_net -net Program_counter_0_currentPC [get_bd_ports currentPC_0] [get_bd_pins Program_counter_0/currentPC] [get_bd_pins ROM_0/address]
  connect_bd_net -net ROM_0_data [get_bd_pins Instruction_Register_0/instructionIn] [get_bd_pins ROM_0/data]
  connect_bd_net -net Register_A_0_regA [get_bd_pins MUX_0/A] [get_bd_pins Register_A_0/regA]
  connect_bd_net -net Register_B_0_regB [get_bd_pins MUX_0/B] [get_bd_pins Register_B_0/regB]
  connect_bd_net -net Register_O_0_regO [get_bd_ports regO_0] [get_bd_pins Register_O_0/regO]
  connect_bd_net -net Shifter_0_data_out [get_bd_pins MUX_1/B] [get_bd_pins Shifter_0/data_out]
  connect_bd_net -net Shifter_0_shifterflag [get_bd_pins Instruction_Decoder_0/shifter_flag] [get_bd_pins Shifter_0/shifter_flag]
  connect_bd_net -net clk_0_1 [get_bd_ports clk_0] [get_bd_pins Accumulator_0/clk] [get_bd_pins Instruction_Register_0/clk] [get_bd_pins Program_counter_0/clk] [get_bd_pins Shifter_0/clk]
  connect_bd_net -net start_0_1 [get_bd_ports start_0] [get_bd_pins Program_counter_0/start]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


