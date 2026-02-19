`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:    11:49:53 01/16/2026
// Design Name:    pong_p_chu
// Module Name:    eq2
// Project Name:   2-bit equal logic
// Target Devices: -
// Tool versions:  -
// Description:    -
//
// Dependencies:   -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Logic experssions.
//
//////////////////////////////////////////////////////////////////////////////////
module eq2_logic_expression (eq2, a0, a1, b0, b1);

output eq2;
input a0, a1;
input b0, b1;

wire eq2;
wire a0, a1;
wire b0, b1;

wire w0000, w0101, w1010, w1111;

assign eq2 = w0000 | w0101 | w1010 | w1111;

assign w0000 = ~a0 * ~a1 * ~b0 * ~b1;
assign w0101 = ~a0 *  a1 * ~b0 *  b1;
assign w1111 =  a0 *  a1 *  b0 *  b1;
assign w1010 =  a0 * ~a1 *  b0 * ~b1;

endmodule

module eq2_structural_le (eq2, a, b);
output eq2;
input a, b;
wire eq2;
wire [1:0] a;
wire [1:0] b;

wire e1, e2;

eq1_logic_expression eq_bit0 (.eq (e1), .i0 (a[0]), .i1 (b[0]));
eq1_logic_expression eq_bit1 (.eq (e2), .i0 (a[1]), .i1 (b[1]));

assign eq2 = e1 & e2;

endmodule

module eq2_structural_primitive (eq2, a, b);
output eq2;
input a, b;
wire eq2;
wire [1:0] a;
wire [1:0] b;

wire e1, e2;

eq1_primitive eq_bit0 (.eq (e1), .i0 (a[0]), .i1 (b[0]));
eq1_primitive eq_bit1 (.eq (e2), .i0 (a[1]), .i1 (b[1]));

assign eq2 = e1 & e2;

endmodule

module eq2_structural_udp (a, b, eq2);
input a, b;
output eq2;
wire [1:0] a;
wire [1:0] b;
wire eq2;

wire e1, e2;

eq1_udp eq_bit0 (.eq (e1), .i0 (a[0]), .i1 (b[0]));
eq1_udp eq_bit1 (.eq (e2), .i0 (a[1]), .i1 (b[1]));

assign eq2 = e1 & e2;

endmodule
