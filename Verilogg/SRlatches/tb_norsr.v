`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:19:55 02/01/2023
// Design Name:   NorLatch
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/SRlatches/tb_norsr.v
// Project Name:  SRlatches
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NorLatch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_norsr;

	// Inputs
	reg s;
	reg r;

	// Outputs
	wire q;
	wire q_bar;

	// Instantiate the Unit Under Test (UUT)
	NorLatch uut (
		.s(s), 
		.r(r), 
		.q(q), 
		.q_bar(q_bar)
	);

	initial begin
		// Initialize Inputs
		s = 0;
		r = 0;
		#10;
      s = 0;
		r = 1;
		#10;
      s = 1;
		r = 0;
		#10;
      s = 1;
		r = 1;
		#10;
		$finish;
      		
		// Add stimulus here

	end
      
endmodule

