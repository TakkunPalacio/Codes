`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:38:17 03/07/2023
// Design Name:   bigboom
// Module Name:   C:/Users/John Isa/Documents/VSCode/Verilogg/alu_8bit/tb_tb.v
// Project Name:  alu_8bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bigboom
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg [2:0] s;

	// Outputs
	wire [7:0] result;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	bigboom uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.result(result), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		a = 8'd98;
		b = 8'd45;
		s = 3'b000;
		#10;
		s = 3'b001;
		#10;
		s = 3'b010;
		#10;
		s = 3'b011;
		#10;
		s = 3'b100;
		#10;
		s = 3'b101;
		#10;
		s = 3'b110;
		#10;
		s = 3'b111;
		#10;
		
		$finish;
        
		// Add stimulus here

	end
      
endmodule

