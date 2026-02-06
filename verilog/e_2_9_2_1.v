`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     11:47:50 01/17/2026
// Design Name:     2-to-4 decoder - gate-level logical operators
// Module Name:     e_2_9_2_1
// Project Name:    pong_p_chu
// Target Devices:  -
// Tool versions:   -
// Description:     2-4 decoder
//
// Dependencies: -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Pure CL / LE (only gates).
//
//////////////////////////////////////////////////////////////////////////////////
module e_2_9_2_1(o4, i2, en);
output o4;
input i2, en;

wire [3:0] o4;
wire [1:0] i2;
wire en;

assign o4[0] = ( ~i2[0] & ~i2[1] & en );
assign o4[1] = (  i2[0] & ~i2[1] & en );
assign o4[2] = ( ~i2[0] &  i2[1] & en );
assign o4[3] = (  i2[0] &  i2[1] & en );

endmodule
