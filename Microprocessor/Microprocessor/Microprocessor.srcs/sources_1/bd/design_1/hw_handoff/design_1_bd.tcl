
################################################################
# This is a generated script based on design: design_1
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
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# Instruction_Decoder, Register_A, Register_B

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
set design_name design_1

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
  set ALU_Sel_0 [ create_bd_port -dir O -from 3 -to 0 ALU_Sel_0 ]
  set B0_0 [ create_bd_port -dir I B0_0 ]
  set B1_0 [ create_bd_port -dir I B1_0 ]
  set B2_0 [ create_bd_port -dir I B2_0 ]
  set B3_0 [ create_bd_port -dir I B3_0 ]
  set instruction_0 [ create_bd_port -dir I -from 3 -to 0 instruction_0 ]
  set regA_0 [ create_bd_port -dir O -from 3 -to 0 regA_0 ]
  set regB_0 [ create_bd_port -dir O -from 3 -to 0 regB_0 ]

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
  
  # Create port connections
  connect_bd_net -net A0_0_1 [get_bd_ports A0_0] [get_bd_pins Register_A_0/A0]
  connect_bd_net -net A1_0_1 [get_bd_ports A1_0] [get_bd_pins Register_A_0/A1]
  connect_bd_net -net A2_0_1 [get_bd_ports A2_0] [get_bd_pins Register_A_0/A2]
  connect_bd_net -net A3_0_1 [get_bd_ports A3_0] [get_bd_pins Register_A_0/A3]
  connect_bd_net -net B0_0_1 [get_bd_ports B0_0] [get_bd_pins Register_B_0/B0]
  connect_bd_net -net B1_0_1 [get_bd_ports B1_0] [get_bd_pins Register_B_0/B1]
  connect_bd_net -net B2_0_1 [get_bd_ports B2_0] [get_bd_pins Register_B_0/B2]
  connect_bd_net -net B3_0_1 [get_bd_ports B3_0] [get_bd_pins Register_B_0/B3]
  connect_bd_net -net Instruction_Decoder_0_ALU_Sel [get_bd_ports ALU_Sel_0] [get_bd_pins Instruction_Decoder_0/ALU_Sel]
  connect_bd_net -net Instruction_Decoder_0_loadA [get_bd_pins Instruction_Decoder_0/loadA] [get_bd_pins Register_A_0/loadA]
  connect_bd_net -net Instruction_Decoder_0_loadB [get_bd_pins Instruction_Decoder_0/loadB] [get_bd_pins Register_B_0/loadB]
  connect_bd_net -net Register_A_0_regA [get_bd_ports regA_0] [get_bd_pins Register_A_0/regA]
  connect_bd_net -net Register_B_0_regB [get_bd_ports regB_0] [get_bd_pins Register_B_0/regB]
  connect_bd_net -net instruction_0_1 [get_bd_ports instruction_0] [get_bd_pins Instruction_Decoder_0/instruction]

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


