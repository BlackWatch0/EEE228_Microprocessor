module Instruction_Decoder(
    input [3:0] instruction,
    // LD_A output
    output reg loadA,
    // LD_B output
    output reg loadB,
    // update program counter
    output reg update
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
    update = 0;
    case(instruction)
        LD_A: begin loadA = 1;end
        LD_B: begin loadB = 1;end
        
        default:begin end
    endcase
    update = 1;
end

// Zero flag

endmodule
