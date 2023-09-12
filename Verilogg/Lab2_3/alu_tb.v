`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:32:48 02/07/2023
// Design Name:   alualu
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/Lab2_3/alu_tb.v
// Project Name:  Lab2_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alualu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg [1:0] S;

	// Outputs
	wire [3:0] Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	alualu uut (
		.A(A), 
		.B(B), 
		.Sum(Sum), 
		.Cout(Cout), 
		.S(S)
	);

	initial begin
		// Initialize Inputs
		A = 4'b0101;
		B = 4'b0110;
		S = 2'b00;

		// Wait 100 ns for global reset to finish
		#10;
		S=2'b01;
		#10;
		S=2'b10;
		#10;
		S=2'b11;
		#10;
        $finish;
		// Add stimulus here

	end
      
endmodule

