`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:14:14 02/07/2023
// Design Name:   alu_4bit
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/Lab2_2/Alu_tb.v
// Project Name:  Lab2_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Alu_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg SS;

	// Outputs
	wire [3:0] Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	alu_4bit uut (
		.A(A), 
		.B(B), 
		.Sum(Sum), 
		.Cout(Cout), 
		.SS(SS)
	);

	initial begin
		// Initialize Inputs
		A = 4'b0101;
		B = 4'b0110;
		SS = 1;

		// Wait 100 ns for global reset to finish
		#10;
		SS=0;
       #10;
		// Add stimulus here
		$finish;

	end
      
endmodule

