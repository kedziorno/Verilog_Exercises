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

wire s8_s = s8[7];
wire [6:0] s8_m = s8[6:0];

localparam bias = 4'd8;

wire [2:0] fp_e;
prio_enc_8_3 pe83 (.y (fp_e), .x ({1'b0,s8_m}));

wire [3:0] lead;
subtractor_4 s4 (.y (lead), .a (bias), .b ({1'b0,fp_e}));

wire [7:0] fp_f;

barrel_shifter_verilog #(.n (3)) bs3 (
.o_order(fp_f), .i_order({1'b0,s8_m}), .sel_shl_shr(lead[2:0]), .ml_sb_order(1'b1)
);

assign fp13[12] = s8_s;
assign fp13[11:8] = fp_e;
assign fp13[7:0] = fp_f[7:0];

endmodule

// s8 -> fp13
module e_3_11_5_5 (s8, fp13);
output s8;
input fp13;
wire [7:0] s8;
wire [12:0] fp13;

endmodule
