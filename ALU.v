`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:03:41 08/31/2015 
// Design Name: 
// Module Name:    ALU 
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
module ALU(input [15:0]input1, input [15:0]input2, input [3:0]op, input [4:0]inFlags,
			  output reg [4:0]outFlags, output reg [15:0]result 
    );
	 
	 // Flags:
	 // Bit 0: Carry
	 // Bit 1: Comparison bit (less than)
	 // Bit 2: Flag bit (such as for overflow)
	 // Bit 3: Comparison bit (equality)
	 // Bit 4: Negative bit
	 
	 parameter ADD = 4'b0101;
	 parameter ADDU = 4'b0110;
	 parameter ADDC = 4'b0111;
	 parameter ADDCU = 4'b0001;
	 parameter SUB = 4'b1001;
	 parameter CMP = 4'b1011;
	 parameter CMPU = 4'b1000;
	 parameter AND = 4'b1111;
	 parameter OR = 4'b0010;
	 parameter XOR = 4'b0011;
	 parameter NOT = 4'b1010;
	 parameter LSH = 4'b0100;
	 parameter ACCEL = 4'b1100;
	 parameter MULT = 4'b1110;
	 parameter NOP = 4'b0000;
	 
	 always @(input1, input2, op, inFlags) begin
		result = 2'h00;
		outFlags = inFlags;
		 case(op)
			ADD:
				begin
					{outFlags[0], result} = input1 + input2;
					if((input1[15] & input2[15] & ~result[15]) | (~input1[15] & ~input2[15] & result[15])) 
						outFlags[2] = 1'b1;
					else outFlags[2] = 1'b0;
					outFlags[1] = inFlags[1];
					outFlags[3] = inFlags[3];
					outFlags[4] = inFlags[4];
				end
				
			ADDU:
				begin
					{outFlags[0], result} = input1 + input2;
					if(outFlags[0] == 1'b1) outFlags[2] = 1'b1;
					else outFlags[2] = 1'b0;
					outFlags[1] = inFlags[1];
					outFlags[3] = inFlags[3];
					outFlags[4] = inFlags[4];
				end
				
			ADDC:
				begin
					{outFlags[0], result} = input1 + input2 + inFlags[0];
					if((input1[15] & input2[15] & ~result[15]) | (~input1[15] & ~input2[15] & result[15]))
						outFlags[2] = 1'b1; 					
					else outFlags[2] = 1'b0;
					outFlags[1] = inFlags[1];
					outFlags[3] = inFlags[3];
					outFlags[4] = inFlags[4];
				
				end
				
			ADDCU:
				begin
					{outFlags[0], result} = input1 + input2 + inFlags[0];
					if(outFlags[0] == 1'b1) outFlags[2] = 1'b1;
					else outFlags[2] = 1'b0;
					outFlags[1] = inFlags[1];
					outFlags[3] = inFlags[3];
					outFlags[4] = inFlags[4];
				end
				
			SUB:
				begin
					{outFlags[0], result} = input1 - input2;
					if((input1[15] & ~input2[15] & ~result[15]) | (~input1[15] & input2[15] & result[15])) 
						outFlags[2] = 1'b1;
					else outFlags[2] = 1'b0;
					outFlags[1] = inFlags[1];
					outFlags[3] = inFlags[3];
					outFlags[4] = inFlags[4];
				end
				
			CMP:
				begin
					if($signed(input1) > $signed(input2))
						outFlags[1] = 1'b1;
					else
						outFlags[1] = 1'b0;
						
					if($signed(input1) == $signed(input2))
						outFlags[3] = 1'b1;
					else
						outFlags[3] = 1'b0;
						
					outFlags[0] = inFlags[0];
					outFlags[2] = inFlags[2];
					outFlags[4] = inFlags[4];
					result = input1;
				end
				
			CMPU:
				begin
					if($unsigned(input1) > $unsigned(input2))
						outFlags[1] = 1'b1;
					else
						outFlags[1] = 1'b0;
						
					if($unsigned(input1) == $unsigned(input2))
						outFlags[3] = 1'b1;
					else
						outFlags[3] = 1'b0;
						
					outFlags[0] = inFlags[0];
					outFlags[2] = inFlags[2];
					outFlags[4] = inFlags[4];
					result = input1;
				end
				
			AND:
				begin
					result = input1 & input2;
					outFlags[4:0] = inFlags[4:0];
				end
				
			OR:
				begin
					result = input1 | input2;
					outFlags[4:0] = inFlags[4:0];
				end
				
			XOR:
			
				begin
					result = input1 ^ input2;
					outFlags[4:0] = inFlags[4:0];
				end
				
			NOT:
				begin
					result = ~input1;
					outFlags[4:0] = inFlags[4:0];
				end
				
			LSH:
				begin
					result = input1 << input2;
					outFlags[4:0] = inFlags[4:0];
				end
				
			ACCEL:
				begin
					result = input1;
					outFlags[4:0] = inFlags[4:0];
				end
				
			MULT:
				begin
					result = input1 * input2;
					outFlags[4:0] = inFlags[4:0];
				end
				
			NOP:
				begin
					result = input1 + 16'd0;
					outFlags[4:0] = inFlags[4:0];
				end
				
			default:
				begin
					result = 2'h00;
					outFlags[4:0] = inFlags[4:0];
				end
				
		 endcase
	end


endmodule