`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2024 15:36:32
// Design Name: 
// Module Name: Program_counter
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


module Program_counter(
    input clk,
    input reset,
    input update,
    output reg [3:0] currentPC
);

always @(posedge clk or posedge reset) begin
    if (update)
        currentPC <= currentPC + 4'b0001; // ??PC?
end

endmodule

