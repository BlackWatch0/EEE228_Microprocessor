module Shifter(
    input [3:0] data_in,
    input shift_direction,
    output reg [3:0] data_out
);

always @(shift_direction) begin
    case(shift_direction)
        1'b0: data_out = data_in >> 1;
        1'b1: data_out = data_in << 1;
        default: data_out = data_in;
    endcase
end

endmodule
