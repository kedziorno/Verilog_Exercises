`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     12:53:34 03/01/2026
// Design Name:     pong_p_chu
// Module Name:     enc_4_2
// Project Name:    -
// Target Devices:  -
// Tool versions:   -
// Description:     -
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
///////////////////////////////////////////////////////////////////////////////
module enc_4_2 (o1, o0, i3, i2, i1, i0, en);
output o1, o0;
input i3, i2, i1, i0, en;

wire o1, o0, i3, i2, i1, i0, en;
wire oo1, oo0;

assign oo0 = ((~i3 & ~i2 &  i1 & ~i0) | (i3 & ~i2 & ~i1 & ~i0));
assign oo1 = ((~i3 &  i2 & ~i1 & ~i0) | (i3 & ~i2 & ~i1 & ~i0));
assign o0 = oo0 * en;
assign o1 = oo1 * en;

endmodule
