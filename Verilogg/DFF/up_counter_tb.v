`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:49:36 04/25/2023
// Design Name:   ud_counter
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/DFF/up_counter_tb.v
// Project Name:  DFF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ud_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module up_counter_tb;

	// Inputs
	reg clk;
	reg nrst;
	reg x;
	reg control;

	// Outputs
	wire [3:0] count;

	// Instantiate the Unit Under Test (UUT)
	ud_counter uut (
		.clk(clk), 
		.nrst(nrst), 
		.x(x), 
		.count(count), 
		.control(control)
	);
	always
	#5 clk = ~clk;
	initial begin
		// Initialize Inputs
		/*clk = 1;
		nrst = 0;
		x=0;
		control = 0;
		#8 nrst = 1;
		   x = 1;
      #67 control = 1;
		#30 control = 0;
			 x = 0;
		#50 control =0;
		    x = 1;
	   #140*/
		
		clk = 0;
		nrst = 1;
		x=1;
		control = 0;
		#5;
		nrst =0;
		#50;
		control = 1;
		#6 ;
		control = 0;
		x = 0;
		#40;
		control = 1;
		#15;
		$finish;
	end
      
endmodule

