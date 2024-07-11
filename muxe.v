`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:44:15 11/04/2022 
// Design Name: 
// Module Name:    muxe 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module muxe (
input [7:0] Bus_D,
input [7:0] data_in,
input ie,
output reg [7:0]mux_e_out
);

always@(*)
begin
	if(ie)
		mux_e_out=data_in;
	else
		mux_e_out=Bus_D;
end
endmodule