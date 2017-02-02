`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:06:00 09/29/2015
// Design Name:   num_display
// Module Name:   C:/Users/Max/Documents/School/Classes/ECE3710/ece-3710/ECE3710/numdisplay_test.v
// Project Name:  ECE3710
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: num_display
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module numdisplay_test;

	// Inputs
	reg clk;
	reg [15:0] value;

	// Outputs
	wire [7:0] led;
	wire [3:0] state;
	wire [15:0] result;

	// Instantiate the Unit Under Test (UUT)
	num_display uut (
		.clk(clk), 
		.value(value), 
		.led(led), 
		.state(state),
		.result(result)
	);
	always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		value = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
      value = 16'd100;
		#1000;
		value = 16'd9999;
		#1000;
		// Add stimulus here

	end
      
endmodule

