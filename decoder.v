`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:46:26 09/15/2015 
// Design Name: 
// Module Name:    decoder 
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
module decoder4(
	input [4:0]enable,
	output reg [15:0]enableReg
    );
	 // Decode the 4-bit enable bus to select which register to write to.
	 // The first bit in "enable" says whether or not there WILL be a write.
	 // It is active low, so a write of 0 in the MSB (most significant bit) will cause a write.
	 // The rest of the bits select which register is being written to.
	 
	always@(enable) begin
			case (enable)
			5'b00000: enableReg = 16'b0000000000000001;
			5'b00001: enableReg = 16'b0000000000000010;
			5'b00010: enableReg = 16'b0000000000000100;
			5'b00011: enableReg = 16'b0000000000001000;
			5'b00100: enableReg = 16'b0000000000010000;
			5'b00101: enableReg = 16'b0000000000100000;
			5'b00110: enableReg = 16'b0000000001000000;
			5'b00111: enableReg = 16'b0000000010000000;
			5'b01000: enableReg = 16'b0000000100000000;
			5'b01001: enableReg = 16'b0000001000000000;
			5'b01010: enableReg = 16'b0000010000000000;
			5'b01011: enableReg = 16'b0000100000000000;
			5'b01100: enableReg = 16'b0001000000000000;
			5'b01101: enableReg = 16'b0010000000000000;
			5'b01110: enableReg = 16'b0100000000000000;
			5'b01111: enableReg = 16'b1000000000000000; 
			default: enableReg = 16'b0000000000000000; // Need to make sure that if none of the values above are selected, that
			endcase												 // enableReg is set to all zeros, otherwise a bit will still be 1 and a	 
																	 // value will be written.
		end

endmodule
