`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:44:37 09/19/2015
// Design Name:   Mux16
// Module Name:   C:/Users/Max/Documents/School/Classes/ECE3710/ece-3710/ECE3710/mux16_test.v
// Project Name:  ECE3710
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux16_test;

	// Inputs
	reg [3:0] select;
	reg [15:0] data_out0;
	reg [15:0] data_out1;
	reg [15:0] data_out2;
	reg [15:0] data_out3;
	reg [15:0] data_out4;
	reg [15:0] data_out5;
	reg [15:0] data_out6;
	reg [15:0] data_out7;
	reg [15:0] data_out8;
	reg [15:0] data_out9;
	reg [15:0] data_out10;
	reg [15:0] data_out11;
	reg [15:0] data_out12;
	reg [15:0] data_out13;
	reg [15:0] data_out14;
	reg [15:0] data_out15;

	// Outputs
	wire [15:0] out;
	integer i; reg [15:0]count;

	// Instantiate the Unit Under Test (UUT)
	Mux16 uut (
		.select(select), 
		.data_out0(data_out0), 
		.data_out1(data_out1), 
		.data_out2(data_out2), 
		.data_out3(data_out3), 
		.data_out4(data_out4), 
		.data_out5(data_out5), 
		.data_out6(data_out6), 
		.data_out7(data_out7), 
		.data_out8(data_out8), 
		.data_out9(data_out9), 
		.data_out10(data_out10), 
		.data_out11(data_out11), 
		.data_out12(data_out12), 
		.data_out13(data_out13), 
		.data_out14(data_out14), 
		.data_out15(data_out15), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		select = 0;
		data_out0 = 0;
		data_out1 = 0;
		data_out2 = 0;
		data_out3 = 0;
		data_out4 = 0;
		data_out5 = 0;
		data_out6 = 0;
		data_out7 = 0;
		data_out8 = 0;
		data_out9 = 0;
		data_out10 = 0;
		data_out11 = 0;
		data_out12 = 0;
		data_out13 = 0;
		data_out14 = 0;
		data_out15 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      count = 16;
		for(i = 0; i < 16; i = i + 1) begin
			case(i)
				0: data_out0 = count; 1: data_out1 = count; 2: data_out2 = count; 3: data_out3 = count;
				4: data_out4 = count; 5: data_out5 = count; 6: data_out6 = count; 7: data_out7 = count;
				8: data_out8 = count; 9: data_out9 = count; 10: data_out10 = count; 11: data_out11 = count;
				12: data_out12 = count; 13: data_out13 = count; 14: data_out14 = count; 15: data_out15 = count;
			endcase
			count = count + 16;
		end
		select = 4'b0001;
		#5
		count = 16;
		for(i =0; i < 16; i = i + 1) begin
			select = i;
			#5
			$display("out: %d \t count: %d", out, count);
			count = count + 16;
		end
		// Add stimulus here

	end
      
endmodule

