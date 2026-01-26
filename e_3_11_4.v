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
module comp_gt8 (gt8, a, b);
output gt8;
input a, b;

wire gt8;
wire [7:0] a, b;

wire gt4_1, gt4_2;
e_2_9_1_4 comp_gt4_uut_1 (.gt4 (gt4_1), .a (a[7:4]), .b (b[7:4]));
e_2_9_1_4 comp_gt4_uut_2 (.gt4 (gt4_2), .a (a[3:0]), .b (b[3:0]));

wire eq2_1, eq2_2, eq_4;
eq2_structural_primitive comp_eq2_uut_1 (.eq2 (eq2_1), .a (a[7:6]), .b (b[7:6]));
eq2_structural_primitive comp_eq2_uut_2 (.eq2 (eq2_2), .a (a[5:4]), .b (b[5:4]));

assign eq_4 = eq2_1 & eq2_2;

assign gt8 = ~(~(gt4_2 & eq_4) & ~gt4_1);

endmodule

module e_3_11_4 (gt, a, b);
output gt;
input a, b;

reg gt;
wire [12:0] a, b;

wire sign_a, sign_b;
wire [3:0] exp_a, exp_b;
wire [7:0] frac_a, frac_b;

assign sign_a = a[12];
assign exp_a = a[11:8];
assign frac_a = a[7:0];

assign sign_b = b[12];
assign exp_b = b[11:8];
assign frac_b = b[7:0];

wire gt_sign;
wire gt_sign_1;
wire gt_exp;
wire gt_exp_1;
wire gt_frac;
wire gt_frac_1;
wire m2_sign_o;
wire m2_exp_o;
wire m2_frac_o;
wire eq_sign;

and gt_sign_ab_uut (gt_sign, ~sign_a, sign_b);
and eq_sign_ab_uut (eq_sign, sign_a, sign_b);
e_2_9_1_4 gt_exp_ab_uut (.gt4 (gt_exp), .a (exp_a), .b (exp_b));
comp_gt8 gt_frac_ab_uut (.gt8 (gt_frac), .a (frac_a), .b (frac_b));

and gt_sign_ab_uut_1 (gt_sign_1, ~sign_a, sign_b);
e_2_9_1_4 gt_exp_ab_uut_1 (.gt4 (gt_exp_1), .a (exp_b), .b (exp_a));
comp_gt8 gt_frac_ab_uut_1 (.gt8 (gt_frac_1), .a (frac_b), .b (frac_a));

