`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:47:12 04/25/2023 
// Design Name: 
// Module Name:    ud_counter 
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
module ud_counter(clk,nrst,x,count,control
    ); 
	 //x = 1 up
	 // x = 0 down
input clk,nrst,control,x;
output count;
reg [3:0] count;
always@(negedge clk)
	if(!control)
	begin
		if(nrst)
			count <=0;
		else
		begin
			if(x)
				begin
				count <=count+1;
				end
			else
				begin
				count <= count - 1;
				end
		end
	end
	else
	count <= count;

endmodule
