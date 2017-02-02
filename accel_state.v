`timescale 1ns / 1ps

module state_controller(clk, reset, rx_data, tx_done, tx_data, transmit, axis_value);

	input clk;
	input reset;
	input [7:0]rx_data;
	input tx_done;
	output reg [15:0]tx_data; initial tx_data = 16'd0;
	output reg transmit; initial transmit = 1'b1;
	output reg [15:0]axis_value; initial axis_value = 16'd0;
	
	parameter power_config = 3'b001;
	parameter format_config = 3'b010;
	parameter rate_config = 3'b011;
	parameter read_low = 3'b100;
	parameter read_high = 3'b101;
	parameter delay = 3'b000;
	reg [2:0]state;
	reg [2:0]next_state;
	parameter power_data = 16'h2D08;
	parameter format_data = 16'h3104;
	parameter rate_data = 16'h2C0B;
	parameter read_data0 = 16'hB400;
	parameter read_data1 = 16'hB500;
	
	parameter delay_time = 32'd51200;
	reg [31:0]delay_counter;
	reg advance_state;
	
	always @ (posedge clk) begin
		if(reset) begin
			tx_data <= 16'h0000;
			transmit <= 1'b1;
		end
		else begin
			case(state)
				power_config: begin
					tx_data <= power_data;
					transmit <= 1'b0;
				end
				format_config: begin
					tx_data <= format_data;
					transmit <= 1'b0;
				end
				rate_config: begin
					tx_data <= rate_data;
					transmit <= 1'b0;
				end
				read_low: begin
					tx_data <= read_data0;
					transmit <= 1'b0;
				end
				read_high: begin
					tx_data <= read_data1;
					transmit <= 1'b0;
				end
				delay: begin
					tx_data <= 16'h0000;
					transmit <= 1'b1;
				end
				default: begin
					tx_data <= 16'h0000;
					transmit <= 1'b1;
				end
			endcase
		end
	end
	
	always @ (posedge clk) begin
		if(reset) begin
			state <= delay;
			axis_value <= 16'h0000;
		end
		else if(tx_done) begin
			if(state == read_low) begin
				axis_value[15:8] <= rx_data;
			end
			else if(state == read_high) begin
				axis_value[7:0] <= rx_data;
			end
			state <= delay;
		end
		else if(advance_state)
			state <= next_state;
	end
	
	always @ (posedge clk) begin
		if(reset) begin
			advance_state <= 1'b0;
			delay_counter <=32'd 0;
		end
		else if(state == delay) begin
			if(delay_counter == delay_time) begin
				advance_state <= 1'b1;
				delay_counter <= 32'd0;
			end
			else begin
				advance_state <= 1'b0;
				delay_counter <= delay_counter + 32'd1;
			end
		end
		else begin
			advance_state <= 1'b0;
			delay_counter <= 32'd0;
		end
	end
	
	always @ (posedge clk) begin
		if(reset)
			next_state = power_config;
		else
			case(state)
				power_config: next_state = format_config;
				format_config: next_state = rate_config;
				rate_config: next_state = read_low;
				read_low: next_state = read_high;
				read_high: next_state = read_low;
				delay: next_state = next_state;
				default: next_state = power_config;
			endcase
	end

endmodule















