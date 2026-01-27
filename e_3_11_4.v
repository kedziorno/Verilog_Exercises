`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     15:25:52 01/26/2026
// Design Name:     pong_p_chu
// Module Name:     e_3_11_4
// Project Name:    -
// Target Devices:  -
// Tool versions:   -
// Description:     Greater than simple floating-point comparator
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
//////////////////////////////////////////////////////////////////////////////////

// greater than 8-bit comparator
module comp_gt8 (gt8, a, b);
output gt8;
input a, b;

wire gt8;
wire [7:0] a, b;

wire gt4_1, gt4_2;
wire eq2_1, eq2_2, eq_4;

e_2_9_1_4 comp_gt4_uut_1 (.gt4 (gt4_1), .a (a[7:4]), .b (b[7:4])); // compare GT A/B 7-4
e_2_9_1_4 comp_gt4_uut_2 (.gt4 (gt4_2), .a (a[3:0]), .b (b[3:0])); // compare GT A/B 3-0

eq2_structural_primitive comp_eq2_uut_1 (.eq2 (eq2_1), .a (a[7:6]), .b (b[7:6])); // MSB nibble A/B is EQ 7-6
eq2_structural_primitive comp_eq2_uut_2 (.eq2 (eq2_2), .a (a[5:4]), .b (b[5:4])); // MSB nibble A/B is EQ 5-4

assign eq_4 = eq2_1 & eq2_2; // first half nibble A/B is equal ?

assign gt8 = ~(~(gt4_2 & eq_4) & ~gt4_1); // if/else-if ladder and gt8 output signal

endmodule

module e_3_11_4 (gt, a, b);
output gt;
input a, b;

wire gt;
wire [12:0] a, b;

wire        sign_a , sign_b ;
wire [3:0]  exp_a  , exp_b  ;
wire [7:0]  frac_a , frac_b ;

wire gt_exp                                     ; // exponent A > B
wire gt_exp_1                                   ; // exponent B > A
wire gt_frac                                    ; // fraction A > B
wire gt_frac_1                                  ; // fraction B > A
wire exp_eq1, exp_eq2, exp_eq                   ; // exponent A = B
wire gt_mux4_a, gt_mux4_b, gt_mux4_c, gt_mux4_d ; // gt signal output - multiplexer 4-1
wire gt1, gt2, gt3, gt4                         ; // mux 4-1 output a,b,c,d

assign sign_a = a[12]   ; // 1-bit sign     A
assign exp_a  = a[11:8] ; // 4-bit exponent A
assign frac_a = a[7:0]  ; // 8-bit fraction A
assign sign_b = b[12]   ; // 1-bit sign     B
assign exp_b  = b[11:8] ; // 4-bit exponent B
assign frac_b = b[7:0]  ; // 8-bit fraction B

// exponent GT
e_2_9_1_4 gt_exp_ab_uut   ( .gt4 (gt_exp)    , .a (exp_a)  , .b (exp_b)  ) ; // A > B
e_2_9_1_4 gt_exp_ab_uut_1 ( .gt4 (gt_exp_1)  , .a (exp_b)  , .b (exp_a)  ) ; // B > A

// fraction GT
comp_gt8 gt_frac_ab_uut   ( .gt8 (gt_frac)   , .a (frac_a) , .b (frac_b) ) ; // A > B
comp_gt8 gt_frac_ab_uut_1 ( .gt8 (gt_frac_1) , .a (frac_b) , .b (frac_a) ) ; // B > A

// exponent EQ
eq2_structural_primitive exp_eq_uut_1 ( .eq2 (exp_eq1), .a (exp_a[3:2]), .b (exp_b[3:2]) ) ; // A > B 3,2
eq2_structural_primitive exp_eq_uut_2 ( .eq2 (exp_eq2), .a (exp_a[1:0]), .b (exp_b[1:0]) ) ; // A > B 1,0
assign exp_eq = exp_eq1 & exp_eq2;

// multiplexer 4-1 for all A,B sign cases
assign gt_mux4_a  = 1'b1                            ; // A/B +/-
assign gt_mux4_b  = gt_exp   | (exp_eq & gt_frac  ) ; // A/B +/+ and if/else-if ladder A > B
assign gt_mux4_c  = gt_exp_1 | (exp_eq & gt_frac_1) ; // A/B -/- and if/else-if ladder B > A
assign gt_mux4_d  = 1'b0                            ; // A/B -/+
assign gt1        = ~sign_a &  sign_b & gt_mux4_a   ; // mux 4-1 a +/-
assign gt2        = ~sign_a & ~sign_b & gt_mux4_b   ; // mux 4-1 b +/+
assign gt3        =  sign_a &  sign_b & gt_mux4_c   ; // mux 4-1 c -/-
assign gt4        =  sign_a & ~sign_b & gt_mux4_d   ; // mux 4-1 d -/+
assign gt = gt1 | gt2 | gt3 | gt4                   ; // output FP 13-bit greater than

endmodule
