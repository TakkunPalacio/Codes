`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:20:17 06/06/2023 
// Design Name: 
// Module Name:    shot 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module shot(clk,count,shoot,buzz);
	input clk,shoot;
	output reg buzz;
	output reg [3:0] count;
	
	initial count <= 15;
	always@(posedge clk)begin
		if (!shoot)
			count <= count-1;
		else 
			count <= count;
			end
		
	always@(posedge clk)begin
	if (count == 1)
		buzz <= 1'b1;
		else
		buzz <= 1'b0;
		end
		
endmodule



