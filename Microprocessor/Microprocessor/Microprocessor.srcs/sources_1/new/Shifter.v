module Shifter(
    input [3:0] data_in,          // 4λ��������
    input shift_direction,        // ��λ����0Ϊ���ƣ�1Ϊ����
    output reg [3:0] data_out     // ��λ����������
);

always @(shift_direction) begin
    case(shift_direction)
        1'b0: data_out = data_in >> 1; // ����
        1'b1: data_out = data_in << 1; // ����
        default: data_out = data_in;              // Ĭ���������λ
    endcase
end

endmodule
