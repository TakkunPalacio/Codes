`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:13:49 01/31/2023
// Design Name:   FAS
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/RAS_Instancing/tb_Fas.v
// Project Name:  RAS_Instancing
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FAS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Fas;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg S;

	// Outputs
	wire [7:0] Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	FAS uut (
		.A(A), 
		.B(B), 
		.S(S), 
		.Sum(Sum), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 4'b1010;
		B = 4'b1001;
		S = 0;

		// Wait 100 ns for global reset to finish
		#10;
		A = 4'b1010;
		B = 4'b1001;
      S=1;
		#10;
			$finish;

	end
      
endmodule

