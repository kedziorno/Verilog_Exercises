`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     18:48:47 02/21/2026
// Design Name:     pong_p_chu
// Module Name:     e_4_7_6
// Project Name:    -
// Target Devices:  -
// Tool versions:   -
// Description:     Enhanced stopwatch
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Logic experssions. TODO - reload register with up
//
///////////////////////////////////////////////////////////////////////////////
module counter_0_9_up_com (y, x);
  output y;
  input x;

  wire [3:0] x, y;

  assign y[0] =
    (~x[3] &         ~x[1] & ~x[0]) |
    (~x[3] &          x[1] & ~x[0]) |
    (        ~x[2] & ~x[1] & ~x[0]);
  assign y[1] =
    (~x[3] &         ~x[1] &  x[0]) |
    (~x[3] &          x[1] & ~x[0]) |
    (        ~x[2] & ~x[1] &  x[0]);
  assign y[2] =
    (~x[3] & ~x[2] &  x[1] &  x[0]) |
    (~x[3] &  x[2] & ~x[1]        ) |
    (~x[3] &  x[2] &         ~x[0]);
  assign y[3] =
    ( x[3] & ~x[2] & ~x[1]        ) |
    (~x[3] &  x[2] &  x[1] &  x[0]);
endmodule

module counter_0_9_up_seq (counter_out, clock, reset, enable);
  output counter_out;
  input clock, reset, enable;

  reg [3:0] counter_out;
  wire clock, reset, enable;

  wire [3:0] counter_0_9_in, counter_0_9_out;

  counter_0_9_up_com cr_09_com_uut (
    .y (counter_0_9_out),
    .x (counter_0_9_in )
  );

  genvar i;
  generate
    for (i = 0; i < 4; i = i + 1) begin : g0_memory
      // FDCE: Single Data Rate D Flip-Flop with Asynchronous Clear and
      //       Clock Enable (posedge clk).
      //       All families.
      // Xilinx HDL Libraries Guide, version 10.1.2
      FDCE #(.INIT(1'b0)) FDCE_inst (
        .Q   ( counter_0_9_in[i]), // Data output
        .C   (             clock), // Clock input
        .CE  (            enable), // Clock enable input
        .CLR (             reset), // Asynchronous clear input
        .D   (counter_0_9_out[i])  // Data input
      );
      // End of FDCE_inst instantiation
    end
  endgenerate

  always @(*) counter_out = counter_0_9_in;
endmodule

module counter_0_9_down_com (y, x);
  output y;
  input x;

  wire [3:0] x, y;

  assign y[0] =
    (~x[3] &          x[1] & ~x[0]) |
    (        ~x[2] &  x[1] & ~x[0]) |
    (~x[3] &  x[2] &         ~x[0]) |
    ( x[3] & ~x[2] &         ~x[0]);
  assign y[1] =
    (~x[3] &         ~x[1] & ~x[0]) |
    (        ~x[2] & ~x[1] & ~x[0]) |
    (~x[3] &          x[1] &  x[0]);
  assign y[2] =
    ( x[3] & ~x[2] & ~x[1] & ~x[0]) |
    (~x[3] &  x[2] &          x[0]) |
    (~x[3] &  x[2] &  x[1]        );
  assign y[3] =
    (~x[3] & ~x[2] & ~x[1] & ~x[0]) |
    ( x[3] & ~x[2] & ~x[1] &  x[0]) |
    ( x[3] & ~x[2] &  x[1] & ~x[0]);
endmodule

module counter_0_9_down_seq (counter_out, clock, reset, enable);
  output counter_out;
  input clock, reset, enable;

  reg [3:0] counter_out;
  wire clock, reset, enable;

  wire [3:0] counter_0_9_in, counter_0_9_out;

  counter_0_9_down_com cr_09_com_uut (
    .y (counter_0_9_out),
    .x (counter_0_9_in )
  );

  genvar i;
  generate
    for (i = 0; i < 4; i = i + 1) begin : g0_memory
      // FDCE: Single Data Rate D Flip-Flop with Asynchronous Clear and
      //       Clock Enable (posedge clk).
      //       All families.
      // Xilinx HDL Libraries Guide, version 10.1.2
      FDCE #(.INIT(1'b0)) FDCE_inst (
        .Q   ( counter_0_9_in[i]), // Data output
        .C   (             clock), // Clock input
        .CE  (            enable), // Clock enable input
        .CLR (             reset), // Asynchronous clear input
        .D   (counter_0_9_out[i])  // Data input
      );
      // End of FDCE_inst instantiation
    end
  endgenerate

  always @(*) counter_out = counter_0_9_out;
endmodule

module counter_5_0_down_com (y, x);
  output y;
  input x;

  wire [2:0] x, y;

  assign y[0] =
    (~x[2] &         ~x[0]) |
    (        ~x[1] & ~x[0]);
  assign y[1] =
    ( x[2] & ~x[1] & ~x[0]) |
    (~x[2] &  x[1] &  x[0]) ;
  assign y[2] =
    (~x[2] & ~x[1] & ~x[0]) |
    ( x[2] & ~x[1] &  x[0]) ;
endmodule

module counter_5_0_down_seq (counter_out, clock, reset, enable);
  output counter_out;
  input clock, reset, enable;

  reg [2:0] counter_out;
  wire clock, reset, enable;

  wire [2:0] counter_5_0_in, counter_5_0_out;

  counter_5_0_down_com cr_50_com_uut (
    .y (counter_5_0_out),
    .x (counter_5_0_in )
  );

  genvar i;
  generate
    for (i = 0; i < 3; i = i + 1) begin : g0_memory
      // FDCE: Single Data Rate D Flip-Flop with Asynchronous Clear and
      //       Clock Enable (posedge clk).
      //       All families.
      // Xilinx HDL Libraries Guide, version 10.1.2
      FDCE #(.INIT(1'b0)) FDCE_inst (
        .Q   ( counter_5_0_in[i]), // Data output
        .C   (             clock), // Clock input
        .CE  (            enable), // Clock enable input
        .CLR (             reset), // Asynchronous clear input
        .D   (counter_5_0_out[i])  // Data input
      );
      // End of FDCE_inst instantiation
    end
  endgenerate

  always @(*) counter_out = counter_5_0_out;
endmodule

module counter_9_0_down_com (y, x);
  output y;
  input x;

  wire [3:0] x, y;

  assign y[0] =
    (~x[3] &                 ~x[0]) |
    (        ~x[2] & ~x[1] & ~x[0]);
  assign y[1] =
    (~x[3] &          x[1] &  x[0]) |
    (~x[3] &  x[2] & ~x[1] & ~x[0]) |
    ( x[3] & ~x[2] & ~x[1] & ~x[0]);
  assign y[2] =
    ( x[3] & ~x[2] & ~x[1] & ~x[0]) |
    (~x[3] &  x[2] &          x[0]) |
    (~x[3] &  x[2] &  x[1]        );
  assign y[3] =
    (~x[3] & ~x[2] & ~x[1] & ~x[0]) |
    ( x[3] & ~x[2] & ~x[1] &  x[0]);
endmodule

module counter_9_0_down_seq (counter_out, clock, reset, enable);
  output counter_out;
  input clock, reset, enable;

  reg [3:0] counter_out;
  wire clock, reset, enable;

  wire [3:0] counter_9_0_in, counter_9_0_out;

  counter_9_0_down_com cr_90_com_uut (
    .y (counter_9_0_out),
    .x (counter_9_0_in )
  );

  genvar i;
  generate
    for (i = 0; i < 4; i = i + 1) begin : g0_memory
      // FDCE: Single Data Rate D Flip-Flop with Asynchronous Clear and
      //       Clock Enable (posedge clk).
      //       All families.
      // Xilinx HDL Libraries Guide, version 10.1.2
      FDCE #(.INIT(1'b0)) FDCE_inst (
        .Q   ( counter_9_0_in[i]), // Data output
        .C   (             clock), // Clock input
        .CE  (            enable), // Clock enable input
        .CLR (             reset), // Asynchronous clear input
        .D   (counter_9_0_out[i])  // Data input
      );
      // End of FDCE_inst instantiation
    end
  endgenerate

  always @(*) counter_out = counter_9_0_out;
endmodule

module e_4_7_6 (anode, segment, clock, reset, up, clr, enable);
  output anode, segment;
  input clock, reset, up, clr, enable;

  wire [3:0] anode;
  wire [6:0] segment;
  wire clock, reset, up, clr, enable;

  genvar i;

  parameter [3:0]
  anode_0 = 4'b0111,
  anode_1 = 4'b1011,
  anode_2 = 4'b1101,
  anode_3 = 4'b1110;
  wire [3:0] anode_array [0:3];
  assign anode_array[0] = anode_0;
  assign anode_array[1] = anode_1;
  assign anode_array[2] = anode_2;
  assign anode_array[3] = anode_3;
  wire cr_u2_anode_11;
  wire tick_0_9_sub_sec, tick_0_9_sec_a, tick_0_5_sec_b, tick_0_9_min;
  wire tick_9_0_sub_sec_down;
  wire tick_9_0_sec_a_down;
  wire [1:0] cr_u2_anode;
  wire [3:0] cr4_5_0_sec_b_down;
  wire [3:0] cr4_0_9_sub_sec, cr4_0_9_sec_a, cr4_0_5_sec_b, cr4_0_9_min;
  wire [3:0] cr4_9_0_sub_sec_down, cr4_9_0_sec_a_down, cr4_9_0_min_down;
  wire [6:0] cr4_0_9_min_seg7, cr4_0_5_sec_b_seg7, cr4_0_9_sec_a_seg7, cr4_0_9_sub_sec_seg7;
  wire [6:0] cr4_9_0_min_down_seg7, cr4_5_0_sec_b_down_seg7, cr4_9_0_sec_a_down_seg7, cr4_9_0_sub_sec_down_seg7;
  wire [6:0] segment_up, segment_down;

  assign cr4_5_0_sec_b_down[3] = 0;

  assign cr_u2_anode_11 =
    ~cr_u2_anode[1] &
    ~cr_u2_anode[0];

  assign #1 tick_9_0_sub_sec_down =
     cr4_9_0_sub_sec_down[3] &
    ~cr4_9_0_sub_sec_down[2] &
    ~cr4_9_0_sub_sec_down[1] &
     cr4_9_0_sub_sec_down[0];
  assign #1 tick_9_0_sec_a_down =
     cr4_9_0_sec_a_down[3] &
    ~cr4_9_0_sec_a_down[2] &
    ~cr4_9_0_sec_a_down[1] &
     cr4_9_0_sec_a_down[0];
  assign #1 tick_5_0_sec_b_down =
    ~cr4_5_0_sec_b_down[3] &
     cr4_5_0_sec_b_down[2] &
    ~cr4_5_0_sec_b_down[1] &
     cr4_5_0_sec_b_down[0];
  assign #1 tick_0_9_sub_sec =
     cr4_0_9_sub_sec[3] &
    ~cr4_0_9_sub_sec[2] &
     cr4_0_9_sub_sec[1] &
    ~cr4_0_9_sub_sec[0];
  assign #1 tick_0_9_sec_a =
     cr4_0_9_sec_a[3] &
    ~cr4_0_9_sec_a[2] &
     cr4_0_9_sec_a[1] &
    ~cr4_0_9_sec_a[0];
  assign #1 tick_0_5_sec_b =
    ~cr4_0_5_sec_b[3] &
     cr4_0_5_sec_b[2] &
     cr4_0_5_sec_b[1] &
    ~cr4_0_5_sec_b[0];
  assign #1 tick_0_9_min =
     cr4_0_9_min[3] &
    ~cr4_0_9_min[2] &
     cr4_0_9_min[1] &
    ~cr4_0_9_min[0];

  counter_9_0_down_seq cr4_9_0_sub_sec_down_uut (
    .counter_out (cr4_9_0_sub_sec_down),
    .clock       (cr_u2_anode_11      ),
    .reset       (reset | clr         ),
    .enable      (enable              )
  );

  counter_9_0_down_seq cr4_9_0_sec_a_down_uut (
    .counter_out (cr4_9_0_sec_a_down   ),
    .clock       (tick_9_0_sub_sec_down),
    .reset       (reset | clr          ),
    .enable      (enable               )
  );

  counter_5_0_down_seq cr4_5_0_sec_b_down_uut (
    .counter_out (cr4_5_0_sec_b_down ),
    .clock       (tick_9_0_sec_a_down),
    .reset       (reset | clr        ),
    .enable      (enable             )
  );

  counter_9_0_down_seq cr4_9_0_min_down_uut (
    .counter_out (cr4_9_0_min_down   ),
    .clock       (tick_5_0_sec_b_down),
    .reset       (reset | clr        ),
    .enable      (enable             )
  );

  counter_0_9_up_seq cr4_0_9_sub_sec_up_uut (
    .counter_out (cr4_0_9_sub_sec               ),
    .clock       (cr_u2_anode_11                ),
    .reset       (reset | tick_0_9_sub_sec | clr),
    .enable      (enable                        )
  );

  counter_0_9_up_seq cr4_0_9_sec_a_up_uut (
    .counter_out (cr4_0_9_sec_a               ),
    .clock       (tick_0_9_sub_sec            ),
    .reset       (reset | tick_0_9_sec_a | clr),
    .enable      (enable                      )
  );

  counter_0_9_up_seq cr4_0_5_sec_b_up_uut (
    .counter_out (cr4_0_5_sec_b               ),
    .clock       (tick_0_9_sec_a              ),
    .reset       (reset | tick_0_5_sec_b | clr),
    .enable      (enable                      )
  );

  counter_0_9_up_seq cr4_0_9_min_up_uut (
    .counter_out (cr4_0_9_min               ),
    .clock       (tick_0_5_sec_b            ),
    .reset       (reset | tick_0_9_min | clr),
    .enable      (enable                    )
  );

  lcd7_segment_decoder segment7_cr4_0_9_min_uut (
    .y (cr4_0_9_min_seg7),
    .x (cr4_0_9_min     )
  );

  lcd7_segment_decoder segment7_cr4_9_0_min_down_uut (
    .y (cr4_9_0_min_down_seg7),
    .x (cr4_9_0_min_down     )
  );

  lcd7_segment_decoder segment7_cr4_0_5_sec_b_uut (
    .y (cr4_0_5_sec_b_seg7),
    .x (cr4_0_5_sec_b     )
  );

  lcd7_segment_decoder segment7_cr4_5_0_sec_b_down_uut (
    .y (cr4_5_0_sec_b_down_seg7),
    .x (cr4_5_0_sec_b_down     )
  );

  lcd7_segment_decoder segment7_cr4_0_5_sec_a_uut (
    .y (cr4_0_9_sec_a_seg7),
    .x (cr4_0_9_sec_a     )
  );

  lcd7_segment_decoder segment7_cr4_0_5_sec_a_down_uut (
    .y (cr4_9_0_sec_a_down_seg7),
    .x (cr4_9_0_sec_a_down     )
  );

  lcd7_segment_decoder segment7_cr4_0_9_sub_sec_uut (
    .y (cr4_0_9_sub_sec_seg7),
    .x (cr4_0_9_sub_sec     )
  );

  lcd7_segment_decoder segment7_cr4_9_0_sub_sec_down_uut (
    .y (cr4_9_0_sub_sec_down_seg7),
    .x (cr4_9_0_sub_sec_down     )
  );

  mux41_segment mux4_segment_out_uut (
    .y  (segment_up          ),
    .x0 (cr4_0_9_sub_sec_seg7),
    .x1 (cr4_0_9_sec_a_seg7  ),
    .x2 (cr4_0_5_sec_b_seg7  ),
    .x3 (cr4_0_9_min_seg7    ),
    .s  (cr_u2_anode         )
  );

  mux41_segment mux4_segment_out_down_uut (
    .y  (segment_down             ),
    .x0 (cr4_9_0_sub_sec_down_seg7),
    .x1 (cr4_9_0_sec_a_down_seg7  ),
    .x2 (cr4_5_0_sec_b_down_seg7  ),
    .x3 (cr4_9_0_min_down_seg7    ),
    .s  (cr_u2_anode              )
  );

  generate
    for (i = 0; i < 7; i = i + 1) begin : g1_segment_mux_cr4
      m2_1 segment_mux_cr4 (
        .o  (     segment[i]),
        .d1 (segment_down[i]),
        .d0 (  segment_up[i]),
        .s0 (             up)
      );
    end
  endgenerate

  generate
    for (i = 0; i < 4; i = i + 1) begin : g0_mux4_anode
      mux_41 mux4_anode_uut (
        .y (      anode[i]),
        .x (anode_array[i]),
        .s (   cr_u2_anode)
      );
    end
  endgenerate

  counter_up_2_seq cr_u2_anode_uut (
    .counter_out (cr_u2_anode),
    .clock       (clock      ),
    .reset       (reset | clr),
    .enable      (enable     )
  );
endmodule
