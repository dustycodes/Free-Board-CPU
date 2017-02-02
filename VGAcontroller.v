`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:41:05 11/09/2015 
// Design Name: 
// Module Name:    VGAcontroller 
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
module VGAcontroller(
	CLK,
	RST,
	vga_out,
	dout,
	VSYC,
	HSYC,
	RED,
	BLUE,
	GREEN,
	vga_addr,
	addr,
	we,
	en
    );


	input 			CLK;
	input 			RST;
	input [15:0]	vga_out;
	input [5:0] 	dout;	
	output[14:0]	vga_addr;
	output[14:0]	addr;
	output	reg	en;
	output	reg	we;
	output 	wire	VSYC;
	output 	wire	HSYC;
	output reg [2:0] 	RED;
	output reg [1:0] 	BLUE;
	output reg [2:0] 	GREEN;
	
	reg [7:0] bitColor;
	
		// video structure constants
	parameter hpixels = 800;// horizontal pixels per line
	parameter vlines = 521; // vertical lines per frame
	parameter hpulse = 96; 	// hsync pulse length
	parameter vpulse = 2;  // vsync pulse length
	parameter hbp = 144; 	// end of horizontal back porch
	parameter hfp = 784; 	// beginning of horizontal front porch
	parameter vbp = 31; 		// end of vertical back porch
	parameter vfp = 511; 	// beginning of vertical front porch
	// active horizontal video is therefore: 784 - 144 = 640
	// active vertical video is therefore: 511 - 31 = 480
	// video resolution is 640x480
	// registers for storing the horizontal & vertical counters
	reg [9:0] hc;
	reg [9:0] vc;
	
	
	reg bright;
	reg [9:0] hpixle;
	reg [8:0]  vpixle;
	// Horizontal & vertical counters --
	// this is how we keep track of where we are on the screen.
	// ------------------------
	// Sequential "always block", which is a block that is
	// only triggered on signal transitions or "edges".
	// posedge = rising edge  &  negedge = falling edge
	// Assignment statements can only be used on type "reg" and need to be of the "non-blocking" type: <=
	
	PixleCLK pclk (CLK, RST, dclk);
	
	always @(posedge dclk or posedge RST)
	begin
		// reset condition
		if (RST == 1)
		begin
			hc <= 0;
			vc <= 0;
		end
		else
		begin
			// keep counting until the end of the line
			if (hc < hpixels - 1)
				hc <= hc + 1;
			else
			// When we hit the end of the line, reset the horizontal
			// counter and increment the vertical counter.
			// If vertical counter is at the end of the frame, then
			// reset that one too.
			begin
				hc <= 0;
				if (vc < vlines - 1)
					vc <= vc + 1;
				else
					vc <= 0;
			end
			
		end
	end

	// generate sync pulses (active low)
	// ----------------
	// "assign" statements are a quick way to
	// give values to variables of type: wire
	assign HSYC = (hc < hpulse) ? 0:1;
	assign VSYC = (vc < vpulse) ? 0:1;
	
	
	
	always@(hc, vc)
	begin
		if(hc > 143 && hc < 784 && vc > 35 && vc < 515) begin
			bright = 1'b1;
			vpixle = vc - 36;
			hpixle = hc - 144;
		end
		else begin
			bright = 1'b0;//black screen
			vpixle = 1'b0;
			hpixle = 1'b0;
		end
	end
	
	
	parameter fb_offset = {2'b01,13'b0};
	parameter lib_offset = 4'b0111;//should be 4'b1000;
	
	
	//assign addr = {fb_offset, vpixle[8:3], hpixle[9:3]};
	assign addr = fb_offset + 80*vpixle[8:3] + hpixle[9:3];
	assign vga_addr = {lib_offset, dout[5:0], vpixle[2:0], hpixle[2:1]};
	
	//vga_out is reading from glyph library based on vga_addr
	//dout will read from fram buffer based on addr, give glyph code
	 
	//when we are writing to the screen we will be inactive and the en will be active 
	always@(posedge CLK)
	begin
		if(VSYC == 1'b1)
			begin
				en = 1'b1;
				we = 1'b0;
			end
		else
			begin
				en = 1'b0;
				we = 1'b0;
			end
		
	end
	
	
//memory mem(CLK, RST, en, we, din, addr, vga_addr, dout, vga_out);
	
	always@(posedge dclk)
	begin
		if(hpixle[0] == 1'b0 && bright == 1'b1)
			begin
				bitColor <= vga_out[7:0];
			end
		else if(hpixle[0] == 1'b1 && bright == 1'b1)
			begin
				bitColor <= vga_out[15:8];
			end
		else
			begin
				bitColor <= 8'h00;//black
			end
	end
	
	//---------------------------------------------\\fixing the numbers for bitColor
	
	
	/*always@(hc)
	begin
	 pixCode = {vpixle[2:0], hpixle[2:0]};
		case(pixCode)
			0: bitColor = 8'hFF;
			1: bitColor = 8'hFF;
			2:bitColor = 8'hFF;
			3:bitColor = 8'hFF;
			4:bitColor = 8'hFF;
			5:bitColor = 8'h18;
			6:bitColor = 8'h18;
			7:bitColor = 8'h34;
			8:bitColor = 8'hFF;
			9:bitColor = 8'hFF;
			10:bitColor = 8'hFF;
			11:bitColor = 8'hFF;
			12:bitColor = 8'h18;
			13:bitColor = 8'h18;
			14:bitColor = 8'h34;
			15:bitColor = 8'h34;
			16:bitColor = 8'hFF;
			17:bitColor = 8'hFF;
			18:bitColor = 8'h18;
			19:bitColor = 8'h18;
			20:bitColor = 8'h18;
			21:bitColor = 8'h34;
			22:bitColor = 8'h34;
			23:bitColor = 8'h34;
			24:bitColor = 8'h18;
			25:bitColor = 8'h18;
			26:bitColor = 8'h18;
			27:bitColor = 8'h34;
			28:bitColor = 8'h34;
			29:bitColor = 8'h34;
			30:bitColor = 8'h0C;
			31:bitColor = 8'h0C;
			32:bitColor = 8'h18;
			33:bitColor = 8'h34;
			34:bitColor = 8'h34;
			35:bitColor = 8'h34;
			36:bitColor = 8'h34;
			37:bitColor = 8'h0C;
			38:bitColor = 8'h0C;
			39:bitColor = 8'h0C;
			40:bitColor = 8'h34;
			41:bitColor = 8'h34;
			42:bitColor = 8'h0C;
			43:bitColor = 8'h0C;
			44:bitColor = 8'h0C;
			45:bitColor = 8'h0C;
			46:bitColor = 8'h0C;
			47:bitColor = 8'h0C;
			48:bitColor = 8'h0C;
			49:bitColor = 8'h0C;
			50:bitColor = 8'h0C;
			51:bitColor = 8'h0C;
			52:bitColor = 8'h0C;
			53:bitColor = 8'h0C;
			54:bitColor = 8'h0C;
			55:bitColor = 8'h0C;
			56:bitColor = 8'h0C;
			57:bitColor = 8'h0C;
			58:bitColor = 8'h0C;
			59:bitColor = 8'h0C;
			60:bitColor = 8'h0C;
			61:bitColor = 8'h28;
			62:bitColor = 8'h28;
			63:bitColor = 8'h28;
		endcase
	end*/
	
		always@(bitColor) begin
			 RED = bitColor[7:5];
			 GREEN = bitColor[4:2];
			 BLUE = bitColor[1:0];
		end

endmodule
