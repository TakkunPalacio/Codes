`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:18:34 02/01/2023 
// Design Name: 
// Module Name:    NorLatch 
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
module NorLatch(s,r,q,q_bar
    );
	 input s,r;
	 output q,q_bar;
	 nor(q,r,q_bar);
	 nor(q_bar,q,s);


endmodule
