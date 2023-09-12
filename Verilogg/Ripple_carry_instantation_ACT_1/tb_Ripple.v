`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:43:43 01/31/2023
// Design Name:   Ripple_Carry
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/Ripple_carry_instantation_ACT_1/tb_Ripple.v
// Project Name:  Ripple_carry_instantation_ACT_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ripple_Carry
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Ripple;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	Ripple_Carry uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 4'b1010;
		B = 4'b1001;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		$finish;
	end
      
endmodule

