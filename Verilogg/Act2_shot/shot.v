`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:43:46 05/02/2023 
// Design Name: 
// Module Name:    shot 
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
module shot(clk,nrst,a_shot,score,count);
input clk,nrst,score,a_shot;
output reg [4:0]count;

//circuit priority
//nrst > a_shot > score
//(nrst,a_shot,score)
always@(posedge clk) begin
	if(nrst) begin
		if(!a_shot)begin
			if(score)begin
				count <= 24;//if(1,0,1)
				end
			else begin
				count <= count-1;//if(1,0,0)
				end
		end
		else begin
			count <= count;//if(1,1,X)
			end
	end
	else begin
		count <= 24;//if(0,X,X)
		end
	
	if(count==0||count>24)//this should set count to 24 immediately but due to being a non-blocking statement it doesnt matter
	begin
		count <=24;
	end
end


endmodule
