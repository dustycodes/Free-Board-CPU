`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:46:43 11/03/2015
// Design Name:   controller
// Module Name:   C:/Users/Max/Documents/School/Classes/ECE3710/ece-3710/final/controller_test2.v
// Project Name:  ECE3710
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module controller_test2;

	// Inputs
	reg [7:0] instruction;
	reg sign;

	// Outputs
	wire [3:0] op;
	wire select_immediate;
	wire [2:0] mem_control;
	wire write_reg;
	wire comparison;
	wire [7:0] immediate_extend;
	wire [9:0] PC_change;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	controller uut (
		.instruction(instruction), 
		.sign(sign), 
		.op(op), 
		.select_immediate(select_immediate), 
		.mem_control(mem_control), 
		.write_reg(write_reg), 
		.comparison(comparison), 
		.immediate_extend(immediate_extend), 
		.PC_change(PC_change)
	);

	initial begin
		// Initialize Inputs
		instruction = 0;
		i = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		  for(i = 0; i < 8'b1111_1111; i = i + 1) begin
				//$display("Iteration %d", i);
				instruction = {i[7:4],4'b0000,i[3:0],4'b0000};
				#10;
				case(i[7:4])
					4'b0000:
						if (op != i[3:0] | select_immediate != 0 | mem_control != 3'b000 | (instruction[3:0] == 4'b1011 ? comparison != 1 : comparison != 0)) $display("Error with instruction %b %b %b %b",instruction[15:12],instruction[11:8],instruction[7:4],instruction[3:0]);
					4'b0101:
						if (op != i[7:4] | select_immediate != 1 | mem_control != 3'b000 | comparison != 0) $display("Error with instruction %b %b %b %b",instruction[15:12],instruction[11:8],instruction[7:4],instruction[3:0]); 
					4'b0110:
						if (op != i[7:4] | select_immediate != 1 | mem_control != 3'b000 | comparison != 0) $display("Error with instruction %b %b %b %b",instruction[15:12],instruction[11:8],instruction[7:4],instruction[3:0]); 
					4'b1110:
						if (op != i[7:4] | select_immediate != 1 | mem_control != 3'b000 | comparison != 0) $display("Error with instruction %b %b %b %b",instruction[15:12],instruction[11:8],instruction[7:4],instruction[3:0]); 
					4'b1001:
						if (op != i[7:4] | select_immediate != 1 | mem_control != 3'b000 | comparison != 0) $display("Error with instruction %b %b %b %b",instruction[15:12],instruction[11:8],instruction[7:4],instruction[3:0]); 
					4'b1011:
						if (op != i[7:4] | select_immediate != 1 | mem_control != 3'b000 | comparison != 1) $display("Error with instruction %b %b %b %b",instruction[15:12],instruction[11:8],instruction[7:4],instruction[3:0]); 
					4'b0001:
						if (op != i[7:4] | select_immediate != 1 | mem_control != 3'b000 | comparison != 0) $display("Error with instruction %b %b %b %b",instruction[15:12],instruction[11:8],instruction[7:4],instruction[3:0]); 
					4'b0010:
						if (op != i[7:4] | select_immediate != 1 | mem_control != 3'b000 | comparison != 0) $display("Error with instruction %b %b %b %b",instruction[15:12],instruction[11:8],instruction[7:4],instruction[3:0]); 
					4'b0011:
						if (op != i[7:4] | select_immediate != 1 | mem_control != 3'b000 | comparison != 0) $display("Error with instruction %b %b %b %b",instruction[15:12],instruction[11:8],instruction[7:4],instruction[3:0]); 
					4'b0100:
						begin
							case(instruction[3:0])
								4'b0000:
									if (op != 4'b0000 | mem_control != 3'b110 | select_immediate != 0 | comparison != 0) $display("Error with instruction %b %b %b %b\nop: %b \t mem_conrol: %b \t select_immediate: %b \t comparison: %b",instruction[15:12],instruction[11:8],instruction[7:4],instruction[3:0], op, mem_control, select_immediate, comparison); 
								4'b0100:
									if (op != 4'b0000 | mem_control != 3'b101 | select_immediate != 0 | comparison != 0) $display("Error with instruction %b %b %b %b\nop: %b \t mem_conrol: %b \t select_immediate: %b \t comparison: %b",instruction[15:12],instruction[11:8],instruction[7:4],instruction[3:0], op, mem_control, select_immediate, comparison); 
							endcase
						end
				endcase
		  end
		  $display("End of simulation");
	end
      
endmodule

