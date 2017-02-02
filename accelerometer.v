`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:48:42 12/07/2015 
// Design Name: 
// Module Name:    accelerometer 
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
//module accelerometer(clk, reset, SDI, CS, SCLK, SDO, axis_value_out, led, lights, led_state);
module accelerometer(clk, reset, SDI, CS, SCLK, SDO, axis_value_out, tx_done);

	input clk;
	input reset;
	input SDI;
	output CS;
	output SCLK;
	output SDO;
	output [15:0]axis_value_out;
	//output [7:0]led;
	//output [3:0]led_state;
	//output [7:0]lights;
	output tx_done;
	
	wire SCLK_start;
	wire SCLK_pulse;
	wire read;
	wire write;
	wire [7:0]rx_data;
	//wire tx_done;
	wire [15:0]tx_data;
	wire transmit;
	wire [2:0]state;
	wire [15:0]rx_all;
	wire [15:0]axis_value;
	
	SCLK_gen clk_gen (
		.clk(clk), 
		.reset(reset),
		.SCLK_start(SCLK_start),
		.SCLK(SCLK), 
		.SCLK_pulse(SCLK_pulse),
		.read(read), 
		.write(write)
	);
		
	state_controller FSM (
		.clk(clk), 
		.reset(reset), 
		.rx_data(rx_data), 
		.tx_done(tx_done), 
		.tx_data(tx_data), 
		.transmit(transmit),
		.axis_value(axis_value)
	);

	SPI_interface SPI (
		.clk(clk), 
		.reset(reset), 
		.SCLK_pulse(SCLK_pulse), 
		.tx_data(tx_data), 
		.transmit(transmit), 
		.SDI(SDI), 
		.read(read), 
		.write(write), 
		.tx_done(tx_done), 
		.rx_data(rx_data), 
		.SDO(SDO), 
		.CS(CS), 
		.SCLK_start(SCLK_start)
	);
	
	assign axis_value_out = axis_value[7] ? {8'b1111_1111,axis_value[7:0]} : {8'b0000_0000,axis_value[7:0]};

	//num_display display(clk, {8'd0,axis_value_out[7:0]}, led, led_state);
	//assign lights = axis_value_out[15:8];

endmodule
