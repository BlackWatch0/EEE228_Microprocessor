`timescale 1ns / 1ps

module final_design_wrapper_tb;

// ���������ź�
reg A0, A1, A2, A3;
reg B0, B1, B2, B3;
reg clk;
reg start;
wire [4:0] currentPC;
wire [7:0] regO;

// ʵ��������ģ��
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

// ����ʱ���ź�
always #5 clk = ~clk; // ����һ������Ϊ10ns��ʱ���ź�

// ��ʼ������
initial begin
    // ��ʼ���ź�
    clk = 0;
    start = 0;
    A0 = 0; A1 = 0; A2 = 1; A3 = 0;
    B0 = 0; B1 = 0; B2 = 1; B3 = 0;

    #10;
    start = 1;#1 start = 0;
    #1000;
    
    $finish; // ��������
end

// ��ѡ����Ӽ��ӵ㣬���ڹ۲��źű仯
initial begin
    $monitor("Time = %t, Start = %b, A = %b%b%b%b, B = %b%b%b%b, regO = %h, currentPC = %d",
              $time, start, A0, A1, A2, A3, B0, B1, B2, B3, regO, currentPC);
end

endmodule
