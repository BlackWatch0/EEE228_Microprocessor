module Shifter(
    input [7:0] data_in,
    input shift_direction,
    input shifter_en,
    input load_shifter,
    input clk,
    output reg [7:0] data_out,
    output reg shifter_flag
);


reg [7:0] internal_register;

always @(posedge clk) begin
    if (load_shifter) begin
        internal_register <= data_in;
    end
    if (shifter_en) begin
    case(shift_direction)
        1'b0: begin
            shifter_flag = internal_register[0];
            internal_register = internal_register >> 1;
            data_out = internal_register;
        end
        1'b1: begin
            shifter_flag = internal_register[7];
            internal_register = internal_register << 1;
            data_out = internal_register;
        end
    endcase
    end
end

endmodule
