`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     22:07:48 02/16/2026
// Design Name:     -
// Module Name:     e_4_7_5
// Project Name:    -
// Target Devices:  -
// Tool versions:   -
// Description:     Rotating LED banner circuit
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
///////////////////////////////////////////////////////////////////////////////
module m21_4 (o, d1, d0, s0);
  output o;
  input d1, d0, s0;

  wire [3:0] o, d1, d0;
  wire s0;

  genvar i;

  generate
    for (i = 0; i < 4; i = i + 1) begin : g0_mux2
      m2_1 mux2_4 (
        .o  ( o[i]),
        .d1 (d1[i]),
        .d0 (d0[i]),
        .s0 (   s0)
      );
    end
  endgenerate
endmodule

module lcd7_segment_decoder (y, x);
  output y;
  input x;

  wire [6:0] y;
  wire [3:0] x;

  // POS - AND, OR, NOT
  assign y[0] = // OR
                ( ~x[2]  &  ~x[1]  & (x[3]  | ~x[0]) )|
                ( ~x[3]  &   x[2]  & ~x[1]  &  x[0]  )|
                ( ~x[3]  &   x[1]                    );
  assign y[1] = // OR, XNOR
                ( ~x[3]  & (~x[2]  | (x[1] ~^  x[0])))|
                (  x[3]  &  ~x[2]  & ~x[1]           )|
                ( ~x[2]  &  ~x[1]                    );
  assign y[2] = // OR
                ( ~x[3]  &  (x[2]  | ~x[1]  |  x[0]) )|
                ( ~x[2]  &  ~x[1]                    );
  assign y[3] = // OR
                ( ~x[3]  &   x[2]  & ~x[1]  &  x[0]  )|
                ( ~x[3]  &  ~x[2]  & (x[1]  | ~x[0]) )|
                ( ~x[2]  &  ~x[1]  & ~x[0]           )|
                ( ~x[3]  &   x[1]  & ~x[0]           );
  assign y[4] = // OR
                ( ~x[3]  & (~x[2]  |  x[1]) & ~x[0]  )|
                ( ~x[2]  &  ~x[1]  & ~x[0]           );
  assign y[5] = // OR, XOR
                ((~x[3]  |  ~x[2]) & ~x[1]  & ~x[0]  )|
                ( (x[3]  ^   x[2]) & ~x[1]           )|
                ( ~x[3]  &   x[2]  & ~x[0]           )|
                ( ~x[2]  &  ~x[1]  & ~x[0]           );
  assign y[6] = // XOR
                ( ~x[3]  &   x[2]  &  x[1]  & ~x[0]  )|
                (  x[3]  &  ~x[2]  & ~x[1]           )|
                ( ~x[3]  &  (x[2]  ^  x[1])          );
endmodule

module e_4_7_5 (segment, anode, clock, reset, en, dir);
output segment, anode;
input clock, reset, en, dir;

wire [6:0] segment;
wire [3:0] anode;
wire clock, reset, en, dir;

genvar i;

//wire [6:0] segment_0;
//generate
//  for (i = 0; i < 7; i = i + 1) begin : g0_gnd_segment
//    GND gnd_segment_uut (.G (segment_0[i]));
//  end
//endgenerate

wire shot_one;
wire cr4_reset, cr4_reset_fdce;
wire [10:1] ff_chain;
wire [3:0] cr4_ff_chain;

wire [4*9-1:0] mux2_chain;
wire [3:0] mux2_vars [0:10];
wire [3:0] mux2_chain_out;

assign cr4_reset = // reset when 10 tick
   cr4_ff_chain[3] &
  ~cr4_ff_chain[2] &
   cr4_ff_chain[1] &
  ~cr4_ff_chain[0];

assign shot_one = cr4_reset_fdce;

assign mux2_vars[0] = 4'b0000;
assign mux2_vars[1] = 4'b0001;
assign mux2_vars[2] = 4'b0010;
assign mux2_vars[3] = 4'b0011;
assign mux2_vars[4] = 4'b0100;
assign mux2_vars[5] = 4'b0101;
assign mux2_vars[6] = 4'b0110;
assign mux2_vars[7] = 4'b0111;
assign mux2_vars[8] = 4'b1000;
assign mux2_vars[9] = 4'b1001;
assign mux2_vars[10] = 4'b1010; // 10 redundant

generate
  for (i = 1; i < 11; i = i + 1) begin : g1_mux2_chain
    if (i == 1) begin : g1_mux2_1
      m21_4 g1_m21_1 (
        .o  (mux2_chain [(i-1)*4+:4]),
        .d1 (mux2_vars  [1]         ),
        .d0 (mux2_vars  [0]         ),
        .s0 (ff_chain   [i]         )
      );
    end
    else if (i == 10) begin : g1_mux2_10
      m21_4 g1_m21_10 (
        .o  (mux2_chain_out         ),
        .d1 (mux2_vars  [0]         ),
        .d0 (mux2_chain [(i-2)*4+:4]),
        .s0 (ff_chain   [i]         )
      );
    end
    else if (i > 1 && i < 10) begin : g1_mux2_2_9
      m21_4 g1_m21_rest (
        .o  (mux2_chain [(i-1)*4+:4]),
        .d1 (mux2_vars  [i]         ),
        .d0 (mux2_chain [(i-2)*4+:4]),
        .s0 (ff_chain   [i]         )
      );
    end
  end
endgenerate

wire clock_n;
assign clock_n = ~clock;

counter_4_seq cr4_ff_chain_uut (
  .counter_out (cr4_ff_chain          ),
  .clock       (clock_n               ),
  .reset       (reset | cr4_reset_fdce),
  .enable      (en                    )
);

// FDCE: Single Data Rate D Flip-Flop with Asynchronous Clear and
//       Clock Enable (posedge clk).
//       All families.
// Xilinx HDL Libraries Guide, version 10.1.2
FDCE_1 #(.INIT(1'b0)) FDCE_cr4_reset (
  .Q   (cr4_reset_fdce), // Data output
  .C   (       clock_n), // Clock input
  .CE  (            en), // Clock enable input
  .CLR (         reset), // Asynchronous clear input
  .D   (     cr4_reset)  // Data input
);
// End of FDCE_inst instantiation

generate
  for (i = 1; i < 11; i = i + 1) begin : g0_ff_chain_0_9
    if (i == 1) begin : g0_ff_0
      // FDCE: Single Data Rate D Flip-Flop with Asynchronous Clear and
      //       Clock Enable (posedge clk).
      //       All families.
      // Xilinx HDL Libraries Guide, version 10.1.2
      FDCE #(.INIT(1'b0)) FDCE_ff_chain (
      .Q   (ff_chain[i]), // Data output
      .C   (      clock), // Clock input
      .CE  (         en), // Clock enable input
      .CLR (      reset), // Asynchronous clear input
      .D   (   shot_one)  // Data input
      );
      // End of FDCE_inst instantiation
    end
    else begin : g0_ff_1_9
      // FDCE: Single Data Rate D Flip-Flop with Asynchronous Clear and
      //       Clock Enable (posedge clk).
      //       All families.
      // Xilinx HDL Libraries Guide, version 10.1.2
      FDCE #(.INIT(1'b0)) FDCE_ff_chain_1_9 (
        .Q   (  ff_chain[i]), // Data output
        .C   (        clock), // Clock input
        .CE  (           en), // Clock enable input
        .CLR (        reset), // Asynchronous clear input
        .D   (ff_chain[i-1])  // Data input
      );
      // End of FDCE_inst instantiation
    end
  end
endgenerate

endmodule
