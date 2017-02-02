`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:01:42 09/14/2015 
// Design Name: 
// Module Name:    RegisterMux 
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
module RegisterMux(
	input [3:0] select,
	input [15:0] data_out0, data_out1, data_out2, data_out3, data_out4, data_out5, data_out6, data_out7, data_out8, data_out9, data_out10, data_out11, data_out12, data_out13, data_out14, data_out15,
	output reg alu_input
    );
	always@(*) begin
		case (select)
			0: 
				begin 
					alu_input = data_out0;
				end
			1: 
				begin
					alu_input = data_out1;
				end
			2: 
				begin
					alu_input = data_out2;
				end
			3: 
				begin 
					alu_input = data_out3;
				end
			4: 
				begin
					alu_input = data_out4;
				end
			5: 
				begin
					alu_input = data_out5;
				end
			6: 
				begin 
					alu_input = data_out6;
				end
			7: 
				begin
					alu_input = data_out7;
				end
			8: 
				begin 
					alu_input = data_out8;
				end
			9: 
				begin
					alu_input = data_out9;
				end
			10: 
				begin
					alu_input = data_out10;
				end
			11: 
				begin
					alu_input = data_out11;
				end
			12: 
				begin
					alu_input = data_out12;
				end
			13: 
				begin
					alu_input = data_out13;
				end
			14: 
				begin
					alu_input = data_out14;
				end
			15: 
				begin
					alu_input = data_out15;
				end
			default:
				begin
					alu_input = data_out0;
				end
		endcase
	end

endmodule
