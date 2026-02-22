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
enable = 1; up = 1; #90;
enable = 1; up = 0; #100;
enable = 1; up = 1; #90;
enable = 1; up = 0; #100;
$finish;

end

endmodule

