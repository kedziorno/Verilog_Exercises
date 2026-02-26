`timescale 1ns / 1ns

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

module tb_counter_0_9_up_load_seq();

// Inputs
reg clock = 0;
reg reset = 0;
reg load = 0;
reg enable = 1'b1;
reg [3:0] value = 0;

// Outputs
wire [3:0] counter_out;

always clock = #5 ~clock;

// Instantiate the Unit Under Test (UUT)
counter_0_9_up_seq uut (
.counter_out (counter_out),
.clock (clock),
.reset (reset),
.enable (enable),
.load (load),
.value (value)
);

initial begin
// Initialize Inputs
reset = 1;
// Wait 100 ns for global reset to finish
#102.5;
reset = 0;

// Add stimulus here - load's
#100;
load = 1; value = 3; #10; load = 0; #10; #100;
load = 1; value = 6; #10; load = 0; #10; #100;
load = 1; value = 2; #5; load = 0; #5; #100;
load = 1; value = 5; #2; load = 0; #2; #98; // 5 not load
load = 1; value = 3; #2.45; load = 0; #2.45; #100;
$finish;

end
endmodule

module tb_counter_0_9_down_load_seq();

// Inputs
reg clock = 0;
reg reset = 0;
reg load = 0;
reg enable = 1'b1;
reg [3:0] value = 0;

// Outputs
wire [3:0] counter_out;

always clock = #5 ~clock;

// Instantiate the Unit Under Test (UUT)
counter_0_9_down_seq uut (
.counter_out (counter_out),
.clock (clock),
.reset (reset),
.enable (enable),
.load (load),
.value (value)
);

initial begin
// Initialize Inputs
reset = 1;
// Wait 100 ns for global reset to finish
#102.5;
reset = 0;

// Add stimulus here - load's
#100;
load = 1; value = 3; #10; load = 0; #10; #100;
load = 1; value = 6; #10; load = 0; #10; #100;
load = 1; value = 2; #5; load = 0; #5; #100;
load = 1; value = 5; #2; load = 0; #2; #98; // 5 not load
load = 1; value = 4; #2.45; load = 0; #2.45; #100;
$finish;

end
endmodule

module tb_counter_5_0_down_load_seq();

// Inputs
reg clock = 0;
reg reset = 0;
reg load = 0;
reg enable = 1'b1;
reg [2:0] value = 0;

// Outputs
wire [2:0] counter_out;

always clock = #5 ~clock;

// Instantiate the Unit Under Test (UUT)
counter_5_0_down_seq uut (
.counter_out (counter_out),
.clock (clock),
.reset (reset),
.enable (enable),
.load (load),
.value (value)
);

initial begin
// Initialize Inputs
reset = 1;
// Wait 100 ns for global reset to finish
#102.5;
reset = 0;

// Add stimulus here - load's
#100;
load = 1; value = 3; #10; load = 0; #10; #100;
load = 1; value = 0; #10; load = 1; #10;
load = 1; value = 0; #10; load = 0; #10; #100;
load = 1; value = 2; #5; load = 0; #5; #100;
load = 1; value = 5; #2; load = 0; #2; #98; // 5 not load
load = 1; value = 4; #2.45; load = 0; #2.45; #100;
$finish;

end
endmodule

module tb_counter_9_0_down_load_seq();

// Inputs
reg clock = 0;
reg reset = 0;
reg load = 0;
reg enable = 1'b1;
reg [3:0] value = 0;

// Outputs
wire [3:0] counter_out;

always clock = #5 ~clock;

// Instantiate the Unit Under Test (UUT)
counter_9_0_down_seq uut (
.counter_out (counter_out),
.clock (clock),
.reset (reset),
.enable (enable),
.load (load),
.value (value)
);

initial begin
// Initialize Inputs
reset = 1;
// Wait 100 ns for global reset to finish
#102.5;
reset = 0;

// Add stimulus here - load's
#100;
load = 1; value = 3; #10; load = 0; #10; #100;
load = 1; value = 0; #10; load = 1; #10;
load = 1; value = 0; #10; load = 0; #10; #100;
load = 1; value = 2; #5; load = 0; #5; #100;
load = 1; value = 5; #2; load = 0; #2; #98; // 5 not load
load = 1; value = 4; #2.45; load = 0; #2.45; #100;
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
enable = 1; up = 0; #7001120;
enable = 1; up = 1; #1001120;
enable = 1; up = 0; #1001220;
enable = 1; up = 1; #1001320;
enable = 1; up = 0; #1001420;
enable = 1; up = 1; #1001520;
enable = 1; up = 0; #1001620;
enable = 1; up = 1; #1001720;
enable = 1; up = 0; #1001820;
enable = 1; up = 1; #1001920;
enable = 1; up = 0; #1001120;
enable = 1; up = 1; #1001220;
enable = 1; up = 0; #1001320;
enable = 1; up = 1; #1001120;
enable = 1; up = 0; #1001220;
enable = 1; up = 1; #1001320;
enable = 1; up = 0; #1001420;
enable = 1; up = 1; #1001520;
enable = 1; up = 0; #1001620;
enable = 1; up = 1; #1001720;
enable = 1; up = 0; #1001820;
enable = 1; up = 1; #1001920;
enable = 1; up = 0; #1001120;
enable = 1; up = 1; #1001220;
enable = 1; up = 0; #1001320;
enable = 1; up = 1; #1001420;
enable = 1; up = 0; #1001520;
enable = 1; up = 1; #1001620;
enable = 1; up = 0; #1001720;
enable = 1; up = 1; #1001820;
enable = 1; up = 0; #1001920;
enable = 1; up = 1; #1001020;
enable = 1; up = 0; #1001120;
enable = 1; up = 1; #1001220;
enable = 1; up = 0; #1001320;
enable = 1; up = 1; #1001420;
enable = 1; up = 0; #1001520;
//enable = 1; #11010000; // ok u/d counting
$finish;

end

endmodule

