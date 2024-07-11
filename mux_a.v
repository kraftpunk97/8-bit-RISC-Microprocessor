`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2022 06:45:05 PM
// Design Name: 
// Module Name: mux_a
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


module mux_a(PC,a_data,A,MA);
input [7:0]PC;
input [7:0]a_data;
input MA;
output reg [7:0]A;

always @ (*)
begin
	if(MA)
		A = PC;
	else
		A = a_data;
end
endmodule