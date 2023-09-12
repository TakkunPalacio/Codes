`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:02:28 02/07/2023 
// Design Name: 
// Module Name:    RA 
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
module RA(
    A,B,Cin,Sum,Cout);
input [3:0] A,B;
input Cin;
output reg [3:0]Sum;
output reg Cout;
always@(A or B or Cin)begin
{Cout,Sum} ={1'b0,A}+{1'b0,B}+{4'b0000,Cin};
//very cool
end
endmodule

