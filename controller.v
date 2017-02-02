`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:41 09/19/2015 
// Design Name: 
// Module Name:    controller 
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
module controller(
    input [15:0]full_instruction,
	 input [4:0]flags,
	 input start_button,
	 output reg [3:0]op,
	 output reg select_immediate,
	 output reg [1:0]branch, // If 0 no branch, if 1 branch, if 2 jump
	 output reg [7:0]immediate_extend,
	 output reg [1:0]instr_type, // If 0 R-type, if 1 I-type, if 2 Load/Store, if 3 branch
	 output reg [14:0]PC_change,
	 output reg load_store // Says whether a load or store is being done. 0 for load, 1 for store.
    );
	
wire [7:0]instruction;	
assign instruction = {full_instruction[15:12],full_instruction[7:4]};

always @ (instruction, full_instruction, flags, start_button) begin
	if(instruction[7:4] == 4'b0110 | instruction[7:4] == 4'b1000 | instruction[3:0] == 4'b0110 | instruction[3:0] == 4'b0110) begin
		immediate_extend = 8'b0000_0000;
	end
	else begin
		immediate_extend = full_instruction[7] ? 8'b1111_1111 : 8'b0000_0000;
	end
	
	PC_change = 15'd1;
	
	if(instruction[7:4] == 4'b1100) begin // Branch
		////branch = 2'b01;
		case(full_instruction[11:8])
			4'b0000: // branch with no conditions.
				begin
					if(full_instruction[7] == 1) PC_change = {7'b1111111,full_instruction[7:0]};
					else PC_change = {7'b0000000,full_instruction[7:0]};
				end
			4'b0001: // branch if there is overflow.
				begin
					if(flags[0] == 1'b1) PC_change = {full_instruction[7] ? 7'b1111111 : 7'b0000000 , full_instruction[7:0]};
					else PC_change = 15'd1;
				end
			4'b0010: // Compare (in1 > in2)
				begin
					if(flags[1] == 1'b1) PC_change = {full_instruction[7] ? 7'b1111111 : 7'b0000000 , full_instruction[7:0]};
					else PC_change = 15'd1;
				end
			4'b0011: // Compare in1 = in2
				begin
					if(flags[3] == 1'b1) PC_change = {full_instruction[7] ? 7'b1111111 : 7'b0000000 , full_instruction[7:0]};
					else PC_change = 15'd1;
				end
			4'b0100: // Look at the start button flag
				begin
					if(start_button == 1'b1) PC_change = {full_instruction[7] ? 7'b1111111 : 7'b0000000 , full_instruction[7:0]};
					else PC_change = 15'd1;
				end
			default: PC_change = 15'd1;
		endcase	
		branch = 2'b01;
	end
	else if(instruction[7:4] == 4'b0100 && instruction[3:0] == 4'b1100) begin // Jump
		case(full_instruction[11:8])
			4'b0000: // No condition
				begin
					branch = 2'b10;
				end
			4'b0001: // There is overflow
				begin 
					if(flags[0] == 1'b1) branch = 2'b10;
					else branch = 2'b00; // If no overflow, just keep PC change at 1.
				end
			4'b0010: // Compare (in1 > in2)
				begin
					if(flags[1] == 1'b1) branch = 2'b10;
					else branch = 2'b00;
				end
			4'b0011: // Compare in1 = in2
				begin
					if(flags[3] == 1'b1) branch = 2'b10;
					else branch = 2'b00;
				end
			4'b0100: // Look at the start button flag.
				begin
					if(start_button == 1'b1) branch = 2'b10;
					else branch = 2'b00;
				end
			default:
				begin
					branch = 2'b00;
				end
		endcase
	end
	else begin
		PC_change = 15'd1;
		branch = 2'b00;
	end
	
end

always @ (instruction) begin
	case(instruction[7:4])
		4'b0000: // ALU with no immediate
			begin
				op = instruction[3:0];
				select_immediate = 1'b0;
				//branch = 2'b00;
				instr_type = 2'b00;
				load_store = 1'b0;
			end
		4'b0101: // ADDI
			begin
				op = 4'b0101;
				select_immediate = 1'b1; 
				//branch = 2'b00;
				instr_type = 2'b01;
				load_store = 1'b0;
			end
		4'b0110: // ADDUI
			begin
				op = 4'b0110;
				select_immediate = 1'b1; 
				//branch = 2'b00;
				instr_type = 2'b01;
				load_store = 1'b0;
			end
			
		4'b1001: //SUBI
			begin
				op = 4'b1001;
				select_immediate = 1'b1;
				//branch = 2'b00;
				instr_type = 2'b01;
				load_store = 1'b0;
			end
			
		4'b1011: //COMPI
			begin
				op = 4'b1011;
				select_immediate = 1'b1; 
				//branch = 2'b00;
				instr_type = 2'b01;
				load_store = 1'b0;
			end
			
		4'b0001: //ANDI
			begin
				op = 4'b0001;
				select_immediate = 1'b1; 
				//branch = 2'b00;
				instr_type = 2'b01;
				load_store = 1'b0;
			end
			
		4'b0010: //ORI
			begin
				op = 4'b0010;
				select_immediate = 1'b1; 
				//branch = 2'b00;
				instr_type = 2'b01;
				load_store = 1'b0;
			end
		
		4'b0011: //XORI
			begin
				op = 4'b0011;
				select_immediate = 1'b1; 
				//branch = 2'b00;
				instr_type = 2'b01;
				load_store = 1'b0;
			end
			
		4'b1110: //MULTI
			begin
				op = 4'b1110;
				select_immediate = 1'b1; 
				//branch = 2'b00;
				instr_type = 2'b01;
				load_store = 1'b0;
			end
			
		4'b0100: // LOAD/STORE
			begin
				op = 4'b0000;
				select_immediate = 1'b0;
				//branch = 2'b00;
				//instr_type = 2'b10;
				case(instruction[3:0])
					4'b0000: // LOAD
						begin
							instr_type = 2'b10;
							load_store = 1'b0;
						end
					4'b0100: // STORE
						begin
							instr_type = 2'b10;
							load_store = 1'b1;
						end
					4'b1100: 
						begin
							instr_type = 2'b11;
							load_store = 1'b1;
						end
					default:
						begin
							instr_type = 2'b10;
							load_store = 1'b0;
						end
				endcase
			end
			
		default:
			begin
				op = 4'b0000;
				select_immediate = 1'b0;
				//branch = 2'b00;
				instr_type = 2'b00;
				load_store = 1'b0;
			end
	endcase
end
	 

endmodule
