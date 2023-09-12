`timescale 1ns / 1ps
/*		TB code
		A=4'b0101;
		B=4'b0110;
		S=2'b00;
		#10;
		S=2'b01;
		#10;
		S=2'b10;
		#10;
		S=2'b11;
		#10;
      $finish;
		  */
		  
module alualu(A,B,Sum,Cout,S);
input [3:0]A,B;
input [1:0]S;
output [3:0]Sum;
output Cout;
wire [3:0] X,Y,Z,G;

adder_4bit B1(A,B,1'b0,X,Cout);//create a temporary/instanced module named B1  
or_4bit O1(A,B,Y);//like calling a predefined function
and_4bit An1 (A,B,Z);//using specified variables
inc_4bit I1(A,G);

//reg [3:0] Sum;
/*always@(X or Y or Z or G or S)begin
case(S)
default:Sum = X;
2'b01:Sum = Y;
2'b10:Sum = Z;
2'b11:Sum = G;
endcase
end*/

//Or
assign Sum = (S[1])?((S[0])? G:Z):((S[0])?Y:X);
/*
can use always block or conditional operator
always block requires a reg identifier for outputs

assign statements can't use reg

*/
endmodule
//
module adder_4bit(A,B,Cin,Sum,Cout);
input [3:0]A,B;
input Cin;
output reg [3:0]Sum;
output reg Cout;

always@(A or B or Cin)begin
{Cout,Sum}={1'b0,A}+{1'b0,B}+{4'b0000,Cin};
// '{}' operator appends a nth number of bit/s to the array to form a larger array
end
endmodule
//
module or_4bit(A,B,X);
input [3:0]A,B;
output [3:0]X;
assign X = A|B;
endmodule
//
module and_4bit(A,B,X);
input [3:0]A,B;
output [3:0]X;
assign X = A&B;
endmodule
//
module inc_4bit(A,X);
input [3:0]A;
output [3:0]X;
assign X = A + 4'b0001;
endmodule
