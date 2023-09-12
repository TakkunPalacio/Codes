`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:35:00 02/20/2023 
// Design Name: 
// Module Name:    Multi 
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
module Multi(A,B,Sum);

input [3:0]A,B;
output reg [7:0]Sum;

always@(*)
begin
//C = {4{B[0]}}&A;
//D = {4{B[1]}}&A;
//E = {4{B[2]}}&A;
//F = {4{B[3]}}&A;

Sum = {3'b000,{4{B[0]}}&A}+{2'b00,{4{B[1]}}&A,1'b0}+{1'b0,{4{B[2]}}&A,2'b00}+{{4{B[3]}}&A,3'b000}; 
end



endmodule
