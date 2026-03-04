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

localparam clock_period = 10;
always clock = #(clock_period/2) ~clock;

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
#(10 * clock_period + 8.5);
//#(10 * clock_period); // normal
reset = 0;

// Add stimulus here

//
// check counters
//
push = 0; pop = 0; #(20 * clock_period); // idle, counting suspended
push = 1; pop = 1; #(20 * clock_period); // impossible, counting suspended
push = 0; pop = 0; #(20 * clock_period); // idle, counting suspended

// push tick when pop enable, counting suspended
pop = 1;
push = 1; push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);

push = 0; pop = 0; #(20 * clock_period); // reset, idle

// push and pop ticks at the same time, counting suspended
pop = 1; push = 1; #(clock_period); pop = 0; push = 0; #(clock_period);
pop = 1; push = 1; #(clock_period); pop = 0; push = 0; #(clock_period);
pop = 1; push = 1; #(clock_period); pop = 0; push = 0; #(clock_period);
pop = 1; push = 1; #(clock_period); pop = 0; push = 0; #(clock_period);
pop = 1; push = 1; #(clock_period); pop = 0; push = 0; #(clock_period);
pop = 1; push = 1; #(clock_period); pop = 0; push = 0; #(clock_period);
pop = 1; push = 1; #(clock_period); pop = 0; push = 0; #(clock_period);
pop = 1; push = 1; #(clock_period); pop = 0; push = 0; #(clock_period);
pop = 1; push = 1; #(clock_period); pop = 0; push = 0; #(clock_period);
pop = 1; push = 1; #(clock_period); pop = 0; push = 0; #(clock_period);

push = 0; pop = 0; #(20 * clock_period); // reset, idle

// push = 0 and pop = 1 and tick alternate
// alternate up short 9 / down long 9
pop = 1; push = 0; #(clock_period); pop = 0; push = 1; #(clock_period);
pop = 1; push = 0; #(clock_period); pop = 0; push = 1; #(clock_period);
pop = 1; push = 0; #(clock_period); pop = 0; push = 1; #(clock_period);
pop = 1; push = 0; #(clock_period); pop = 0; push = 1; #(clock_period);
pop = 1; push = 0; #(clock_period); pop = 0; push = 1; #(clock_period);
pop = 1; push = 0; #(clock_period); pop = 0; push = 1; #(clock_period);
pop = 1; push = 0; #(clock_period); pop = 0; push = 1; #(clock_period);
pop = 1; push = 0; #(clock_period); pop = 0; push = 1; #(clock_period);
pop = 1; push = 0; #(clock_period); pop = 0; push = 1; #(clock_period);
pop = 1; push = 0; #(clock_period); pop = 0; push = 1; #(clock_period);

push = 0; pop = 0; #(20 * clock_period); // reset, idle

// push = 1 and pop = 0 and tick alternate
// alternate up long 1 / down short 1
pop = 0; push = 1; #(clock_period); pop = 1; push = 0; #(clock_period);
pop = 0; push = 1; #(clock_period); pop = 1; push = 0; #(clock_period);
pop = 0; push = 1; #(clock_period); pop = 1; push = 0; #(clock_period);
pop = 0; push = 1; #(clock_period); pop = 1; push = 0; #(clock_period);
pop = 0; push = 1; #(clock_period); pop = 1; push = 0; #(clock_period);
pop = 0; push = 1; #(clock_period); pop = 1; push = 0; #(clock_period);
pop = 0; push = 1; #(clock_period); pop = 1; push = 0; #(clock_period);
pop = 0; push = 1; #(clock_period); pop = 1; push = 0; #(clock_period);
pop = 0; push = 1; #(clock_period); pop = 1; push = 0; #(clock_period);
pop = 0; push = 1; #(clock_period); pop = 1; push = 0; #(clock_period);

push = 0; pop = 0; #(20 * clock_period); // reset, idle

// push 10 times, 1-9,0
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);

push = 0; pop = 0; #(20 * clock_period); // reset, idle

// pop 10 times, 9-0
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);

push = 0; pop = 0; #(20 * clock_period); // reset, idle

// push 3 times w/o reset, up 1,2,3
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);

// pop 5 times w/o reset, down 2,1,0,9,8
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);

// push 3 times with reset, up 9,0,1
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// pop 5 times with reset, down 0,9,8,7,6
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// push 2 times with reset, up 7,8
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// push 6 times with reset, up 9,0,1,2,3,4
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// pop 10 times with reset, down 3,2,1,0,9,8,7,6,5,4
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// pop 5 times with reset, down 3,2,1,0,9
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// push 3 times with reset, up 0,1,2
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// push 1 times with reset, up 3
push = 1; #(clock_period); push = 0; #(clock_period);
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// pop 5 times with reset, down 2,1,0,9,8
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
push = 0; pop = 0; #(20 * clock_period); // reset, idle

push = 1; pop = 1; #(20 * clock_period); // impossible, reset counters to 0
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// push 2 times with reset, up 1,2 - expect 9,0
push = 1; #(clock_period); push = 0; #(clock_period);
push = 1; #(clock_period); push = 0; #(clock_period);
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// up/down 0/0 at end

//
// new data input - random
//
push = 1; pop = 1; #(20 * clock_period); // impossible, reset counters to 0
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// push 10 times with reset
// input - 55,aa,11,22,33,44,55,66,77,88
data_in = 8'h55; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'haa; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h11; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h22; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h33; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h44; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h55; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h66; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h77; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h88; push = 1; #(clock_period); push = 0; #(clock_period);
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// pop 10 times (all) with reset
// output - 88(<2c),(2c)-77,66,55,44,33,22,11,aa,55
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// pop 5 times w/o reset
// output - 88,77,66,55,44(<2c)
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);

// push 10 times w/o reset
// input - 55,aa,11,22,33,44,55,66,77,88
data_in = 8'hab; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'had; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'hf0; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h0d; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'hca; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'hfe; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h11; push = 1; #(clock_period); push = 0; #(clock_period);

// pop 10 times (all) w/o reset
// output - 88(<2c),(2c)-77,66,55,44,33,22,11,aa,55
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);

//
// new data input - normal operation
//
push = 1; pop = 1; #(20 * clock_period); // impossible, reset counters to 0
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// reset stored values
data_in = 8'h00; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h00; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h00; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h00; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h00; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h00; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h00; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h00; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h00; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h00; push = 1; #(clock_period); push = 0; #(clock_period);
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// push/pop 1 times and idle
// input - 55
// output - 55
data_in = 8'h55; push = 1; #(clock_period); push = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// push/pop 2 times and idle
// input - bb,55
// output - 55,bb
data_in = 8'hbb; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h55; push = 1; #(clock_period); push = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// push/pop 5 times and idle
// input - 11,22,33,44,55
// output - 55,44,33,22,11
data_in = 8'h11; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h22; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h33; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h44; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h55; push = 1; #(clock_period); push = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
push = 0; pop = 0; #(20 * clock_period); // reset, idle

// push/pop 10 times and idle
// input - aa,11,22,33,44,55,66,77,88,aa
// output - aa,88,77,66,55,44,33,22,11,aa
data_in = 8'haa; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h11; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h22; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h33; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h44; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h55; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h66; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h77; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'h88; push = 1; #(clock_period); push = 0; #(clock_period);
data_in = 8'haa; push = 1; #(clock_period); push = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
pop = 1; #(clock_period); pop = 0; #(clock_period);
push = 0; pop = 0; #(20 * clock_period); // reset, idle

$finish;
end

endmodule

