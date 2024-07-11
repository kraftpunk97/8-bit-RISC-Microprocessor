module register(
	input clk,
	input [2:0] addr_a,
	input [2:0] addr_b,
	input [2:0] addr_d,
	input [7:0] data_in,
	input wr_en,
	output [7:0] data_a,
	output [7:0] data_b
	);
    
 reg [7:0] memblk [0:7];
 assign data_a = memblk[addr_a];
 assign data_b = memblk[addr_b];
 initial
  memblk[0] = 8'b00000000;
always @ (negedge clk)
 begin
 if (wr_en && addr_d != 3'b000)
 memblk[addr_d] <= data_in;
 end
endmodule