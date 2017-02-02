`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:48:59 12/05/2015
// Design Name:   Main
// Module Name:   C:/Users/Max/Documents/School/Classes/ECE3710/ece-3710/final2/main_test.v
// Project Name:  ECE3710
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module main_test;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] led;
	wire [3:0] ledState;
	wire HSYNC;
	wire VSYNC;
	wire [2:0] RED;
	wire [1:0] BLUE;
	wire [2:0] GREEN;

	// Instantiate the Unit Under Test (UUT)
	Main uut (
		.clk(clk), 
		.reset(reset), 
		.led(led), 
		.ledState(ledState), 
		.HSYNC(HSYNC), 
		.VSYNC(VSYNC), 
		.RED(RED), 
		.BLUE(BLUE), 
		.GREEN(GREEN)
	);

	always #5 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#1000;
		
		reset = 0;
		
		#3000;
        
		// Add stimulus here

	end
      
endmodule

