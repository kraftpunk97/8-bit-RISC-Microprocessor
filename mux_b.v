`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2022 06:45:23 PM
// Design Name: 
// Module Name: mux_b
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


module mux_b(
input MB, // mux a selector lines
input [7:0]constantunit_out,  //pc value from prevous cycle
input [7:0]register_b, //register a value output
output [7:0]mux_b_out  // mux a output value
);
reg [7:0]mux_b;  // register value a out
always@(*)
begin

if (MB)
    mux_b = constantunit_out;
else
    mux_b = register_b;
end
assign mux_b_out = mux_b ;
endmodule