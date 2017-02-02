`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:52:37 09/15/2015 
// Design Name: 
// Module Name:    Mux16 
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
module Mux16(
	input [3:0] select,
	input [15:0] data_out0, data_out1, data_out2, data_out3, data_out4, data_out5, data_out6, data_out7, data_out8, data_out9, data_out10, data_out11, data_out12, data_out13, data_out14, data_out15,
	output reg [15:0] out
    );
	 always@(*) begin
			case (select)
			4'b0000: out = data_out0;
			4'b0001: out = data_out1;
			4'b0010: out = data_out2;
			4'b0011: out = data_out3;
			4'b0100: out = data_out4;
			4'b0101: out = data_out5;
			4'b0110: out = data_out6;
			4'b0111: out = data_out7;
			4'b1000: out = data_out8;
			4'b1001: out = data_out9;
			4'b1010: out = data_out10;
			4'b1011: out = data_out11;
			4'b1100: out = data_out12;
			4'b1101: out = data_out13;
			4'b1110: out = data_out14;
			4'b1111: out = data_out15; 			
			endcase
		end
endmodule
