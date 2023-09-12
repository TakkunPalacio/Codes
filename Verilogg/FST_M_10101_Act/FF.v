`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:35:58 05/16/2023 
// Design Name: 
// Module Name:    FF 
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
module FF( clk,nrst,x,y
    );
input clk,nrst,x;
output reg y;
reg [2:0] cstate,nstate;
//state transition
always@(posedge clk)begin
	if(!nrst)
		cstate<=0;
	else
		cstate<=nstate;
end

always@(cstate,x)begin
	case(cstate)
	3'b000:nstate<=((x)?3'b001:3'b000);
	3'b001:nstate<=((x)?3'b001:3'b010);
	3'b010:nstate<=((x)?3'b011:3'b000);
	3'b011:nstate<=((x)?3'b001:3'b100);
	3'b100:nstate<=((x)?3'b101:3'b000);
	3'b101:nstate<=((x)?3'b001:3'b100);
	endcase
end

always@(posedge clk)begin
	if(!nrst)
		y<=0;
	else
	begin
		if(cstate==3'b100 & x==1'b1)begin
			y<=1;end
		else begin
			y<=0;end
	end
end
endmodule
