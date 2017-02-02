`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:47:01 09/13/2015 
// Design Name: 
// Module Name:    Main 
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
module Main(
    input clk, 
	 input reset,
	 input start_button,
	 input SDI,
	 output [7:0]led,
	 output [3:0]ledState,
	 output HSYNC,
	 output VSYNC,
	 output [2:0]RED,
	 output [1:0]BLUE,
	 output [2:0]GREEN,
	 output CS,
	 output SCLK,
	 output SDO
	);
	
	//////////////////////////////////////////////
	//
	// Nets attacthed to the memory.
	//
	//////////////////////////////////////////////
	reg mem_en, mem_read, mem_write; // Memory control wires.
	wire vga_mem_write, vga_mem_en;
	wire [14:0]mem_addr_mux; // Wire from the address decoder
	wire [14:0]vga_addr; // Memory address for the VGA.
	wire [15:0]regfile_to_ALU; // Wire from the register file to the ALU. This is also the data source
	                           // for memory.
	wire [15:0]mem_to_mux; // Wire from the memory output port 1. Goes to a MUX that selects what is 
	                       // being read (ALU or memory)
	wire [15:0]mem_out; // Memory output.
	wire [15:0]mem_mux_out; // The output of the MUX at the output of the memory.
	wire [15:0]vga_out; // Output for the VGA memory.
	wire [14:0]program_counter; // The PC
	reg [15:0]instruction; // Wire from flip flop that holds the instruction.
	// wire [15:0]regfile_to_immMux; // Declared below. Used here as the memory address for data.
	reg read_instr; // Says whether reading an instruction from memory or data memory.
	reg fetch_instr; // Says whether or not we're getting a new instruction.
	wire [14:0]vga_fb_addr;
	memory mem (clk, reset, !VSYNC?mem_en:1'b1, vga_mem_en, !VSYNC?mem_write:1'b0, vga_mem_write, !VSYNC?regfile_to_ALU:16'd0, mem_addr_mux, vga_addr, mem_out, vga_out);
	// MUX that selects if reading from data or instruction memory.
	assign mem_addr_mux = read_instr ? program_counter : (!VSYNC ? regfile_to_immMux[14:0] : vga_fb_addr);
	// Flip flop that holds instruction until next one is fetched.
	always @ (posedge fetch_instr) begin
		instruction <= mem_out;
	end
	assign mem_mux_out = mem_read ? mem_out : ALU_result; // MUX that selects if the ALU or memory output will be used.

	/////////////////////////////////////////////////
	//
	// Nets attached to the register file
	//
	/////////////////////////////////////////////////
	// wire [15:0]mem_mux_out; // Declared above
	// wire [15:0]regfile_to_ALU; // Declared above.
	wire [15:0]regfile_to_immMux; // Output 2 of the register file. Goes to the immediate mux.
	wire [7:0]immediate_extend; // Sign extention of the immediate.
	wire [15:0]immMux_to_ALU; // Wire that runs from the immediate select MUX to the ALU.
	wire select_immediate; // Control wire that says whether an immediate is being used.
	reg reg_write; // Control that says whether or not a register write is occuring.
	wire [15:0]led_out; // LED display value.
	wire [16:0]axis_value;
	RegisterFile reg_file (clk, reset, mem_mux_out, {reg_write,instruction[11:8]}, instruction[11:8], instruction[3:0], axis_value,
	                       regfile_to_ALU, regfile_to_immMux, led_out);
	// MUX that selects the ALU input.
	assign immMux_to_ALU = select_immediate ? {immediate_extend,instruction[7:0]} : regfile_to_immMux;
	
	/////////////////////////////////////////////////
	//
	// Nets associated with the ALU.
	//
	/////////////////////////////////////////////////
	// wire [15:0]regfile_to_ALU; // Declared above
	// wire [15:0]immMux_to_ALU; // Declared above
	wire [3:0]op; // Operation control for ALU.
	wire [4:0]ALU_flags_out; // Output flags for the ALU.
	wire [4:0]ALU_flags_in; // Input flags for the ALU.
	wire [15:0]ALU_result; // Result of the ALU operation.
	ALU alu (regfile_to_ALU, immMux_to_ALU, op, ALU_flags_in, ALU_flags_out, ALU_result);
	reg5 flag_reg (clk, reset, ALU_flags_out, 1'b1, ALU_flags_in);
	
	///////////////////////////////////////////////////
	//
	// Nets associated with the program counter
	//
	///////////////////////////////////////////////////
	reg pc_en; // Control that says whether the PC is being changed.
	// wire [9:0]program_counter; // Declared above
	wire [14:0]step; // The increment of the PC.
	wire [14:0]PC_change; // Says the amount that the PC will change by.
	wire [14:0]intermediate_step; // 
	ProgramCounter pc (clk, reset, pc_en, program_counter, step, program_counter);
	// MUX that controls how much of a step will be taken by the PC.
	//assign step = (program_counter != 10'd0) ? PC_change : 10'd1;
	assign step = (branch == 2'b10) ? regfile_to_immMux[14:0] : ((program_counter != 15'd0) ? (program_counter + PC_change) : 15'd1); 
	
	//////////////////////////////////////////////////////
	//
	// Nets associated with the signal controller.
	//
	/////////////////////////////////////////////////////
	// wire [15:0]instruction; // Declared above.
	// wire [4:0]ALU_flags_out; // Declared above.
	// wire select_immediate;; // Declared above.
	// wire select_immediate; // Declared above.
	wire [1:0]branch; // Says whether there will be a branch or not. Used to say
	                  // if the branch is relative or absolute.
	// wire [7:0]immediate_extend; // Declared above
	wire [1:0]instr_type; // Control that says what type of instruction is being performed.
	                      // 2'b00 - R-type
								 // 2'b01 - I-type
								 // 2'b10 - Load/Store
								 // 2'b11 - Branch
								 // May need to make this 3 bits if Load and Store need different operations.
	// wire [9:0]PC_change; // Declared above.
	wire load_store; // Controle wire that says whether the operation is a load or store.
						  // 0 for load, 1 for store.
	controller controls (instruction, ALU_flags_out, start_button, op, select_immediate, branch, immediate_extend, instr_type, PC_change, load_store);
	
	////////////////////////////////////////////////////////
	//
	// LED display
	//
	/////////////////////////////////////////////////////////
	num_display display  (clk, led_out, led, ledState);
	
	////////////////////////////////////////////////////////
	//
	// VGA display
	//
	/////////////////////////////////////////////////////////
	VGAcontroller vga(clk, reset, vga_out, mem_out[5:0], VSYNC, HSYNC, RED, BLUE, GREEN, vga_addr, vga_fb_addr, vga_mem_write, vga_mem_en); 
	
	///////////////////////////////////////////////////
	//
	// Nets associated with the accelerometer
	//
	///////////////////////////////////////////////////
	accelerometer accel(clk, reset, SDI, CS, SCLK, SDO, axis_value[15:0], axis_value[16]);
	
	
	reg [19:0]clkCounter; 
	reg [1:0]presentState;
	reg [1:0]nextState; 

always @ (posedge clk) begin
	if(reset == 0) begin
		//if(~v_pusle) begin
			presentState <= nextState;
		//end
	end // End reset
	if(reset == 1) 
		presentState <= 2'b00;
	if(presentState == 2'b01)
		fetch_instr <= 1'b1;
	else
		fetch_instr <= 1'b0;
end

// NEED TO ADD ANOTHER STATE TO GET THE VALUE IN THE ACCELEROMETER
always @ (presentState, instr_type, load_store, instruction, VSYNC) begin
	if(!VSYNC) begin
		case(presentState)
			2'b00: // Get new instruction from memory.
				begin
					mem_en = 1'b1;
					mem_write = 1'b0;
					mem_read = 1'b0;
					pc_en = 1'b0;
					//fetch_instr = 1'b0;
					read_instr = 1'b1;
					reg_write = 1'b1;
				end
			2'b01: // Put instruction into flip flop.
				begin	
					mem_en = 1'b1;
					mem_write = 1'b0;
					mem_read = 1'b0;
					pc_en = 1'b0;
					//fetch_instr = 1'b1;
					read_instr = 1'b1;
					reg_write = 1'b1;
				end // End (presentState) 4'b0000
			2'b10: // Decode and execute.
				begin
					//fetch_instr = 1'b0;
					pc_en = 1'b0;
					read_instr = 1'b0;
					case(instr_type)
						2'b00: // R-type
							begin
								// If comparison. Not writing back to reg file.
								//if(instruction[7:4] == 4'b1011 | instruction[7:4] == 4'b1000) begin
								//	reg_write = 1'b1;
								//end
								//else begin
									reg_write = 1'b0;
								//end
								mem_en = 1'b0;
								mem_read = 1'b0;
								mem_write = 1'b0;
							end
						2'b01: // I-type
							begin
								// If comparison not writing back to reg file
								//if(instruction[15:12] == 4'b1011 | instruction[7:4] == 4'b1000) begin
								//	reg_write = 1'b1;
								//end
								//else begin
									reg_write = 1'b0;
								//end
								mem_en = 1'b0;
								mem_read = 1'b0;
								mem_write = 1'b0;
							end
						2'b10: // Load/Store
							begin
								pc_en = 1'b0;
								//fetch_instr = 1'b0;
								mem_en = 1'b1;
								//reg_write = 1'b0;
								if(load_store) begin // Doing a store.
									mem_read = 1'b0;
									mem_write = 1'b1;
									reg_write = 1'b1;
								end
								else begin // Doing a load.
									mem_read = 1'b1;
									mem_write = 1'b0;
									reg_write = 1'b0;
								end
							end
						2'b11: // Jump
							begin
								pc_en = 1'b0;
								mem_en = 1'b0;
								mem_read = 1'b0;
								mem_write = 1'b0;
								reg_write = 1'b1;
							end
					endcase
				end // End (presentState)4'b0001
			2'b11: // Get new PC
				begin
					mem_en = 1'b1;
					pc_en = 1'b1;
					if(instr_type == 2'b10 && !load_store) begin
						mem_read = 1'b1;
						reg_write = 1'b0;
					end
					else begin
						mem_read = 1'b0;
						reg_write = 1'b1;
					end
					//fetch_instr = 1'b0;
					read_instr = 1'b0;
					mem_write = 1'b0;
				end
			default:
				begin
					mem_en = 1'b0;
					mem_read = 1'b0;
					mem_write = 1'b0;
					pc_en = 1'b0;
					//fetch_instr = 1'b0;
					read_instr = 1'b0;
					reg_write = 1'b1;
				end
		endcase
	end
	else begin
		mem_en = 1'b0;
		mem_read = 1'b0;
		mem_write = 1'b0;
		pc_en = 1'b0;
		//fetch_instr = 1'b0;
		read_instr = 1'b0;
		reg_write = 1'b1;
	end
end

always@ (presentState) begin
	case(presentState)
		2'b00: nextState = 2'b01;
		2'b01: nextState = 2'b10;
		2'b10: nextState = 2'b11;
		2'b11: nextState = 2'b00;
	endcase
end





endmodule
