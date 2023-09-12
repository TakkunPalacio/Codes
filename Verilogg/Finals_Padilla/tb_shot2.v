`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:37:32 06/06/2023
// Design Name:   shot
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/Finals_Padilla/tb_shot2.v
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

module tb_shot2;

	// Inputs
	reg clk;
	reg nrst;

	// Outputs
	wire [3:0] count;
	wire shoot;
	wire buzz;

	// Instantiate the Unit Under Test (UUT)
	shot uut (
		.clk(clk), 
		.nrst(nrst), 
		.count(count), 
		.shoot(shoot), 
		.buzz(buzz)
	);
#5 clk = ~clk;
	initial begin
		// Initialize Inputs
		
		clk = 1;
		nrst = 1;
		#10;
		
		
        
		// Add stimulus here

	end
      
endmodule

