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
// Description:     Rotating square circuit / 7seg LCD x 4 anode,
//                  with signals en (enable) and cw (clockwise / anticlockwise)
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Logic experssions.
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
  assign y[1] = ~(x[1] ^ x[0]);
  assign y[2] =
    (~x[2] & ~x[1] & ~x[0]) |
    ( x[2] &          x[0]) |
    ( x[2] &  x[1]        ) ;
endmodule

module counter_down_3_seq (counter_out, clock, reset, enable);
  output counter_out;
  input clock, reset, enable;

  reg [2:0] counter_out;
  wire clock, reset, enable;

  wire [2:0] counter_3_in, counter_3_out;

  counter_down_3 cr_d3_com_uut (
    .y (counter_3_out),
    .x (counter_3_in )
  );

  genvar i;
  generate
    for (i = 0; i < 3; i = i + 1) begin : g0_memory
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

module counter_up_3_seq (counter_out, clock, reset, enable);
  output counter_out;
  input clock, reset, enable;

  reg [2:0] counter_out;
  wire clock, reset, enable;

  wire [2:0] counter_3_in, counter_3_out;

  counter_up_3 cr_u3_com_uut (
    .y (counter_3_out),
    .x (counter_3_in )
  );

  genvar i;
  generate
    for (i = 0; i < 3; i = i + 1) begin : g0_memory
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

module counter_up_2 (y, x);
  output y;
  input x;

  wire [1:0] y, x;

  assign y[0] =       ~x[0];
  assign y[1] = x[1] ^ x[0];
endmodule

module counter_down_2 (y, x);
  output y;
  input x;

  wire [1:0] y, x;

  assign y[0] =         ~x[0];
  assign y[1] = ~(x[1] ^ x[0]);
endmodule

module counter_up_2_seq (counter_out, clock, reset, enable);
  output counter_out;
  input clock, reset, enable;

  reg [1:0] counter_out;
  wire clock, reset, enable;

  wire [1:0] counter_2_in, counter_2_out;

  counter_up_2 cr_u2_com_uut (
    .y (counter_2_out),
    .x (counter_2_in )
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
      .Q(counter_2_in[i]), // Data output
      .C(clock),           // Clock input
      .CE(enable),         // Clock enable input
      .CLR(reset),         // Asynchronous clear input
      .D(counter_2_out[i]) // Data input
      );
      // End of FDCE_inst instantiation
    end
  endgenerate

  always @(*) counter_out = counter_2_in;
endmodule

module counter_down_2_seq (counter_out, clock, reset, enable);
  output counter_out;
  input clock, reset, enable;

  reg [1:0] counter_out;
  wire clock, reset, enable;

  wire [1:0] counter_2_in, counter_2_out;

  counter_down_2 cr_d2_com_uut (
    .y (counter_2_out),
    .x (counter_2_in )
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
      .Q(counter_2_in[i]), // Data output
      .C(clock),           // Clock input
      .CE(enable),         // Clock enable input
      .CLR(reset),         // Asynchronous clear input
      .D(counter_2_out[i]) // Data input
      );
      // End of FDCE_inst instantiation
    end
  endgenerate

  always @(*) counter_out = counter_2_in;
endmodule

