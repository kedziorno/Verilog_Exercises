`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     21:42:41 02/09/2026
// Design Name:     pong_p_chu
// Module Name:     e_4_7_2
// Project Name:    -
// Target Devices:  -
// Tool versions:   -
// Description:     PWM and LED dimmer
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Logic experssions. PWM works from 0, but to 2^N-1
//                      variables eg. with w=1111 filling have 150ns (not 160)
//                      at 10ns clock period (100 MHz), so logical step is
//                      turn off PWM to have all 100% filling.
//
///////////////////////////////////////////////////////////////////////////////
module e_4_7_2 (pwm, clock, reset, w);
  output pwm;
  input clock, reset, w;

  wire pwm, clock, reset;
  wire [3:0] w;

  wire reset_sr;
  wire [3:0] cntr_cr4;
  wire pwm_sr;
  wire set_sr;
  wire zero_w;

  assign set_sr = ~|cntr_cr4;
  assign zero_w = ~w[3] & ~w[2] & ~w[1] & ~w[0];

  comp_eq4 eq4_pwm_uut (
    .eq4 (reset_sr),
    .x   (cntr_cr4),
    .y   (w       )
  );

  counter_4_seq counter_4_seq_uut (
    .counter_out (cntr_cr4),
    .clock       (clock   ),
    .reset       (reset   ),
    .enable      (1'b1    )
  );

  sr_flop sr_flop_uut (
    .q (pwm_sr   ),
    .s (~set_sr  ),
    .r (~reset_sr)
  );

  m2_1 pwm_zero (
    .o  (pwm   ),
    .d0 (pwm_sr),
    .d1 (1'b0  ),
    .s0 (zero_w)
  );

endmodule
