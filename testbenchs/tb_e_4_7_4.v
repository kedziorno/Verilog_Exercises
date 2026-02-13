`timescale 1ns / 1ps

///////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   20:58:16 02/13/2026
// Design Name:   e_4_7_4
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/testbenchs/tb_e_4_7_4.v
// Project Name:  pong_p_chu
// Target Device: -
// Tool versions: -
// Description:   Heartbeat circuit
//
// Verilog Test Fixture created by ISE for module: e_4_7_4
//
// Dependencies: -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
///////////////////////////////////////////////////////////////////////////////

module tb_counter_3_up_seq;

// Inputs
reg clock = 0;
reg reset;
reg enable = 1'b1;

// Outputs
wire [1:0] counter_out;

always clock = #5 ~clock;

// Instantiate the Unit Under Test (UUT)
counter_3_up_seq uut (
.counter_out (counter_out),
.clock (clock),
.reset (reset),
.enable (enable)
);

initial begin
// Initialize Inputs
reset = 1;
// Wait 100 ns for global reset to finish
#102.5;
reset = 0;

// Add stimulus here
#100;
$finish;

end

endmodule

module tb_e_4_7_4;

// Inputs
reg clock = 0;
reg reset;

// Outputs
wire [3:0] anode;
wire [6:0] segment;

always clock = #1 ~clock; // 100MHz
//always clock = #10 ~clock; // 50MHz

// Instantiate the Unit Under Test (UUT)
e_4_7_4 uut (
.anode(anode),
.segment(segment),
.clock(clock),
.reset(reset)
);

initial begin
// Initialize Inputs
clock = 0;
reset = 1;

// Wait 100 ns for global reset to finish
#100;
reset = 0;

// Add stimulus here
#(20971520*50); // 100MHz - 72Hz
//#(10485760*50); // 50MHz - 72Hz
$finish;
end

endmodule

