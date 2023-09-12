`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:49:46 06/06/2023
// Design Name:   shot
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/Finals_Padilla/tb_shotttttttttttt.v
// Project Name:  Finals_Padilla
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

module tb_shotttttttttttt;

	// Inputs
	reg clk;
	reg shoot;
	reg buzz;

	// Outputs
	wire [3:0] count;

	// Instantiate the Unit Under Test (UUT)
	shot uut (
		.clk(clk), 
		.count(count), 
		.shoot(shoot), 
		.buzz(buzz)
	);
	always 
	#5 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		shoot = 0;
		buzz = 0;

		#50 shoot = 1;
		#80 shoot = 0;
		#260
		$finish;
        
		// Add stimulus here

	end
      
endmodule

