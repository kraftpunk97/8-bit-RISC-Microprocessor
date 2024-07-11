`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:49:37 11/04/2022 
// Design Name: 
// Module Name:    MCU_Top 
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

module MCU_Top(
input clk,
input reset,
input [8:0] fpga_in,
output [9:0] fpga_out
    );
	 
wire output_write_enable = 1'b1;
wire [0:7] input_data_out;
wire [0:7] data_out_col;
wire [0:7] data_out_addr;


microP mcu_inst(
.clk(clk),
.reset(reset),
.data_in(input_data_out),
.data_out_col(data_out_col),
.data_out_addr(data_out_addr)
);

mcu_io mcu_io_inst(
.clk(clk),
.reset(reset),// Reset signal
.output_write_enable(output_write_enable), // Write enable
.output_data_in(data_out_col), // Data in
.output_data_address(data_out_addr), // Data address
.input_data_out(input_data_out), // Data output
.fpga_in(fpga_in), // Connection to FPGA input pins
.fpga_out(fpga_out)
);

endmodule
