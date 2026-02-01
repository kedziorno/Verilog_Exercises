`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        HomeDL
// Engineer:       ko
//
// Create Date:    13:30:19 01/16/2026
// Design Name:    pong_p_chu
// Module Name:    e_2_9_1_4
// Project Name:   -
// Target Devices: -
// Tool versions:  -
// Description:    Greater than 4 bit
//
// Dependencies: -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Pure CL / LE (only gates).
//
//////////////////////////////////////////////////////////////////////////////////
module e_2_9_1_4 (gt4, a, b);
output gt4;
input a, b;

wire gt4;
wire [3:0] a, b;

wire p1, p2, p3;

comp_gt2 node1 (p1, a[3:2], b[3:2]);
comp_gt2 node2 (p2, a[1:0], b[1:0]);
eq2_structural_primitive node3 (p3, a[3:2], b[3:2]);

assign gt4 = ~(~(p2&p3) & ~p1);

endmodule

module comp_gt4 (gt4, a, b);
output gt4;
input a, b;

wire gt4;
wire [3:0] a, b;

e_2_9_1_4 (.gt4 (gt4), .a (a), .b (b));

endmodule
