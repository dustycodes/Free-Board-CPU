`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:19:33 09/29/2015 
// Design Name: 
// Module Name:    test_display 
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
module test_display(
    output reg [7:0] led,
    output reg [3:0] ledState,
    output reg [7:0] lights,
    input clk
    );

always @ (posedge clk) begin
	led <=8'b00011001;
	ledState <= 4'b1110;
	lights <= 8'b00011001;
end

endmodule
