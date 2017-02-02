`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:34:00 11/09/2015 
// Design Name: 
// Module Name:    PixleCLK 
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
module PixleCLK(
	CLK,
	RST,
	PIXCLK
    );

	 input CLK;
	 input RST;
	 output reg PIXCLK;

	 reg [3:0] a;

always @ (posedge CLK or posedge RST) begin
	if(RST == 1) begin
		a <= 4'b0000;
		PIXCLK <= 1'b0;
		end
	else begin
		if(a == 4'b0011) begin//was 2'b01
			PIXCLK <= 1'b1;//(~PIXCLK);
			a <= 4'b0000;
		end
		else begin
		a <= a + 1;
		PIXCLK <= 0;//new
		end
	end
end


endmodule
