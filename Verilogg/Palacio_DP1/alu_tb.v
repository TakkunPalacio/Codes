`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:25:53 02/28/2023
// Design Name:   alu_16bit
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/Palacio_DP1/alu_tb.v
// Project Name:  Palacio_DP1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_16bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

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
	alu_16bit uut (
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
		//ADD non-over
		opA = 16'd15;
		opB = 16'd15;
		sel = 2'b00;
		#10;
		opA = -15;
		opB = -14;
		#10;
		//SUB non-over
      opA = 16'd15;
		opB = 16'd3;
		sel = 2'b01;
		#10;
		opA = -15 ;
		opB = 16'd15;
		#10;
		//AND
		sel = 2'b10;
		opA = 16'd15;
		opB = 16'd15;
		#10;
		opA = 16'd256;
		opB = 16'd256;
		#10;
		//OR
		sel = 2'b11;
		opA = 16'd2000;
		opB = 16'd3000;
		#10;
		opA = 16'd1234;
		opB = 16'd4321;
		#10;
		//overflow ADD
		sel = 2'b00;
		opA = 16'd32767;
		opB = 16'd10;
		#10;
		opA = -32768;
		opB = -23;
		#10;
		//overflow SUB
		sel = 2'b01;
		opA = -62012;
		opB = -60256;
		#10;
		opA = -62012;
		opB = -60300;
		#10;
		//flag_z
		sel = 2'b10;
		opA = 0;
		opB = 0;
		#10;
		//flag_c
		sel = 2'b00;
		opA = 16'b1000000000000000;
		opB = 16'b1000000000000000;
		#10;
		//flag_o
		sel = 2'b00;
		opA = 16'b1000000000000000;
		opB = 16'b1000000000000001;
		#10;
		$finish;


	end
      
endmodule

