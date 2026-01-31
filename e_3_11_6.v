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

module e_3_11_6 (
  sign_out, exp_out, frac_out, sign1, exp1, frac1, sign2, exp2, frac2
);
output sign_out, exp_out, frac_out;
input sign1, sign2, exp1, exp2, frac1, frac2;

reg sign_out;
reg [3:0] exp_out;
reg [7:0] frac_out;
wire sign1, sign2;
wire [3:0] exp1, exp2;
wire [7:0] frac1, frac2;
 
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
m2_1 mux2_1_gt_signb (.o (signb), .d0 (sign1), .d1 (sign2), .s0 (gt_fp13_ab));
m2_1 mux2_1_gt_signs (.o (signs), .d0 (sign2), .d1 (sign1), .s0 (gt_fp13_ab));
genvar i;
generate
  for (i = 0; i < 4; i = i + 1) begin : g0_exp
    m2_1 mux2_1_gt_expb (
      .o (expb[i]), .d0 (exp1[i]), .d1 (exp2[i]), .s0 (gt_fp13_ab)
    );
    m2_1 mux2_1_gt_exps (
      .o (exps[i]), .d0 (exp2[i]), .d1 (exp1[i]), .s0 (gt_fp13_ab)
    );
  end
endgenerate
generate
  for (i = 0; i < 8; i = i + 1) begin : g0_frac
    m2_1 mux2_1_gt_fracb (
      .o (fracb[i]), .d0 (frac1[i]), .d1 (frac2[i]), .s0 (gt_fp13_ab)
    );
    m2_1 mux2_1_gt_fracs (
      .o (fracs[i]), .d0 (frac2[i]), .d1 (frac1[i]), .s0 (gt_fp13_ab)
    );
  end
endgenerate

wire [3:0] s4_exp;
subtractor_4 s4_uut (
  .y (s4_exp),
  .a (expb),
  .b (exps)
);

wire [0:31] bs5_out;
wire [7:0] fraca;
wire ga, ra, sa;
wire [13:0] pre_sticky;
 
barrel_shifter_verilog #(.n(5)) uut (
  .o_order     (bs5_out),
  .i_order     ({24'b0,fracs}),
  .sel_shl_shr ({1'b0,s4_exp}),
  .ml_sb_order (1'b1)
);

//assign fraca = bs5_out[16:23];
//assign ga = bs5_out[15];
//assign ra = bs5_out[14];
//assign pre_sticky = bs5_out[0:13];
assign fraca = bs5_out[0:7];
assign ga = bs5_out[8];
assign ra = bs5_out[9];
assign pre_sticky = bs5_out[10:23];
assign sa = |pre_sticky;

wire sign_bs;

assign sign_bs = signb & signs;

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
endgenerate;

m2_1 mux2_1_gs (
  .o (gs), .d0 (gs_n), .d1 (gs_p), .s0 (sign_bs)
);

m2_1 mux2_1_rs (
  .o (rs), .d0 (rs_n), .d1 (rs_p), .s0 (sign_bs)
);

m2_1 mux2_1_ss (
  .o (ss), .d0 (ss_n), .d1 (ss_p), .s0 (sign_bs)
);

endmodule
