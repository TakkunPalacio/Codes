`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:09:55 04/25/2023
// Design Name:   counter
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/DFF/count_tb.v
// Project Name:  DFF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module count_tb;

	// Inputs
	reg clk;
	reg nrst;
	reg control;

	// Outputs
	wire [3:0] count;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.nrst(nrst), 
		.count(count),
		.control(control)
	);
	always
	#5 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 1;
		nrst = 0;
		control =0;
		#6 nrst =1;
		#5 nrst =1;
		#54 control = 1;
		#20 control = 0;
		#15 control = 1;
		#20 control = 0;
		#80 $finish;
	end
      
endmodule

