`timescale 1ns / 1ps

///////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   13:05:02 02/08/2026
// Design Name:   e_4_7_1
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/testbenchs/tb_e_4_7_1.v
// Project Name:  pong_p_chu
// Target Device: -
// Tool versions: -
// Description:   -
//
// Verilog Test Fixture created by ISE for module: counter_4_com
//
// Dependencies:  -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
///////////////////////////////////////////////////////////////////////////////

module tb_counter_4_com;

// Inputs
reg [3:0] counter_in;

// Outputs
wire [3:0] counter_out;

// Instantiate the Unit Under Test (UUT)
counter_4_com uut (
.counter_out (counter_out),
.counter_in  (counter_in )
);

initial begin
// Initialize Inputs
counter_in = 0;

// Wait 100 ns for global reset to finish
//#10;

// Add stimulus here
counter_in = 4'd0; #10;
counter_in = 4'd1; #10;
counter_in = 4'd2; #10;
counter_in = 4'd3; #10;
counter_in = 4'd4; #10;
counter_in = 4'd5; #10;
counter_in = 4'd6; #10;
counter_in = 4'd7; #10;
counter_in = 4'd8; #10;
counter_in = 4'd9; #10;
counter_in = 4'd10; #10;
counter_in = 4'd11; #10;
counter_in = 4'd12; #10;
counter_in = 4'd13; #10;
counter_in = 4'd14; #10;
counter_in = 4'd15; #10;
$finish;

end

endmodule

module tb_counter_4_seq;

// Inputs
reg clock = 0;
reg reset;
reg enable;

// Outputs
wire [3:0] counter_out;

always clock = #5 ~clock;

// Instantiate the Unit Under Test (UUT)
counter_4_seq uut (
  .counter_out (counter_out),
  .clock       (clock),
  .reset       (reset),
  .enable      (enable)
);

initial begin
// Initialize Inputs
reset = 1;
enable = 0;

// Wait 100 ns for global reset to finish
#9.997;
#100; // GSR signal in FDCE
reset = 0;

// Add stimulus here
enable = 0; # (9.99);
enable = 1; # (4.111 * 10);
enable = 0; # (10 * 10);
enable = 1; # (10.222 * 10);
enable = 0; # (10 * 10);
enable = 1; # (8.333 * 10);
enable = 0; # (10 * 10);
enable = 1; # (2.444 * 10);
enable = 0; # (10 * 10);
enable = 1; # (5.555 * 10);
enable = 0; # (10 * 10);
enable = 1; # (15.666 * 10);
enable = 0; # (10 * 10);
enable = 1; # (1.777 * 10);
enable = 0; # (10 * 10);
enable = 1; # (32 * 10);
enable = 0; # (9.99);
$finish;

end

endmodule

module tb_comp_eq4;

// Inputs
reg [3:0] x, y;

// Outputs
wire eq4;

// Instantiate the Unit Under Test (UUT)
comp_eq4 uut (
  .eq4 (eq4),
  .x   (x  ),
  .y   (y  )
);

initial begin
// Initialize Inputs
x = 0;
y = 0;

// Wait 100 ns for global reset to finish
#10;

// Add stimulus here
x = 4'd1; y = 4'd0; #10;
x = 4'd3; y = 4'd5; #10;
x = 4'd7; y = 4'd7; #10;
x = 4'd9; y = 4'd2; #10;
x = 4'd0; y = 4'd0; #10;
x = 4'd1; y = 4'd1; #10;
x = 4'd3; y = 4'd5; #10;
x = 4'd2; y = 4'd1; #10;
x = 4'd9; y = 4'd2; #10;
x = 4'd3; y = 4'd3; #10;
$finish;

end

endmodule

module tb_e_4_7_1;

// Inputs
reg clock = 0;
reg reset;
reg [3:0] logic_1;
reg [3:0] logic_0;

// Outputs
wire square_wave;

always clock = #5 ~clock;

// Instantiate the Unit Under Test (UUT)
e_4_7_1 uut (
.square_wave (square_wave),
.clock (clock),
.reset (reset),
.logic_1 (logic_1),
.logic_0 (logic_0)
);

initial begin
// Initialize Inputs
reset = 1;

// Wait 100 ns for global reset to finish
#109.97;
reset = 0;

// Add stimulus here
logic_1 = 4'd9; logic_0 = 4'd8; # (55 * 10);
//reset = 1; #10; reset = 0;
logic_1 = 4'd3; logic_0 = 4'd5; # (64 * 10);
//reset = 1; #10; reset = 0;
logic_1 = 4'd1; logic_0 = 4'd1; # (64 * 10);
//reset = 1; #10; reset = 0;
$finish;

end

endmodule
