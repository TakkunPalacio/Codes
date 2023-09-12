`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:05:11 02/21/2023 
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
module FA_4bit(A,B,Sum,Cout
    );
input [3:0]A,B;
output reg [3:0] Sum;
output reg Cout;

always@(*)
begin
{Cout,Sum} = {A}+{B};

end

endmodule
