`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:00:16 06/06/2023
// Design Name:   shot
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/Finals_Padilla/tb_shoottttt.v
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

module tb_shoottttt;

	// Inputs
	reg clk;
	reg shoot;

	// Outputs
	wire [3:0] count;
	wire buzz;

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
		#20 shoot = 1;
		#40 shoot = 0;

		// Wait 100 ns for global reset to finish
		#200;
		$finish;
        
		// Add stimulus here

	end
      
endmodule

