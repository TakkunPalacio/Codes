`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:38:03 02/07/2023 
// Design Name: 
// Module Name:    alu_4bit 
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
module alu_4bit(A,B,Sum,Cout,SS
    );
input [3:0]A,B;
input SS;
output reg[3:0]Sum;
output Cout;
wire [3:0]X,Y;

adder_4bit A1(A,B,1'b0,X,Cout);
or_4bit O1(A,B,Y);

always@(SS or X or Y)begin
case({SS})
1'b0: Sum = Y;
1'b1: Sum = X;
endcase
end

endmodule


module adder_4bit(A,B,Cin,Sum,Cout);
input [3:0]A,B;
input Cin;
output reg [3:0]Sum;
output reg Cout;

always@(A or B or Cin)begin
{Cout,Sum}={1'b0,A}+{1'b0,B}+{4'b0000,Cin};
end
endmodule

module or_4bit(A,B,X);
input [3:0]A,B;
output [3:0]X;
assign X = A|B;
endmodule
