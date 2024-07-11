`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2022 07:34:25 PM
// Design Name: 
// Module Name: initlogic
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


module initlogic(
input [1:0] BS,
input PS,
input z,
output [1:0] BS_out
);
assign BS_out = {BS[1],(BS[0]&(BS[1]|(PS ^ z)))};
endmodule

