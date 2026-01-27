`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   20:00:29 01/26/2026
// Design Name:   e_3_11_4
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/tb_e_3_11_4.v
// Project Name:  pong_p_chu
// Target Device: -
// Tool versions: -
// Description:   -
//
// Verilog Test Fixture created by ISE for module: e_3_11_4
//
// Dependencies:  -
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
////////////////////////////////////////////////////////////////////////////////

module tb_e_3_11_4;

// Inputs
reg [12:0] a_test;
reg [12:0] b_test;

// Outputs
wire gt;

// Instantiate the Unit Under Test (UUT)
e_3_11_4 uut (
.gt(gt), 
.a(a_test), 
.b(b_test)
);

initial begin
// Initialize Inputs
a_test = 0;
b_test = 0;

// Wait 100 ns for global reset to finish
#10;

// Add stimulus here
// Group 1
// a = +0.68E3, b = +0.86E3 
a_test = 13'b0101010101010;
b_test = 13'b0101011010111;
# 10;
// a = -0.68E3, b = +0.86E3
a_test = 13'b1101010101010;
b_test = 13'b0101011010111;
# 10;
// a = +0.68E3, b = -0.86E3
a_test = 13'b0101010101010;
b_test = 13'b1101011010111;
# 10;
// a = -0.68E3, b = -0.86E3
a_test = 13'b1101010101010;
b_test = 13'b1101011010111;
# 10;

// Group 2  
// a = +0.86E3, b = +0.68E3 
a_test = 13'b0101011010111;
b_test = 13'b0101010101010;
# 10;
// a = -0.86E3, b = +0.68E3
a_test = 13'b1101011010111;
b_test = 13'b0101010101010;
# 10;
// a = +0.86E3, b = -0.68E3
a_test = 13'b0101011010111;
b_test = 13'b1101010101010;
# 10;
// a = -0.86E3, b = -0.68E3
a_test = 13'b1101011010111;
b_test = 13'b1101010101010;
# 10;

// Group 3
// a = +0.68E4, b = +0.86E3
a_test = 13'b0110111010100;
b_test = 13'b0101011010111;
# 10;
// a = -0.68E4, b = +0.86E3
a_test = 13'b1110111010100;
b_test = 13'b0101011010111;
# 10;
// a = +0.68E4, b = -0.86E3
a_test = 13'b0110111010100;
b_test = 13'b1101011010111;
# 10;
// a = -0.68E4, b = -0.86E3
a_test = 13'b1110111010100;
b_test = 13'b1101011010111;
# 10;

// Group 4 
// a = +0.68E3, b = +0.86E4
a_test = 13'b0101010101010;
b_test = 13'b0111010000110;
# 10;
// a = -0.68E3, b = +0.86E4
a_test = 13'b1101010101010;
b_test = 13'b0111010000110;
# 10;
// a = +0.68E3, b = -0.86E4
a_test = 13'b0101010101010;
b_test = 13'b1111010000110;
# 10;
// a = -0.68E3, b = -0.86E4
a_test = 13'b1101010101010;
b_test = 13'b1111010000110;
# 10;

// Group 5
// a = +0.68E0, b = +0.86E0
a_test = 13'b0000010101110;
b_test = 13'b0000011011100;
# 10;
// a = +0.68E0, b = -0.86E0
a_test = 13'b0000010101110;
b_test = 13'b1000011011100;
# 10;

// Group 6
// a = +0.68E0, b = +0.68E0
a_test = 13'b0000010101110;
b_test = 13'b0000010101110;
# 10;
// a = -0.68E0, b = -0.68E0
a_test = 13'b1000010101110;
b_test = 13'b1000010101110;
# 10;

// Group 7
// a = +0.00E0, b = +0.00E0
a_test = 13'b0000000000000;
b_test = 13'b0000000000000;
# 10;
// a = +0.00E0, b = -0.00E0
a_test = 13'b0000000000000;
b_test = 13'b1000000000000;
# 10;

// Stop simulation
$stop;
end

reg out1;

initial
begin
out1 = 1'b0;
#10;
out1 = 1'b0; # 10;
out1 = 1'b0; # 10;
out1 = 1'b1; # 10;
out1 = 1'b1; # 10;
out1 = 1'b1; # 10;
out1 = 1'b0; # 10;
out1 = 1'b1; # 10;
out1 = 1'b0; # 10;
out1 = 1'b1; # 10;
out1 = 1'b0; # 10;
out1 = 1'b1; # 10;
out1 = 1'b0; # 10;
out1 = 1'b0; # 10;
out1 = 1'b0; # 10;
out1 = 1'b1; # 10;
out1 = 1'b1; # 10;
out1 = 1'b0; # 10;
out1 = 1'b1; # 10;
out1 = 1'b0; # 10;
out1 = 1'b0; # 10;
out1 = 1'b0; # 10;
out1 = 1'b1; # 10;
$stop;
end

endmodule

