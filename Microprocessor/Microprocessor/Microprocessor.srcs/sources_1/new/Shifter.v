module Shifter(
    input [3:0] data_in,          // 4位输入数据
    input shift_direction,        // 移位方向，0为右移，1为左移
    output reg [3:0] data_out     // 移位后的输出数据
);

always @(shift_direction) begin
    case(shift_direction)
        1'b0: data_out = data_in >> 1; // 右移
        1'b1: data_out = data_in << 1; // 左移
        default: data_out = data_in;              // 默认情况不移位
    endcase
end

endmodule
