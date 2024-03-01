`timescale 1ns / 1ps

module final_design_wrapper_tb;

// 输入和输出信号
reg A0, A1, A2, A3;
reg B0, B1, B2, B3;
reg clk;
reg start;
wire [4:0] currentPC;
wire [7:0] regO;

// 实例化被测模块
final_design_wrapper uut (
    .A0_0(A0),
    .A1_0(A1),
    .A2_0(A2),
    .A3_0(A3),
    .B0_0(B0),
    .B1_0(B1),
    .B2_0(B2),
    .B3_0(B3),
    .clk_0(clk),
    .regO_0(regO),
    .currentPC_0(currentPC),
    .start_0(start)
);

// 生成时钟信号
always #5 clk = ~clk; // 生成一个周期为10ns的时钟信号

// 初始化测试
initial begin
    // 初始化信号
    clk = 0;
    start = 0;
    A0 = 0; A1 = 0; A2 = 1; A3 = 0;
    B0 = 0; B1 = 0; B2 = 1; B3 = 0;

    #10;
    start = 1;#1 start = 0;
    #1000;
    
    $finish; // 结束仿真
end

// 可选：添加监视点，用于观察信号变化
initial begin
    $monitor("Time = %t, Start = %b, A = %b%b%b%b, B = %b%b%b%b, regO = %h, currentPC = %d",
              $time, start, A0, A1, A2, A3, B0, B1, B2, B3, regO, currentPC);
end

endmodule
