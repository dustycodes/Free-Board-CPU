`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:29:54 09/03/2015
// Design Name:   ALU
// Module Name:   C:/Users/Max/Documents/School/Classes/ECE3710/Lab1/ALU/ALU/ALU_Test.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_Test;

	// Inputs
	reg [15:0] input1;
	reg [15:0] input2;
	reg [4:0] op;
	reg [4:0] inFlags;

	// Outputs
	wire [4:0] outFlags;
	wire [15:0] result;
	
	integer i;
	integer k; 
   integer works;
	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.input1(input1), 
		.input2(input2), 
		.op(op), 
		.inFlags(inFlags), 
		.outFlags(outFlags), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		input1 = 65000;
		input2 = 0;
		op = 1;
		inFlags = 0;
		
		i = 0;
		k = 0;
		works = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		$display("___________________ MATLAB DATA ___________________");
        
		for (k = 1; k < 16; k = k + 1) begin
			op = k; 
			input1 = 65000;
			input2 = 0;
			for (i = 0; i < 50; i = i + 1) begin 
				#20
				if(op == 1) begin
					$display("%d \t %d \t %d \t %d \t %d", op, $signed(input1), $signed(input2), $signed(result), outFlags[2]);
				end
				else if(op == 2) begin
					$display("%d \t %d \t %d \t %d \t %d", op, $unsigned(input1), $unsigned(input2), $unsigned(result), outFlags[2]);
				end
				else if(op == 3) begin
					$display("%d \t %d \t %d \t %d \t %d", op, $signed(input1), $signed(input2), $signed(result), {inFlags[0], outFlags[2]});
				end
				else if(op == 4) begin
					$display("%d \t %d \t %d \t %d \t %d", op, $unsigned(input1), $unsigned(input2), $unsigned(result), {inFlags[0], outFlags[2]});
				end
				else if(op == 5) begin
					$display("%d \t %d \t %d \t %d \t %d", op, $signed(input1), $signed(input2), $signed(result), outFlags[2]);
				end
				else if(op == 6) begin
					$display("%d \t %d \t %d \t %d \t %d", op, $signed(input1), $signed(input2), outFlags[1], outFlags[2]);
				end
				else if(op == 7) begin
					$display("%d \t %d \t %d \t %d \t %d", op, $unsigned(input1), $unsigned(input2), outFlags[1], outFlags[2]);
				end
				else if(op == 8) begin
					$display("%d \t %d \t %d \t %d \t 0", op, input1, input2, result);
				end
				else if(op == 9) begin
					$display("%d \t %d \t %d \t %d \t 0", op, input1, input2, result);
				end
				else if(op == 10) begin
					$display("%d \t %d \t %d \t %d \t 0", op, input1, input2, result);
				end
				else if(op == 11) begin
					$display("%d \t %d \t %d \t %d \t 0", op, input1, input2, result);
				end
				else if(op == 12) begin
					$display("%d \t %d \t %d \t %d \t 0", op, $unsigned(input1), $unsigned(input2), $unsigned(result));
				end
				else if(op == 13) begin
					$display("%d \t %d \t %d \t %d \t 0", op, input1, input2, result);
				end
				else if(op == 14) begin
					$display("%d \t %d \t %d \t %d \t 0", op, input1, input2, result);
				end
				else if(op == 15) begin
					$display("%d \t %d \t %d \t %d \t 0", op, input1, input2, result);
				end
				inFlags = outFlags;
				input1 = input1 - 1050; 
				input2 = input2 + 723; 
			end 
		end 
		$display("____________________________________________________");
		$display("____________________Corner Cases ___________________");
		
		//ADD TEST 4 + 17 = 21
		op = 1;
		input1 = 4;
		input2 = 17;
		inFlags = 0;
		#20
		if(result != 21) begin
			$display("Error adding [ %d + %d = %d ]", input1, input2, result);
			works = 0;
		end
		
		//TODO is this failing?
		//OVERFLOW ADDU TEST 65535 + 1 = OVERFLOW
		op = 2;
		input1 = 65535;
		input2 = 1;
		inFlags = 0;
		#20
		if(result != 0 && outFlags[0] == 1'b1 && outFlags[2] == 1'b1) begin
			$display("Error adding [ %d + %d = %d ] outFlags: %b", input1, input2, result, outFlags);
			works = 0;
		end
		
		//SUB TEST NEGATIVE ANSWER 4 - 17 = -13
		op = 5;
		input1 = 4;
		input2 = 17;
		inFlags = 0;
		#20
		if($signed(result) != -13) begin
			$display("Error subtracting [ %d - %d = %d ]", input1, input2, $signed(result));
			works = 0;
		end
		
		//SIMPLE SUB TEST 17 - 4 = 13
		op = 5;
		input1 = 17;
		input2 = 4;
		inFlags = 0;
		#20
		if(result != 13) begin
			$display("Error subtracting [ %d - %d = %d ]", input1, input2, result);
			works = 0;
		end
		
		//COMPARISON TEST 17 > 4, outFlags[1] should be set 
		op = 6;
		input1 = 17;
		input2 = 4;
		inFlags = 0;
		#20
		if(outFlags[1] != 1'b1) begin
			$display("Error comparing [ %d > %d, & outFlag %b ]", input1, input2, outFlags);
			works = 0;
		end

		// COMPARISON TEST input1 == input2, 17 == 17
		op = 6;
		input1 = 17;
		input2 = 17;
		inFlags = 0;
		#20
		if(outFlags[3] != 1'b1) begin
			$display("Error comparing [ %d == %d, & outFlag %b ]", input1, input2, outFlags);
			works = 0;
		end
		
		// AND TEST input1 & input2, 17&17=17
		op = 8;
		input1 = 17;
		input2 = 17;
		inFlags = 0;
		#20
		if(result != 17) begin
			$display("Error ANDing [ %b & %b = %b ]", input1, input2, result);
			works = 0;
		end
		
		// AND TEST input1 & input2, 5 & 1 = 1
		op = 8;
		input1 = 5;
		input2 = 1;
		inFlags = 0;
		#20
		if(result != 1) begin
			$display("Error ANDing [ %b & %b = %b ]", input1, input2, result);
			works = 0;
		end
		
		// OR TEST input1 | input2, 5 | 2 = 7
		op = 9;
		input1 = 5;
		input2 = 2;
		inFlags = 0;
		#20
		if(result != 7) begin
			$display("Error ORing [ %b | %b = %b ]", input1, input2, result);
			works = 0;
		end
		
		//XOR TEST input1 ^ input2
		op = 10;
		input1 = 13; //1101
		input2 = 11; //1011 xor = 0110
		inFlags = 0;
		#20
		if(result != 6) begin
			$display("Error XORing [ %b ^ %b = %b ]", input1, input2, result);
			works = 0;
		end
		
		//SIMPLE NOT TEST input1
		op = 11;
		input1 = 60535;
		inFlags = 0;
		#20
		if(result != 16'b0001001110001000) begin
			$display("Error NOTing [ ~%b = %b ]", input1, result);
			works = 0;
		end
		
		//LSH TEST input1 << 1
		op = 12;
		input1 = 69; //0000000001000101
		inFlags = 0;
		#20
		if(result != 16'b0000000010001010) begin
			$display("Error LSHing [ %b << 1 = %b ]", input1, result);
			works = 0;
		end
		
		//RSH TEST input1 >> 1
		op = 13;
		input1 = 69; //0000000001000101
		inFlags = 0;
		#20
		if(result != 16'b0000000000100010) begin
			$display("Error RSHing [ %b >> 1 = %b ]", input1, result);
			works = 0;
		end
		
		//ALSH TEST input1 & input2
		op = 14;
		input1 = 69;
		inFlags = 0;
		#20
		if(result != 16'b0000000010001010) begin
			$display("Error ALSHing [ %b <<< 1 = %b ]", input1, result);
			works = 0;
		end
		
		//ARSH TEST input1 & input2
		op = 15;
		input1 = 69;
		inFlags = 0;
		#20
		if(result != 16'b0000000000100010) begin
			$display("Error ARSHing [ %b >>> 1 = %b ]", input1, result);
			works = 0;
		end
		
		//Tests Pass/Fail Check
		if(works == 1) begin
			$display("All Tests Passed");
		end
		else begin
			$display("Test(s) failed");
		end
		$display("____________________________________________________");

		
	end
      
endmodule
