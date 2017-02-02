`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:48:41 12/07/2015
// Design Name:   aceel_control
// Module Name:   C:/Users/Max/Documents/School/Classes/ECE3710/ece-3710/final2/accel_tester.v
// Project Name:  ECE3710
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: aceel_control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module accel_tester;

	// Inputs
	reg clk;
	reg reset;
	reg SDI;
	reg button;

	// Outputs
	wire CS;
	wire SDO;
	wire SCLK_out;
	wire [7:0] led;
	wire [3:0] led_state;
	wire [7:0] lights;

	// Instantiate the Unit Under Test (UUT)
	aceel_control uut (
		.clk(clk), 
		.reset(reset), 
		.SDI(SDI), 
		.CS(CS), 
		.SDO(SDO), 
		.SCLK_out(SCLK_out), 
		.led(led), 
		.led_state(led_state), 
		.lights(lights), 
		.button(button)
	);
	
	reg [4:0]counter;

	always #5 clk = ~clk;
	
	always @ (negedge SCLK_out) begin
		case(counter)
			5'b01010: SDI <= 1'b0;
			5'b01011: SDI <= 1'b1;
			5'b01100: SDI <= 1'b1;
			5'b01101: SDI <= 1'b0;
			5'b01110: SDI <= 1'b0;
			5'b01111: SDI <= 1'b0;
			5'b10000: SDI <= 1'b1;
			5'b10001: SDI <= 1'b1;
			default: SDI <= 1'b0;
		endcase
		counter <= counter + 5'b00001;
		if(counter == 17)
			counter <= 5'b00000;
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		SDI = 0;
		button = 0;

		// Wait 100 ns for global reset to finish
		#1000;
		
		reset = 1;
		
		#1000;
		
		reset = 0;
		
		#3000;
        
		// Add stimulus here

	end
      
endmodule

