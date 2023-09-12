`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:58:54 04/25/2023 
// Design Name: 
// Module Name:    DFF_sync 
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
module DFF_sync(clk, nrst, D,Q
    );
input clk,nrst,D;
output reg Q;
always@(posedge clk)
begin
if(!nrst)
begin
Q<=0;
end
else begin
Q<=D;
end

end
endmodule
