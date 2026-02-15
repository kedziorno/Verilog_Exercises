`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     20:54:40 02/13/2026
// Design Name:     pong_p_chu
// Module Name:     e_4_7_4
// Project Name:    -
// Target Devices:  -
// Tool versions:   -
// Description:     Heartbeat circuit at 72Hz (50MHz main clock)
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
///////////////////////////////////////////////////////////////////////////////
module comp_eq20 (eq20, x, y);
  output eq20;
  input x, y;

  wire eq20;
  wire [19:0] x, y;

  wire eq4_5, eq4_4, eq4_3, eq4_2, eq4_1;

  comp_eq4 comp5_uut (
    .eq4 (eq4_5   ),
    .x   (x[19:16]),
    .y   (y[19:16])
  );
  comp_eq4 comp4_uut (
    .eq4 (eq4_4   ),
    .x   (x[15:12]),
    .y   (y[15:12])
  );
  comp_eq4 comp3_uut (
    .eq4 (eq4_3  ),
    .x   (x[11:8]),
    .y   (y[11:8])
  );
  comp_eq4 comp2_uut (
    .eq4 (eq4_2 ),
    .x   (x[7:4]),
    .y   (y[7:4])
  );
  comp_eq4 comp1_uut (
    .eq4 (eq4_1 ),
    .x   (x[3:0]),
    .y   (y[3:0])
  );

  assign eq20 = eq4_5 & eq4_4 & eq4_3 & eq4_2 & eq4_1;
endmodule

module counter_3_up_com (y, x);
  output y;
  input x;

  wire [1:0] y, x;

  assign y[0] = ~x[1] & ~x[0];
  assign y[1] = ~x[1] &  x[0];
endmodule

module counter_3_up_seq (counter_out, clock, reset, enable);
  output counter_out;
  input clock, reset, enable;

  reg [1:0] counter_out;
  wire clock, reset, enable;

  wire [1:0] counter_3_in, counter_3_out;

  counter_3_up_com cr_3u_com_uut (
    .y (counter_3_out),
    .x (counter_3_in )
  );

  genvar i;
  generate
    for (i = 0; i < 2; i = i + 1) begin : g0_memory
      // FDCE: Single Data Rate D Flip-Flop with Asynchronous Clear and
      //       Clock Enable (posedge clk).
      //       All families.
      // Xilinx HDL Libraries Guide, version 10.1.2
      FDCE #(
      .INIT(1'b0)          // Initial value of register (1'b0 or 1'b1)
      ) FDCE_inst (
      .Q(counter_3_in[i]), // Data output
      .C(clock),           // Clock input
      .CE(enable),         // Clock enable input
      .CLR(reset),         // Asynchronous clear input
      .D(counter_3_out[i]) // Data input
      );
      // End of FDCE_inst instantiation
    end
  endgenerate

  always @(*) counter_out = counter_3_in;
endmodule

module mux41_segment (y, x0, x1, x2, x3, s);
  output y;
  input x0, x1, x2, x3, s;

  wire [6:0] y;
  wire [6:0] x0, x1, x2, x3;
  wire [1:0] s;

  wire [6:0] x [0:3];
  assign x[0] = x0;
  assign x[1] = x1;
  assign x[2] = x2;
  assign x[3] = x3;
  genvar i;

  generate
    for (i = 0; i < 7; i = i + 1) begin : g0_mux41_7
      mux41 mux41_7_uut (
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

module e_4_7_4 (anode, segment, clock, reset);
  output anode, segment;
  input clock, reset;

  wire [3:0] anode;
  wire [6:0] segment;
  wire clock, reset;

  genvar i;

  localparam hz72_100 = 20'b01010100110001010110;
  localparam hz72_50 = 20'b00101010011000101011;

  parameter [3:0]
  anode_0 = 4'b0111,
  anode_1 = 4'b1011,
  anode_2 = 4'b1101,
  anode_3 = 4'b1110;

  wire cr_u2_anode_11;
  wire tick_72hz, tick_72hz_reset;
  wire cr4_1_en, cr4_2_en, cr4_3_en, cr4_4_en;
  wire [1:0] cr3_segment;
  wire [1:0] cr_u2_anode;
  wire [3:0] anode_array [0:3];
  wire [3:0] cr4_0, cr4_1, cr4_2, cr4_3, cr4_4;
  wire [6:0] segment_a;
  wire [6:0] segment_b;
  wire [6:0] segment_c;
  wire [6:0] mux3_a_segment;
  wire [6:0] segment_0, segment_l, segment_r;
  wire [19:0] cntr4_20;

  assign segment_l = 7'b0110000;
  assign segment_r = 7'b0000110;
  assign anode_array[0] = anode_0;
  assign anode_array[1] = anode_1;
  assign anode_array[2] = anode_2;
  assign anode_array[3] = anode_3;
  assign cr4_1_en = cr4_0[3] & cr4_0[2] & cr4_0[1] & cr4_0[0];
  assign cr4_2_en = (cr4_1[3] & cr4_1[2] & cr4_1[1] & cr4_1[0]) & cr4_1_en;
  assign cr4_3_en = (cr4_2[3] & cr4_2[2] & cr4_2[1] & cr4_2[0]) & cr4_2_en;
  assign cr4_4_en = (cr4_3[3] & cr4_3[2] & cr4_3[1] & cr4_3[0]) & cr4_3_en;
  assign cntr4_20 = {cr4_4, cr4_3, cr4_2, cr4_1, cr4_0};
  assign cr_u2_anode_11 = cr_u2_anode[1] & cr_u2_anode[0];

  generate
    for (i = 0; i < 7; i = i + 1) begin : g0_gnd_segment
      GND gnd_segment_uut (.G (segment_0[i]));
    end
  endgenerate

  counter_4_seq cr4_0_uut (
    .counter_out (cr4_0                  ),
    .clock       (clock                  ),
    .reset       (reset | tick_72hz_reset),
    .enable      (1'b1                   )
  );

  counter_4_seq cr4_1_uut (
    .counter_out (cr4_1                  ),
    .clock       (clock                  ),
    .reset       (reset | tick_72hz_reset),
    .enable      (cr4_1_en               )
  );

  counter_4_seq cr4_2_uut (
    .counter_out (cr4_2                  ),
    .clock       (clock                  ),
    .reset       (reset | tick_72hz_reset),
    .enable      (cr4_2_en               )
  );

  counter_4_seq cr4_3_uut (
    .counter_out (cr4_3                  ),
    .clock       (clock                  ),
    .reset       (reset | tick_72hz_reset),
    .enable      (cr4_3_en               )
  );

  counter_4_seq cr4_4_uut (
    .counter_out (cr4_4                  ),
    .clock       (clock                  ),
    .reset       (reset | tick_72hz_reset),
    .enable      (cr4_4_en               )
  );

  comp_eq20 comp_eq20_tick_72hz_uut (
    .eq20 (tick_72hz),
    .x    (cntr4_20 ),
    .y    (hz72_50  )
  );

  // FDCE: Single Data Rate D Flip-Flop with Asynchronous Clear and
  //       Clock Enable (posedge clk).
  //       All families.
  // Xilinx HDL Libraries Guide, version 10.1.2
  FDCE #(.INIT(1'b0)) FDCE_tick_72hz_reset (
  .Q   (tick_72hz_reset), // Data output
  .C   (clock          ), // Clock input
  .CE  (1'b1           ), // Clock enable input
  .CLR (reset          ), // Asynchronous clear input
  .D   (tick_72hz      )  // Data input
  );
  // End of FDCE_inst instantiation

  counter_3_up_seq cr3_segment_uut (
    .counter_out (cr3_segment   ),
    .clock       (tick_72hz     ),
    .reset       (reset         ),
    .enable      (cr_u2_anode_11)
  );

  counter_up_2_seq cr_u2_anode_uut (
    .counter_out (cr_u2_anode),
    .clock       (tick_72hz  ),
    .reset       (reset      ),
    .enable      (1'b1       )
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

  mux41_segment mux4_segment_a_uut (
    .y  (segment_a  ),
    .x0 (segment_0  ),
    .x1 (segment_l  ),
    .x2 (segment_r  ),
    .x3 (segment_0  ),
    .s  (cr_u2_anode)
  );

  mux41_segment mux4_segment_b_uut (
    .y  (segment_b  ),
    .x0 (segment_0  ),
    .x1 (segment_r  ),
    .x2 (segment_l  ),
    .x3 (segment_0  ),
    .s  (cr_u2_anode)
  );

  mux41_segment mux4_segment_c_uut (
    .y  (segment_c  ),
    .x0 (segment_r  ),
    .x1 (segment_0  ),
    .x2 (segment_0  ),
    .x3 (segment_l  ),
    .s  (cr_u2_anode)
  );

  generate
    for (i = 0; i < 7; i = i + 1) begin : g0_mux3_a_segment
      m2_1 mux3_a_segment_uut (
        .o  (mux3_a_segment[i]),
        .d1 (     segment_b[i]),
        .d0 (     segment_a[i]),
        .s0 (   cr3_segment[0])
      );
    end
  endgenerate

  generate
    for (i = 0; i < 7; i = i + 1) begin : g0_mux3_b_segment
      m2_1 mux3_b_segment_uut (
        .o  (       segment[i]),
        .d1 (     segment_c[i]),
        .d0 (mux3_a_segment[i]),
        .s0 (   cr3_segment[1])
      );
    end
  endgenerate
endmodule
