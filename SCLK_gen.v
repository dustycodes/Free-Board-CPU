`timescale 1ns / 1ps
module SCLK_gen(clk, reset, SCLK_start, SCLK,SCLK_pulse,read,write);

	input clk;
	input reset;
	input SCLK_start;
	output reg SCLK;
	output reg SCLK_pulse;
	output reg read;
	output reg write;
	
	parameter  SCLK_freq = 7'd100; // 3.333 MHz Serial clock
	reg [6:0]SCLK_counter;
	reg pulse_sent;
	
	always @ (posedge clk) begin
		if(reset) begin
			SCLK <= 1'b1;
			read <= 1'b0;
			write <= 1'b0;
			SCLK_pulse <= 1'b0;
			SCLK_counter <= 7'b0000000;
			pulse_sent <= 1'b0;
		end
		else begin
			if(SCLK_counter == SCLK_freq) begin
				if(SCLK_start)
					SCLK <= ~SCLK;
				else
					SCLK <= 1'b1;
				if(!pulse_sent) begin
					SCLK_pulse <= 1'b1;
					pulse_sent <= 1'b1;
				end
				else begin
					SCLK_pulse <= 1'b0;
					pulse_sent <= 1'b0;
				end
				SCLK_counter <= 7'b0000000;
			end
			else begin
				SCLK_pulse <= 1'b0;
				SCLK_counter <= SCLK_counter + 7'b0000001;
			end
			//if(SCLK_start) begin
				if(SCLK && SCLK_counter == 7'b0110100) 
					read <= 1'b1;
				else
					read <= 1'b0;
				if(!SCLK && SCLK_counter == 7'b0110000)
					write <= 1'b1;
				else
					write <= 1'b0;
			//end
		end
	end

endmodule