module Instruction_Decoder(
    input [3:0] instruction,
    // shifter flag input
    input shifter_flag,
    // LD_A output
    output reg loadA,
    // LD_B output
    output reg loadB,
    // LD_O output
    output reg loadO,
    // MUX output
    output reg MUX_0,
    output reg MUX_1,
    // Shifter output
    output reg shift_direction,
    output reg shifter_en,
    output reg load_shifter,
    // ALU output
    output reg [3:0] ALU_Sel,
    // update program counter
    output reg update_PC,
    // Accumulator output
    output reg acc_reset
);

// Define operations
localparam LD_A         = 4'b0000;
localparam LD_B         = 4'b0001;
localparam LD_O         = 4'b0010;
localparam LD_SH_A      = 4'b0011;
localparam LD_SH_B      = 4'b0100;
localparam SHR          = 4'b0101;
localparam SHL          = 4'b0110;
localparam ACC_NZ_A     = 4'b0111;
localparam ACC_NZ_SH    = 4'b1000;
localparam ADD          = 4'b1001;
localparam SUB          = 4'b1010;
localparam INV          = 4'b1011;
localparam AND          = 4'b1100;
localparam OR           = 4'b1101;
localparam XOR          = 4'b1110;
localparam CLR_ACC      = 4'b1111;




always @(*) begin
    // loadA init
    loadA = 0;
    // loadB init
    loadB = 0;
    // loadO init
    loadO = 0;
    // programe counter init
    update_PC = 0;
    // accumulator init
    acc_reset = 0;
    // shifter init
    shifter_en = 0;
    load_shifter = 0;
    
    case(instruction)
        LD_A:       begin loadA = 1; MUX_0 = 0; MUX_1 = 0;end
        LD_B:       begin loadB = 1; MUX_0 = 1; MUX_1 = 0;end
        LD_O:       begin loadO = 1;end
        LD_SH_A:    begin MUX_0 = 0; load_shifter = 1; shifter_en = 1;end
        LD_SH_B:    begin MUX_0 = 1; load_shifter = 1; shifter_en = 1;end
        SHR:        begin shifter_en = 1; shift_direction = 0;end
        SHL:        begin shifter_en = 1; shift_direction = 1;end
        ACC_NZ_A:   begin
                        if(shifter_flag)begin
                            ALU_Sel <= instruction;
                            MUX_0 = 0; MUX_1 = 0;
                        end
                    end
        ACC_NZ_SH:  begin
                        if(shifter_flag)begin
                            ALU_Sel <= instruction;
                            MUX_1 = 1;
                        end
                    end
        ADD:    ALU_Sel <= instruction;
        SUB:    ALU_Sel <= instruction;
        INV:    ALU_Sel <= instruction;
        AND:    ALU_Sel <= instruction;
        OR:     ALU_Sel <= instruction;
        XOR:    ALU_Sel <= instruction;
        CLR_ACC:    begin acc_reset=1;end
        default:begin end
    endcase
    update_PC = 1;
end
endmodule
