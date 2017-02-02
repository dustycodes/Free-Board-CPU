`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:35:06 09/09/2015 
// Design Name: 
// Module Name:    num_display 
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
module num_display(input clk, input [15:0]value,
						 output reg [7:0]led, output reg [3:0]state);

reg [11:0]count;
reg [3:0]dig1; // The ones digit.
reg [3:0]dig10; // The tens digit.
reg [3:0]dig100; // The hundreds digit.
reg [3:0]dig1000; // The thousands digit.
reg [15:0]temp; // Stores the value until the value changes
//reg [3:0]state; // Current LED dsiplay state
//reg [7:0]led; // LED display on the board;
reg [3:0]i; // Used for while loops
initial count = 6'b000000;
initial state = 4'b1111;
initial dig1 = 0; initial dig10 = 0;
initial dig100 = 0; initial dig1000 = 0;
initial temp = 0; initial led = 0;
initial i = 0;

always @ (posedge clk) begin
	count = count + 1;
	
	if(count == 1000) begin
		case(state)
			4'b1111: state <= 4'b1110;
			4'b0111: state <= 4'b1110;
			4'b1110: state <= 4'b1101;
			4'b1101: state <= 4'b1011;
			4'b1011: state <= 4'b0111;
			default: state <= 4'b1111;
		endcase
		
		count = 6'b000000;
	end
end

always @ (state) begin
	//led <= 8'b11111110;
	
	case(state) 
		4'b1110: 
			begin
				case(dig1) 
					4'b0000: led <= 8'b00000011;
					4'b0001: led <= 8'b10011111;
					4'b0010: led <= 8'b00100101;
					4'b0011: led <= 8'b00001101;
					4'b0100: led <= 8'b10011001;
					4'b0101: led <= 8'b01001001;
					4'b0110: led <= 8'b01000001;
					4'b0111: led <= 8'b00011011;
					4'b1000: led <= 8'b00000001;
					4'b1001: led <= 8'b00011001;
					default: led <= 8'b11111110;
				endcase
			end
		
		4'b1101:
			begin
				case(dig10) 
					4'b0000: led <= 8'b00000011;
					4'b0001: led <= 8'b10011111;
					4'b0010: led <= 8'b00100101;
					4'b0011: led <= 8'b00001101;
					4'b0100: led <= 8'b10011001;
					4'b0101: led <= 8'b01001001;
					4'b0110: led <= 8'b01000001;
					4'b0111: led <= 8'b00011011;
					4'b1000: led <= 8'b00000001;
					4'b1001: led <= 8'b00011001;
					default: led <= 8'b11111110;
				endcase
			end
			
		4'b1011:
			begin
				case(dig100) 
					4'b0000: led <= 8'b00000011;
					4'b0001: led <= 8'b10011111;
					4'b0010: led <= 8'b00100101;
					4'b0011: led <= 8'b00001101;
					4'b0100: led <= 8'b10011001;
					4'b0101: led <= 8'b01001001;
					4'b0110: led <= 8'b01000001;
					4'b0111: led <= 8'b00011011;
					4'b1000: led <= 8'b00000001;
					4'b1001: led <= 8'b00011001;
					default: led <= 8'b11111110;
				endcase
			end
			
		4'b0111:
			begin
				case(dig1000) 
					4'b0000: led <= 8'b00000011;
					4'b0001: led <= 8'b10011111;
					4'b0010: led <= 8'b00100101;
					4'b0011: led <= 8'b00001101;
					4'b0100: led <= 8'b10011001;
					4'b0101: led <= 8'b01001001;
					4'b0110: led <= 8'b01000001;
					4'b0111: led <= 8'b00011011;
					4'b1000: led <= 8'b00000001;
					4'b1001: led <= 8'b00011001;
					default: led <= 8'b11111110;
				endcase
			end
		
		default:
			begin
				led <= 8'b11111110;
			end
	endcase
	//$display("led: %b", led);
end

always @ (value) begin
	temp = value;
	i = 0;
	dig1 = 0; dig10 = 0; dig100 = 0; dig1000 = 0;
	while(i < 9) begin
		if(temp >= 1000) begin
			dig1000 = dig1000 + 4'd1;
			temp = temp - 16'd1000;
			//$display("Value: %d \t Result so far: %d", value, dig1000);
		end
		i = i + 1;
	end
	i = 0;
	while(i < 9) begin
		if(temp >= 100) begin
			dig100 = dig100 + 4'd1;
			temp = temp - 7'd100;
			//$display("Value: %d \t Result so far: %d", value, dig100);
		end
		i = i + 1;
	end
	i = 0;
	//$display("Tens:");
	while(i < 9) begin
		if(temp >= 10) begin
			dig10 = dig10 + 4'd1;
			temp = temp - 4'd10;
			//$display("Value: %d \t Result so far: %d \t Temp: %d", value, dig10, temp);
		end
		i = i + 1;
	end
	i = 0;
	//$display("Ones:");
	while(i < 9) begin
		if(temp > 0) begin
			dig1 = dig1 + 4'd1;
			temp = temp - 4'd1;
			//$display("Value: %d \t Result so far: %d \t Temp: %d", value, dig1, temp);
		end
		i = i + 1;
	end
	
end

assign result = dig1 + dig10*10 + dig100*100 + dig1000*1000;


endmodule


//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date:    12:35:06 09/09/2015 
//// Design Name: 
//// Module Name:    num_display 
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
////
////////////////////////////////////////////////////////////////////////////////////
//module num_display(input clk, input [15:0]value,
//						 output reg [7:0]led, output reg [3:0]state//, output wire [15:0]result
//    );
//
//reg [11:0]count;
//reg [3:0]dig1; // The ones digit.
//reg [3:0]dig10; // The tens digit.
//reg [3:0]dig100; // The hundreds digit.
//reg [3:0]dig1000; // The thousands digit.
//reg [15:0]temp; // Stores the value until the value changes
////reg [3:0]state; // Current LED dsiplay state
////reg [7:0]led; // LED display on the board;
//reg [3:0]i; // Used for while loops
//initial count = 6'b000000;
////initial state = 4'b1111;
//initial dig1 = 0; initial dig10 = 0;
//initial dig100 = 0; initial dig1000 = 0;
//initial temp = 0; initial led = 0;
//initial i = 0;
//
//// LED digit order:
//// state[0] - ones (N16)
//// state[1] - tens (N15)
//// state[2] - hundreds (P18)
//// state[3] - thousands (P17)
//always @ (posedge clk) begin
//	count <= count + 1;
//	
//	if(count == 1000) begin
//		case(state)
//			4'b1111: state <= 4'b1110;
//			4'b0111: state <= 4'b1110;
//			4'b1110: state <= 4'b1101;
//			4'b1101: state <= 4'b1011;
//			4'b1011: state <= 4'b0111;
//			default: state <= 4'b1111;
//		endcase
//		
//		count <= 6'b000000;
//	end
//end
//// LED segment order:
//// led[7] - A (T17)
//// led[6] - B (T18)
//// led[5] - C (U17)
//// led[4] - D (U18)
//// led[3] - E (M14)
//// led[2] - F (N14)
//// led[1] - G (L14)
//// led[0] - DP (M13)
//always @ (state) begin
//	//lights <= value[7:0];
//	case(state) 
//		4'b1110: 
//			begin
//				case(dig1) 
//					4'b0000: led = 8'b00000011;
//					4'b0001: led = 8'b10011111;
//					4'b0010: led = 8'b00100101;
//					4'b0011: led = 8'b00001101;
//					4'b0100: led = 8'b10011001;
//					4'b0101: led = 8'b01001001;
//					4'b0110: led = 8'b01000001;
//					4'b0111: led = 8'b00011011;
//					4'b1000: led = 8'b00000001;
//					4'b1001: led = 8'b00011001;
//					default: led = 8'b11111110;
//				endcase
//			end
//		
//		4'b1101:
//			begin
//				case(dig10) 
//					4'b0000: led = 8'b00000011;
//					4'b0001: led = 8'b10011111;
//					4'b0010: led = 8'b00100101;
//					4'b0011: led = 8'b00001101;
//					4'b0100: led = 8'b10011001;
//					4'b0101: led = 8'b01001001;
//					4'b0110: led = 8'b01000001;
//					4'b0111: led = 8'b00011011;
//					4'b1000: led = 8'b00000001;
//					4'b1001: led = 8'b00011001;
//					default: led = 8'b11111110;
//				endcase
//			end
//			
//		4'b1011:
//			begin
//				case(dig100) 
//					4'b0000: led = 8'b00000011;
//					4'b0001: led = 8'b10011111;
//					4'b0010: led = 8'b00100101;
//					4'b0011: led = 8'b00001101;
//					4'b0100: led = 8'b10011001;
//					4'b0101: led = 8'b01001001;
//					4'b0110: led = 8'b01000001;
//					4'b0111: led = 8'b00011011;
//					4'b1000: led = 8'b00000001;
//					4'b1001: led = 8'b00011001;
//					default: led = 8'b11111110;
//				endcase
//			end
//			
//		4'b0111:
//			begin
//				case(dig1000) 
//					4'b0000: led = 8'b00000011;
//					4'b0001: led = 8'b10011111;
//					4'b0010: led = 8'b00100101;
//					4'b0011: led = 8'b00001101;
//					4'b0100: led = 8'b10011001;
//					4'b0101: led = 8'b01001001;
//					4'b0110: led = 8'b01000001;
//					4'b0111: led = 8'b00011011;
//					4'b1000: led = 8'b00000001;
//					4'b1001: led = 8'b00011001;
//					default: led = 8'b11111110;
//				endcase
//			end
//		
//		default:
//			begin
//				led = 8'b11111110;
//			end
//	endcase
//end
//
//always @ (value) begin
//	temp = value;
//	i = 0;
//	dig1 = 0; dig10 = 0; dig100 = 0; dig1000 = 0;
//	while(i < 9) begin
//		if(temp >= 1000) begin
//			dig1000 = dig1000 + 4'd1;
//			temp = temp - 16'd1000;
//			//$display("Value: %d \t Result so far: %d", value, dig1000);
//		end
//		i = i + 1;
//	end
//	i = 0;
//	while(i < 9) begin
//		if(temp >= 100) begin
//			dig100 = dig100 + 4'd1;
//			temp = temp - 7'd100;
//			//$display("Value: %d \t Result so far: %d", value, dig100);
//		end
//		i = i + 1;
//	end
//	i = 0;
//	//$display("Tens:");
//	while(i < 9) begin
//		if(temp >= 10) begin
//			dig10 = dig10 + 4'd1;
//			temp = temp - 4'd10;
//			//$display("Value: %d \t Result so far: %d \t Temp: %d", value, dig10, temp);
//		end
//		i = i + 1;
//	end
//	i = 0;
//	//$display("Ones:");
//	while(i < 9) begin
//		if(temp > 0) begin
//			dig1 = dig1 + 4'd1;
//			temp = temp - 4'd1;
//			//$display("Value: %d \t Result so far: %d \t Temp: %d", value, dig1, temp);
//		end
//		i = i + 1;
//	end
//	
//end
//
////assign result = dig1 + dig10*10 + dig100*100 + dig1000*1000;
//
//
//endmodule
