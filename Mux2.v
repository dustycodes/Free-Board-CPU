`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:00:34 09/15/2015 
// Design Name: 
// Module Name:    Mux2 
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
module Mux2(
	input select,
	input [15:0] immediate, in2,
	output reg [15:0] out2
    );
	 
	 always@(select) begin
		case(select)
		1'b0: out2 = in2;
		1'b1: out2 = immediate;
		endcase
	 end
endmodule
