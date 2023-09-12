`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:13:42 02/21/2023 
// Design Name: 
// Module Name:    Multiplierr 
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
module Multiplierr(A,B,P);

input [3:0]A,B;
output [7:0]P;
wire [3:0]C,D,E,F;
wire [4:0]G,H,I;

assign C = {B[0],B[0],B[0],B[0]}&A;
assign D = {B[1],B[1],B[1],B[1]}&A;
assign E = {B[2],B[2],B[2],B[2]}&A;
assign F = {B[3],B[3],B[3],B[3]}&A;

FA_4bit FA1 ({1'b0,C[3:1]},D[3:0],G[3:0],G[4]);
FA_4bit FA2 (G[4:1],E[3:0],H[3:0],H[4]);
FA_4bit FA3 (H[4:1],F[3:0],I[3:0],I[4]);

assign P[0] = C[0];
assign P[1] = G[0];
assign P[2] = H[0];
assign P[3] = I[0];
assign P[4] = I[1];
assign P[5] = I[2];
assign P[6] = I[3];
assign P[7] = I[4];

endmodule
