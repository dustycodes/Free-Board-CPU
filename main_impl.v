`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:09:45 09/21/2015 
// Design Name: 
// Module Name:    main_impl 
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
module main_impl(
		input external_clk, reset,
		output [7:0]led,
		output [3:0]ledState,
		output [15:0]ALU_result
    );
	 
	 reg [16:0]state;
	 wire [4:0]outFlags;
	 
	 reg [7:0]clkDividerCounter;
	 reg clk;
	 initial clk = 0;
	 initial clkDividerCounter = 8'h00;
	 
	 reg [29:0]counter;
	 reg [3:0]presentState;
	 reg [3:0]nextState;
	 reg initialized = 0;
	 initial presentState = 4'b1111; initial nextState = 4'b0000;
	 reg clkPulse;
	 //initial regState = 4'b0000;
	 initial counter = 0;
	 initial initialized = 0;
	 
	 
Main main_module(clk, reset, state, ALU_result);
num_display display(clk, ALU_result, led, ledState);

always @ (posedge external_clk) begin
	if(clkDividerCounter == 10) begin
		clkPulse <= 1;
		clkDividerCounter <= 0;
	end
	else begin
		clkDividerCounter <= clkDividerCounter + 1;
		clkPulse <= 0;
	end
end

always @ (posedge external_clk) begin
	if(clkPulse) begin
		clk <= 1;
		if(reset == 0) begin
			if(initialized == 0) begin
				state <= 17'b1_0010_1110_0001_1111;
				initialized <= 1;
				//$display("It's reaching the initialization!");
			end	
			else begin
				//$display("state: %b %b %b %b %b", state[16], state[15:12], state[11:8], state[7:4], state[3:0]);
				//$display("currentState: %b", presentState);
				//$display("nextState: %b\n", nextState);
				//$display("ALU result: %d", ALU_result);
				//state <= 17'b1_0010_1110_0001_0000;
				//presentState <= nextState;
				case(presentState)
					4'b0000: begin state = 17'b0_0010_1111_1110_0000; presentState = 4'b0001; end
					4'b0001: begin state = 17'b00010000011110001; presentState = 4'b0010; end
					4'b0010: begin state = 17'b00010000100000010; presentState = 4'b0011; end
					4'b0011: begin state = 17'b00010001000010011; presentState = 4'b0100; end
					4'b0100: begin state = 17'b00010001100100100; presentState = 4'b0101; end
					4'b0101: begin state = 17'b00010010000110101; presentState = 4'b0110; end
					4'b0110: begin state = 17'b00010010101000110; presentState = 4'b0111; end
					4'b0111: begin state = 17'b00010011001010111; presentState = 4'b1000; end
					4'b1000: begin state = 17'b00010011101101000; presentState = 4'b1001; end
					4'b1001: begin state = 17'b00010100001111001; presentState = 4'b1010; end
					4'b1010: begin state = 17'b00010100110001010; presentState = 4'b1011; end
					4'b1011: begin state = 17'b00010101010011011; presentState = 4'b1100; end
					4'b1100: begin state = 17'b00010101110101100; presentState = 4'b1101; end
					4'b1101: begin state = 17'b00010110010111101; presentState = 4'b1110; end
					4'b1110: begin state = 17'b00010110111001110; presentState = 4'b1111; end
					4'b1111: begin state = 17'b00010111011011111; presentState = 4'b0000; end
				endcase
				
			end
		end
		else
			presentState <= presentState;
		$display("ALU result: %d", ALU_result);
		$display("state: %b %b %b %b %b\n", state[16], state[15:12], state[11:8], state[7:4], state[3:0]);
	end
	else
		clk <= 0;
	
end

/*
always @ (reset) begin
	if(reset == 0) begin
		presentState = 4'b0000;
	end
end
*/

/*
always @ (presentState) begin
	//$display("state: %b %b %b %b %b", state[16], state[15:12], state[11:8], state[7:4], state[3:0]);
	//$display("currentState: %b", presentState);
	//$display("nextState: %b\n", nextState);
	case(presentState)
		4'b0000: nextState = 4'b0001;
		4'b0001: nextState = 4'b0010;
		4'b0010: nextState = 4'b0011;
		4'b0011: nextState = 4'b0100;
		4'b0100: nextState = 4'b0101;
		4'b0101: nextState = 4'b0110;
		4'b0110: nextState = 4'b0111;
		4'b0111: nextState = 4'b1000;
		4'b1000: nextState = 4'b1001;
		4'b1001: nextState = 4'b1010;
		4'b1010: nextState = 4'b1011;
		4'b1011: nextState = 4'b1100;
		4'b1100: nextState = 4'b1101;
		4'b1101: nextState = 4'b1110;
		4'b1110: nextState = 4'b1111;
		4'b1111: nextState = 4'b0000;
	endcase

end
*/

/*
always @ (presentState) begin
	if(initialized) begin
		case(presentState)
			4'b0000: state = 17'b0_0010_1111_1110_0000;
			4'b0001: state = 17'b0_0010_0000_1111_0001;
			4'b0010: state = 17'b0_0010_0001_0000_0010;
			4'b0011: state = 17'b0_0010_0010_0001_0011;
			4'b0100: state = 17'b0_0010_0011_0010_0100;
			4'b0101: state = 17'b0_0010_0100_0011_0101;
			4'b0110: state = 17'b0_0010_0101_0100_0110;
			4'b0111: state = 17'b0_0010_0110_0101_0111;
			4'b1000: state = 17'b0_0010_0111_0110_1000;
			4'b1001: state = 17'b0_0010_1000_0111_1001;
			4'b1010: state = 17'b0_0010_1001_1000_1010;
			4'b1011: state = 17'b0_0010_1010_1001_1011;
			4'b1100: state = 17'b0_0010_1011_1010_1100;
			4'b1101: state = 17'b0_0010_1100_1011_1101;
			4'b1110: state = 17'b0_0010_1101_1100_1110;
			4'b1111: state = 17'b0_0010_1110_1101_1111;
		endcase
	end
	//$display("%b %b %b %b %b",state[16],state[15:12],state[11:8],state[7:4],state[3:0]);
	
end
*/

endmodule

/*
				//$display("ALU_val: %d", ALU_result);			
				case(regState)
					4'b0000: begin state = 17'b0_0010_1111_1110_0000; regState = 4'b0001; end
					4'b0001: begin state = 17'b00010000011110001; regState = 4'b0010; end
					4'b0010: begin state = 17'b00010000100000010; regState = 4'b0011; end
					4'b0011: begin state = 17'b00010001000010011; regState = 4'b0100; end
					4'b0100: begin state = 17'b00010001100100100; regState = 4'b0101; end
					4'b0101: begin state = 17'b00010010000110101; regState = 4'b0110; end
					4'b0110: begin state = 17'b00010010101000110; regState = 4'b0111; end
					4'b0111: begin state = 17'b00010011001010111; regState = 4'b1000; end
					4'b1000: begin state = 17'b00010011101101000; regState = 4'b1001; end
					4'b1001: begin state = 17'b00010100001111001; regState = 4'b1010; end
					4'b1010: begin state = 17'b00010100110001010; regState = 4'b1011; end
					4'b1011: begin state = 17'b00010101010011011; regState = 4'b1100; end
					4'b1100: begin state = 17'b00010101110101100; regState = 4'b1101; end
					4'b1101: begin state = 17'b00010110010111101; regState = 4'b1110; end
					4'b1110: begin state = 17'b00010110111001110; regState = 4'b1111; end
					4'b1111: begin state = 17'b00010111011011111; regState = 4'b0000; end
				endcase
				*/

