`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:01:22 12/07/2015
// Design Name:   SCLK_gen
// Module Name:   C:/Users/Max/Documents/School/Classes/ECE3710/ece-3710/final2/test_SCLK_gen.v
// Project Name:  ECE3710
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SCLK_gen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_SCLK_gen;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire SCLK;
	wire read;
	wire write;
	wire SCLK_pulse;

	// Instantiate the Unit Under Test (UUT)
	SCLK_gen uut (
		.clk(clk), 
		.reset(reset), 
		.SCLK(SCLK), 
		.SCLK_pulse(SCLK_pulse),
		.read(read), 
		.write(write)
	);

	always #5 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#1000;
		
		reset = 0;
		
		#12000;
		
		reset = 1;
        
		// Add stimulus here

	end
      
endmodule

