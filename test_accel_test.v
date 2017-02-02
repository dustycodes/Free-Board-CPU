`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:13:18 12/07/2015
// Design Name:   state_controller
// Module Name:   C:/Users/Max/Documents/School/Classes/ECE3710/ece-3710/final2/test_accel_test.v
// Project Name:  ECE3710
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: state_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_accel_test;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] rx_data;
	reg tx_done;

	// Outputs
	wire [17:0] tx_data;
	wire transmit;

	// Instantiate the Unit Under Test (UUT)
	state_controller uut (
		.clk(clk), 
		.reset(reset), 
		.rx_data(rx_data), 
		.tx_done(tx_done), 
		.tx_data(tx_data), 
		.transmit(transmit)
	);

	always #5 clk = ~clk;
	
	always #5000 tx_done = ~tx_done;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		rx_data = 0;
		tx_done = 0;

		// Wait 100 ns for global reset to finish
		#1000;
		
		reset = 0;
		
		#1000;
        
		// Add stimulus here

	end
      
endmodule

