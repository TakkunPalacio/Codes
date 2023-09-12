`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:47:03 05/02/2023
// Design Name:   shot
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/Act2_shot/shot_tb.v
// Project Name:  Act2_shot
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shot
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shot_tb;

	// Inputs
	reg clk;
	reg nrst;
	reg a_shot;
	reg score;

	// Outputs
	wire [4:0] count;

	// Instantiate the Unit Under Test (UUT)
	shot uut (
		.clk(clk), 
		.nrst(nrst), 
		.a_shot(a_shot), 
		.score(score), 
		.count(count)
	);
	always
	#5 clk = ~clk;
	initial begin
		// cicruit triggers at 5
		//then at 15ns,25ns,35ns,etc
		//plan your timing around this
		clk = 0;
		nrst = 0;
		a_shot = 0;
		score = 0;
		#6 nrst=1;//@6ns
		#9//@15ns extented para by 10 nalang yung timing ko
		#60 a_shot = 1;//@75ns
		#40 a_shot = 0;//@115ns
		#50 a_shot = 1;//@165ns
		#15 score = 1;//@180ns
		#15 a_shot =0;//@195ns
		#10 score = 0;//@205ns
		#260;//count down to 0
		$finish;
		
	end
      
endmodule

