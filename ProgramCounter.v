`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:06:29 10/29/2015 
// Design Name: 
// Module Name:    ProgramCounter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ProgramCounter(
		clk, reset, enable, old_program_counter, step, program_counter
    );
	 
	input clk, reset, enable;
	input [14:0] old_program_counter;
	input [14:0] step;	 
	output reg [14:0] program_counter;

	always @(posedge clk) begin
		if(enable) begin
			//program_counter <= old_program_counter + step;
			program_counter <= step;
		end
		else if(reset) begin
			program_counter <= 15'd0;
		end
	end
	
	
endmodule