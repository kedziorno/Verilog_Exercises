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
// Description:     Rotating LED banner circuit (0/0x3f appear is twice)
//                  with en and dir signals.
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Logic experssions.
//
///////////////////////////////////////////////////////////////////////////////
module fdce_4 (q, c, ce, clr, d);
  output q;
  input c, ce, clr, d;

  wire [3:0] q, d;
  wire c, ce, clr;

  genvar i;

  generate
    for (i = 0; i < 4; i = i + 1) begin : g0_reg
      // FDCE: Single Data Rate D Flip-Flop with Asynchronous Clear and
      //       Clock Enable (posedge clk).
      //       All families.
      // Xilinx HDL Libraries Guide, version 10.1.2
      FDCE #(.INIT(1'b0)) FDCE_4 (
        .Q   (q[i]), // Data output
        .C   (   c), // Clock input
        .CE  (  ce), // Clock enable input
        .CLR ( clr), // Asynchronous clear input
        .D   (d[i])  // Data input
      );
      // End of FDCE_inst instantiation
    end
  endgenerate
endmodule

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

  parameter [3:0]
  anode_0 = 4'b0111,
  anode_1 = 4'b1011,
  anode_2 = 4'b1101,
  anode_3 = 4'b1110;

  wire shot_one;
  wire cr4_reset, cr4_reset_fdce;
  wire clock_n;
  wire cr_u2_clock_divider_4_11;
  wire [1:0] cr_u2_anode;
  wire [1:0] cr_u2_clock_divider_4;
  wire [3:0] cr4_ff_chain;
  wire [3:0] mux2_chain_out, mux2_chain_out_dir1, mux2_chain_out_dir2;
  wire [3:0] anode_array [0:3];
  wire [3:0] mux2_vars [0:10];
  wire [6:0] segment_to_decode;
  wire [10:1] ff_chain;
  wire [4*9-1:0] mux2_chain_dir1, mux2_chain_dir2;
  wire [4*4-1:0] segment_out_chain;

  assign cr4_reset = // reset when 10 tick
     cr4_ff_chain[3] &
    ~cr4_ff_chain[2] &
     cr4_ff_chain[1] &
    ~cr4_ff_chain[0];
  assign cr_u2_clock_divider_4_11 = // of course _00
    ~cr_u2_clock_divider_4[1] &
    ~cr_u2_clock_divider_4[0];
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
  assign mux2_vars[10] = 4'b1010; // 10 redundant - XST Warning
  assign anode_array[0] = anode_0;
  assign anode_array[1] = anode_1;
  assign anode_array[2] = anode_2;
  assign anode_array[3] = anode_3;
  assign shot_one = cr4_reset_fdce;
  assign clock_n = ~clock;

  counter_up_2_seq cr_u2_clock_divider_4_uut (
    .counter_out (cr_u2_clock_divider_4),
    .clock       (clock      ),
    .reset       (reset      ),
    .enable      (en         )
  );

  generate
    for (i = 1; i < 11; i = i + 1) begin : g1_mux2_chain_dir1
      if (i == 1) begin : g1_mux2_1_dir1
        m21_4 g1_m21_1 (
          .o  (mux2_chain_dir1 [(i-1)*4+:4]),
          .d1 (mux2_vars       [1]         ),
          .d0 (mux2_vars       [0]         ),
          .s0 (ff_chain        [i]         )
        );
      end
      else if (i == 10) begin : g1_mux2_10_dir1
        m21_4 g1_m21_10 (
          .o  (mux2_chain_out_dir1         ),
          .d1 (mux2_vars       [0]         ),
          .d0 (mux2_chain_dir1 [(i-2)*4+:4]),
          .s0 (ff_chain        [i]         )
        );
      end
      else if (i > 1 && i < 10) begin : g1_mux2_2_9_dir1
        m21_4 g1_m21_rest (
          .o  (mux2_chain_dir1 [(i-1)*4+:4]),
          .d1 (mux2_vars       [i]         ),
          .d0 (mux2_chain_dir1 [(i-2)*4+:4]),
          .s0 (ff_chain        [i]         )
        );
      end
    end
  endgenerate

  generate
    for (i = 0; i < 11; i = i + 1) begin : g3_mux2_chain_dir2
      if (i == 1) begin : g3_mux2_10_dir2
        m21_4 g1_m21_1 (
          .o  (mux2_chain_dir2 [(i-1)*4+:4]),
          .d1 (mux2_vars       [9]         ),
          .d0 (mux2_vars       [0]         ),
          .s0 (ff_chain        [i]         )
        );
      end
      else if (i == 10) begin : g3_mux2_10_dir2
        m21_4 g1_m21_10 (
          .o  (mux2_chain_out_dir2         ),
          .d1 (mux2_vars       [0]         ),
          .d0 (mux2_chain_dir2 [(i-2)*4+:4]),
          .s0 (ff_chain        [i]         )
        );
      end
      else if (i > 1 && i < 10) begin : g3_mux2_2_9_dir2
        m21_4 g1_m21_rest (
          .o  (mux2_chain_dir2 [(i-1)*4+:4]),
          .d1 (mux2_vars       [10-i]      ),
          .d0 (mux2_chain_dir2 [(i-2)*4+:4]),
          .s0 (ff_chain        [i]         )
        );
      end
    end
  endgenerate

  m21_4 mux2_chain_out_uut (
    .o  (mux2_chain_out     ),
    .d1 (mux2_chain_out_dir2),
    .d0 (mux2_chain_out_dir1),
    .s0 (dir                )
  );

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
          .Q   (             ff_chain[i]), // Data output
          .C   (cr_u2_clock_divider_4_11), // Clock input
          .CE  (                      en), // Clock enable input
          .CLR (                   reset), // Asynchronous clear input
          .D   (                shot_one)  // Data input
        );
        // End of FDCE_inst instantiation
      end
      else begin : g0_ff_1_9
        // FDCE: Single Data Rate D Flip-Flop with Asynchronous Clear and
        //       Clock Enable (posedge clk).
        //       All families.
        // Xilinx HDL Libraries Guide, version 10.1.2
        FDCE #(.INIT(1'b0)) FDCE_ff_chain_1_9 (
          .Q   (             ff_chain[i]), // Data output
          .C   (cr_u2_clock_divider_4_11), // Clock input
          .CE  (                      en), // Clock enable input
          .CLR (                   reset), // Asynchronous clear input
          .D   (           ff_chain[i-1])  // Data input
        );
        // End of FDCE_inst instantiation
      end
    end
  endgenerate

  generate
    for (i = 0; i < 4; i = i + 1) begin : g2_segment_out_chain_reg
      if (i == 0) begin : g2_g2_segment_out_chain_reg_0
        fdce_4 segment_out_chain_reg_0_uut (
          .q   (segment_out_chain[(i-0)*4+:4]),
          .c   (     cr_u2_clock_divider_4_11),
          .ce  (                           en),
          .clr (                        reset),
          .d   (               mux2_chain_out)
        );
      end
      else if (i >= 1) begin : g2_g2_segment_out_chain_reg_rest
        fdce_4 segment_out_chain_reg_rest_uut (
          .q   (segment_out_chain[(i-0)*4+:4]),
          .c   (     cr_u2_clock_divider_4_11),
          .ce  (                           en),
          .clr (                        reset),
          .d   (segment_out_chain[(i-1)*4+:4])
        );
      end
    end
  endgenerate

  mux41_segment mux4_segment_out_uut (
    .y  (segment_to_decode        ),
    .x0 (segment_out_chain[3*4+:4]),
    .x1 (segment_out_chain[2*4+:4]),
    .x2 (segment_out_chain[1*4+:4]),
    .x3 (segment_out_chain[0*4+:4]),
    .s  (cr_u2_anode              )
  );

  lcd7_segment_decoder segment7_uut (
    .y (segment          ),
    .x (segment_to_decode)
  );

  counter_up_2_seq cr_u2_anode_uut (
    .counter_out (cr_u2_anode),
    .clock       (clock      ),
    .reset       (reset      ),
    .enable      (en         )
  );

  generate
    for (i = 0; i < 4; i = i + 1) begin : g0_mux4_anode
      mux_41 mux4_anode_uut (
        .y (      anode[i]),
        .x (anode_array[i]),
        .s (   cr_u2_anode)
      );
    end
  endgenerate
endmodule
