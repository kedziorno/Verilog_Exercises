`timescale 1ns / 1ps

///////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   18:54:13 02/21/2026
// Design Name:   e_4_7_6
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/testbenchs/tb_e_4_7_6.v
// Project Name:  pong_p_chu
// Target Device: -
// Tool versions: -
// Description:   -
//
// Verilog Test Fixture created by ISE for module: e_4_7_6
//
// Dependencies: -
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
///////////////////////////////////////////////////////////////////////////////

module tb_counter_0_9_up_seq();

// Inputs
reg clock = 0;
reg reset;
reg enable = 1'b1;

// Outputs
wire [3:0] counter_out;

always clock = #5 ~clock;

// Instantiate the Unit Under Test (UUT)
counter_0_9_up_seq uut (
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

module tb_counter_0_9_down_seq();

// Inputs
reg clock = 0;
reg reset;
reg enable = 1'b1;

// Outputs
wire [3:0] counter_out;

always clock = #5 ~clock;

// Instantiate the Unit Under Test (UUT)
counter_0_9_down_seq uut (
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

module tb_counter_9_0_down_seq();

// Inputs
reg clock = 0;
reg reset;
reg enable = 1'b1;

// Outputs
wire [3:0] counter_out;

always clock = #5 ~clock;

// Instantiate the Unit Under Test (UUT)
counter_9_0_down_seq uut (
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

module tb_e_4_7_6;

// Inputs
reg clock = 0;
reg reset;
reg up;
reg clr;
reg enable;

// Outputs
wire [3:0] anode;
wire [6:0] segment;

// Instantiate the Unit Under Test (UUT)
e_4_7_6 uut (
.anode(anode),
.segment(segment),
.clock(clock),
.reset(reset),
.up(up),
.clr(clr),
.enable(enable)
);

//always clock = #50000000.0 ~clock; // 100 ms sub-seconds PAR
always clock = #5 ~clock;

initial begin
// Initialize Inputs
reset = 1;
up = 0;
clr = 0;
enable = 0;

// Wait 100 ns for global reset to finish
#107.5;
reset = 0;

// Add stimulus here
enable = 1; up = 0; #239885.2;
enable = 1; up = 1; #280;
enable = 1; up = 0; #250;
enable = 1; up = 1; #250;
$finish;

end

endmodule

