`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:07:32 11/06/2022
// Design Name:   MCU_Top
// Module Name:   /home/010/a/ax/axn220008/MCU_Top.v/Mcu_Top_tb.v
// Project Name:  MCU_Top.v
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MCU_Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mcu_Top_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [8:0] fpga_in;

	// Outputs
	wire [9:0] fpga_out;

	// Instantiate the Unit Under Test (UUT)
	MCU_Top uut (
		.clk(clk), 
		.reset(reset), 
		.fpga_in(fpga_in), 
		.fpga_out(fpga_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		fpga_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

