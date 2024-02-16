`timescale 1ns / 1ps

module Register_A_tb;

// Inputs
reg A0;
reg A1;
reg A2;
reg A3;
reg loadA;

// Output
wire [3:0] regA;

// 实例化被测试的模块
Register_A uut (
    .A0(A0), 
    .A1(A1), 
    .A2(A2), 
    .A3(A3), 
    .loadA(loadA), 
    .regA(regA)
);

initial begin
    // 初始化输入
    A0 = 0;
    A1 = 0;
    A2 = 0;
    A3 = 0;
    loadA = 0;

    // 等待一段时间
    #100;
    
    // 设置输入值
    A0 = 1;
    A1 = 1;
    A2 = 0;
    A3 = 0;
    
    // 触发loadA信号
    #10 loadA = 1; #10 loadA = 0;
    
    // 等待一段时间并观察输出
    #100;
    
    // 更改输入值
    A0 = 0;
    A1 = 1;
    A2 = 1;
    A3 = 1;
    
    // 再次触发loadA信号
    #10 loadA = 1; #10 loadA = 0;
    
    // 最后的观察
    #100;
    
    // 测试结束
    $finish;
end

endmodule
