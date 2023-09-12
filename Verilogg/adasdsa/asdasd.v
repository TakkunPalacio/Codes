`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:23:32 02/28/2023 
// Design Name: 
// Module Name:    asdasd 
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
module asdasd(opA,opB,sel,res,flag_c,flag_z,flag_o
    );
	input signed [15:0]opA,opB;
	input [1:0]sel;
	output reg [15:0]res;
	output reg flag_c,flag_z,flag_o;
	
always@(*)
	begin
	case(sel)
		default:{flag_c,res} = {1'b0,opA}+{1'b0,opB};
		2'b01:{flag_c,res} = {1'b0,opA}-{1'b0,opB};
		2'b10:res = opA&opB;
		2'b11:res = opA|opB;
		endcase
		
	if(res != 15'd0)
		begin
		flag_z = 1'b1;
		end
	if(flag_z == 1'b0 && flag_c == 1'b1)
		begin
		flag_o = 1'b1;
		end
	end
	
endmodule
