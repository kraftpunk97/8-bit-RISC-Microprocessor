`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2022 04:53:11 PM
// Design Name: 
// Module Name: datahazard
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


module datahazard(
input [2:0] AA,
input [2:0] BA,
input [2:0] DA,
input RW,
input MA,
input MB,
output DHS
    );
reg or_1,comp_1,comp_2,HA,HB;
always@(*)
begin    
or_1 = DA[0]|DA[1]|DA[2];

//comparator 1 
if (AA ^ DA)
    comp_1 = 1'b0;
else
    comp_1 = 1'b1;
 //comparator 2 
if (BA ^ DA)
    comp_2 = 1'b0;
else
    comp_2 = 1'b1; 
    
HA = RW & or_1 & ~MA & comp_1;
HB = RW & or_1 & ~MB & comp_2;    

 
end  
 
assign DHS = ~(HA | HB);
 
endmodule


