`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:54:05 05/16/2023 
// Design Name: 
// Module Name:    M_011 
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
module M_011( clk,nrst,x,y
    );
input clk,nrst,x;
output reg y;
reg [1:0] cstate,nstate;
//state transition
always@(posedge clk)begin
	if(!nrst)
		cstate<=0;
	else
		cstate<=nstate;
end

always@(cstate,x)begin
	case(cstate)
	2'b00:nstate<=((x)?2'b00:2'b01);
	2'b01:nstate<=((x)?2'b10:2'b01);
	2'b10:nstate<=((x)?2'b11:2'b01);
	2'b11:nstate<=((x)?2'b00:2'b01);
	endcase
end

always@(posedge clk)begin
	if(!nrst)
		y<=0;
	else
	begin
		if(cstate==2'b10 & x==1'b1)begin
			y<=1;end
		else begin
			y<=0;end
	end
end
endmodule