m2_1 m2_1_frac (.s0 (gt_frac), .d1 (1'b1), .d0 (1'b0), .o (m2_frac_o));
m2_1 m2_1_exp (.s0 (m2_frac_o), .d1 (1'b0), .d0 (gt_exp), .o (m2_exp_o));
m2_1 m2_1_sign (.s0 (gt_sign), .d1 (m2_exp_o), .d0 (1'b1), .o (m2_sign_o));

//assign gt = m2_sign_o;
always @(*) begin
  gt = 1'b0;
  if (gt_sign) gt = 1'b1;
  else begin
    if (eq_sign) begin
      if (gt_frac) gt = 1'b1;
      else if (gt_exp) gt = 1'b1;
      else gt = 1'b0;
    end else
      gt = 1'b0;
  end
end

//gt
//111 1
//110 1
//101 1
//100 1
//011 1
//010 1
//001 1
//000 0

//always @(*) begin
//  gt = 1'b0;
//  if (gt_exp || gt_frac) gt = 1'b1;
//end

//always @(*) begin
//  gt = 1'b0;
//  if (gt_sign == 0)
//    begin
//    if (gt_exp_1) gt = 1'b1;
//    else if (gt_frac_1) gt = 1'b1;
////      if (gt_exp) gt = 1'b1;
////      else if (gt_frac) gt = 1'b1;
//  //    else gt = 1'b0;
//    
//end else 
//  begin
//    if (gt_exp) gt = 1'b1;
//    else if (gt_frac) gt = 1'b1;
////    else gt = 1'b1;
//  end
//end

//assign gt = gt_sign | (~gt_sign & gt_exp) | (~gt_sign & ~gt_exp & gt_frac);
//assign gt = gt_sign | gt_exp | gt_frac;

//always @(*) begin
//  gt = 1'b0;
//  case ({gt_sign,gt_exp,gt_frac})
//    3'b000 : gt = 1'b0;
//    3'b001 : gt = 1'b1;
//    3'b010 : gt = 1'b1;
//    3'b011 : gt = 1'b1;
//    3'b100 : gt = 1'b1;
//    3'b101 : gt = 1'b1;
//    3'b110 : gt = 1'b1;
//    3'b111 : gt = 1'b1;
//    default : gt = 1'b0;
//  endcase
//end

//always @(*) begin
//  gt = 1'b0;
//  casex ({gt_sign,gt_exp,gt_frac})
//    3'b000 : gt = 1'b0;
//    3'b1?? : gt = 1'b1;
//    3'b?1? : gt = 1'b1;
//    3'b??1 : gt = 1'b1;
//    default : gt = 1'b0;
//  endcase
//end

//always @(*) begin
//  gt = 1'b0;
//  if (gt_sign) gt = 1'b1;
//  else if (gt_exp) gt = 1'b1;
//  else if (gt_frac) gt = 1'b1;
//  else gt = 1'b0;
//end

endmodule

//// https://github.com/barbedo/verilog-book.git
//module e_3_11_4_a (
//input  wire      sign1, sign2,
//input  wire[3:0] exp1,  exp2,
//input  wire[7:0] frac1, frac2,
//output reg       gt
//);
//
//// Floating point greater-than circuit
//// out == 1 when 1 > 2
//
//// body
//always @*
//begin
//    // sort input with greatest absolute value
//    if ({exp1, frac1} == {exp2, frac2}) gt = 1'b0;
//    else if ({exp1, frac1} > {exp2, frac2})
//        begin
//            if ((sign1 == 1'b0 && sign2 == 1'b0)
//                 || (sign1 == 1'b0 && sign2 == 1'b1)) gt = 1'b1;
//            else gt = 1'b0;
//        end
//    else
//        begin
//            if ((sign1 == 1'b1 && sign2 == 1'b1)
//                 || (sign1 == 1'b0 && sign2 == 1'b1)) gt = 1'b1;
//            else gt = 1'b0;
//        end
//end
//
//endmodule
//
//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Module Name: float_gt
//// Description: Floating-point greater-than comparator
////////////////////////////////////////////////////////////////////////////////////
//
//// https://github.com/vartexdev/fpga-verilog-projects.git
//module e_3_11_4_b (
//input wire [12:0] a,   // floating-point number a
//input wire [12:0] b,   // floating-point number b
//output reg gt          // a > b ?
//);
//
//wire sign_a, sign_b;
//wire [3:0] exp_a, exp_b;
//wire [7:0] frac_a, frac_b;
//
//// Extract fields
//assign sign_a = a[12];
//assign exp_a = a[11:8];
//assign frac_a = a[7:0];
//
//assign sign_b = b[12];
//assign exp_b = b[11:8];
//assign frac_b = b[7:0];
//
//always @* begin
//    // Different signs
//    if (sign_a != sign_b) begin
//        gt = (sign_a == 0) ? 1'b1 : 1'b0;
//    end
//    else begin
//        // Both positive
//        if (sign_a == 0) begin
//            if (exp_a > exp_b) gt = 1'b1;
//            else if (exp_a < exp_b) gt = 1'b0;
//            else gt = (frac_a > frac_b) ? 1'b1 : 1'b0;
//        end
//        // Both negative
//        else begin
//            if (exp_a < exp_b) gt = 1'b1;
//            else if (exp_a > exp_b) gt = 1'b0;
//            else gt = (frac_a < frac_b) ? 1'b1 : 1'b0;
//        end
//    end
//end
//
//endmodule
