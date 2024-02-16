`timescale 1ns / 1ps

module testbench;

  // ����̨���ź�
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

  // ʵ�������ģ��
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

  // ��ʼ���źŲ����в���
  initial begin
    // ��ʼ�������ź�
    A0_0 = 0;
    A1_0 = 0;
    A2_0 = 0;
    A3_0 = 0;
    B0_0 = 0;
    B1_0 = 0;
    B2_0 = 0;
    B3_0 = 0;
    instruction_0 = 4'b1111;

    // �ȴ�100 ns�÷����ȶ�
    #100;

    // Ӧ�ò�������
    // ʾ��������ָ��������Բ���ALUѡ���ź�
    
    A0_0 = 1;
    A1_0 = 0;
    A2_0 = 1;
    A3_0 = 1;
    B0_0 = 0;
    B1_0 = 1;
    B2_0 = 0;
    B3_0 = 1;

    // ����һ��ʱ�䣬Ȼ��ı�����ֵ
    instruction_0 = 4'b0000; // ����1010��ĳ��������ָ����
    #50;
    instruction_0 = 4'b0001; // ����ָ�����Բ����������

    // ����һ��ʱ�䣬�۲����
    #50;

    // ������������Ĳ��԰���
    // ...

    // ��ɲ���
    $finish;
  end

endmodule
