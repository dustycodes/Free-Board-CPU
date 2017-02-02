`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:41:52 12/07/2015
// Design Name:   SPI_interface
// Module Name:   C:/Users/Max/Documents/School/Classes/ECE3710/ece-3710/final2/test_SPI_interafece.v
// Project Name:  ECE3710
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SPI_interface
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_SPI_interafece;

	// Inputs
	reg clk;
	reg reset;
	wire SCLK_pulse;
	wire [17:0] tx_data;
	wire transmit;
	reg SDI;
	wire read;
	wire write;

	// Outputs
	wire tx_done;
	wire [7:0] rx_data;
	wire SDO;
	wire CS;
	wire SCLK_start;
	wire SCLK;
	
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
		.transmit(transmit)
	);

	// Instantiate the Unit Under Test (UUT)
	SPI_interface uut (
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

	always #5 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		SDI = 0;

		// Wait 100 ns for global reset to finish
		#1000;
		
		reset = 0;
		
		#7000;
		reset = 0;
		#1000;
		
		
        
		// Add stimulus here

	end
      
endmodule

