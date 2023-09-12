`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:59:58 01/31/2023 
// Design Name: 
// Module Name:    FAS 
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
module FAS(A,B,S,Sum,Cout
    );
input [7:0]A,B;
input S;
output [7:0]Sum;
output Cout;
wire [6:0]C;
wire [7:0]z;

assign z[0] = B[0]^S;
assign z[1] = B[1]^S;
assign z[2] = B[2]^S;
assign z[3] = B[3]^S;
assign z[4] = B[4]^S;
assign z[5] = B[5]^S;
assign z[6] = B[6]^S;
assign z[7] = B[7]^S;
FAS_I F0 (A[0],z[0],S,Sum[0],C[0]);
FAS_I F1 (A[1],z[1],C[0],Sum[1],C[1]);
FAS_I F2 (A[2],z[2],C[1],Sum[2],C[2]);
FAS_I F3 (A[3],z[3],C[2],Sum[3],C[3]);
FAS_I F4 (A[4],z[4],C[3],Sum[4],C[4]);
FAS_I F5 (A[5],z[5],C[4],Sum[5],C[5]);
FAS_I F6 (A[6],z[6],C[5],Sum[6],C[6]);
FAS_I F7 (A[7],z[7],C[6],Sum[7],Cout);
endmodule

module FAS_I(A,B,Cin,Sum,Cout);
input A,B,Cin;
output Sum, Cout;
assign Sum = A^B^Cin;
assign Cout = A&B|A&Cin|B&Cin ;
endmodule
