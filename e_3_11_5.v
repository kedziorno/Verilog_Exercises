`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     18:49:30 01/28/2026
// Design Name:     pong_p_chu
// Module Name:     e_3_11_5_1, e_3_11_5_5
// Project Name:    -
// Target Devices:  -
// Tool versions:   -
// Description:     fp13 -> s8 , s8 -> fp13
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
//////////////////////////////////////////////////////////////////////////////////

module full_adder_1 (s, co, ci, a, b);
output s, co;
input a, b, ci;

wire s, co;
wire a, b, ci;

assign s = a ^ b ^ ci;
assign co = (a & b) | (b & ci) | (a & ci);

endmodule

module subtractor_4 (y, a, b);
output y;
input a, b;

wire [3:0] y;
wire [3:0] a, b;

wire [3:0] co1;

full_adder_1 fa0 (.s (y[0]), .co (co1[0]), .ci (1'b1),   .a (a[0]), . b(b[0] ^ 1'b1));
full_adder_1 fa1 (.s (y[1]), .co (co1[1]), .ci (co1[0]), .a (a[1]), . b(b[1] ^ 1'b1));
full_adder_1 fa2 (.s (y[2]), .co (co1[2]), .ci (co1[1]), .a (a[2]), . b(b[2] ^ 1'b1));
full_adder_1 fa3 (.s (y[3]), .co (co1[3]), .ci (co1[2]), .a (a[3]), . b(b[3] ^ 1'b1));

endmodule

module prio_enc_8_3 (y, x);
output y;
input x;
wire [2:0] y;
wire [7:0] x;

assign y[0] =
  (~x[7] &  x[6]                                       )
| (~x[7] & ~x[6] & ~x[5] &  x[4]                       )
| (~x[7] & ~x[6] & ~x[5] & ~x[4] & ~x[3] &  x[2]       )
| (~x[7] & ~x[6] & ~x[5] & ~x[4] & ~x[3] & ~x[2] & x[0]);

assign y[1] =
  (~x[7] &  x[6]                                       )
| (~x[7] & ~x[6] &  x[5]                               )
| (~x[7] & ~x[6] & ~x[5] & ~x[4] & ~x[3] &  x[2]       )
| (~x[7] & ~x[6] & ~x[5] & ~x[4] & ~x[3] & ~x[2] & x[1]);

assign y[2] =
  (~x[7] &  x[6]                       )
| (~x[7] & ~x[6] &  x[5]               )
| (~x[7] & ~x[6] & ~x[5] &  x[4]       )
| (~x[7] & ~x[6] & ~x[5] & ~x[4] & x[3]);

endmodule

// fp13 -> s8
module e_3_11_5_1 (fp13, s8);
output fp13;
input s8;
wire [12:0] fp13;
wire [7:0] s8;

wire s8_s = s8[7];          // input sign
wire [6:0] s8_m = s8[6:0];  // input mantissa
wire [2:0] fp_e;            // first bit from prio enc (exponent)
wire [3:0] lead;            // leading shift (0)
wire [7:0] fp_f;            // output fraction

localparam bias = 4'd8;     // bias ((2^(exponent_bits))/2)

prio_enc_8_3
pe83 (
  .y (fp_e       ), // position first 1
  .x ({1'b0,s8_m})
);

subtractor_4
s4 (
  .y (lead       ), // difference
  .a (bias       ), // constant
  .b ({1'b0,fp_e})  // position first 1
);

barrel_shifter_verilog
  #(.n (3))
bs3 (
  .o_order     (fp_f       ),  // shifted fraction
  .i_order     ({1'b0,s8_m}),  // input mantissa
  .sel_shl_shr (lead[2:0]  ),  // shift size
  .ml_sb_order (1'b1       )   // left
);

assign fp13[12]   = s8_s; // 1-bit sign
assign fp13[11:8] = fp_e; // 4-bit exponent
assign fp13[7:0]  = fp_f; // 8-bit fraction

endmodule

module mux41bits #(bits=1) (y, s0, s1, i0, i1, i2, i3);
output y;
input s0, s1, i0, i1, i2, i3;
wire [bits-1:0] y, i0, i1, i2, i3;
wire s0, s1;

wire [bits-1:0] zero;
assign zero = 0;

wire a, b, c, d;
assign a = s0 == 0 && s1 == 0 ? i0 : zero;
assign b = s0 == 0 && s1 == 1 ? i1 : zero;
assign c = s0 == 1 && s1 == 0 ? i2 : zero;
assign d = s0 == 1 && s1 == 1 ? i3 : zero;

assign y = a | b | c | d;

endmodule

module mux41 (y, s1, s0, i3, i2, i1, i0);
output y;
input s0, s1, i0, i1, i2, i3;
wire y, i0, i1, i2, i3;
wire s0, s1;

wire zero;
assign zero = 0;

wire a, b, c, d;
assign a = ~s0 & ~s1 & i0;
assign b = ~s0 &  s1 & i1;
assign c =  s0 & ~s1 & i2;
assign d =  s0 &  s1 & i3;

assign y = a | b | c | d;

endmodule

module prio_enc_4_2 (y1, y0, x3, x2, x1, x0);
output y1, y0;
input x3, x2, x1, x0;
wire y1, y0, x3, x2, x1, x0;

assign y1 = x3 + (~x3 *  x2     );
assign y0 = x3 + (~x3 * ~x2 * x1);

endmodule

// s8 -> fp13
module e_3_11_5_5 (s8, of, uf, fp13);
output s8, of, uf;
input fp13;
wire [7:0] s8;
wire of, uf;
wire [12:0] fp13;

localparam bias = 4'd8;
localparam const_1 = 4'b0001;
localparam const_7 = 4'b0111;

wire fp13_s;
wire [3:0] fp13_e;
wire [7:0] fp13_f;

assign fp13_s = fp13[12];
assign fp13_e = fp13[11:8];
assign fp13_f[0] = fp13[7];
assign fp13_f[1] = fp13[6];
assign fp13_f[2] = fp13[5];
assign fp13_f[3] = fp13[4];
assign fp13_f[4] = fp13[3];
assign fp13_f[5] = fp13[2];
assign fp13_f[6] = fp13[1];
assign fp13_f[7] = fp13[0];

// is fp fraction EQ 0
wire fp13_f_eq2_1, fp13_f_eq2_2, fp13_f_eq2_3, fp13_f_eq2_4, fp13_f_eq;
eq2_structural_primitive fp13_f_eq2_uut_1 (.eq2 (fp13_f_eq2_1), .a (fp13_f[7:6]), .b (2'b0));
eq2_structural_primitive fp13_f_eq2_uut_2 (.eq2 (fp13_f_eq2_2), .a (fp13_f[5:4]), .b (2'b0));
eq2_structural_primitive fp13_f_eq2_uut_3 (.eq2 (fp13_f_eq2_3), .a (fp13_f[3:2]), .b (2'b0));
eq2_structural_primitive fp13_f_eq2_uut_4 (.eq2 (fp13_f_eq2_4), .a (fp13_f[1:0]), .b (2'b0));
assign fp13_f_eq = fp13_f_eq2_1 & fp13_f_eq2_2 & fp13_f_eq2_3 & fp13_f_eq2_4;

// is fp exponent LT 1
wire fp13_e_eq2_1, fp13_e_eq2_2, fp13_e_eq4;
eq2_structural_primitive fp13_e_eq2_uut_1 (.eq2 (fp13_e_eq2_1), .a (fp13_e[3:2]), .b (const_1[3:2]));
eq2_structural_primitive fp13_e_eq2_uut_2 (.eq2 (fp13_e_eq2_2), .a (fp13_e[1:0]), .b (const_1[1:0]));
assign fp13_e_eq4 = fp13_e_eq2_1 & fp13_e_eq2_2;
wire fp13_e_gt4_const_1;
e_2_9_1_4 fp13_e_gt_const_1_uut (.gt4 (fp13_e_gt4_const_1), .a (fp13_e), .b (const_1));
assign fp13_e_lt_const_1 = ~fp13_e_eq4 & ~fp13_e_gt4_const_1; // LT 1

// is fp exponent GT 7
wire fp13_e_gt4_const_7, fp13_e_gt_const_7;
e_2_9_1_4 fp13_e_gt_cont_7_uut (.gt4 (fp13_e_gt4_const_7), .a (fp13_e), .b (const_7));
assign fp13_e_gt_const_7 = fp13_e_gt4_const_7; // GT 7

wire [3:0] lead;
subtractor_4 s4 (.y (lead), .a (bias), .b (fp13_e));

wire [15:0] s8_m_11;
barrel_shifter_verilog #(.n (4)) bs4 (
.o_order (s8_m_11),
.i_order ({fp13_f[7:0],8'b0}),
.sel_shl_shr (lead[3:0]),
.ml_sb_order (1'b1));

wire [1:0] mux41_select;
wire last_pe42;
assign last_pe42 = ~fp13_f_eq & ~fp13_e_lt_const_1 & ~fp13_e_gt_const_7;
prio_enc_4_2 pe42 (.y1 (mux41_select[1]), .y0 (mux41_select[0]),
.x3 (fp13_f_eq),
.x2 (fp13_e_lt_const_1),
.x1 (fp13_e_gt_const_7),
.x0 (last_pe42));

wire [7:0] s8_m_mux, s8_m_00, s8_m_10;
assign s8_m_00 = 8'b0;
assign s8_m_10 = 8'b11111111;

genvar i;
generate
  for (i = 7; i >= 0; i = i - 1) begin : g0
    mux41 m41_1 (.y (s8_m_mux[i]), .s1 (mux41_select[1]), .s0 (mux41_select[0]),
    .i3 (s8_m_00[i]), .i2 (s8_m_10[i]), .i1 (s8_m_00[i]), .i0 (s8_m_11[i+8]));
  end
endgenerate

// overflow
mux41 m41_2 (.y (of), .s1 (mux41_select[1]), .s0 (mux41_select[0]),
.i3 (1'b0), .i2 (1'b0), .i1 (1'b1), .i0 (1'b0));

// underflow
mux41 m41_3 (.y (uf), .s1 (mux41_select[1]), .s0 (mux41_select[0]),
.i3 (1'b0), .i2 (1'b1), .i1 (1'b0), .i0 (1'b0));

assign s8[7] = fp13_s;
assign s8[6:0] = s8_m_mux[6:0];

endmodule
