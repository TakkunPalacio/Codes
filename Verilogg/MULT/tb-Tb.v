`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:03:54 02/21/2023
// Design Name:   Multi
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/MULT/tb-Tb.v
// Project Name:  MULT
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multi
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [7:0] Sum;

	// Instantiate the Unit Under Test (UUT)
	Multi uut (
		.A(A), 
		.B(B), 
		.Sum(Sum)
	);

	initial begin
		// Initialize Inputs
		A = 4'd15;
		B = 4'd3;

		// Wait 100 ns for global reset to finish
		#10;
        $finish;
		// Add stimulus here

	end
      
endmodule

