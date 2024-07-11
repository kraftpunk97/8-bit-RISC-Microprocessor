`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2022 06:37:51 PM
// Design Name: 
// Module Name: constant_unit
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


module constant_unit(
input [5:0] IM, 
input CS,
output [7:0] CU_out);
reg [7:0] constantunit;
always@(*)
begin
if (CS==0) 
begin
constantunit[5:0]=IM; 
constantunit[7:6]=2'b00; 
end

else if (CS==1)
begin 
constantunit[5:0]=IM; 
constantunit[7]=IM[5]; 
constantunit[6]=IM[5];
end
end
assign CU_out=constantunit; 
endmodule
