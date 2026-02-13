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
// Description:     Heartbeat circuit
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
///////////////////////////////////////////////////////////////////////////////
module comp_eq24 (eq24, x, y);
  output eq24;
  input x, y;

  wire eq24;
  wire [23:0] x, y;

  wire eq4_6, eq4_5, eq4_4, eq4_3, eq4_2, eq4_1;

  comp_eq4 comp6_uut (
    .eq4 (eq4_6   ),
    .x   (x[23:20]),
    .y   (y[23:20])
  );
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

  assign eq24 = eq4_6 & eq4_5 & eq4_4 & eq4_3 & eq4_2 & eq4_1;
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

module e_4_7_4 (anode, segment, clock, reset);
output anode, segment;
input clock, reset;

wire [3:0] anode;
wire [6:0] segment;
wire clock, reset;

genvar i;

localparam hz72_100 = 24'b000101010011000101011001;
localparam hz72_50 = 24'b000010101001100010101100;

localparam anode_1 = 4'b1001;
localparam anode_2 = 4'b0110;

localparam segment_1_a = 7'b0110000;
localparam segment_1_b = 7'b0000110;

localparam segment_2_a = 7'b0000110;
localparam segment_2_b = 7'b0110000;

wire tick_72hz;
wire cr4_1_en, cr4_2_en, cr4_3_en, cr4_4_en, cr4_5_en;
wire [3:0] cr4_0, cr4_1, cr4_2, cr4_3, cr4_4, cr4_5;
wire [1:0] counter_3_out;
wire [3:0] mux3_a_anode;
wire [6:0] mux3_a_segment;
wire [23:0] cntr4_24;

assign cr4_1_en = cr4_0[3] & cr4_0[2] & cr4_0[1] & cr4_0[0];
assign cr4_2_en = (cr4_1[3] & cr4_1[2] & cr4_1[1] & cr4_1[0]) & cr4_1_en;
assign cr4_3_en = (cr4_2[3] & cr4_2[2] & cr4_2[1] & cr4_2[0]) & cr4_2_en;
assign cr4_4_en = (cr4_3[3] & cr4_3[2] & cr4_3[1] & cr4_3[0]) & cr4_3_en;
assign cr4_5_en = (cr4_4[3] & cr4_4[2] & cr4_4[1] & cr4_4[0]) & cr4_4_en;
assign cntr4_24 = {cr4_5, cr4_4, cr4_3, cr4_2, cr4_1, cr4_0};

counter_4_seq cr4_0_uut (
  .counter_out (cr4_0),
  .clock       (clock),
  .reset       (reset),
  .enable      (1'b1 )
);

counter_4_seq cr4_1_uut (
  .counter_out (cr4_1   ),
  .clock       (clock   ),
  .reset       (reset   ),
  .enable      (cr4_1_en)
);

counter_4_seq cr4_2_uut (
  .counter_out (cr4_2   ),
  .clock       (clock   ),
  .reset       (reset   ),
  .enable      (cr4_2_en)
);

counter_4_seq cr4_3_uut (
  .counter_out (cr4_3   ),
  .clock       (clock   ),
  .reset       (reset   ),
  .enable      (cr4_3_en)
);

counter_4_seq cr4_4_uut (
  .counter_out (cr4_4   ),
  .clock       (clock   ),
  .reset       (reset   ),
  .enable      (cr4_4_en)
);

counter_4_seq cr4_5_uut (
  .counter_out (cr4_5   ),
  .clock       (clock   ),
  .reset       (reset   ),
  .enable      (cr4_5_en)
);

comp_eq24 comp_eq24_tick_72hz_uut (
  .eq24 (tick_72hz),
  .x    (cntr4_24 ),
  .y    (hz72_100 )
);

counter_3_up_seq uut (
  .counter_out (counter_3_out),
  .clock       (clock        ),
  //.clock       (tick_72hz    ),
  .reset       (reset        ),
  .enable      (1'b1         )
);

generate
  for (i = 0; i < 4; i = i + 1) begin : g0_mux3_a_anode
    m2_1 mux3_a_anode_uut (
      .o  ( mux3_a_anode[i]),
      .d1 (      anode_1[i]),
      .d0 (      anode_1[i]),
      .s0 (counter_3_out[0])
    );
  end
endgenerate

generate
  for (i = 0; i < 4; i = i + 1) begin : g0_mux3_b_anode
    m2_1 mux3_b_anode_uut (
      .o  (        anode[i]),
      .d1 (      anode_2[i]),
      .d0 ( mux3_a_anode[i]),
      .s0 (counter_3_out[1])
    );
  end
endgenerate

generate
  for (i = 0; i < 7; i = i + 1) begin : g0_mux3_a_segment
    m2_1 mux3_a_segment_uut (
      .o  (mux3_a_segment[i]),
      .d1 (   segment_1_b[i]),
      .d0 (   segment_1_a[i]),
      .s0 ( counter_3_out[0])
    );
  end
endgenerate

generate
  for (i = 0; i < 7; i = i + 1) begin : g0_mux3_b_segment
    m2_1 mux3_b_segment_uut (
      .o  (       segment[i]),
      .d1 (   segment_2_a[i]),
      .d0 (mux3_a_segment[i]),
      .s0 ( counter_3_out[1])
    );
  end
endgenerate

endmodule
