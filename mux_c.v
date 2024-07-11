`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2022 05:59:37 PM
// Design Name: 
// Module Name: mux_c
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


module mux_c(
input [1:0] BS_out, // mux a selector lines
input [7:0] PC_value,  //pc value from prevous cycle
input [7:0] RAA, //register a value output
input [7:0] BrA,
output [7:0] PC_out
);
parameter PC = 2'b00;
parameter jump = 2'b10;
reg [7:0]mux_c;  // mux c  out
always@(*)
begin

case (BS_out)  
    PC:
    mux_c = PC_value;
    
    jump:
    mux_c = RAA;
    default:
    mux_c = BrA;
endcase
end
assign PC_out = mux_c ;
endmodule