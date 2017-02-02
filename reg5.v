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
module reg5(
	input clk,
	input reset,
	input [4:0] datain,
	input enableReg,
	output reg [4:0] dataout
    );

always@(posedge clk)begin

	if(reset)begin//check reset
		dataout <= 5'b0;
	end
	
	if(enableReg)begin
		dataout <= datain;
		end
	else begin 
		dataout <= dataout;
	end
end


endmodule