module e_4_7_3 (anode, segment, clock, reset, en, cw);
  output anode, segment;
  input clock, reset, en, cw;

  wire [3:0] anode;
  wire [6:0] segment;
  wire clock, reset, en, cw;

  genvar i;

  localparam box_up_seg = 7'b1100011;
  localparam box_down_seg = 7'b0011101;

  parameter [3:0]
  anode_0 = 4'b0111,
  anode_1 = 4'b1011,
  anode_2 = 4'b1101,
  anode_3 = 4'b1110;

  wire tick4;
  wire tick4_wait;
  wire stop_wait_counter;
  wire mux2_segment_up_down_switch;
  wire mux2_segment_up_down_transit;
  wire mux2_segment_up_down_switch_cw;
  wire [1:0] mux4_cr_u2_anode;
  wire [1:0] mux4_cr_d2_anode, mux4_cr_d2_anode_reg;
  wire [1:0] mux4_cr_2_anode;
  wire [3:0] anode_array [0:3];
  wire [3:0] counter_4_out_1;
  wire [3:0] counter_4_out_2;

  assign anode_array[0] = anode_0;
  assign anode_array[1] = anode_1;
  assign anode_array[2] = anode_2;
  assign anode_array[3] = anode_3;
  assign tick4 = &counter_4_out_1;
  assign tick4_1 = &counter_4_out_2;
  assign mux4_cr_d2_anode_00 = ~mux4_cr_d2_anode[1] & ~mux4_cr_d2_anode[0]; // 0
  assign mux4_cr_d2_anode_11 =  mux4_cr_d2_anode[1] &  mux4_cr_d2_anode[0]; // 3

  counter_4_seq tick_4_upper (
    .counter_out (counter_4_out_1),
    .clock       (clock          ),
    .reset       (reset          ),
    .enable      (en             )
  );

  t_flipflop tff_stop_wait_counter (
    .Q   (stop_wait_counter ),
    .C   (clock             ),
    .CE  (~stop_wait_counter),
    .CLR (reset             ),
    .T   (tick4             )
  );

  counter_4_seq tick_4_lower (
    .counter_out (counter_4_out_2  ),
    .clock       (clock            ),
    .reset       (reset            ),
    .enable      (stop_wait_counter)
  );

  FDCE #(.INIT(1'b0)) FDCE_tick4_wait (
    .Q   (tick4_wait),
    .C   (     clock),
    .CE  (      1'b1),
    .CLR (     reset),
    .D   (   tick4_1)
  );

  counter_up_2_seq cr_u2_uut (
    .counter_out (mux4_cr_u2_anode),
    .clock       (clock           ),
    .reset       (reset           ),
    .enable      (tick4_wait      )
  );

  counter_down_2_seq cr_d2_uut (
    .counter_out (mux4_cr_d2_anode),
    .clock       (clock           ),
    .reset       (reset           ),
    .enable      (tick4           )
  );

  generate
    for (i = 0; i < 2; i = i + 1) begin : g0_FDCE_mux4_cr_d2_anode
      FDCE #(.INIT(1'b0)) FDCE_mux4_cr_d2_anode (
        .Q   (mux4_cr_d2_anode_reg[i]),
        .C   (                  clock),
        .CE  (                   1'b1),
        .CLR (                  reset),
        .D   (    mux4_cr_d2_anode[i])
      );
    end
  endgenerate

  m2_1 mux2_segment_up_down_switch_cw_uut (
    .o  (mux2_segment_up_down_switch_cw),
    .d1 (~mux2_segment_up_down_switch  ),
    .d0 (mux2_segment_up_down_switch   ),
    .s0 (cw                            )
  );

  generate
    for (i = 0; i < 2; i = i + 1) begin : g0_mux2_cr_up_down_2
      m2_1 mux2_cr_up_down_2 (
        .o  (            mux4_cr_2_anode[i]),
        .d0 (       mux4_cr_d2_anode_reg[i]),
        .d1 (           mux4_cr_u2_anode[i]),
        .s0 (mux2_segment_up_down_switch_cw)
      );
    end
  endgenerate

  generate
    for (i = 0; i < 4; i = i + 1) begin : g0_mux4_anode
      mux_41 mux4_anode_uut (
        .y (       anode[i]),
        .x ( anode_array[i]),
        .s (mux4_cr_2_anode)
      );
    end
  endgenerate

  FDCE #(.INIT(1'b0)) FDCE_mux2_segment_up_down_transit (
    .Q   (mux2_segment_up_down_transit),
    .C   (clock                       ),
    .CE  (1'b1                        ),
    .CLR (mux4_cr_d2_anode_00         ),
    .D   (mux4_cr_d2_anode_11         )
  );

  t_flipflop tff_switch_00_11 (
    .Q   (mux2_segment_up_down_switch ),
    .C   (mux2_segment_up_down_transit),
    .CE  (1'b1                        ),
    .CLR (reset                       ),
    .T   (1'b1                        )
  );

  generate
    for (i = 0; i < 7; i = i + 1) begin : g0_mux2_segment_switch
      m2_1 mux2_segment_uut (
        .o  (                    segment[i]),
        .d1 (               box_down_seg[i]),
        .d0 (                 box_up_seg[i]),
        .s0 (mux2_segment_up_down_switch_cw)
      );
    end
  endgenerate
endmodule
