`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:37:44 01/31/2023 
// Design Name: 
// Module Name:    Ripple_Carry 
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
module Ripple_Carry(A,B,Cin,Sum,Cout
    );
input [3:0] A,B;
input Cin;
output [3:0] Sum;
output Cout;
wire [2:0]C;

full_adder FA0 (A[0],B[0],Cin,Sum[0],C[0]);
full_adder FA1 (A[1],B[1],C[0],Sum[1],C[1]);
full_adder FA2 (A[2],B[2],C[1],Sum[2],C[2]);
full_adder FA3 (A[3],B[3],C[2],Sum[3],Cout);
endmodule

module full_adder(A,B,Cin,Sum,Cout);
input A,B,Cin;
output Sum,Cout;

assign Sum = A^B^Cin;
assign Cout = A&B|A&Cin|B&Cin;

endmodule
