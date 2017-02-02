`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:10:03 09/21/2015
// Design Name:   main_impl
// Module Name:   C:/Users/Max/Documents/School/Classes/ECE3710/ece-3710/ECE3710/mainImpl_test.v
// Project Name:  ECE3710
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main_impl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mainImpl_test;

	// Inputs
	reg clk;
	reg reset;

	integer i;

	// Outputs
	wire [7:0]led;
	wire [15:0]ALU_result;
	wire [3:0]ledState;

	// Instantiate the Unit Under Test (UUT)
	main_impl uut (
		.external_clk(clk), 
		.reset(reset),
		.led(led),
		.ledState(ledState),
		.ALU_result(ALU_result)
	);
	
	always #5 clk = ~clk;
	
	//always @ (posedge clk) begin
	//	if(i == 100) begin
	//		$display("ALU result: %d", ALU_result);
	//		i = 0;
	//	end
	//	i = i + 1;
	//end
	
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		i = 0;
		// Wait 100 ns for global reset to finish
		#500;
		reset = 0;
		//#100;
		
		//$display("ALU val: %d", ALU_result);
		
		//#100000;
		//$display("ALU val: %d", ALU_result);
        
		// Add stimulus here
		/*
		state = 17'b10010000000011111;
		#10;
		//$display("ALU val: %d", ALU_result);
		for(i = 0; i < 32; i = i + 1) begin
			case(i)
				0: state = 17'b00010111111100000;
				1: state = 17'b00010000011110001;
				2: state = 17'b00010000100000010;
				3: state = 17'b00010001000010011;
				4: state = 17'b00010001100100100;
				5: state = 17'b00010010000110101;
				6: state = 17'b00010010101000110;
				7: state = 17'b00010011001010111;
				8: state = 17'b00010011101101000;
				9: state = 17'b00010100001111001;
				10: state = 17'b00010100110001010;
				11: state = 17'b00010101010011011;
				12: state = 17'b00010101110101100;
				13: state = 17'b00010110010111101;
				14: state = 17'b00010110111001110;
				15: state = 17'b00010111011011111;
				16: state = 17'b00010111111100000;
				17: state = 17'b00010000011110001;
				18: state = 17'b00010000100000010;
				19: state = 17'b00010001000010011;
				20: state = 17'b00010001100100100;
				21: state = 17'b00010010000110101;
				22: state = 17'b00010010101000110;
				23: state = 17'b00010011001010111;
				24: state = 17'b00010011101101000;
				25: state = 17'b00010100001111001;
				26: state = 17'b00010100110001010;
				27: state = 17'b00010101010011011;
				28: state = 17'b00010101110101100;
				29: state = 17'b00010110010111101;
				30: state = 17'b00010110111001110;
				31: state = 17'b00010111011011111;
			endcase
			#10;
			$display("ALU val: %d", ALU_result);
		end
		*/
		
	end
      
endmodule

