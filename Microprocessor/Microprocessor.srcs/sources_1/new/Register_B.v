`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2024 15:36:01
// Design Name: 
// Module Name: Register_B
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


module Register_B(
    input wire B0,
    input wire B1,
    input wire B2,
    input wire B3,
    input wire load,
    input wire clk,
    output reg [3:0] regB
);

always @(posedge clk) begin
    if (load) begin
        regB[0] <= B0;
        regB[1] <= B1;
        regB[2] <= B2;
        regB[3] <= B3;
    end
end

endmodule