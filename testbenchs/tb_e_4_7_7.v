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
reg clock = 0;
reg reset;
reg push;
reg pop;

// Outputs
wire [7:0] data_out;

always clock = #5 ~clock;

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
reset = 1;
push = 0;
pop = 0;

// Wait 100 ns for global reset to finish
#108.5;
reset = 0;

// Add stimulus here
push = 0; pop = 0; #200; // idle, counting suspended
push = 1; pop = 1; #200; // impossible, counting suspended
push = 0; pop = 0; #200; // idle, counting suspended

// push tick when pop enable, counting suspended
pop = 1;
push = 1; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;

push = 0; pop = 0; #200; // reset, idle

// push and pop ticks at the same time, counting suspended
pop = 1; push = 1; #80; pop = 0; push = 0; #80;
pop = 1; push = 1; #80; pop = 0; push = 0; #80;
pop = 1; push = 1; #80; pop = 0; push = 0; #80;
pop = 1; push = 1; #80; pop = 0; push = 0; #80;
pop = 1; push = 1; #80; pop = 0; push = 0; #80;
pop = 1; push = 1; #80; pop = 0; push = 0; #80;
pop = 1; push = 1; #80; pop = 0; push = 0; #80;
pop = 1; push = 1; #80; pop = 0; push = 0; #80;
pop = 1; push = 1; #80; pop = 0; push = 0; #80;
pop = 1; push = 1; #80; pop = 0; push = 0; #80;

push = 0; pop = 0; #200; // reset, idle

// push = 0 and pop = 1 and tick alternate, alternate up short 9 / down long 9
pop = 1; push = 0; #80; pop = 0; push = 1; #80;
pop = 1; push = 0; #80; pop = 0; push = 1; #80;
pop = 1; push = 0; #80; pop = 0; push = 1; #80;
pop = 1; push = 0; #80; pop = 0; push = 1; #80;
pop = 1; push = 0; #80; pop = 0; push = 1; #80;
pop = 1; push = 0; #80; pop = 0; push = 1; #80;
pop = 1; push = 0; #80; pop = 0; push = 1; #80;
pop = 1; push = 0; #80; pop = 0; push = 1; #80;
pop = 1; push = 0; #80; pop = 0; push = 1; #80;
pop = 1; push = 0; #80; pop = 0; push = 1; #80;

push = 0; pop = 0; #200; // reset, idle

// push = 1 and pop = 0 and tick alternate, alternate up long 1 / down short 1
pop = 0; push = 1; #80; pop = 1; push = 0; #80;
pop = 0; push = 1; #80; pop = 1; push = 0; #80;
pop = 0; push = 1; #80; pop = 1; push = 0; #80;
pop = 0; push = 1; #80; pop = 1; push = 0; #80;
pop = 0; push = 1; #80; pop = 1; push = 0; #80;
pop = 0; push = 1; #80; pop = 1; push = 0; #80;
pop = 0; push = 1; #80; pop = 1; push = 0; #80;
pop = 0; push = 1; #80; pop = 1; push = 0; #80;
pop = 0; push = 1; #80; pop = 1; push = 0; #80;
pop = 0; push = 1; #80; pop = 1; push = 0; #80;

push = 0; pop = 0; #200; // reset, idle

// push 10 times, 1-9,0
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;

push = 0; pop = 0; #200; // reset, idle

// pop 10 times, 9-0
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;

push = 0; pop = 0; #200; // reset, idle

// push 3 times w/o reset, up 1,2,3
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;

// pop 5 times w/o reset, down 2,1,0,9,8
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;

// push 3 times with reset, up 9,0,1
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 0; pop = 0; #200; // reset, idle

// pop 5 times with reset, down 0,9,8,7,6
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
push = 0; pop = 0; #200; // reset, idle

// push 2 times with reset, up 7,8
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 0; pop = 0; #200; // reset, idle

// push 6 times with reset, up 9,0,1,2,3,4
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 0; pop = 0; #200; // reset, idle

// pop 10 times with reset, down 3,2,1,0,9,8,7,6,5,4
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
push = 0; pop = 0; #200; // reset, idle

// pop 5 times with reset, down 3,2,1,0,9
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
push = 0; pop = 0; #200; // reset, idle

// push 3 times with reset, up 0,1,2
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 0; pop = 0; #200; // reset, idle

// push 1 times with reset, up 3
push = 1; #80; push = 0; #80;
push = 0; pop = 0; #200; // reset, idle

// pop 5 times with reset, down 2,1,0,9,8
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
pop = 1; #80; pop = 0; #80;
push = 0; pop = 0; #200; // reset, idle

// push 2 times with reset, up 9,0
push = 1; #80; push = 0; #80;
push = 1; #80; push = 0; #80;
push = 0; pop = 0; #200; // reset, idle

// up/down 0/0 at end
$finish;
end

endmodule

