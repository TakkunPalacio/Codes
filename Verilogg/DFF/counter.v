`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:08:20 04/25/2023 
// Design Name: 
// Module Name:    counter 
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
module counter(clk,nrst,count,control
    );
input clk,nrst,control;
output count;
reg [3:0] count;
always@(negedge clk)
if(!control)
begin
if(!nrst)
count <=0;
else
count <=count+1;
end

endmodule
