`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:30:47 09/10/2015 
// Design Name: 
// Module Name:    reg16 
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
module reg16(
	input clk,
	input reset,
	input [15:0] datain,
	input enableReg,
	output reg [15:0] dataout
    );

always@(posedge clk)begin
	//$display("CLOCKS FIRED!");
	if(reset) begin//check reset
		dataout <= 16'b0;	
	end
	else begin
		if(enableReg)begin
			$display("ENABLE REG FIRED!");
			dataout <= datain;
		end
		else begin
			dataout <= dataout;
		end
	end
end

endmodule