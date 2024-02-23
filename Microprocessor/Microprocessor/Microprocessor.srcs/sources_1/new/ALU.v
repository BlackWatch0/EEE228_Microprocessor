module ALU(
    input [7:0] regA, // 4-bit input operand A
    input [7:0] regB, // 4-bit input operand B
    input [3:0] ALU_Sel, // Operation selector
    output reg [7:0] regO // 4-bit result
    input shifter_flag,
    output update
);


// Define operations
localparam ACC_NZ_A     = 4'b0111;
localparam ACC_NZ_SH    = 4'b1000;
localparam ADD          = 4'b1001;
localparam SUB          = 4'b1010;
localparam INV          = 4'b1011;
localparam AND          = 4'b1100;
localparam OR           = 4'b1101;
localparam XOR          = 4'b1110;


// ALU operation
always @(ALU_Sel) begin
    case(ALU_Sel)
        ACC_NZ_A: regO <= regB;
        ACC_NZ_SH: regO <= regB;
        ADD: regO = regA + regB;
        SUB: regO = regA - regB;
        INV: regO = ~regA;
        AND: regO = regA & regB;
        OR:  regO = regA | regB;
        XOR: regO = regA ^ regB;
    endcase
end

endmodule
