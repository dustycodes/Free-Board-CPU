`timescale 1ns / 1ps

module SPI_interface(clk, reset, SCLK_pulse, tx_data, transmit, SDI, read, write,
								  tx_done, rx_data, SDO, CS, SCLK_start);
	
	input clk;
	input reset;
	input SCLK_pulse;
	input [15:0]tx_data;
	input transmit;
	input SDI;
	input read;
	input write;
	output reg tx_done;
	output [7:0]rx_data;
	output SDO;
	output reg CS;
	output reg SCLK_start;
	
	reg [4:0]counter;
	reg [8:0]rx_buffer; initial rx_buffer = 9'd0;
	reg [15:0]tx_buffer; initial tx_buffer = 18'd0;
	
	always @ (posedge clk) begin
		if(reset) begin
			CS <= 1'b1;
			SCLK_start <= 1'b0;
			rx_buffer <= 9'd0;
			tx_buffer <= 18'd0;
			tx_done <= 1'b0;
		end
		else begin
			if(!transmit) begin
				// Maybe be able to do this combinationally in the top module.
				// Sets the initial signals
				if(counter == 5'b00000) begin
					CS <= 1'b0;
					SCLK_start <= 1'b1;
					tx_buffer <= tx_data;
				end
				else if(counter == 5'b10000) begin
					SCLK_start <= 1'b0;
				end
				else if(counter == 5'b10001) begin
					CS <= 1'b1;
					tx_done <= 1'b1;
				end
				// If writing, set the data out.
				if(write && counter > 5'b00001) begin
					tx_buffer <= {tx_buffer[14:0],1'b0};
				end
				// If reading, read the data and update tx_buffer.
				if(read) begin
					rx_buffer <= {rx_buffer[6:0],SDI};
				end
			end // End if(transmit)
			else if(tx_done) begin
				tx_done <= 1'b0;
			end
		end // End else
	end // End always
	
	always @ (posedge clk) begin
		if(transmit || reset)
			counter <= 5'b00000;
		else if(SCLK_pulse)
			counter <= counter + 5'b00001;
	end

	assign rx_data = rx_buffer[7:0];
	assign SDO = tx_buffer[15];

endmodule