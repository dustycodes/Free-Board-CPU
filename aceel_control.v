`timescale 1ns / 1ps
module aceel_control(clk, reset, SDI, CS, SDO, SCLK_out, led, led_state, lights, button, button1);
	 
	 // INPUTS/OUTPUTS
	 input clk; // 100 MHz onboard clock
	 input SDI; // Serial data in
	 input reset;
	 output reg CS; initial CS = 1'b1;
	 output reg SDO; initial SDO = 1'b0;// Serial data out
	 output SCLK_out; // SPI clock
	 //output [6:0]SEG;
	 //output DOT;
	 //output [3:0]AN;
	 output [7:0]led;
	 output [3:0]led_state;
	 output [7:0]lights;
	 input button;
	 input button1;
	 
	 // STATES
	parameter idle1 = 3'b000;
	parameter idle2 = 3'b001;
	parameter power_config = 3'b010;
	parameter rate_config = 3'b011;
	parameter format_config = 3'b100;
	parameter read_high = 3'b101;
	parameter read_low = 3'b110;
	parameter hold = 3'b111;
	reg [2:0]state;
	reg [2:0]next_state;
	parameter hold_time = 28'd2000000;
	reg [27:0]hold_counter;
	reg holding;
	
	// SERIAL CLOCK
	reg SCLK; initial SCLK = 1'b1;
	reg SCLK_state; initial SCLK_state = 1'b0;
	//parameter SCLK_freq = 37'd1000000000;
	parameter SCLK_freq = 5'd25;
	reg [5:0]SCLK_counter; initial SCLK_counter= 5'd0;
	assign SCLK_out = SCLK_state ? SCLK : 1'b1;
	reg read;
	reg write;
	
	// I/O
	reg [15:0]tx_buffer;
	reg [7:0]rx_buffer;
	reg next_bit;
	reg [15:0]axis_value;
	reg [4:0]comm_counter;
	
	/////////////////////////////////
	//
	// SCLK GENERATION
	//
	/////////////////////////////////
	always @ (posedge clk) begin
//		if(reset) begin
//			SCLK <= 1'b0;
//			SCLK_counter <= 29'd0;
//		end
//		else begin
			if(SCLK_counter == SCLK_freq) begin
				SCLK_counter <= 5'd0;
				SCLK <= ~SCLK;
			end
			else begin
				SCLK_counter <= SCLK_counter + 5'd1;
			end
			if(SCLK == 1'b0 && SCLK_counter == 5'd13) begin
				write = 1'b1;
			end
			else begin
				write = 1'b0;
			end
			if(SCLK == 1'b1 && SCLK_counter == 5'd13) begin
				read = 1'b1;
			end
			else begin
				read = 1'b0;
			end
//		end
	end
	
	/////////////////////////////////
	//
	// HOLD TIMER
	//
	/////////////////////////////////
	always @ (posedge clk) begin
		if(reset) begin
		
		end
		else begin
			if(state == hold) begin
				if(hold_counter == hold_time) begin
					hold_counter <= 28'd0;
					holding <= 1'b0;
				end
				else begin
					hold_counter <= hold_counter + 28'd1;
					holding <= 1'b1;
				end
			end
		end
	end
	
	// Set up the next bit to be sent.
	always @ (negedge SCLK_out) begin
		if(reset) begin
			SDO <= 1'b0;
		end
		else begin
			SDO <= next_bit;
		end
	end
	
	always @ (posedge read) begin
		if(comm_counter >= 5'b01011)
			rx_buffer <= {rx_buffer[6:0], SDI};
	end

	///////////////////////////////////////////////////////////////////////////////////////////////
	//
	// STATE MACHINE
	//
	//////////////////////////////////////////////////////////////////////////////////////////////
	reg [17:0]temp;
	reg [17:0]temp1;
	reg light_up;
//	always @ (posedge read_write) begin
//		if(state == read_low) begin
//			temp <= {temp[16:0],SDO};
//			light_up <= 1'b1;
//		end
//		else
//			temp <= 18'd0;
//	end
	
	
	always @ (posedge SCLK) begin
		if(reset) begin
			CS <= 1'b1;
			SCLK_state <= 1'b0;
			tx_buffer <= 16'h0000;
			state <= idle1;
			comm_counter <= 5'b00000;
			next_bit <= 1'b0;
			//rx_buffer <= 8'h00;
			axis_value <= 16'h0000;
		end
		comm_counter <= comm_counter + 5'b00001;
		////////////////////////////////////////
		//
		// SETUP BASED ON STATE
		//
		////////////////////////////////////////
		case(state)
			// If idle1, end communication cycle and clean up.
			// Also set up the next tx_buffer and read/write bit since next_state is known and stable.
			idle1: begin
				temp1 <= temp;
				CS <= 1'b1;
				comm_counter <= 5'b00000;
				SCLK_state <= 1'b0;
				state <= idle2;
			end
			// If idle2, set up for the next communication cycle.
			idle2: begin
				case(next_state)
					power_config: begin
						tx_buffer <= 16'h2D08;
						next_bit <= 1'b0;
					end
					rate_config: begin
						tx_buffer <= 16'h2C0E;
						next_bit <= 1'b0;
					end
					format_config: begin
						tx_buffer <= 16'h3101;
						next_bit <= 1'b0;
					end
					read_high: begin
						tx_buffer <= 16'h2C00;
						next_bit <= 1'b1;
						temp <= 18'd0;
					end
					read_low: begin
						tx_buffer <= 16'h0000; // 0010 1101 0000 1000
						next_bit <= 1'b1;
						axis_value[15:8] <= rx_buffer;
					end
					hold: begin 
						tx_buffer <= 16'h0000;
						next_bit <= 1'b1;
						axis_value[7:0] <= rx_buffer;
					end
				endcase
				SCLK_state <= 1'b1;
				CS <= 1'b0;
				state <= next_state;
				//rx_buffer <= 8'h00;
			end
			hold: begin
				SCLK_state <= 1'b0;
				CS <= 1'b1;
				if(!holding)
					state <= idle1;
			end
			// Do operations for transmission and reception.
			default: begin
				if(state == read_high) begin
					temp <= {temp[16:0],SDI};
				end
				//else
				//	temp <= 18'd0;
				// Not sending multiple bytes.
				if(comm_counter == 5'b00001)
					next_bit <= 1'b0;
				// If sending the third bit or more, update SDO.
				if(comm_counter >= 5'b00010) begin
					next_bit <= tx_buffer[15];
					tx_buffer <= {tx_buffer[14:0], 1'b0};
				end
				// Read serial data in.
//				if(comm_counter >= 5'b01100)
//					rx_buffer <= {rx_buffer[6:0], SDI};
				// If reaching end of transmission, change to idle state.
				if(comm_counter == 5'b10010) begin
					state <= idle1; SCLK_state <= 1'b0;
				end
				
			end
		endcase
	end
	
	always @ (negedge SCLK) begin
		if(reset)
			next_state = power_config;
		else
			case(state)
				power_config: next_state = rate_config;
				rate_config: next_state = format_config;
				format_config: next_state = read_high;
				read_high: next_state = read_low;
				read_low: next_state = hold;
				hold: next_state = read_high;
			endcase
	end
	
	wire [15:0]led_val = button1 ? axis_value[15:8] : (button ? {8'd0,temp1[15:8]} : {8'd0,temp1[7:0]});
	
	num_display display(clk, {4'd0,axis_value[7:0]}, led, led_state);
	assign lights = {CS,SCLK_out,SDO,SDI,holding,light_up,temp1[17:16]};
	 
endmodule
	 
	 