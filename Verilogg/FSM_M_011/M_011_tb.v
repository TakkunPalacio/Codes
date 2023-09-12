`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:00:43 05/16/2023
// Design Name:   M_011
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/FSM_M_011/M_011_tb.v
// Project Name:  FSM_M_011
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: M_011
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module M_011_tb;

	// Inputs
	reg clk;
	reg nrst;
	reg x;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	M_011 uut (
		.clk(clk), 
		.nrst(nrst), 
		.x(x), 
		.y(y)
	);
	always	
	#5 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		nrst = 0;
		x = 0;
		#6;
		nrst=1;
		#5;
		x=0;
		#10
		x=0;
		#10
		x=1;
		#10;
		#10;
		x=0;
		#10 x=1;
		#10 x=0;
		#10 x=1;
		#20 x=0;
		#20 x=1;
		#20 x=0;
		#10 x=1;
		#30;
		$finish;
	end
      
endmodule

