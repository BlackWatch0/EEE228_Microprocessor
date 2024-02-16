`timescale 1ns / 1ps

module ALU_tb;

reg [3:0] A, B;
reg [3:0] ALU_Sel;
wire [3:0] O;
wire Zero;

// 实例化ALU模块
ALU module_under_test(
    .A(A), 
    .B(B), 
    .ALU_Sel(ALU_Sel), 
    .O(O), 
    .Zero(Zero)
);

initial begin
    // 初始化输入
    A = 0; B = 0; ALU_Sel = 0;

    // 测试加法
    #10 ALU_Sel = 4'b1001; A = 4'b0101; B = 4'b0011;  // 5 + 3
    #10 ALU_Sel = 4'b1001; A = 4'b0110; B = 4'b0010; // 6 + 2

    // 测试减法
    #10 A = 4'b1000; B = 4'b0010; ALU_Sel = 4'b1010; // 8 - 2
    #10 A = 4'b0111; B = 4'b0001; ALU_Sel = 4'b1010; // 7 - 1

    // 测试AND
    #10 A = 4'b1100; B = 4'b1010; ALU_Sel = 4'b1100; // 12 AND 10

    // 测试OR
    #10 A = 4'b1100; B = 4'b1010; ALU_Sel = 4'b1101; // 12 OR 10

    // 测试XOR
    #10 A = 4'b1111; B = 4'b0000; ALU_Sel = 4'b1110; // 15 XOR 0

    // 测试NOT
    #10 A = 4'b1010; ALU_Sel = 4'b1011; // NOT 10

    // 完成测试
    #10 $finish;
end

endmodule
