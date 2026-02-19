`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     12:09:33 02/08/2026
// Design Name:     pong_p_chu
// Module Name:     e_4_7_1
// Project Name:    -
// Target Devices:  -
// Tool versions:   -
// Description:     Programmable square-wave generator / Programmable PWM
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Logic experssions.
///////////////////////////////////////////////////////////////////////////////

module counter_4_com (counter_out, counter_in);
  output counter_out;
  input counter_in;

  wire [3:0] counter_out, counter_in;

  wire [3:0] x, y;

  assign x = counter_in;

  assign y[0] = ~x[0];
  assign y[1] = x[1] ^ x[0];
  assign y[2] =
    ( x[2] & ~x[1]       ) |
    ( x[2] &        ~x[0]) |
    (~x[2] &  x[1] & x[0]) ;
  assign y[3] =
    (~x[3] &  x[2] & x[1] & x[0]) |
    ( x[3] & ~x[2]              ) |
    ( x[3] &        ~x[1]       ) |
    ( x[3] &               ~x[0]) ;

  assign counter_out = y;
endmodule

module counter_4_seq (counter_out, clock, reset, enable);
  output counter_out;
  input clock, reset, enable;

  reg [3:0] counter_out;
  wire clock, reset, enable;

  wire [3:0] counter_4_in, counter_4_out;

  counter_4_com cr_4_com_uut (
    .counter_out (counter_4_out),
    .counter_in  (counter_4_in )
  );

  genvar i;
  generate
    for (i = 0; i < 4; i = i + 1) begin : g0_memory
      // FDCE: Single Data Rate D Flip-Flop with Asynchronous Clear and
      //       Clock Enable (posedge clk).
      //       All families.
      // Xilinx HDL Libraries Guide, version 10.1.2
      FDCE #(
      .INIT(1'b0)          // Initial value of register (1'b0 or 1'b1)
      ) FDCE_inst (
      .Q(counter_4_in[i]), // Data output
      .C(clock),           // Clock input
      .CE(enable),         // Clock enable input
      .CLR(reset),         // Asynchronous clear input
      .D(counter_4_out[i]) // Data input
      );
      // End of FDCE_inst instantiation
    end
  endgenerate

  always @(*) counter_out = counter_4_in;
endmodule

module comp_eq4 (eq4, x, y);
  output eq4;
  input [3:0] x, y;

  wire eq4;
  wire [3:0] x, y;

  assign eq4 =
    ~((x[3] ^ y[3]) |
      (x[2] ^ y[2]) |
      (x[1] ^ y[1]) |
      (x[0] ^ y[0]));
endmodule

module e_4_7_1 (square_wave, clock, reset, logic_1, logic_0);
  output square_wave;
  input clock, reset, logic_1, logic_0;

  wire square_wave, clock, reset;
  wire [3:0] logic_1, logic_0;

  wire eq4_logic_1, eq4_logic_0;
  wire [3:0] comp_cr4_eq4_1, comp_cr4_eq4_0;
  wire enable = 1'b1;
  wire mode1;
  wire mode0;

  comp_eq4 eq4_logic_1_uut (
    .eq4 (   eq4_logic_1),
    .x   (       logic_1),
    .y   (comp_cr4_eq4_1)
  );

  comp_eq4 eq4_logic_0_uut (
    .eq4 (   eq4_logic_0),
    .x   (       logic_0),
    .y   (comp_cr4_eq4_0)
  );

  counter_4_seq counter_4_seq_logic_1 (
    .counter_out (  comp_cr4_eq4_1),
    .clock       (           clock),
    .reset       ( reset | ~reset1),
    .enable      (enable &   mode1)
  );

  counter_4_seq counter_4_seq_logic_0 (
    .counter_out (       comp_cr4_eq4_0),
    .clock       (                clock),
    .reset       (      reset | ~reset1),
    .enable      (eq4_logic_1 &   mode0)
  );

  // FDCE: Single Data Rate D Flip-Flop with Asynchronous Clear and
  //       Clock Enable (posedge clk).
  //       All families.
  // Xilinx HDL Libraries Guide, version 10.1.2
  FDCPE_1 #(.INIT (1'b0)) FDCPE_reset_counters (
  .Q   (     reset1), // Data output
  .C   (      clock), // Clock input
  .CE  (     ~mode0), // Clock enable input
  .CLR (eq4_logic_0), // Asynchronous clear input
  .D   (       1'b1), // Data input
  .PRE (       1'b1)  // Asynchronous set input
  );
  // End of FDCE_inst instantiation

  // FDCE: Single Data Rate D Flip-Flop with Asynchronous Clear and
  //       Clock Enable (posedge clk).
  //       All families.
  // Xilinx HDL Libraries Guide, version 10.1.2
  FDCE_1 #(.INIT (1'b1)) FDCE_mode_logic_1 (
  .Q   (      mode1), // Data output
  .C   (      clock), // Clock input
  .CE  (     enable), // Clock enable input
  .CLR (eq4_logic_1), // Asynchronous clear input
  .D   (       1'b1)  // Data input
  );
  // End of FDCE_inst instantiation

  // FDCE: Single Data Rate D Flip-Flop with Asynchronous Clear and
  //       Clock Enable (posedge clk).
  //       All families.
  // Xilinx HDL Libraries Guide, version 10.1.2
  FDCE_1 #(.INIT (1'b1)) FDCE_mode_logic_0 (
  .Q   (      mode0), // Data output
  .C   (      clock), // Clock input
  .CE  (     ~mode1), // Clock enable input
  .CLR (eq4_logic_0), // Asynchronous clear input
  .D   (eq4_logic_1)  // Data input
  );
  // End of FDCE_inst instantiation

  // FDCPE: Single Data Rate D Flip-Flop with Asynchronous Clear, Set and
  //        Clock Enable (posedge clk).
  //        All families.
  // Xilinx HDL Libraries Guide, version 10.1.2
  FDCPE_1 #(.INIT (1'b0)) FDCPE_square_wave_output (
  .Q   (square_wave), // Data output
  .C   (      clock), // Clock input
  .CE  (     enable), // Clock enable input
  .CLR (eq4_logic_1), // Asynchronous clear input
  .D   (       1'b1), // Data input
  .PRE (       1'b1)  // Asynchronous set input
  );
  // End of FDCPE_inst instantiation

endmodule
