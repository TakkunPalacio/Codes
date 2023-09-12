`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:33:09 03/07/2023 
// Design Name: 
// Module Name:    bigboom 
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
module bigboom(a,b,s,result,carry
    );
input [7:0]a,b;
input [2:0]s;
output reg [7:0]result;
output reg carry;

always@(*)
begin
/*{carry,result} = 
s[2]? 
	s[1]?
		s[0]?
			a^b :
			 ~a 
	:
		s[0]?
			a|b :
			a&b
:
	s[1]? 
		s[0]?
			a-1 :
			a+1 
	:
		s[0]? 
			a-b :
			a+b;
*/
case(s)
3'b000:{carry,result} = a+b;
3'b001:{carry,result} = a-b;
3'b010:{carry,result} = a+1;
3'b011:{carry,result} = a-1;
3'b100:{carry,result} = a&b;
3'b101:{carry,result} = a|b;
3'b110:{carry,result} = ~a;
3'b111:{carry,result} = a^b;
endcase
end
endmodule
