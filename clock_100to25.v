`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2022 05:27:55 PM
// Design Name: 
// Module Name: clock_100to25
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


module clock_100to25(
    input clk_100M,
    output reg clk_25M = 0
    );
	reg count_bit = 0;
	always @(posedge clk_100M)
	begin
		count_bit = ~ count_bit;
		if (~count_bit)
			clk_25M = ~clk_25M;
	end
	
endmodule

