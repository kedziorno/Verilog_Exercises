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

genvar row, col;

wire [3:0] cr4;

counter_4_seq cr4_0_uut (
.counter_out (cr4  ),
.clock       (clock),
.reset       (reset),
.enable      (push )
);

wire [15:0] dec_4_16_row;
sch_e_2_9_2_7 dec_4_16_uut (
  .i0 (cr4[0]), .i1 (cr4[1]), .i2 (cr4[2]), .i3 (cr4[3]),
  .en (push),
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
