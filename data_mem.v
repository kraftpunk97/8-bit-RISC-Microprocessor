`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2022 07:25:14 PM
// Design Name: 
// Module Name: data_mem
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


module data_mem(
input clk,
input [7:0] addr,
input wr_en,
input [7:0] data_in,
output reg [7:0] data_out
);

reg [7:0] datamemblk [0:255];

always @ (negedge clk)
begin
    if(wr_en)
        datamemblk[addr] = data_in;
        
    data_out <= datamemblk[addr];


end
endmodule
