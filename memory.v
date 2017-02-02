`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:16 10/02/2013 
// Design Name: 
// Module Name:    memory 
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
// This is a template for a single-port memory. 
// You should modify this to design a dual-port memory
//////////////////////////////////////////////////////////////////////////////////
	//test_out needs to be refactored to mem
//(* equivalent_register_removal = "NO" *) 
module memory( clk, reset, enA, enB, we, weB, din, addr, vga_addr, dout, vga_out
    );
		parameter RAM_WIDTH = 16; //<ram_width>;
		parameter RAM_ADDR_BITS = 15; //<ram_addr_bits>;
		
 
	
	 // Port A 
	 //		input is addr, 		output is dout
	 // Port B
	 //		input is vga_addr,	output is vga_out
	 //		glyph library only
	 input clk, reset, enA, enB, we, weB;
	 input [RAM_WIDTH-1:0] din;
	 input [RAM_ADDR_BITS-1:0] addr;
	 input [RAM_ADDR_BITS-1:0] vga_addr;
	 output reg [RAM_WIDTH-1:0] dout;
	 output reg [RAM_WIDTH-1:0] vga_out;
	 
	 // Port B description is your job

   reg [RAM_WIDTH-1:0] the_memory_core [(2**RAM_ADDR_BITS)-1:0]; 
	
	
	//SET THE NUMBER OF INSTRUCTIONS, set as half of memory right now
//	integer instruction_count = (2**RAM_ADDR_BITS-1)/2;
	
	//initial $readmemh("frameBuffer.txt", the_memory_core, 8192, 12992);
	initial $readmemh("instructions.txt", the_memory_core, 0, 16384);//16384, 18432);//
	
	
   always @(posedge clk) begin
      if (enA == 1'b1) begin
         //if (we == 1'b1 && addr > instruction_count) begin
			if(we == 1'b1) begin
            the_memory_core[addr] <= din;
				// In write-first mode, the din is also passed on to dout
            dout <= din;
         end
         else
            dout <= the_memory_core[addr];
		end
   end
	
	always@(posedge clk) begin
		if(enB == 1'b1) begin
			if(weB == 1'b1) begin
				the_memory_core[vga_addr] <= din;
				vga_out <= din;
			end
			else
				vga_out <= the_memory_core[vga_addr];
		 end
	end
				
endmodule


//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date:    14:28:16 10/02/2013 
//// Design Name: 
//// Module Name:    memory 
//// Project Name: 
//// Target Devices: 
//// Tool versions: 
//// Description: 
////
//// Dependencies: 
////
//// Revision: 
//// Revision 0.01 - File Created
//// Additional Comments: 
//// This is a template for a single-port memory. 
//// You should modify this to design a dual-port memory
////////////////////////////////////////////////////////////////////////////////////
//	//test_out needs to be refactored to mem
//	module memory( clk, reset, en, we, din, addr, vga_addr, dout, vga_out
//    );
//		parameter RAM_WIDTH = 16; //<ram_width>;
//		parameter RAM_ADDR_BITS = 10; //<ram_addr_bits>;
//		
// 
//	
//	 // Port A
//	 input clk, reset, en, we;
//	 input [RAM_WIDTH-1:0] din;
//	 input [RAM_ADDR_BITS-1:0] addr;
//	 input [RAM_ADDR_BITS-1:0] vga_addr;
//	 output reg [RAM_WIDTH-1:0] dout;
//	 output reg [RAM_WIDTH-1:0] vga_out;
//	 
//	 // Port B description is your job
//
//   reg [RAM_WIDTH-1:0] the_memory_core [(2**RAM_ADDR_BITS)-1:0]; 
//	reg [RAM_WIDTH-1:0] vga_memory [15:0];
//	
//	//SET THE NUMBER OF INSTRUCTIONS, set as half of memory right now
//	integer instruction_count = (2**RAM_ADDR_BITS-1)/2;
//	initial $readmemb("instructions.txt", the_memory_core);
//
//   always @(posedge clk) begin
//      if (en == 1'b1) begin
//         //if (we == 1'b1 && addr > instruction_count) begin
//			if(we == 1'b1) begin
//            the_memory_core[addr] <= din;
//				// In write-first mode, the din is also passed on to dout
//            dout <= din;
//         end
//         else
//            dout <= the_memory_core[addr];		
//		end
//   end
//	
////	always @ (posedge clk) begin
////		if(en == 1'b1) begin
////			instruction <= the_memory_core[program_counter];
////			//$display("instruction %b", instruction);
////		end
////	end			
//endmodule