`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:30:48 09/19/2015
// Design Name:   controller
// Module Name:   C:/Users/Max/Documents/School/Classes/ECE3710/ece-3710/ECE3710/controller_test.v
// Project Name:  ECE3710
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module controller_test;

	// Inputs
	reg [16:0] state;

	// Outputs
	wire selectImmediate;
	wire [3:0] op;
	wire [3:0] select1;
	wire [3:0] select2;
	wire [4:0] enableReg;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	controller uut (
		.state(state), 
		.selectImmediate(selectImmediate), 
		.op(op), 
		.select1(select1), 
		.select2(select2), 
		.enableReg(enableReg)
	);

	initial begin
		// Initialize Inputs
		state = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for(i = 0; i < 20; i = i + 1) begin
			state = $random % 17'b11111111111111111;
			#5;
			$display("State: %b %b %b %b %b", state[16], state[15:12], state[11:8], state[7:4], state[3:0]);
			$display("selectImm: %b \t op: %b \t select1: %b \t select2: %b \t enableReg: %b \n", selectImmediate, op, select1, select2, enableReg);
		end
		
	end
      
endmodule

