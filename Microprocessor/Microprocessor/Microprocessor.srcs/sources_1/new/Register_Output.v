`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.02.2024 15:36:01
// Design Name: 
// Module Name: Register_A
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


module Register_O(
    input [7:0] output_data,
    input loadO,
    output reg [7:0] regO
);

always @(posedge loadO) begin
    regO <= output_data;
end

endmodule