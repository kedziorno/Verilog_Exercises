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

module tb_e_4_7_4;

// Inputs
reg clock;
reg reset;

// Outputs
wire [3:0] anode;
wire [6:0] segment;

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
reset = 0;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here

end

endmodule

