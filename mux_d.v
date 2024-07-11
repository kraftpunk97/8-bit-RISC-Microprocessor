`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2022 06:55:37 PM
// Design Name: 
// Module Name: mux_d
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


module mux_d(Y,F,data_out,MD,mux_d_out
    );
input [7:0]Y;
input [7:0]F;
input [7:0]data_out;
input [1:0]MD;
output reg [7:0]mux_d_out;

always@(*)

begin
	if(MD==2'b00)
		mux_d_out=F;
	else if(MD==2'b01)
		mux_d_out=data_out;
	else if(MD==2'b10)
		mux_d_out=Y;
end
endmodule