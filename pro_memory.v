`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2022 05:29:00 PM
// Design Name: 
// Module Name: pro_memory
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


module pro_memory(
	input [7:0] prg_counter,
	output [16:0] instructions
	);
    
	reg [16:0] instruction_memory [0:255];
    
	initial
	//begin
    
	//$readmemb("memory_block.mem", instruction_memory);
    
	//end
   //always @ (*)
	begin
	instruction_memory[0] = 17'b10010001000000000;
	instruction_memory[1] = 17'b01000010001000100;
	instruction_memory[2] = 17'b10101010010000100;
	instruction_memory[3] = 17'b10101011001000100;
	instruction_memory[4] = 17'b10000000010011000; //op code 5, DA 0, RA 2 RB 3,IM 0
	instruction_memory[5] = 17'b00111000000000000;

	end
	
	assign instructions = instruction_memory[prg_counter];
endmodule

