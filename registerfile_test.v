`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:53:18 09/17/2015
// Design Name:   RegisterFile
// Module Name:   C:/Users/Max/Documents/School/Classes/ECE3710/ece-3710/ECE3710/registerfile_test.v
// Project Name:  ECE3710
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegisterFile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module registerfile_test;

	// Inputs
	reg clk;
	reg reset;
	reg [15:0] data_in;
	reg [4:0] enable;
	reg [3:0] select1;
	reg [3:0] select2;

	// Outputs
	wire [15:0] out1;
	wire [15:0] out2;

	integer i; reg [15:0]count;
	
	// Instantiate the Unit Under Test (UUT)
	RegisterFile uut (
		.clk(clk), 
		.reset(reset), 
		.data_in(data_in), 
		.enable(enable), 
		.select1(select1), 
		.select2(select2), 
		.out1(out1), 
		.out2(out2)
	);

	always #5 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		data_in = 0;
		enable = 0;
		select1 = 0;
		select2 = 0;
		count = 16'h0010;

		// Wait 100 ns for global reset to finish
		#500;
      reset = 0;		
		#100;
		
		$display("\n\n\n After reset:");
		for(i = 0; i < 16; i = i + 1) begin
			select1 = i;
			select2 = i;
			#5
			$display("out1: %d \t out2: %d", out1, out2);
		end
		
		// Store the values
		for(i = 0; i < 16; i = i + 1) begin
			data_in = data_in + 16'h0010;
			enable = i;
			#10;
		end
		
		enable = 5'b10000;
		// Output the values
		$display("\n\n\n After values are set:");
		for(i = 0; i < 16; i = i + 1) begin
			select1 = i;
			select2 = i;
			#5
			$display("out1: %d \t out2: %d", out1, out2);
		end
		
		// Double check to make sure that they are still set.
		//enable = 5'b00000;
		//data_in = 16'h0010;
		//select1 = 4'b0000; select2 = 4'b0000;
		//#10
		$display("\n\n\nDouble check that values are still valid:");
		//$display("out1: %d \t out2: %d", out1, out2);
		
		for(i = 0; i < 16; i = i + 1) begin
			select1 = i;
			select2 = i;
			#5
			$display("out1: %d \t out2: %d", out1, out2);
		end
		
		// Test reset.
		data_in = 152;
		reset = 1;
		#500;
		reset = 0;
		$display("\n\n\n After second reset:");
		for(i = 0; i < 16; i = i + 1) begin
			select1 = i;
			select2 = i;
			#5
			$display("out1: %d \t out2: %d", out1, out2);
		end
	$finish(2);
	end
      
endmodule

