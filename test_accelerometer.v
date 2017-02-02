`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:08:46 12/07/2015
// Design Name:   accelerometer
// Module Name:   C:/Users/Max/Documents/School/Classes/ECE3710/ece-3710/final2/test_accelerometer.v
// Project Name:  ECE3710
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: accelerometer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_accelerometer;

	// Inputs
	reg clk;
	reg reset;
	reg SDI;

	// Outputs
	wire CS;
	wire SCLK;
	wire SDO;
	wire [15:0] axis_value;

	// Instantiate the Unit Under Test (UUT)
	accelerometer uut (
		.clk(clk), 
		.reset(reset), 
		.SDI(SDI), 
		.CS(CS), 
		.SCLK(SCLK), 
		.SDO(SDO), 
		.axis_value(axis_value)
	);

	always #5 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		SDI = 0;

		// Wait 100 ns for global reset to finish
		#1000;
		reset = 0;
		#1000;
        
		// Add stimulus here

	end
      
endmodule

