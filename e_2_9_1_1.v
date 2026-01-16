`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     10:30:16 01/16/2026
// Design Name:     pong_p_chu
// Module Name:     e_2_9_1_1
// Project Name:    2-bit greather than logic
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
//////////////////////////////////////////////////////////////////////////////////
module e_2_9_1_1 (
  a,b, // a1, a0
  c,d, // b1, b0
  f
);

input a,b;
input c,d;
output f;

assign f = (a & (! c)) | (b & (! c) & (! d)) | (a & b & (! d));

endmodule

module comp_gt2 (gt2, a, b);
output gt2;
input a;
input b;

wire gt2;
wire [1:0] a;
wire [1:0] b;

assign gt2 = (a[1] & (! b[1])) | (a[0] & (! b[1]) & (! b[0])) | (a[1] & a[0] & (! b[0]));

endmodule
