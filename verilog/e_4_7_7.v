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
// Description:     Stack
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
///////////////////////////////////////////////////////////////////////////////
module e_4_7_7 (data_out, data_in, clock, reset, push, pop);
output data_out;
input data_in, clock, reset, push, pop;

wire [7:0] data_out, data_in;
wire clock, reset, push, pop;

genvar row, col, i;

wire ff_push_input_re, ff_pop_input_re;
wire cr4_push_load_reset_xor, cr4_push_load_reset, cr4_push_load_reset_1;
wire cr4_pop_load_reset_xor, cr4_pop_load_reset, cr4_pop_load_reset_1;
wire [3:0] cr4_down, cr4_up, cr4_up_load, cr4_down_load;
wire [7:0] ff_push_input, ff_pop_input;
wire [15:0] dec_4_16_row;

assign ff_push_input_re =  ff_push_input[0] & ~ff_push_input[1];
assign ff_pop_input_re = ff_pop_input[0] & ~ff_pop_input[1];
assign cr4_push_load_reset_xor = cr4_push_load_reset & ~cr4_push_load_reset_1;
assign cr4_pop_load_reset_xor = cr4_pop_load_reset & ~cr4_pop_load_reset_1;

// push
generate
  for (i = 0; i < 8; i = i + 1) begin : g_FDCE_ff_push_chain
    if (i == 0) begin : g_FDCE_push_0
      FDCE #(.INIT(1'b0)) FDCE_push_0 (
        .Q   (ff_push_input[0]),
        .C   (clock           ),
        .CE  (push            ),
        .CLR (reset           ),
        .D   (push            )
      );
    end
    else begin : g_FDCE_push_rest
      FDCE #(.INIT(1'b0)) FDCE_push_rest (
        .Q   (  ff_push_input[i]),
        .C   (             clock),
        .CE  (              push),
        .CLR (             reset),
        .D   (ff_push_input[i-1])
      );
    end
  end
endgenerate

FDCE #(.INIT(1'b0)) FDCE_load_push_cntr_reset (
  .Q   (cr4_push_load_reset),
  .C   (clock              ),
  .CE  (push               ),
  .CLR (ff_push_input[7]   ),
  .D   (ff_push_input[0]   )
);

FDCE #(.INIT(1'b0)) FDCE_load_push_cntr_reset_1 (
  .Q   (cr4_push_load_reset_1),
  .C   (clock                ),
  .CE  (push                 ),
  .CLR (reset                ),
  .D   (cr4_push_load_reset  )
);

counter_0_9_up_seq cr4_push_uut (
  .counter_out (cr4_up          ),
  .clock       (clock           ),
  .reset       (reset           ),
  .enable      (push            ),
  .load        (ff_push_input_re),
  .value       (cr4_down_load   )
);

generate
  for (i = 0; i < 4; i = i + 1) begin : g_FDCE_load_push_cntr
    FDCE #(.INIT(1'b0)) FDCE_load_push (
      .Q   (                 cr4_up_load[i]),
      .C   (                          clock),
      .CE  (               ff_push_input_re),
      .CLR (reset | cr4_push_load_reset_xor),
      .D   (                      cr4_up[i])
    );
  end
endgenerate

// pop
generate
  for (i = 0; i < 8; i = i + 1) begin : g_FDCE_inst_ff_pop_chain
    if (i == 0) begin : g_FDCE_pop_0
      FDCE #(.INIT(1'b0)) FDCE_pop_0 (
        .Q   (ff_pop_input[0]),
        .C   (          clock),
        .CE  (            pop),
        .CLR (          reset),
        .D   (            pop)
      );
    end
    else begin : g_FDCE_pop_rest
      FDCE #(.INIT(1'b0)) FDCE_pop_rest (
        .Q   (  ff_pop_input[i]),
        .C   (            clock),
        .CE  (              pop),
        .CLR (            reset),
        .D   (ff_pop_input[i-1])
      );
    end
  end
endgenerate

FDCE #(.INIT(1'b0)) FDCE_load_pop_cntr_reset (
  .Q   (cr4_pop_load_reset),
  .C   (clock             ),
  .CE  (pop               ),
  .CLR (ff_pop_input[7]   ),
  .D   (ff_pop_input[0]   )
);

FDCE #(.INIT(1'b0)) FDCE_load_pop_cntr_reset_1 (
  .Q   (cr4_pop_load_reset_1),
  .C   (clock               ),
  .CE  (pop                 ),
  .CLR (reset               ),
  .D   (cr4_pop_load_reset  )
);

counter_9_0_down_seq cr4_pop_uut (
  .counter_out (cr4_down       ),
  .clock       (clock          ),
  .reset       (reset          ),
  .enable      (pop            ),
  .load        (ff_pop_input_re),
  .value       (cr4_up_load    )
);

generate
  for (i = 0; i < 4; i = i + 1) begin : g_FDCE_load_pop_cntr
    FDCE #(.INIT(1'b0)) FDCE_load_pop (
      .Q   (              cr4_down_load[i]),
      .C   (                         clock),
      .CE  (               ff_pop_input_re),
      .CLR (reset | cr4_pop_load_reset_xor),
      .D   (                   cr4_down[i])
    );
  end
endgenerate

sch_e_2_9_2_7 dec_4_16_uut (
  .i0 (cr4_up[0]), .i1 (cr4_up[1]), .i2 (cr4_up[2]), .i3 (cr4_up[3]),
  .en (push|pop),
  .o0 (dec_4_16_row[0]), .o8  (dec_4_16_row[8]),
  .o1 (dec_4_16_row[1]), .o9  (dec_4_16_row[9]),
  .o2 (dec_4_16_row[2]), .o10 (dec_4_16_row[10]),
  .o3 (dec_4_16_row[3]), .o11 (dec_4_16_row[11]),
  .o4 (dec_4_16_row[4]), .o12 (dec_4_16_row[12]),
  .o5 (dec_4_16_row[5]), .o13 (dec_4_16_row[13]),
  .o6 (dec_4_16_row[6]), .o14 (dec_4_16_row[14]),
  .o7 (dec_4_16_row[7]), .o15 (dec_4_16_row[15])
);

generate
  for (row = 0; row < 16; row = row + 1) begin : g0_memory_row
    for (col = 0; col < 8; col = col + 1) begin : g1_memory_col
      FDCE #(.INIT (1'b0)) g0_FDCE_memory_matrix (
        .Q   (    data_out[col]),
        .C   (            clock),
        .CE  (dec_4_16_row[row]),
        .CLR (            reset),
        .D   (     data_in[col])
      );
    end
  end
endgenerate

endmodule
