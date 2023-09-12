`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:01:43 04/25/2023
// Design Name:   DFF_sync
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/DFF/tb_dff.v
// Project Name:  DFF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DFF_sync
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_dff;

	// Inputs
	reg clk;
	reg nrst;
	reg D;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	DFF_sync uut (
		.clk(clk), 
		.nrst(nrst), 
		.D(D), 
		.Q(Q)
	);
	always
	#5 clk = ~clk;
	initial begin
	clk =0;
	nrst=0;
	D=0;
	#8 nrst = 1;
	#10 D = 1;
	#10 D = 0;
	#10 D = 1;
	#10 nrst = 0;
	#20 $finish;
	end
      
endmodule

