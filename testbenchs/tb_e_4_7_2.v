`timescale 1ns / 1ps

///////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   21:44:15 02/09/2026
// Design Name:   e_4_7_2
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/tb_e_4_7_2.v
// Project Name:  pong_p_chu
// Target Device: -
// Tool versions: -
// Description:   PWM and LED dimmer
//
// Verilog Test Fixture created by ISE for module: e_4_7_2
//
// Dependencies:  -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
///////////////////////////////////////////////////////////////////////////////

module tb_e_4_7_2;

// Inputs
reg clock = 0, reset;
reg [3:0] w;

// Outputs
wire pwm;

// Instantiate the Unit Under Test (UUT)
e_4_7_2 uut (
.pwm (pwm),
.clock (clock),
.reset (reset),
.w (w)
);

always clock = #5 ~clock;

initial begin
// Initialize Inputs
w = 0;
reset = 1;
// Wait 100 ns for global reset to finish
#110;
reset = 0;

// Add stimulus here
w = 4'd01; # (48 * 10);
w = 4'd03; # (48 * 10);
w = 4'd05; # (48 * 10);
w = 4'd07; # (48 * 10);
w = 4'd09; # (48 * 10);
w = 4'd11; # (48 * 10);
w = 4'd13; # (48 * 10);
w = 4'd15; # (48 * 10);
w = 4'd00; # (48 * 10);
w = 4'd14; # (48 * 10);
w = 4'd12; # (48 * 10);
w = 4'd10; # (48 * 10);
w = 4'd08; # (48 * 10);
w = 4'd06; # (48 * 10);
w = 4'd04; # (48 * 10);
w = 4'd02; # (48 * 10);
$finish;

end

endmodule
