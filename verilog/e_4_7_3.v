`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     20:00:51 02/11/2026
// Design Name:     pong_p_chu
// Module Name:     e_4_7_3
// Project Name:    -
// Target Devices:  -
// Tool versions:   -
// Description:     Rotating square circuit
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
///////////////////////////////////////////////////////////////////////////////
module tick_4 (tick, clock, reset);
  output tick;
  input clock, reset;

  wire tick, clock, reset;

  localparam t = 4'b1111;

  reg [3:0] tick_counter;

  always @(posedge clock or posedge reset) begin
    if (reset == 1'b1)
      tick_counter <= 4'b0;
    else
      tick_counter <= tick_counter + 1;
  end

  assign tick = tick_counter == t;
endmodule

module counter_down_3 (y, x);
  output y;
  input x;

  wire [2:0] x, y;

  assign y[0] = ~x[0];
  assign y[1] = ~x[1];
  assign y[2] = ~x[2];
endmodule

module counter_up_3 (y, x);
  output y;
  input x;

  wire [2:0] x, y;

  assign y[0] = ~x[0];
  assign y[1] = x[1] ^ x[0];
  assign y[2] =
    ( x[2] & ~x[1])        |
    ( x[2] &        ~x[0]) |
    (~x[2] &  x[1] & x[0]) ;
endmodule

module mux_81 (y, x, s);
  output y;
  input x, s;

  wire y;
  wire [7:0] x;
  wire [2:0] s;

  wire [7:0] x1;

  assign x1[0] = ~s[2] & ~s[1] & ~s[0] & x[0];
  assign x1[1] = ~s[2] & ~s[1] &  s[0] & x[1];
  assign x1[2] = ~s[2] &  s[1] & ~s[0] & x[2];
  assign x1[3] = ~s[2] &  s[1] &  s[0] & x[3];
  assign x1[4] =  s[2] & ~s[1] & ~s[0] & x[4];
  assign x1[5] =  s[2] & ~s[1] &  s[0] & x[5];
  assign x1[6] =  s[2] &  s[1] & ~s[0] & x[6];
  assign x1[7] =  s[2] &  s[1] &  s[0] & x[7];

  assign y = x1[7] | x1[6] | x1[5] | x1[4] | x1[3] | x1[2] | x1[1] | x1[0];
endmodule

module mux_41 (y, x, s);
  output y;
  input x, s;

  wire y;
  wire [3:0] x;
  wire [1:0] s;

  mux41 uut (
    .y  (y),
    .s1 (s[0]),
    .s0 (s[1]),
    .i3 (x[3]),
    .i2 (x[2]),
    .i1 (x[1]),
    .i0 (x[0])
  );
endmodule

module e_4_7_3 (anode, segment, clock, reset, en, cw);
output anode, segment;
input clock, reset, en, cw;

wire [3:0] anode;
wire [6:0] segment;
wire clock, reset, en, cw;

endmodule
