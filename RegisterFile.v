`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:07 09/10/2015 
// Design Name: 
// Module Name:    RegisterFile 
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
module RegisterFile(
    input clk,
    input reset,
    input [15:0] data_in,
	 input [4:0] enable,
	 input [3:0] select1, select2,
	 input [16:0]axis_value,
    output [15:0] out1, out2, 
	 output reg [15:0]led_out
    );	
	//outputs
		// The registers that store the data
		reg [15:0] data_out0, data_out1, data_out2, data_out3, data_out4, data_out5, data_out6, data_out7, data_out8, data_out9, data_out10, data_out11, data_out12, data_out13, data_out14, data_out15;
		// Decoded signal that says which register to write to.
		wire [15:0] enableReg;
		
		//Decode the 4-bit enable input into it's 16-bit compliment.
		decoder4 d (enable, enableReg); 
		
		/* Not working for some reason. Don't know why. When this implementation is used, the enableReg bus is just x's.
		
		reg16 inst0 (clk, reset, data_in, data_out0, enableReg[0]);
		reg16 inst1 (clk, reset, data_in, data_out1, enableReg[1]);
		reg16 inst2 (clk, reset, data_in, data_out2, enableReg[2]);
		reg16 inst3 (clk, reset, data_in, data_out3, enableReg[3]);
		reg16 inst4 (clk, reset, data_in, data_out4, enableReg[4]);
		reg16 inst5 (clk, reset, data_in, data_out5, enableReg[5]);
		reg16 inst6 (clk, reset, data_in, data_out6, enableReg[6]);
		reg16 inst7 (clk, reset, data_in, data_out7, enableReg[7]);
		reg16 inst8 (clk, reset, data_in, data_out8, enableReg[8]);
		reg16 inst9 (clk, reset, data_in, data_out9, enableReg[9]);
		reg16 inst10 (clk, reset, data_in, data_out10, enableReg[10]);
		reg16 inst11 (clk, reset, data_in, data_out11, enableReg[11]);
		reg16 inst12 (clk, reset, data_in, data_out12, enableReg[12]);
		reg16 inst13 (clk, reset, data_in, data_out13, enableReg[13]);
		reg16 inst14 (clk, reset, data_in, data_out14, enableReg[14]);
		reg16 inst15 (clk, reset, data_in, data_out15, enableReg[15]);
		*/
		
		// Select the outputs for the reg. file using two 16-to-1 MUXs.
		Mux16 out1_select(select1, data_out0, data_out1, data_out2, data_out3, data_out4, data_out5, data_out6, data_out7, data_out8, data_out9, data_out10, data_out11, data_out12, data_out13, data_out14, data_out15, out1);
		Mux16 out2_select(select2, data_out0, data_out1, data_out2, data_out3, data_out4, data_out5, data_out6, data_out7, data_out8, data_out9, data_out10, data_out11, data_out12, data_out13, data_out14, data_out15, out2);

always @ (posedge clk) begin
	// If reset is high, set all the values in the registers to 0.
	if(reset) begin
		data_out0 <= 16'h0000; data_out1 <= 16'h0000; data_out2 <= 16'h0000; data_out3 <= 16'h0000;
		data_out4 <= 16'h0000; data_out5 <= 16'h0000; data_out6 <= 16'h0000; data_out7 <= 16'h0000;
		data_out8 <= 16'h0000; data_out9 <= 16'h0000; data_out10 <= 16'h0000; data_out11 <= 16'h0000;
		data_out12 <= 16'h0000; data_out13 <= 16'h0000; data_out14 <= 16'h0000; data_out15 <= 16'h0000;
	end
	// If reset is not high, then write to the registers based on the enableReg bus.	
	//else begin
		case(enableReg)
			16'b0000000000000001: data_out0 <= data_in;
			16'b0000000000000010: data_out1 <= data_in; 
			16'b0000000000000100: data_out2 <= data_in; 
			16'b0000000000001000: data_out3 <= data_in; 
			16'b0000000000010000: data_out4 <= data_in; 
			16'b0000000000100000: data_out5 <= data_in; 
			16'b0000000001000000: data_out6 <= data_in;
			16'b0000000010000000: data_out7 <= data_in;
			16'b0000000100000000: data_out8 <= data_in;
			16'b0000001000000000: data_out9 <= data_in;
			16'b0000010000000000: data_out10 <= data_in; 
			16'b0000100000000000: data_out11 <= data_in; 
			16'b0001000000000000: data_out12 <= data_in; 
			16'b0010000000000000: data_out13 <= data_in; 
			16'b0100000000000000: data_out14 <= data_in; 
			16'b1000000000000000: data_out15 <= data_in; 
		endcase
		
		if(axis_value[16])
			data_out0 <= axis_value[15:0];
			
		
		led_out <= data_out15;
		
	//end
end



endmodule