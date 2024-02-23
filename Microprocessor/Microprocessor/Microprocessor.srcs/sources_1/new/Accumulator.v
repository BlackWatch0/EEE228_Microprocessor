`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2024 15:10:22
// Design Name: 
// Module Name: Accumulator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Accumulator(
    input clk,
    input reset,
    input [7:0] alu_result,
    input update,
    output reg [7:0] acc
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        acc <= 8'b0;
    end
    else if (update) begin
        acc <= alu_result;
    end
end

endmodule

