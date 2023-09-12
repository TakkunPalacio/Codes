`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:25:38 02/28/2023 
// Design Name: 
// Module Name:    alu_16bit 
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
module alu_16bit(opA,opB,sel,res,flag_c,flag_z,flag_o
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
		flag_z = 1'b0;
		end
		else
		begin
		flag_z = 1'b1;
		end
	flag_o = (~res[15]&opA[15]&opB[15])|(res[15]&(~opA[15])&(~opB[15]));
    
	end
	
endmodule
