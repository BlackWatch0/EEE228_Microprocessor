vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/final_design/ip/final_design_Program_counter_0_0/sim/final_design_Program_counter_0_0.v" \
"../../../bd/final_design/ip/final_design_ROM_0_0/sim/final_design_ROM_0_0.v" \
"../../../bd/final_design/ip/final_design_Instruction_Register_0_0/sim/final_design_Instruction_Register_0_0.v" \
"../../../bd/final_design/ip/final_design_Instruction_Decoder_0_0/sim/final_design_Instruction_Decoder_0_0.v" \
"../../../bd/final_design/ip/final_design_Shifter_0_0/sim/final_design_Shifter_0_0.v" \
"../../../bd/final_design/ip/final_design_Register_A_0_0/sim/final_design_Register_A_0_0.v" \
"../../../bd/final_design/ip/final_design_Register_B_0_0/sim/final_design_Register_B_0_0.v" \
"../../../bd/final_design/ip/final_design_Register_O_0_0/sim/final_design_Register_O_0_0.v" \
"../../../bd/final_design/ip/final_design_MUX_0_0/sim/final_design_MUX_0_0.v" \
"../../../bd/final_design/ip/final_design_MUX_1_0/sim/final_design_MUX_1_0.v" \
"../../../bd/final_design/ip/final_design_ALU_0_0/sim/final_design_ALU_0_0.v" \
"../../../bd/final_design/ip/final_design_Accumulator_0_0/sim/final_design_Accumulator_0_0.v" \
"../../../bd/final_design/sim/final_design.v" \


vlog -work xil_defaultlib \
"glbl.v"

