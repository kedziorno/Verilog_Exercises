`timescale 1ns / 1ns
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

module counter_0_9_up_seq (counter_out, clock, reset, enable, load, value);
  output counter_out;
  input clock, reset, enable, load, value;

  reg [3:0] counter_out;
  wire [3:0] value;
  wire clock, reset, enable, load;

  wire [3:0] counter_0_9_in, counter_0_9_out, counter_0_9_out_mux;

  counter_0_9_up_com cr_09_com_uut (
    .y (counter_0_9_out),
    .x (counter_0_9_in )
  );

  genvar i;

  generate
    for (i = 0; i < 4; i = i + 1) begin : g1_memory_load_mux2
      m2_1 memory_load_mux2 (
        .o  (counter_0_9_out_mux[i]),
        .d1 (              value[i]),
        .d0 (    counter_0_9_out[i]),
        .s0 (                  load)
      );
    end
  endgenerate

  generate
    for (i = 0; i < 4; i = i + 1) begin : g0_memory
      FDCE #(.INIT(1'b0)) FDCE_inst (
        .Q   (     counter_0_9_in[i]),
        .C   (                 clock),
        .CE  (                enable),
        .CLR (                 reset),
        .D   (counter_0_9_out_mux[i])
      );
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

module counter_0_9_down_seq (counter_out, clock, reset, enable, load, value);
  output counter_out;
  input clock, reset, enable, load, value;

  reg [3:0] counter_out;
  wire [3:0] value;
  wire clock, reset, enable, load;

  wire [3:0] counter_0_9_in, counter_0_9_out, counter_0_9_out_mux;

  counter_0_9_down_com cr_09_com_uut (
    .y (counter_0_9_out),
    .x (counter_0_9_in )
  );

  genvar i;

  generate
    for (i = 0; i < 4; i = i + 1) begin : g1_memory_load_mux2
      m2_1 memory_load_mux2 (
        .o  (counter_0_9_out_mux[i]),
        .d1 (              value[i]),
        .d0 (    counter_0_9_out[i]),
        .s0 (                  load)
      );
    end
  endgenerate

  generate
    for (i = 0; i < 4; i = i + 1) begin : g0_memory
      FDCE #(.INIT(1'b0)) FDCE_inst (
        .Q   (     counter_0_9_in[i]),
        .C   (                 clock),
        .CE  (                enable),
        .CLR (                 reset),
        .D   (counter_0_9_out_mux[i])
      );
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

module counter_5_0_down_seq (counter_out, clock, reset, enable, load, value);
  output counter_out;
  input clock, reset, enable, load, value;

  reg [2:0] counter_out;
  wire [2:0] value;
  wire clock, reset, enable, load;

  wire [2:0] counter_5_0_in, counter_5_0_out, counter_5_0_out_mux;

  counter_5_0_down_com cr_50_com_uut (
    .y (counter_5_0_out),
    .x (counter_5_0_in )
  );

  genvar i;

  wire load_r;
  FDCE #(.INIT(1'b0)) FDCE_inst (
    .Q   (load_r),
    .C   (clock ),
    .CE  (1'b1  ),
    .CLR (1'b0  ),
    .D   (load  )
  );

  generate
    for (i = 0; i < 3; i = i + 1) begin : g1_memory_load_mux2
      m2_1 memory_load_mux2 (
        .o  (counter_5_0_out_mux[i]),
        .d1 (              value[i]),
        .d0 (    counter_5_0_out[i]),
        .s0 (                load_r)
      );
    end
  endgenerate

  generate
    for (i = 0; i < 3; i = i + 1) begin : g0_memory
//      FDCE #(.INIT(1'b0)) FDCE_inst (
//        .Q   (     counter_5_0_in[i]),
//        .C   (                 clock),
//        .CE  (                enable),
//        .CLR (          reset | load),
//        .D   (counter_5_0_out_mux[i])
//      );
      FDCPE #(.INIT(1'b0)) FDCE_inst (
        .Q   ( counter_5_0_in[i]),
        .C   (             clock),
        .CE  (            enable),
        .CLR (      reset | load),
        .PRE (          value[i]),
        .D   (counter_5_0_out[i])
      );
//      FDRSE #(.INIT(1'b0)) FDCE_inst (
//        .Q  ( counter_5_0_in[i]),
//        .C  (             clock),
//        .CE (            enable),
//        .R  (      reset | load),
//        .S  (          value[i]),
//        .D  (counter_5_0_out[i])
//      );
      // End of FDCE_inst instantiation
    end
  endgenerate

  always @(*) counter_out = counter_5_0_in;
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

module counter_9_0_down_seq (counter_out, clock, reset, enable, load, value);
  output counter_out;
  input clock, reset, enable, load, value;

  reg [3:0] counter_out;
  wire [3:0] value;
  wire clock, reset, enable, load;

  wire [3:0] counter_9_0_in, counter_9_0_out, counter_9_0_out_mux;

  counter_9_0_down_com cr_90_com_uut (
    .y (counter_9_0_out),
    .x (counter_9_0_in )
  );

  genvar i;

  wire load_r;
  FDCE #(.INIT(1'b0)) FDCE_inst (
    .Q   (load_r),
    .C   (clock ),
    .CE  (1'b1  ),
    .CLR (1'b0  ),
    .D   (load  )
  );

  generate
    for (i = 0; i < 4; i = i + 1) begin : g1_memory_load_mux2
      m2_1 memory_load_mux2 (
        .o  (counter_9_0_out_mux[i]),
        .d1 (              value[i]),
        .d0 (    counter_9_0_out[i]),
        .s0 (                load_r)
      );
    end
  endgenerate

  generate
    for (i = 0; i < 4; i = i + 1) begin : g0_memory
//      FDCE #(.INIT(1'b0)) FDCE_inst (
//        .Q   (     counter_9_0_in[i]),
//        .C   (                 clock),
//        .CE  (                enable),
//        .CLR (          reset | load),
//        .D   (counter_9_0_out_mux[i])
//      );
      FDCPE #(.INIT(1'b0)) FDCE_inst (
        .Q   ( counter_9_0_in[i]),
        .C   (             clock),
        .CE  (            enable),
        .CLR (      reset | load),
        .PRE (          value[i]),
        .D   (counter_9_0_out[i])
      );
//      FDRSE #(.INIT(1'b0)) FDCE_inst (
//        .Q  ( counter_9_0_in[i]),
//        .C  (             clock),
//        .CE (            enable),
//        .R  (             reset),
//        .S  (          value[i]),
//        .D  (counter_9_0_out[i])
//      );
    end
  endgenerate

  always @(*) counter_out = counter_9_0_in;
endmodule

module mux41_4 (y, x0, x1, x2, x3, s);
  output y;
  input x0, x1, x2, x3, s;

  wire [3:0] y;
  wire [3:0] x0, x1, x2, x3;
  wire [1:0] s;

  wire [3:0] x [0:3];
  assign x[0] = x0;
  assign x[1] = x1;
  assign x[2] = x2;
  assign x[3] = x3;
  genvar i;

  generate
    for (i = 0; i < 4; i = i + 1) begin : g0_mux41_4
      mux41 mux41_4_uut (
        .y  (y[i]),
        .s1 (s[0]),
        .s0 (s[1]),
        .i3 (x[3][i]),
        .i2 (x[2][i]),
        .i1 (x[1][i]),
        .i0 (x[0][i])
      );
    end
  endgenerate
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
  wire ff_up_re, ff_up_fe;
  wire cr_u2_anode_11;
  wire tick_0_9_sub_sec, tick_0_9_sec_a, tick_0_5_sec_b, tick_0_9_min;
  wire tick_9_0_sub_sec_down;
  wire tick_9_0_sec_a_down;
  wire [1:0] cr_u2_anode;
  wire [2:0] cr4_0_5_sec_b_load;
  wire [3:0] cr4_0_5_sec_b_load_1;
  wire [2:0] cr4_5_0_sec_b_down_1;
  wire [3:0] cr4_5_0_sec_b_down;
  wire [3:0] cr4_0_9_sub_sec, cr4_0_9_sec_a, cr4_0_5_sec_b, cr4_0_9_min;
  wire [3:0] cr4_9_0_sub_sec_down, cr4_9_0_sec_a_down, cr4_9_0_min_down;
  wire [3:0] segment_up, segment_down;
  wire [3:0] cr4_0_9_sub_sec_load;
  wire [3:0] cr4_0_9_sec_a_load;
  wire [3:0] cr4_0_9_min_load;
  wire [7:0] ff_up;
  wire [6:0] segment_up_seg7, segment_down_seg7;

  assign cr4_0_5_sec_b_load_1 = {1'b0, cr4_0_5_sec_b_load};
  assign cr4_5_0_sec_b_down = {1'b0,cr4_5_0_sec_b_down_1};
  assign ff_up_re =  ff_up[2] & ~ff_up[3];
  assign ff_up_fe = ~ff_up[0] &  ff_up[1];
  assign cr4_5_0_sec_b_down[3] = 0;
  assign cr_u2_anode_11 =
    ~cr_u2_anode[1] &
    ~cr_u2_anode[0];
  assign #10 tick_9_0_sub_sec_down =
     cr4_9_0_sub_sec_down[3] &
    ~cr4_9_0_sub_sec_down[2] &
    ~cr4_9_0_sub_sec_down[1] &
     cr4_9_0_sub_sec_down[0];
  assign #10 tick_9_0_sec_a_down =
     cr4_9_0_sec_a_down[3] &
    ~cr4_9_0_sec_a_down[2] &
    ~cr4_9_0_sec_a_down[1] &
     cr4_9_0_sec_a_down[0];
  assign #10 tick_5_0_sec_b_down =
    ~cr4_5_0_sec_b_down[3] &
     cr4_5_0_sec_b_down[2] &
    ~cr4_5_0_sec_b_down[1] &
     cr4_5_0_sec_b_down[0];
  assign #10 tick_0_9_sub_sec =
     cr4_0_9_sub_sec[3] &
    ~cr4_0_9_sub_sec[2] &
     cr4_0_9_sub_sec[1] &
    ~cr4_0_9_sub_sec[0];
  assign #10 tick_0_9_sec_a =
     cr4_0_9_sec_a[3] &
    ~cr4_0_9_sec_a[2] &
     cr4_0_9_sec_a[1] &
    ~cr4_0_9_sec_a[0];
  assign #10 tick_0_5_sec_b =
    ~cr4_0_5_sec_b[3] &
     cr4_0_5_sec_b[2] &
     cr4_0_5_sec_b[1] &
    ~cr4_0_5_sec_b[0];
  assign #10 tick_0_9_min =
     cr4_0_9_min[3] &
    ~cr4_0_9_min[2] &
     cr4_0_9_min[1] &
    ~cr4_0_9_min[0];

  generate
    for (i = 0; i < 8; i = i + 1) begin : g_FDCE_inst_ff_up_chain
      if (i == 0) begin : g_FDCE_inst_ff_up_chain_0
        FDCE #(.INIT(1'b0)) FDCE_inst_ff_up_chain_0 (
          .Q   (ff_up[0]),
          .C   (   clock),
          .CE  (  enable),
          .CLR (   reset),
          .D   (      up)
        );
      end
      else begin : g_FDCE_inst_ff_up_chain_rest
        FDCE #(.INIT(1'b0)) FDCE_inst_ff_up_chain_rest (
          .Q   (  ff_up[i]),
          .C   (     clock),
          .CE  (    enable),
          .CLR (     reset),
          .D   (ff_up[i-1])
        );
      end
    end
  endgenerate

  counter_9_0_down_seq cr4_9_0_sub_sec_down_uut (
    .counter_out (cr4_9_0_sub_sec_down),
    .clock       (cr_u2_anode_11      ),
    .reset       (reset | clr         ),
    .enable      (enable              ),
    .load        (ff_up_re            ),
    .value       (cr4_0_9_sub_sec_load)
  );

  counter_9_0_down_seq cr4_9_0_sec_a_down_uut (
    .counter_out (cr4_9_0_sec_a_down   ),
    .clock       (tick_9_0_sub_sec_down),
    .reset       (reset | clr          ),
    .enable      (enable               ),
    .load        (ff_up_re             ),
    .value       (cr4_0_9_sec_a_load   )
  );

  counter_5_0_down_seq cr4_5_0_sec_b_down_uut (
    .counter_out (cr4_5_0_sec_b_down_1),
    .clock       (tick_9_0_sec_a_down),
    .reset       (reset | clr        ),
    .enable      (enable             ),
    .load        (ff_up_re           ),
    .value       (cr4_0_5_sec_b_load )
  );

  counter_9_0_down_seq cr4_9_0_min_down_uut (
    .counter_out (cr4_9_0_min_down   ),
    .clock       (tick_5_0_sec_b_down),
    .reset       (reset | clr        ),
    .enable      (enable             ),
    .load        (ff_up_re           ),
    .value       (cr4_0_9_min_load   )
  );

  counter_0_9_up_seq cr4_0_9_sub_sec_up_uut (
    .counter_out (cr4_0_9_sub_sec               ),
    .clock       (cr_u2_anode_11                ),
    .reset       (reset | tick_0_9_sub_sec | clr),
    .enable      (enable                        ),
    .load        (1'b0                          ),
    .value       (4'b0                          )
  );

  wire cr4_up_load_r, cr4_up_load_r_1;
  FDCE #(.INIT(1'b0)) FDCE_inst_ff_load_up_cntr_r (
    .Q   (cr4_up_load_r),
    .C   (clock        ),
    .CE  (enable       ),
    .CLR (ff_up[7]     ),
    .D   (ff_up[1]     )
  );

  FDCE #(.INIT(1'b0)) FDCE_inst_ff_load_up_cntr_r_1 (
    .Q   (cr4_up_load_r_1),
    .C   (clock          ),
    .CE  (enable         ),
    .CLR (reset          ),
    .D   (cr4_up_load_r  )
  );

  wire cr4_up_load_r_xor;
  assign cr4_up_load_r_xor = ~cr4_up_load_r & cr4_up_load_r_1;

  generate
    for (i = 0; i < 4; i = i + 1) begin : g_FDCE_inst_ff_load_up_cntr1
      FDCE #(.INIT(1'b0)) FDCE_inst_ff_load_up_cntr1 (
        .Q   (  cr4_0_9_sub_sec_load[i]),
        .C   (                    clock),
        .CE  (                 ff_up_re),
        .CLR (reset | cr4_up_load_r_xor),
        .D   (       cr4_0_9_sub_sec[i])
      );
    end
  endgenerate

  counter_0_9_up_seq cr4_0_9_sec_a_up_uut (
    .counter_out (cr4_0_9_sec_a               ),
    .clock       (tick_0_9_sub_sec            ),
    .reset       (reset | tick_0_9_sec_a | clr),
    .enable      (enable                      ),
    .load        (1'b0                        ),
    .value       (4'b0                        )
  );

  generate
    for (i = 0; i < 4; i = i + 1) begin : g_FDCE_inst_ff_load_up_cntr2
      FDCE #(.INIT(1'b0)) FDCE_inst_ff_load_up_cntr2 (
        .Q   (    cr4_0_9_sec_a_load[i]),
        .C   (                    clock),
        .CE  (                 ff_up_re),
        .CLR (reset | cr4_up_load_r_xor),
        .D   (         cr4_0_9_sec_a[i])
      );
    end
  endgenerate

  counter_0_9_up_seq cr4_0_5_sec_b_up_uut (
    .counter_out (cr4_0_5_sec_b               ),
    .clock       (tick_0_9_sec_a              ),
    .reset       (reset | tick_0_5_sec_b | clr),
    .enable      (enable                      ),
    .load        (1'b0                        ),
    .value       (4'b0                        )
  );

  generate
    for (i = 0; i < 3; i = i + 1) begin : g_FDCE_inst_ff_load_up_cntr3
      FDCE #(.INIT(1'b0)) FDCE_inst_ff_load_up_cntr3 (
        .Q   (    cr4_0_5_sec_b_load[i]),
        .C   (                    clock),
        .CE  (                 ff_up_re),
        .CLR (reset | cr4_up_load_r_xor),
        .D   (         cr4_0_5_sec_b[i])
      );
    end
  endgenerate

  counter_0_9_up_seq cr4_0_9_min_up_uut (
    .counter_out (cr4_0_9_min               ),
    .clock       (tick_0_5_sec_b            ),
    .reset       (reset | tick_0_9_min | clr),
    .enable      (enable                    ),
    .load        (1'b0                      ),
    .value       (4'b0                      )
  );

  generate
    for (i = 0; i < 4; i = i + 1) begin : g_FDCE_inst_ff_load_up_cntr4
      FDCE #(.INIT(1'b0)) FDCE_inst_ff_load_up_cntr4 (
        .Q   (      cr4_0_9_min_load[i]),
        .C   (                    clock),
        .CE  (                 ff_up_re),
        .CLR (reset | cr4_up_load_r_xor),
        .D   (           cr4_0_9_min[i])
      );
    end
  endgenerate

  mux41_4 mux4_segment_out_uut (
    .y  (segment_up     ),
    .x0 (cr4_0_9_min    ),
    .x1 (cr4_0_5_sec_b  ),
    .x2 (cr4_0_9_sec_a  ),
    .x3 (cr4_0_9_sub_sec),
    .s  (cr_u2_anode    )
  );

  mux41_4 mux4_segment_out_down_uut (
    .y  (segment_down        ),
    .x0 (cr4_9_0_min_down    ),
    .x1 (cr4_5_0_sec_b_down  ),
    .x2 (cr4_9_0_sec_a_down  ),
    .x3 (cr4_9_0_sub_sec_down),
    .s  (cr_u2_anode         )
  );

  lcd7_segment_decoder segment_up_seg7_uut (
    .y (segment_up_seg7),
    .x (segment_up     )
  );

  lcd7_segment_decoder segment_down_seg7_uut (
    .y (segment_down_seg7),
    .x (segment_down     )
  );

  generate
    for (i = 0; i < 7; i = i + 1) begin : g1_segment_mux_cr4
      m2_1 segment_mux_cr4 (
        .o  (          segment[i]),
        .d1 (segment_down_seg7[i]),
        .d0 (  segment_up_seg7[i]),
        .s0 (                  up)
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
