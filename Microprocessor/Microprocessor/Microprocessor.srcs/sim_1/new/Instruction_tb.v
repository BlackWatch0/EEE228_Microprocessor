`timescale 1ns / 1ps

module testbench;

  // 测试台的信号
  reg A0_0;
  reg A1_0;
  reg A2_0;
  reg A3_0;
  reg B0_0;
  reg B1_0;
  reg B2_0;
  reg B3_0;
  reg [3:0] instruction_0;
  wire [3:0] ALU_Sel_0;
  wire [3:0] regA_0;
  wire [3:0] regB_0;

  // 实例化设计模块
  design_1_wrapper uut (
    .A0_0(A0_0),
    .A1_0(A1_0),
    .A2_0(A2_0),
    .A3_0(A3_0),
    .ALU_Sel_0(ALU_Sel_0),
    .B0_0(B0_0),
    .B1_0(B1_0),
    .B2_0(B2_0),
    .B3_0(B3_0),
    .instruction_0(instruction_0),
    .regA_0(regA_0),
    .regB_0(regB_0)
  );

  // 初始化信号并进行测试
  initial begin
    // 初始化输入信号
    A0_0 = 0;
    A1_0 = 0;
    A2_0 = 0;
    A3_0 = 0;
    B0_0 = 0;
    B1_0 = 0;
    B2_0 = 0;
    B3_0 = 0;
    instruction_0 = 4'b1111;

    // 等待100 ns让仿真稳定
    #100;

    // 应用测试向量
    // 示例：设置指令和输入以测试ALU选择信号
    
    A0_0 = 1;
    A1_0 = 0;
    A2_0 = 1;
    A3_0 = 1;
    B0_0 = 0;
    B1_0 = 1;
    B2_0 = 0;
    B3_0 = 1;

    // 持续一段时间，然后改变输入值
    instruction_0 = 4'b0000; // 假设1010是某个操作的指令码
    #50;
    instruction_0 = 4'b0001; // 更改指令码以测试其他情况

    // 持续一段时间，观察输出
    #50;

    // 继续添加其他的测试案例
    // ...

    // 完成测试
    $finish;
  end

endmodule
