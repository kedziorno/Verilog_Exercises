`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     11:46:12 01/31/2026
// Design Name:     pong_p_chu
// Module Name:     e_3_11_6
// Project Name:    Enhanced floating-point adder
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
module comp_gt12 (gt12, a, b);
  output gt12;
  input a, b;

  wire gt12;
  wire [11:0] a, b;

  wire gt4_1, gt4_2, gt4_3;
  wire eq2_1, eq2_2, eq2_3, eq2_4, eq2_5, eq2_6, eq4_1, eq4_2, eq4_3;

  // compare GT A/B
  e_2_9_1_4 comp_gt4_uut_3 (.gt4 (gt4_3), .a (a[11:8]), .b (b[11:8]));
  e_2_9_1_4 comp_gt4_uut_2 (.gt4 (gt4_2), .a (a[ 7:4]), .b (b[ 7:4]));
  e_2_9_1_4 comp_gt4_uut_1 (.gt4 (gt4_1), .a (a[ 3:0]), .b (b[ 3:0]));

  // compare A/B EQ
  eq2_structural_primitive comp_eq2_uut_6 (
    .eq2 (eq2_6), .a (a[11:10]), .b (b[11:10])
  );
  eq2_structural_primitive comp_eq2_uut_5 (
    .eq2 (eq2_5), .a (a[9:8]), .b (b[9:8])
  );
  assign eq4_3 = eq2_6 & eq2_5;
  eq2_structural_primitive comp_eq2_uut_4 (
    .eq2 (eq2_4), .a (a[7:6]), .b (b[7:6])
  );
  eq2_structural_primitive comp_eq2_uut_3 (
    .eq2 (eq2_3), .a (a[5:4]), .b (b[5:4])
  );
  assign eq4_2 = eq2_4 & eq2_3;
  eq2_structural_primitive comp_eq2_uut_2 (
    .eq2 (eq2_2), .a (a[3:2]), .b (b[3:2])
  );
  eq2_structural_primitive comp_eq2_uut_1 (
    .eq2 (eq2_1), .a (a[1:0]), .b (b[1:0])
  );
  assign eq4_1 = eq2_2 & eq2_1;

  assign gt12 = (gt4_3 | (eq4_3 & gt4_2) | (eq4_3 & eq4_2 & gt4_1)
    | (gt4_3 & gt4_2 & gt4_1)) & ~(eq4_3 & eq4_2 & eq4_1);
endmodule

module subtractor_4_carry (y, co, a, b, ci);
  output y, co;
  input a, b, ci;

  wire [3:0] y;
  wire [3:0] a, b;

  wire [3:0] co1;

  assign co = co1[3];

  full_adder_1 fa0 (
    .s  (y[0]  ),
    .co (co1[0]), .ci (ci         ),
    .a  (a[0]  ), .b  (b[0] ^ 1'b1)
  );
  full_adder_1 fa1 (
    .s  (y[1]  ),
    .co (co1[1]), .ci (co1[0]     ),
    .a  (a[1]  ), .b  (b[1] ^ 1'b1)
  );
  full_adder_1 fa2 (
    .s  (y[2]  ),
    .co (co1[2]), .ci (co1[1]     ),
    .a  (a[2]  ), .b  (b[2] ^ 1'b1)
  );
  full_adder_1 fa3 (
    .s  (y[3]  ),
    .co (co1[3]), .ci (co1[2]     ),
    .a  (a[3]  ), .b  (b[3] ^ 1'b1)
  );
endmodule

module subtractor_12 (y, a, b);
  output y;
  input a, b;

  wire [11:0] y;
  wire [11:0] a, b;

  wire [2:0] co1;

  subtractor_4_carry st_2 (
    .y  (y[11:8]),
    .co (co1[2]) , .ci (co1[1] ),
    .a  (a[11:8]), .b  (b[11:8])
  );
  subtractor_4_carry st_1 (
    .y  (y[7:4]),
    .co (co1[1]), .ci (co1[0]),
    .a  (a[7:4]), .b  (b[7:4])
  );
  subtractor_4_carry st_0 (
    .y  (y[3:0]),
    .co (co1[0]), .ci (1'b1  ),
    .a  (a[3:0]), .b  (b[3:0])
  );
endmodule

module adder_4 (y, co, a, b, ci);
  output y, co;
  input a, b, ci;

  wire [3:0] y;
  wire [3:0] a, b;

  wire [3:0] co1;

  assign co = co1[3];

  full_adder_1 fa0 (
    .s  (y[0]  ),
    .co (co1[0]), .ci (ci),
    .a  (a[0]  ), .b  (b[0])
  );
  full_adder_1 fa1 (
    .s  (y[1]  ),
    .co (co1[1]), .ci (co1[0]),
    .a  (a[1]  ), .b  (b[1]  )
  );
  full_adder_1 fa2 (
    .s  (y[2]  ),
    .co (co1[2]), .ci (co1[1]),
    .a  (a[2]  ), .b  (b[2]  )
  );
  full_adder_1 fa3 (
    .s  (y[3]  ),
    .co (co1[3]), .ci (co1[2]),
    .a  (a[3]  ), .b  (b[3]  )
  );
endmodule

module adder_8 (y, a, b);
  output y;
  input a, b;

  wire [7:0] y;
  wire [7:0] a, b;

  wire [1:0] co1;

  adder_4 ar_1 (
    .y  (y[7:4]),
    .co (co1[1]), .ci (co1[0]),
    .a  (a[7:4]), .b  (b[7:4])
  );
  adder_4 ar_0 (
    .y  (y[3:0]),
    .co (co1[0]), .ci (1'b0),
    .a  (a[3:0]), .b  (b[3:0])
  );
endmodule

module adder_12 (y, a, b);
  output y;
  input a, b;

  wire [11:0] y;
  wire [11:0] a, b;

  wire [2:0] co1;

  adder_4 ar_2 (
    .y  (y[11:8]),
    .co (co1[2]) , .ci (co1[1] ),
    .a  (a[11:8]), .b  (b[11:8])
  );
  adder_4 ar_1 (
    .y  (y[7:4]),
    .co (co1[1]), .ci (co1[0]),
    .a  (a[7:4]), .b  (b[7:4])
  );
  adder_4 ar_0 (
    .y  (y[3:0]),
    .co (co1[0]), .ci (1'b0),
    .a  (a[3:0]), .b  (b[3:0])
  );
endmodule

module prio_enc_8_3_reverse (y, x); // XXX make tb
  output y;
  input x;

  wire [2:0] y;
  wire [7:0] x;

  assign y[0] =
  (~x[7] &  x[6]) |
  (~x[7] & ~x[6] & ~x[5] &  x[4]) |
  (~x[7] & ~x[6] & ~x[5] & ~x[4] & ~x[3] &  x[2]) |
  (~x[7] & ~x[6] & ~x[5] & ~x[4] & ~x[3] & ~x[2] & ~x[1] & ~x[0]);

  assign y[1] =
  (~x[7] & ~x[6] &  x[5]) |
  (~x[7] & ~x[6] & ~x[5] &  x[4]) |
  (~x[7] & ~x[6] & ~x[5] & ~x[4] & ~x[3] & ~x[2] &  x[1]) |
  (~x[7] & ~x[6] & ~x[5] & ~x[4] & ~x[3] & ~x[2] & ~x[1] & ~x[0]);

  assign y[2] =
  (~x[7] & ~x[6] & ~x[5] & ~x[4] &  x[3]) |
  (~x[7] & ~x[6] & ~x[5] & ~x[4] & ~x[3] &  x[2]) |
  (~x[7] & ~x[6] & ~x[5] & ~x[4] & ~x[3] & ~x[2] &  x[1]) |
  (~x[7] & ~x[6] & ~x[5] & ~x[4] & ~x[3] & ~x[2] & ~x[1] & ~x[0]);
endmodule

module e_3_11_6 (
  sign_out, exp_out, frac_out, sign1, exp1, frac1, sign2, exp2, frac2
);
output sign_out, exp_out, frac_out;
input sign1, sign2, exp1, exp2, frac1, frac2;

wire sign_out;
wire [3:0] exp_out;
wire [7:0] frac_out;
wire sign1, sign2;
wire [3:0] exp1, exp2;
wire [7:0] frac1, frac2;

wire [7:0] fracn;
wire [3:0] expn;
wire [7:0] zero_80 = 0;

// b, s, a, n
// big , small , aligned , normalized
wire signb, signs;
wire [3:0] expb, exps;
wire [7:0] fracb, fracs;

wire gt_fp13_ab;
wire [11:0] fp13_ef_a, fp13_ef_b;

assign fp13_ef_a = {exp1, frac1};
assign fp13_ef_b = {exp2, frac2};
comp_gt12 comp_gt12_e_f_ab_uut (
  .gt12 (gt_fp13_ab),
  .a (fp13_ef_a),
  .b (fp13_ef_b)
);

// larger number - b/s
m2_1 mux2_1_gt_signb (.o (signb), .d0 (sign2), .d1 (sign1), .s0 (gt_fp13_ab));
m2_1 mux2_1_gt_signs (.o (signs), .d0 (sign1), .d1 (sign2), .s0 (gt_fp13_ab));
genvar i;
generate
  for (i = 0; i < 4; i = i + 1) begin : g0_exp
    m2_1 mux2_1_gt_expb (
      .o (expb[i]), .d0 (exp2[i]), .d1 (exp1[i]), .s0 (gt_fp13_ab)
    );
    m2_1 mux2_1_gt_exps (
      .o (exps[i]), .d0 (exp1[i]), .d1 (exp2[i]), .s0 (gt_fp13_ab)
    );
  end
endgenerate
generate
  for (i = 0; i < 8; i = i + 1) begin : g0_frac
    m2_1 mux2_1_gt_fracb (
      .o (fracb[i]), .d0 (frac2[i]), .d1 (frac1[i]), .s0 (gt_fp13_ab)
    );
    m2_1 mux2_1_gt_fracs (
      .o (fracs[i]), .d0 (frac1[i]), .d1 (frac2[i]), .s0 (gt_fp13_ab)
    );
  end
endgenerate

wire [3:0] s4_exp;
subtractor_4 s4_uut (
  .y (s4_exp),
  .a (expb),
  .b (exps)
);

wire [7:0] fracs_rev;
assign fracs_rev[7] = fracs[0];
assign fracs_rev[6] = fracs[1];
assign fracs_rev[5] = fracs[2];
assign fracs_rev[4] = fracs[3];
assign fracs_rev[3] = fracs[4];
assign fracs_rev[2] = fracs[5];
assign fracs_rev[1] = fracs[6];
assign fracs_rev[0] = fracs[7];

wire [31:0] bs5_out;
wire [0:31] bs5_out_r;
wire [7:0] fraca, fraca_rev;
wire ga, ra, sa;
wire [13:0] pre_sticky;

barrel_shifter_verilog #(.n(5)) bs5_1_uut (
  .o_order     (bs5_out),
  .i_order     ({8'b0,fracs_rev,16'b0}),
  .sel_shl_shr ({1'b0,s4_exp}),
  .ml_sb_order (1'b0)
);

generate
  for (i = 0; i < 32; i = i + 1) begin : REV
    assign bs5_out_r[i] = bs5_out[31 - i];
  end
endgenerate

//assign fraca = bs5_out[24:31];
//assign ga = bs5_out[23];
//assign ra = bs5_out[22];
//assign pre_sticky = bs5_out[8:21];
assign fraca_rev = bs5_out_r[8:15];
assign ga = bs5_out_r[7];
assign ra = bs5_out_r[6];
assign pre_sticky = bs5_out_r[0:5];

assign fraca[7] = fraca_rev[0];
assign fraca[6] = fraca_rev[1];
assign fraca[5] = fraca_rev[2];
assign fraca[4] = fraca_rev[3];
assign fraca[3] = fraca_rev[4];
assign fraca[2] = fraca_rev[5];
assign fraca[1] = fraca_rev[6];
assign fraca[0] = fraca_rev[7];

assign sa = |pre_sticky;

wire sign_bs;
wire gn, rn, sn;

assign sign_bs = ~(signb ^ signs);

wire [8:0] sum_p, sum_n;
wire gs_p, rs_p, ss_p;
wire gs_n, rs_n, ss_n;

wire [8:0] sum;
wire gs, rs, ss;

adder_12 adder_12_uut (
  .y ({sum_p, gs_p, rs_p, ss_p}),
  .a ({1'b0, fracb, 3'b0}),
  .b ({1'b0, fraca, ga, ra, sa})
);

subtractor_12 subtractor_12_uut (
  .y ({sum_n, gs_n, rs_n, ss_n}),
  .a ({1'b0, fracb, 3'b0}),
  .b ({1'b0, fracb, ga, ra, sa})
);

generate
  for (i = 0; i < 9; i = i + 1) begin : g0_sum
    m2_1 mux2_1_sum (
      .o (sum[i]), .d0 (sum_n[i]), .d1 (sum_p[i]), .s0 (sign_bs)
    );
  end
endgenerate

m2_1 mux2_1_gs (
  .o (gs), .d0 (gs_p), .d1 (gs_n), .s0 (sign_bs)
);

m2_1 mux2_1_rs (
  .o (rs), .d0 (rs_p), .d1 (rs_n), .s0 (sign_bs)
);

m2_1 mux2_1_ss (
  .o (ss), .d0 (ss_p), .d1 (ss_n), .s0 (sign_bs)
);

wire [8:0] sum_rev;

assign sum_rev[7] = sum[0];
assign sum_rev[6] = sum[1];
assign sum_rev[5] = sum[2];
assign sum_rev[4] = sum[3];
assign sum_rev[3] = sum[4];
assign sum_rev[2] = sum[5];
assign sum_rev[1] = sum[6];
assign sum_rev[0] = sum[7];

wire [2:0] lead0;
//prio_enc_8_3_reverse pe83_r (.y (lead0), .x (sum_rev[7:0]));
prio_enc_8_3_reverse pe83_r (.y (lead0), .x (sum[7:0]));

wire [15:0] bs4_out;

barrel_shifter_verilog #(.n(4)) bs4_1_uut (
  .o_order     (bs4_out),
  .i_order     ({4'b0,sum,gs,rs,ss}),
  .sel_shl_shr ({1'b0,lead0}),
  .ml_sb_order (1'b0)
);

wire [7:0] sum_norm;

wire gn_1, rn_1, sn_1;
assign sum_norm = bs4_out[10:3];
assign gn_1 = bs4_out[2];
assign rn_1 = bs4_out[1];
assign sn_1 = bs4_out[0];

wire gt_lead0_expb;
comp_gt4 gt_lead0_expb_uut (
  .gt4 (gt_lead0_expb),
  .a   ({1'b0,lead0}),
  .b   (expb)
);

wire last_pe42 = ~sum[8] & ~gt_lead0_expb;
wire [1:0] mux41_select;
prio_enc_4_2 pe42 (
  .y1 (mux41_select[1]),
  .y0 (mux41_select[0]),
  .x3 (last_pe42    ),
  .x2 (gt_lead0_expb),
  .x1 (sum[8]       ),
  .x0 (1'b0         )
);

wire [3:0] ar4_expn;
adder_4 ar4_expb_1 (
  .y (ar4_expn),
  .ci (1'b0),
  .a (expb),
  .b (4'b1)
);

wire [3:0] st4_expn;
subtractor_4 st4_expb_1 (
  .y (st4_expn),
  .a (expb),
  .b ({1'b0,lead0})
);

wire [7:0] mux41_fracn_sum;
assign mux41_fracn_sum[7] = sum[8];
assign mux41_fracn_sum[6] = sum[7];
assign mux41_fracn_sum[5] = sum[6];
assign mux41_fracn_sum[4] = sum[5];
assign mux41_fracn_sum[3] = sum[4];
assign mux41_fracn_sum[2] = sum[3];
assign mux41_fracn_sum[1] = sum[2];
assign mux41_fracn_sum[0] = sum[1];

generate
  for (i = 0; i < 8; i = i + 1) begin : g0_fracn
    mux41 mux41_fracn (
      .y  (fracn[i]),
      .s1 (mux41_select[1]),
      .s0 (mux41_select[0]),
      .i3 (sum_norm[i]),
      .i2 (mux41_fracn_sum[i]),
      .i1 (zero_80[i]),
      .i0 (zero_80[i])
    );
  end
endgenerate

wire zero_0 = 0;

wire [3:0] zero_40 = 0;

generate
  for (i = 0; i < 4; i = i + 1) begin : g0_expn
    mux41 mux41_expn (
      .y  (expn[i]),
      .s1 (mux41_select[1]),
      .s0 (mux41_select[0]),
      .i3 (st4_expn[i]),
      .i2 (ar4_expn[i]),
      .i1 (zero_40[i]),
      .i0 (zero_40[i])
    );
  end
endgenerate

mux41 mux41_gn (
  .y  (gn),
  .s1 (mux41_select[1]),
  .s0 (mux41_select[0]),
  .i3 (gn),
  .i2 (sum[0]),
  .i1 (gn),
  .i0 (zero_0)
);

mux41 mux41_rn (
  .y  (rn),
  .s1 (mux41_select[1]),
  .s0 (mux41_select[0]),
  .i3 (rn),
  .i2 (gn),
  .i1 (rn),
  .i0 (zero_0)
);

mux41 mux41_sn (
  .y  (sn),
  .s1 (mux41_select[1]),
  .s0 (mux41_select[0]),
  .i3 (rn),
  .i2 (sn | rn),
  .i1 (rn),
  .i0 (zero_0)
);

wire [7:0] ar4_fracn_p1;
adder_8 ar4_fracn_1 (
  .y (ar4_fracn_p1),
  .a (fracn),
  .b (8'b00000001)
);

wire mux2_1_gn_1_fracn_p1;
assign mux2_1_gn_1_fracn_p1 = ~rn & ~sn & fracn[0];

wire [7:0] fracn_p1_out_1;
generate
  for (i = 0; i < 8; i = i + 1) begin : g0_fracn_p1
    m2_1 mux21_fracn_p1 (
      .o  (fracn_p1_out_1[i]),
      .d1 (ar4_fracn_p1[i]),
      .d0 (fracn[i]),
      .s0 (mux2_1_gn_1_fracn_p1)
    );
  end
endgenerate

wire [7:0] fracn_p1_out;
generate
  for (i = 0; i < 8; i = i + 1) begin : g0_gn_fracn_p1
    m2_1 mux21_fracn_p1 (
      .o  (fracn_p1_out[i]),
      .d1 (fracn_p1_out_1[i]),
      .d0 (fracn[i]),
      .s0 (gn)
    );
  end
endgenerate

assign sign_out = signb;
assign exp_out = expn;
assign frac_out = fracn_p1_out;

endmodule
