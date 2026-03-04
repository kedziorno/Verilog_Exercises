`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     23:22:20 02/27/2026
// Design Name:     pong_p_chu
// Module Name:     e_4_7_7
// Project Name:    -
// Target Devices:  -
// Tool versions:   -
// Description:     Stack (0-9) - 10x8-bit
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Logic experssions. PUSH/POP signals must have minimum 2
//                      ticks. Also:
//                      - check push/pop is synchronized (_active signals)
//                      - fix multiplexing output (mux_16_1_data_out_uut)
//
///////////////////////////////////////////////////////////////////////////////
module e_4_7_7 (data_out, data_in, clock, reset, push, pop);
  output data_out;
  input data_in, clock, reset, push, pop;

  wire [7:0] data_out, data_in;
  wire clock, reset, push, pop;

  genvar row, col, i;

  wire ff_push_input_re, ff_pop_input_re;
  wire push_active, pop_active;
  wire cr4_up_reset_1010;
  wire [1:0] ff_push_input, ff_pop_input;
  wire [3:0] cr4_down, cr4_up, cr4_up_load, cr4_down_load;
  wire [9:0] dec_4_16_row;
  wire [10*8-1:0] data_out_array;

  assign ff_push_input_re =
    ff_push_input[0] & ~ff_push_input[1];
  assign ff_pop_input_re =
    ff_pop_input[0] & ~ff_pop_input[1];
  assign cr4_up_reset_1010 =
     cr4_up[3] &
    ~cr4_up[2] &
     cr4_up[1] &
    ~cr4_up[0];

  // synchronized - 1st output data have 1.0c/1.5c, rest 2c
  //FDCE #(.INIT(1'b0)) FDCE_push_active_sync ( // 1c, re, drop 1st value at b/e
  FDCE_1 #(.INIT(1'b0)) FDCE_push_active_sync ( // 1.5c, fe
    .Q   (push_active            ),
    .C   (clock                  ),
    .CE  (ff_push_input_re       ),
    .CLR (reset | ff_pop_input_re),
    .D   (1'b1                   )
  );

  //FDCE #(.INIT(1'b0)) FDCE_pop_active_sync ( // 1c, re, drop 1st value at b/e
  FDCE_1 #(.INIT(1'b0)) FDCE_pop_active_sync ( // 1.5c, fe
    .Q   (pop_active              ),
    .C   (clock                   ),
    .CE  (ff_pop_input_re         ),
    .CLR (reset | ff_push_input_re),
    .D   (1'b1                    )
  );

  // not synchronized - 1st output data have 2c, rest 2c
  //FDCE #(.INIT(1'b0)) FDCE_push_active ( // 2c
  ////FDCE_1 #(.INIT(1'b0)) FDCE_push_active ( // 2c
  //  .Q   (push_active            ),
  //  .C   (clock                  ),
  //  .CE  (push                   ),
  //  .CLR (reset | ff_pop_input_re),
  //  .D   (1'b1                   )
  //);
  //
  //FDCE #(.INIT(1'b0)) FDCE_pop_active ( // 2c
  ////FDCE_1 #(.INIT(1'b0)) FDCE_pop_active ( // 2c
  //  .Q   (pop_active              ),
  //  .C   (clock                   ),
  //  .CE  (pop                     ),
  //  .CLR (reset | ff_push_input_re),
  //  .D   (1'b1                    )
  //);

  // push
  generate
    for (i = 0; i < 2; i = i + 1) begin : g_FDCE_ff_push_chain
      if (i == 0) begin : g_FDCE_push_0
        FDCE #(.INIT(1'b0)) FDCE_push_0 (
          .Q   (ff_push_input[0]),
          .C   (           clock),
          .CE  (            1'b1),
          .CLR (           reset),
          .D   (            push)
        );
      end
      else begin : g_FDCE_push_rest
        FDCE #(.INIT(1'b0)) FDCE_push_rest (
          .Q   (  ff_push_input[i]),
          .C   (             clock),
          .CE  (              1'b1),
          .CLR (             reset),
          .D   (ff_push_input[i-1])
        );
      end
    end
  endgenerate

  counter_0_9_up_seq cr4_push_uut (
    .counter_out (cr4_up                   ),
    .clock       (clock                    ),
    .reset       (reset | cr4_up_reset_1010), // 0-9, w/o A
    .enable      (ff_push_input_re         ),
    .load        (pop                      ),
    .value       (cr4_down_load            )
  );

  generate
    for (i = 0; i < 4; i = i + 1) begin : g_FDCE_load_push_cntr
      FDCE #(.INIT(1'b0)) FDCE_load_push (
        .Q   (cr4_up_load[i]),
        .C   (         clock),
        .CE  (   push_active),
        .CLR (         reset),
        .D   (     cr4_up[i])
      );
    end
  endgenerate

  // pop
  generate
    for (i = 0; i < 2; i = i + 1) begin : g_FDCE_inst_ff_pop_chain
      if (i == 0) begin : g_FDCE_pop_0
        FDCE #(.INIT(1'b0)) FDCE_pop_0 (
          .Q   (ff_pop_input[0]),
          .C   (          clock),
          .CE  (           1'b1),
          .CLR (          reset),
          .D   (            pop)
        );
      end
      else begin : g_FDCE_pop_rest
        FDCE #(.INIT(1'b0)) FDCE_pop_rest (
          .Q   (  ff_pop_input[i]),
          .C   (            clock),
          .CE  (             1'b1),
          .CLR (            reset),
          .D   (ff_pop_input[i-1])
        );
      end
    end
  endgenerate

  counter_9_0_down_seq cr4_pop_uut (
    .counter_out (cr4_down       ),
    .clock       (clock          ),
    .reset       (reset          ),
    .enable      (ff_pop_input_re),
    .load        (push           ),
    .value       (cr4_up_load    )
  );

  generate
    for (i = 0; i < 4; i = i + 1) begin : g_FDCE_load_pop_cntr
      FDCE #(.INIT(1'b0)) FDCE_load_pop (
        .Q   (cr4_down_load[i]),
        .C   (           clock),
        .CE  (      pop_active),
        .CLR (           reset),
        .D   (     cr4_down[i])
      );
    end
  endgenerate

  wire [3:0] cr4, cr4_last;

  generate
    for (i = 0; i < 4; i = i + 1) begin : g0_cr4_ud_mux
      FDCE #(.INIT(1'b0)) FDCE_cr4_ud_mux_last_value (
        .Q   (cr4_last[i]),
        .C   (clock      ),
        .CE  (1'b1       ),
        .CLR (reset      ),
        .D   (cr4[i]     )
      );
      mux41 mux41_fracn (
        .y  (cr4[i]     ),
        .s1 (push       ),
        .s0 (pop        ),
        .i3 (cr4_last[i]), // 11 - impossible
        .i2 (cr4_down[i]),
        .i1 (cr4_up[i]  ),
        .i0 (cr4_last[i])  // 00 - idle
      );
    end
  endgenerate

  sch_e_2_9_2_7 dec_4_16_uut (
    .i0 (cr4_last[0]), .i1 (cr4_last[1]), .i2 (cr4_last[2]), .i3 (cr4_last[3]),
    .en (1'b1),
    .o0 (dec_4_16_row[0]), .o8  (dec_4_16_row[8]),
    .o1 (dec_4_16_row[1]), .o9  (dec_4_16_row[9]),
    .o2 (dec_4_16_row[2]), .o10 (),
    .o3 (dec_4_16_row[3]), .o11 (),
    .o4 (dec_4_16_row[4]), .o12 (),
    .o5 (dec_4_16_row[5]), .o13 (),
    .o6 (dec_4_16_row[6]), .o14 (),
    .o7 (dec_4_16_row[7]), .o15 ()
  );

  generate
    for (row = 0; row < 10; row = row + 1) begin : g0_memory_row
      for (col = 0; col < 8; col = col + 1) begin : g1_memory_col
        FDCE #(.INIT (1'b0)) g0_FDCE_memory_matrix (
          .Q   (                data_out_array[8*row+col]),
          .C   (                                    clock),
          .CE  (dec_4_16_row[row] & (push_active & ~push)),
          .CLR (                                    reset),
          .D   (                             data_in[col])
        );
      end
    end
  endgenerate

  generate
    for (col = 0; col < 8; col = col + 1) begin : g1_memory_col_data_out
      mux_16_1 mux_16_1_data_out_uut (
        .o  (                 data_out[col]),
        .x  (data_out_array[8*cr4_last+col]), // TODO fix "Found 1-bit 80-to-1 multiplexer"
        .s  (                       4'b0000),
        .en (     ~push_active & pop_active)
      );
    end
  endgenerate
endmodule
