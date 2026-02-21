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
// Additional Comments: -
//
///////////////////////////////////////////////////////////////////////////////
module e_4_7_6 (anode, segment, clock, reset, up, clr, enable);
output anode, segment;
input clock, reset, up, clr, enable;

(* keep_hierarchy = "yes" *) (* keep = "true" *) (* dont_touch = "yes" *) wire [3:0] anode;
(* keep_hierarchy = "yes" *) (* keep = "true" *) (* dont_touch = "yes" *) wire [6:0] segment;
(* keep_hierarchy = "yes" *) (* keep = "true" *) (* dont_touch = "yes" *) wire clock, reset, up, clr, enable;

(* keep_hierarchy = "yes" *) (* keep = "true" *) (* dont_touch = "yes" *) wire [3:0] cr4_0_9_sub_sec, cr4_0_9_sec_a, cr4_0_5_sec_b, cr4_0_9_min;
(* keep_hierarchy = "yes" *) (* keep = "true" *) (* dont_touch = "yes" *) wire tick_0_9_sub_sec, tick_0_9_sec_a, tick_0_5_sec_b, tick_0_9_min;
assign tick_0_9_sub_sec =
   cr4_0_9_sub_sec[3] &
  ~cr4_0_9_sub_sec[2] &
   cr4_0_9_sub_sec[1] &
  ~cr4_0_9_sub_sec[0];
assign tick_0_9_sec_a =
   cr4_0_9_sec_a[3] &
  ~cr4_0_9_sec_a[2] &
   cr4_0_9_sec_a[1] &
  ~cr4_0_9_sec_a[0];
assign tick_0_5_sec_b =
  ~cr4_0_5_sec_b[3] &
   cr4_0_5_sec_b[2] &
   cr4_0_5_sec_b[1] &
  ~cr4_0_5_sec_b[0];
assign tick_0_9_min =
   cr4_0_9_min[3] &
  ~cr4_0_9_min[2] &
   cr4_0_9_min[1] &
  ~cr4_0_9_min[0];

(* keep_hierarchy = "yes" *) (* keep = "true" *) (* dont_touch = "yes" *) counter_4_seq cr4_0_9_sub_sec_uut (
  .counter_out (cr4_0_9_sub_sec         ),
  .clock       (clock                   ),
  .reset       (reset | tick_0_9_sub_sec),
  .enable      (enable                  )
);

(* keep_hierarchy = "yes" *) (* keep = "true" *) (* dont_touch = "yes" *) counter_4_seq cr4_0_9_sec_a_uut (
  .counter_out (cr4_0_9_sec_a         ),
  .clock       (tick_0_9_sub_sec      ),
  .reset       (reset | tick_0_9_sec_a),
  .enable      (enable                )
);

(* keep_hierarchy = "yes" *) (* keep = "true" *) (* dont_touch = "yes" *) counter_4_seq cr4_0_5_sec_b_uut (
  .counter_out (cr4_0_5_sec_b         ),
  .clock       (tick_0_9_sec_a        ),
  .reset       (reset | tick_0_5_sec_b),
  .enable      (enable                )
);

(* keep_hierarchy = "yes" *) (* keep = "true" *) (* dont_touch = "yes" *) counter_4_seq cr4_0_9_min_uut (
  .counter_out (cr4_0_9_min         ),
  .clock       (tick_0_5_sec_b      ),
  .reset       (reset | tick_0_9_min),
  .enable      (enable              )
);

endmodule
