`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:26:12 03/14/2023
// Design Name:   behav
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/LE_PALACIO/tb_behav.v
// Project Name:  LE_PALACIO
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: behav
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_behav;

	// Inputs
	reg [1:0] x;
	reg [1:0] y;
	reg  en1;
	reg en2;
	reg s;

	// Outputs
	wire [3:0] result;

	// Instantiate the Unit Under Test (UUT)
	behav uut (
		.x(x), 
		.y(y), 
		.en1(en1),
		.en2(en2),
		.result(result),
		.s(s)
	);

	initial begin
		// Initialize Inputs
		x = 2'b00;//result is 0001
		y = 2'b10;//result is 0100
		en1 = 0;
		en2 = 1;//y enable, x disable
		s = 1; // y output
		#10;//expected out is 0100
		en1 = 0;
		en2 =0;//y disable, x diable
		#10;//ex out is 0000
      s = 0; //x output
		#10;//expected out is 0000
		en2 = 0;
		en1 = 1;//enable x
		#10;//ex out is 0001
		$finish;
		
	end
      
endmodule

