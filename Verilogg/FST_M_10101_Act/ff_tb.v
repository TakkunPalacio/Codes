`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:46:47 05/16/2023
// Design Name:   FF
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/FST_M_10101_Act/ff_tb.v
// Project Name:  FST_M_10101_Act
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ff_tb;

	// Inputs
	reg clk;
	reg nrst;
	reg x;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	FF uut (
		.clk(clk), 
		.nrst(nrst), 
		.x(x), 
		.y(y)
	);
	always
	#5 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		nrst = 0;
		x = 0;
		#6 nrst=1;
		#4 x=1;
		#10 x=0;
		#10 x=1;
		#10 x=0;
		#10 x=1;
		#10 x=0;
		#10 x=1;
		#10 x=1;
		#10 x=0;
		#10 x=1;
		#10 x=0;
		#10 x=1;
		#10 x=0;
		#10 x=1;
		#10 x=1;
		#10 x=0;
		#10 x=1;
		#10 x=0;
		#10 x=1;
		#10 x=0;
		#10 x=0;
		#10 x=1;
		#10 x=0;
		#10 x=1;
		#10 x=0;
		#10 x=1;
		#10;
      $finish;
	end
      
endmodule

