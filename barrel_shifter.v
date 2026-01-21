`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     18:24:20 01/20/2026
// Design Name:     pong_p_chu
// Module Name:     barrel_shifter maked generate's (n-bit)
// Project Name:    3_11_1_1
// Target Devices:  Synthesizable code (n=3)
// Tool versions:   ISE 14.7
// Description:     Barrel shifter n-bit used generate's
//                  Example based on link:
//                  https://tams.informatik.uni-hamburg.de/applets/hades/webdemos/10-gates/60-barrel/shifter8.html
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
//////////////////////////////////////////////////////////////////////////////////
module barrel_shifter_verilog
#(parameter n = 3)
(o_order, i_order, sel_shl_shr, ml_sb_order);

output  [(2 ** n) - 1 : 0]  o_order;
input   [(2 ** n) - 1 : 0]  i_order;
input   [n - 1 : 0]       sel_shl_shr;
input                     ml_sb_order;

wire  [(2 ** n) - 1 : 0]  o_order;
wire  [(2 ** n) - 1 : 0]  i_order;
wire  [n - 1 : 0]       sel_shl_shr;
wire                    ml_sb_order;

wire [(2 ** n) - 1 : 0] msb_order [0 : n - 1];
wire [(2 ** n) - 1 : 0] lsb_order [0 : n - 1];

genvar i, j, k, l;

generate
  for (i = 0; i < n; i = i + 1) begin : g0
    if (i == 0) begin
      for (j = 0; j < (2 ** n); j = j + 1) begin : g1
        if (j == 0) begin
          m2_1 m2_1_msb (.s0 (sel_shl_shr [i]), .d1 (1'b0),            .d0 (i_order [j]), .o (lsb_order [i][j]));
          m2_1 m2_1_lsb (.s0 (sel_shl_shr [i]), .d0 (1'b0),            .d1 (i_order [j]), .o (msb_order [i][j]));
        end else begin
          m2_1 m2_1_msb (.s0 (sel_shl_shr [i]), .d1 (i_order [j - 1]), .d0 (i_order [j]), .o (lsb_order [i][j]));
          m2_1 m2_1_lsb (.s0 (sel_shl_shr [i]), .d0 (i_order [j - 1]), .d1 (i_order [j]), .o (msb_order [i][j]));
        end
      end
    end else begin
      for (k = 0; k < (2 ** i); k = k + 1) begin : g2
        m2_1 m2_1_msb (.s0 (sel_shl_shr [i]), .d1 (1'b0),                            .d0 (lsb_order [i - 1][k]), .o (lsb_order [i][k]));
        m2_1 m2_1_lsb (.s0 (sel_shl_shr [i]), .d0 (1'b0),                            .d1 (msb_order [i - 1][k]), .o (msb_order [i][k]));
      end
      for (l = (2 ** i); l < (2 ** n); l = l + 1) begin : g3
        m2_1 m2_1_msb (.s0 (sel_shl_shr [i]), .d1 (lsb_order [i - 1][l - (2 ** i)]), .d0 (lsb_order [i - 1][l]), .o (lsb_order [i][l]));
        m2_1 m2_1_lsb (.s0 (sel_shl_shr [i]), .d0 (msb_order [i - 1][l - (2 ** i)]), .d1 (msb_order [i - 1][l]), .o (msb_order [i][l]));
      end
    end
  end
endgenerate

assign o_order = ml_sb_order == 1'b1 ? msb_order [n - 1] : lsb_order [n - 1];

endmodule
