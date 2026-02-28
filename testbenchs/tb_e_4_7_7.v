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
push = 1; data_in = 8'haa; #10;
push = 1; data_in = 8'h55; #10;
push = 1; data_in = 8'hbb; #10;
push = 1; data_in = 8'h66; #10;
push = 1; data_in = 8'hcc; #10;
push = 1; data_in = 8'h77; #10;
end

endmodule

