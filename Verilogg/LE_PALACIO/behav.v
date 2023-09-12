`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:07:10 03/14/2023 
// Design Name: 
// Module Name:    behav 
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
module behav(x,y,en1,en2,result,s
    );
	 input [1:0] x,y;
	 input s,en1,en2;
	 output reg [3:0]result;
	 
//2 - 4 encoder with multiplexer
//e,n enable pin
//x,y input
//a,b,c,d output
//x y a b c d
//2 encoder
//s = 0 encoder 1 is output
//s = 1 encoder 2 is output
always@(*)
begin

if(s) begin//s =1 encoder 2
	if(en2)//if enable pin is 1 enable y
	begin
		case(y)
		2'b00:result = 4'b0001;
		2'b01:result = 4'b0010;
		2'b10:result = 4'b0100;
		2'b11:result = 4'b1000;
		endcase
	end
	else//if enable pin is 0 disable y
	begin
	result = 4'b0000;//0000
	end
end
else 
begin//s = 0 encoder 1 x out
	if(en1)//if enable pin is 1 enable x
	begin
		case(x)
		2'b00:result = 4'b0001;
		2'b01:result = 4'b0010;
		2'b10:result = 4'b0100;
		2'b11:result = 4'b1000;
		endcase
	end
	else//if enable pin is 0 disable x
	begin
	result = 4'b0000;
	end

end


end
endmodule
