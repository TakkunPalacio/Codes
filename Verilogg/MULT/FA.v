`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:35:13 02/20/2023 
// Design Name: 
// Module Name:    FA_4bit
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
module FA_4bit(A,B,C,F,Cout);
input [3:0]A,B;
input C;
output reg [3:0]F;
output reg Cout;

always@(*)
begin
{Cout,F} = {1'b0,A}+{1'b0,B}+{4'b0000,Cin};
end


endmodule
