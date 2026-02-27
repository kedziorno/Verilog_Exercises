`timescale 1ns / 1ps

///////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   23:26:04 02/27/2026
// Design Name:   e_4_7_7
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/testbenchs/tb_e_4_7_7.v
// Project Name:  pong_p_chu
// Target Device: -
// Tool versions: -
// Description:   Stack
//
// Verilog Test Fixture created by ISE for module: e_4_7_7
//
// Dependencies: -
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
///////////////////////////////////////////////////////////////////////////////

module tb_e_4_7_7;

// Inputs
reg [7:0] data_in;
reg clock;
reg reset;
reg push;
reg pop;

// Outputs
wire [7:0] data_out;

// Instantiate the Unit Under Test (UUT)
e_4_7_7 uut (
.data_out(data_out), 
.data_in(data_in), 
.clock(clock), 
.reset(reset), 
.push(push), 
.pop(pop)
);

initial begin
// Initialize Inputs
data_in = 0;
clock = 0;
reset = 0;
push = 0;
pop = 0;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here

end

endmodule

