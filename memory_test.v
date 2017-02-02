`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:43:05 09/24/2015
// Design Name:   memory
// Module Name:   C:/Users/Max/Documents/School/Classes/ECE3710/ece-3710/ECE3710/memory_test.v
// Project Name:  ECE3710
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memory_test;

	// Inputs
	reg clk;
	reg en;
	reg we;
	reg [15:0] din;
	reg [9:0] addr;
	reg reset;

	// Outputs
	wire [15:0] dout;
	wire [15:0] test_out;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	memory uut (
		.clk(clk),
		.reset(reset),
		.en(en), 
		.we(we), 
		.din(din), 
		.addr(addr), 
		.dout(dout),
		.test_out(test_out)
	);

	always #5 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		en = 0;
		we = 0;
		din = 0;
		addr = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 1;
		#500;
		
		en  = 1'b1;
		din = 16'h0010;
		we = 1'b1;
		
      for(i = 0; i < 16; i = i + 1) begin
			#10;
			addr = addr + 1;
			din = din + 16'h0010;
		end
		
		we = 1'b0;
		addr = 0;
		for(i = 0; i < 16; i = i + 1) begin
			#10;
			$display("Value in location %d: %d", addr, dout);
			#10;
			addr = addr + 1;
		end
		
		addr = 1'b0;
		for(i = 0; i < 16; i = i + 1)begin
			#10;
			$display("Value in readmem test: %h", test_out);
			addr = addr + 1;
		end

	end
      
endmodule

