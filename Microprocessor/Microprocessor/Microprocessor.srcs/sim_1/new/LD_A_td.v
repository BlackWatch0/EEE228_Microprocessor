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

// ʵ���������Ե�ģ��
Register_A uut (
    .A0(A0), 
    .A1(A1), 
    .A2(A2), 
    .A3(A3), 
    .loadA(loadA), 
    .regA(regA)
);

initial begin
    // ��ʼ������
    A0 = 0;
    A1 = 0;
    A2 = 0;
    A3 = 0;
    loadA = 0;

    // �ȴ�һ��ʱ��
    #100;
    
    // ��������ֵ
    A0 = 1;
    A1 = 1;
    A2 = 0;
    A3 = 0;
    
    // ����loadA�ź�
    #10 loadA = 1; #10 loadA = 0;
    
    // �ȴ�һ��ʱ�䲢�۲����
    #100;
    
    // ��������ֵ
    A0 = 0;
    A1 = 1;
    A2 = 1;
    A3 = 1;
    
    // �ٴδ���loadA�ź�
    #10 loadA = 1; #10 loadA = 0;
    
    // ���Ĺ۲�
    #100;
    
    // ���Խ���
    $finish;
end

endmodule
