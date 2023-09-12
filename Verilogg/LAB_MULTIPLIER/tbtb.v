`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:29:14 02/21/2023
// Design Name:   Multiplierr
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/LAB_MULTIPLIER/tbtb.v
// Project Name:  LAB_MULTIPLIER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multiplierr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tbtb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [7:0] P;

	// Instantiate the Unit Under Test (UUT)
	Multiplierr uut (
		.A(A), 
		.B(B), 
		.P(P)
	);

	initial begin
		// Initialize Inputs
		A = 15;
		B = 15;

		// Wait 100 ns for global reset to finish
		#10;
       $finish;
		// Add stimulus here

	end
      
endmodule

