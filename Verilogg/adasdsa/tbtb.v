`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:24:08 02/28/2023
// Design Name:   asdasd
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/adasdsa/tbtb.v
// Project Name:  adasdsa
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: asdasd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tbtb;

	// Inputs
	reg [15:0] opA;
	reg [15:0] opB;
	reg [1:0] sel;

	// Outputs
	wire [15:0] res;
	wire flag_c;
	wire flag_z;
	wire flag_o;

	// Instantiate the Unit Under Test (UUT)
	asdasd uut (
		.opA(opA), 
		.opB(opB), 
		.sel(sel), 
		.res(res), 
		.flag_c(flag_c), 
		.flag_z(flag_z), 
		.flag_o(flag_o)
	);

	initial begin
		// Initialize Inputs
		opA = 16'd15;
		opB = 16'd15;
		sel = 2'b00;
		#10;
      $finish;

	end
      
endmodule

