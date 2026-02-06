`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     11:03:49 01/16/2026
// Design Name:     equal one-bit
// Module Name:     eq1
// Project Name:    pong_p_chu
// Target Devices:  -
// Tool versions:   -
// Description:     equations to test if a and b is equal (xnor)
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Pure CL / LE (only gates).
//
//////////////////////////////////////////////////////////////////////////////////

module eq1_logic_expression (eq, i0, i1);

// declare mode
output eq; // xnor
input i0, i1;

// declare data type
wire eq;
wire i0, i1;

wire p_a_b, p_an_bn;

assign   p_a_b =  i0 &  i1;
assign p_an_bn = ~i0 & ~i1;

assign eq = p_a_b | p_an_bn;

endmodule

module eq1_primitive (eq, i0, i1);
output eq;
input i0, i1;

wire eq;
wire i0, i1;

wire i0_n, i1_n;
wire p0, p1;

not u1 ( i0_n , i0          ); // i0_n = ~i0
not u2 ( i1_n , i1          ); // i1_n = ~i1
and u3 ( p0   , i0_n , i1_n ); // p0   = ~i0_n & ~i1_n
and u4 ( p1   , i0   , i1   ); // p1   =  i0   &  i1
or  u5 ( eq   , p0   , p1   ); // eq   =  p0   |  p1

endmodule

primitive eq1_udp (eq, i0, i1); // user-defined-primitives
output eq;
input i0, i1;

table
// i0 i1 : eq
   0  0  : 1;
   0  1  : 0;
   1  0  : 0;
   1  1  : 1;
endtable

endprimitive
