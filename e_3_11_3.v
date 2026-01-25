`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     20:41:16 01/23/2026
// Design Name:     pong_p_chu
// Module Name:     e_3_11_3
// Project Name:    bcd_incrementer_1_logic_expression
// Target Devices:  -
// Tool versions:   -
// Description:     BCD code incrementator by 1 - combinatorial logic expression
//
// Dependencies: -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
//////////////////////////////////////////////////////////////////////////////////
module bcd_incrementer_1_logic_expression (out, overflow, in, en);
output [3:0] out;
output overflow;
input [3:0] in;
input en;

wire overflow;
wire overflow_1;
wire en;
wire [3:0] out1;

wire a, b, c, d;
assign a = in[3];
assign b = in[2];
assign c = in[1];
assign d = in[0];

wire nine;
wire zero;

// output BCD must be enabled
assign out1[3] = (      b &  c &  d) |
                 ( a &           ~d)  ; //f = b*c*d + a*d'
assign out1[2] = (      b & ~c     ) |
                 (      b &      ~d) |
                 (     ~b &  c &  d)  ; //f = b*c' + b*d' + b'*c*d
assign out1[1] = (~a &      ~c &  d) |
                 (           c & ~d)  ; //f = a'*c'*d + c*d'
assign out1[0] = (               ~d)  ; //f = c'*d' + c*d' = d'*(c'+c) = d'
assign out     = en ? out1 : {a, b, c, d};

// output overflow must be enabled
assign zero       = (~a & ~b & ~c & ~d) & en; //f = a'*b'*c'*d'
assign overflow_1 = en ? zero : 0'b0;

assign nine = (a & ~b & ~c & d) & en; // used as PRESET in LDCPE

// LDCPE: Transparent latch with Asynchronous Reset, Preset and
// Gate Enable.
// All families.
// Xilinx HDL Libraries Guide, version 10.1.2
LDCPE #(
.INIT(1'b0) // Initial value of latch (1'b0 or 1'b1)
) LDCPE_inst (
.Q   (overflow  ), // Data output
.CLR (overflow_1), // Asynchronous clear/reset input
.D   (1'b0      ), // Data input
.G   (1'b1      ), // Gate input
.GE  (1'b1      ), // Gate enable input
.PRE (nine      )  // Asynchronous preset/set input
);
// End of LDCPE_inst instantiation

endmodule

module e_3_11_3 (out, overflow, in, en);
output out;
output overflow;
input in;
input en;

wire [11:0] out;
wire overflow;
wire [11:0] in;
wire en;

wire ovf1, ovf2;

wire [3:0] bcd_in_100, bcd_in_10, bcd_in_1;
wire [3:0] bcd_out_100, bcd_out_10, bcd_out_1;

assign bcd_in_100 = in[11:8];
assign bcd_in_10  = in[ 7:4];
assign bcd_in_1   = in[ 3:0];

bcd_incrementer_1_logic_expression uut_100 ( .out (bcd_out_100) , .overflow (overflow) , .in (bcd_in_100) , .en (ovf2) );
bcd_incrementer_1_logic_expression uut_10  ( .out (bcd_out_10 ) , .overflow (ovf2    ) , .in (bcd_in_10 ) , .en (ovf1) );
bcd_incrementer_1_logic_expression uut_1   ( .out (bcd_out_1  ) , .overflow (ovf1    ) , .in (bcd_in_1  ) , .en (en  ) );

assign out[11:8] = bcd_out_100;
assign out[ 7:4] = bcd_out_10;
assign out[ 3:0] = bcd_out_1;

endmodule
