`timescale 1ns / 1ps

///////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   12:25:26 01/31/2026
// Design Name:   e_3_11_6
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/tb_e_3_11_6.v
// Project Name:  pong_p_chu
// Target Device: tb enhanced floating-point adder 
// Tool versions: -
// Description:   -
//
// Verilog Test Fixture created by ISE for module: e_3_11_6
//
// Dependencies:  -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
///////////////////////////////////////////////////////////////////////////////

module tb_comp_gt12;

// Inputs
reg [11:0] a, b;

// Outputs
wire gt12;

// Instantiate the Unit Under Test (UUT)
comp_gt12 uut (.gt12 (gt12), .a (a), .b (b));

initial begin
// Initialize Inputs
a = 0;
b = 0;

// Wait 100 ns for global reset to finish
#10;

// Add stimulus here
a = 12'h001; b = 12'h000; # 10;
a = 12'h000; b = 12'h001; # 10;
a = 12'h001; b = 12'h001; # 10;
a = 12'h000; b = 12'h000; # 10;

a = 12'h011; b = 12'h010; # 10;
a = 12'h010; b = 12'h011; # 10;
a = 12'h011; b = 12'h011; # 10;
a = 12'h010; b = 12'h010; # 10;

a = 12'h101; b = 12'h100; # 10;
a = 12'h100; b = 12'h101; # 10;
a = 12'h101; b = 12'h101; # 10;
a = 12'h100; b = 12'h100; # 10;

a = 12'h111; b = 12'h110; # 10;
a = 12'h110; b = 12'h111; # 10;
a = 12'h111; b = 12'h111; # 10;
a = 12'h110; b = 12'h110; # 10;

a = 12'h111; b = 12'h100; # 10;
a = 12'h110; b = 12'h101; # 10;
a = 12'h111; b = 12'h101; # 10;
a = 12'h110; b = 12'h100; # 10;

a = 12'h101; b = 12'h110; # 10;
a = 12'h100; b = 12'h111; # 10;
a = 12'h101; b = 12'h111; # 10;
a = 12'h100; b = 12'h110; # 10;

a = 12'h111; b = 12'h010; # 10;
a = 12'h110; b = 12'h011; # 10;
a = 12'h111; b = 12'h011; # 10;
a = 12'h110; b = 12'h010; # 10;

a = 12'h111; b = 12'h010; # 10;
a = 12'h011; b = 12'h110; # 10;
a = 12'h111; b = 12'h110; # 10;
a = 12'h011; b = 12'h010; # 10;

a = 12'h110; b = 12'h011; # 10;
a = 12'h010; b = 12'h111; # 10;
a = 12'h110; b = 12'h111; # 10;
a = 12'h010; b = 12'h011; # 10;
$stop;
end

endmodule

module tb_subtractor_12;

// Inputs
reg [11:0] a;
reg [11:0] b;

// Outputs
wire [11:0] y;

// Instantiate the Unit Under Test (UUT)
subtractor_12 uut (.y (y), .a (a), .b (b));

initial begin
// Initialize Inputs
a = 0;
b = 0;

// Wait 100 ns for global reset to finish
#10;

// Add stimulus here
// boundary
a = 12'd4095; b = 12'd1; #10;
a = 12'd4096; b = 12'd1; #10;
a = 12'd4095; b = 12'd0; #10;
a = 12'd4096; b = 12'd0; #10;
a = 12'd4095; b = 12'd4096; #10;
a = 12'd4096; b = 12'd4095; #10;
a = 12'd0; b = 12'd4095; #10;
a = 12'd0; b = 12'd4096; #10;
a = 12'd1; b = 12'd4095; #10;
a = 12'd1; b = 12'd4096; #10;
// normal
a = 12'd4095; b = 12'd1; #10;
a = 12'd4094; b = 12'd1; #10;
a = 12'd4095; b = 12'd0; #10;
a = 12'd4094; b = 12'd0; #10;
a = 12'd4095; b = 12'd4094; #10;
a = 12'd4094; b = 12'd4095; #10;
a = 12'd0; b = 12'd4095; #10;
a = 12'd0; b = 12'd4094; #10;
a = 12'd1; b = 12'd4095; #10;
a = 12'd1; b = 12'd4094; #10;
a = 12'd123; b = 12'd321; #10;
a = 12'd111; b = 12'd222; #10;
a = 12'd78; b = 12'd123; #10;
$stop;
end

endmodule

module tb_adder_12;

// Inputs
reg [11:0] a;
reg [11:0] b;

// Outputs
wire [11:0] y;

// Instantiate the Unit Under Test (UUT)
adder_12 uut (.y (y), .a (a), .b (b));

initial begin
// Initialize Inputs
a = 0;
b = 0;

// Wait 100 ns for global reset to finish
#10;

// Add stimulus here
a = 12'd4095; b = 12'd1; #10;
a = 12'd4096; b = 12'd1; #10;
a = 12'd4095; b = 12'd0; #10;
a = 12'd4096; b = 12'd0; #10;
a = 12'd4095; b = 12'd4096; #10;
a = 12'd4096; b = 12'd4095; #10;
a = 12'd0; b = 12'd4095; #10;
a = 12'd0; b = 12'd4096; #10;
a = 12'd1; b = 12'd4095; #10;
a = 12'd1; b = 12'd4096; #10;
a = 12'd123; b = 12'd321; #10;
a = 12'd111; b = 12'd222; #10;
a = 12'd78; b = 12'd123; #10;
$stop;
end

endmodule

module tb_e_3_11_6;

// Inputs
reg sign1;
reg [3:0] exp1;
reg [7:0] frac1;
reg sign2;
reg [3:0] exp2;
reg [7:0] frac2;

// Outputs
wire sign_out;
wire [3:0] exp_out;
wire [7:0] frac_out;

// Instantiate the Unit Under Test (UUT)
e_3_11_6 uut (
.sign_out(sign_out), 
.exp_out(exp_out), 
.frac_out(frac_out), 
.sign1(sign1), 
.exp1(exp1), 
.frac1(frac1), 
.sign2(sign2), 
.exp2(exp2), 
.frac2(frac2)
);

reg [12:0] tb_out;

initial begin
// Initialize Inputs
sign1 = 0;
exp1 = 0;
frac1 = 0;
sign2 = 0;
exp2 = 0;
frac2 = 0;
tb_out = 0;

// Wait 100 ns for global reset to finish
#10;

// Add stimulus here
// variables based on https://embeddedsystemengineering.blogspot.com/2016/08/verilog-tutorial-4-modelsim-simplified.html
// XXX : renew from https://flop.evanau.dev/arbitrary-float-converter
// Group 1
// a = 13.3125, b = 14.71875
sign1 = 1'b0; exp1 = 4'b1010; frac1 = 8'b10101010;
sign2 = 1'b0; exp2 = 4'b1010; frac2 = 8'b11010111;
# 10;
// a = -13.3125, b = 14.71875
sign1 = 1'b1; exp1 = 4'b1010; frac1 = 8'b10101010;
sign2 = 1'b0; exp2 = 4'b1010; frac2 = 8'b11010111;
# 10;
// a = +13.3125, b = -14.71875
sign1 = 1'b0; exp1 = 4'b1010; frac1 = 8'b10101010;
sign2 = 1'b1; exp2 = 4'b1010; frac2 = 8'b11010111;
# 10;
// a = -13.3125, b = -14.71875
sign1 = 1'b1; exp1 = 4'b1010; frac1 = 8'b10101010;
sign2 = 1'b1; exp2 = 4'b1010; frac2 = 8'b11010111;
# 10;

// Group 2  
// a = +14.71875, b = +13.3125
sign1 = 1'b0; exp1 = 4'b1010; frac1 = 8'b11010111;
sign2 = 1'b0; exp2 = 4'b1010; frac2 = 8'b10101010;
# 10;
// a = -14.71875, b = +13.3125
sign1 = 1'b1; exp1 = 4'b1010; frac1 = 8'b11010111;
sign2 = 1'b0; exp2 = 4'b1010; frac2 = 8'b10101010;
# 10;
// a = +14.71875, b = -13.3125
sign1 = 1'b0; exp1 = 4'b1010; frac1 = 8'b11010111;
sign2 = 1'b1; exp2 = 4'b1010; frac2 = 8'b10101010;
# 10;
// a = -14.71875, b = -13.3125
sign1 = 1'b1; exp1 = 4'b1010; frac1 = 8'b11010111;
sign2 = 1'b1; exp2 = 4'b1010; frac2 = 8'b10101010;
# 10;

// Group 3
// a = +117, b = +14.71875
sign1 = 1'b0; exp1 = 4'b1101; frac1 = 8'b11010100;
sign2 = 1'b0; exp2 = 4'b1010; frac2 = 8'b11010111;
# 10;
// a = -117, b = +14.71875
sign1 = 1'b1; exp1 = 4'b1101; frac1 = 8'b11010100;
sign2 = 1'b0; exp2 = 4'b1010; frac2 = 8'b11010111;
# 10;
// a = +117, b = -14.71875
sign1 = 1'b0; exp1 = 4'b1101; frac1 = 8'b11010100;
sign2 = 1'b1; exp2 = 4'b1010; frac2 = 8'b11010111;
# 10;
// a = -117, b = -14.71875
sign1 = 1'b1; exp1 = 4'b1101; frac1 = 8'b11010100;
sign2 = 1'b1; exp2 = 4'b1010; frac2 = 8'b11010111;
# 10;

// Group 4 
// a = +13.3125, b = +195
sign1 = 1'b0; exp1 = 4'b1010; frac1 = 8'b10101010;
sign2 = 1'b0; exp2 = 4'b1110; frac2 = 8'b10000110;
# 10;
// a = -13.3125, b = +195
sign1 = 1'b1; exp1 = 4'b1010; frac1 = 8'b10101010;
sign2 = 1'b0; exp2 = 4'b1110; frac2 = 8'b10000110;
# 10;
// a = +13.3125, b = -195
sign1 = 1'b0; exp1 = 4'b1010; frac1 = 8'b10101010;
sign2 = 1'b1; exp2 = 4'b1110; frac2 = 8'b10000110;
# 10;
// a = -13.3125, b = -195
sign1 = 1'b1; exp1 = 4'b1010; frac1 = 8'b10101010;
sign2 = 1'b1; exp2 = 4'b1110; frac2 = 8'b10000110;
# 10;

// Group 5
// a = +0.0106201171875, b = +0.013427734375
sign1 = 1'b0; exp1 = 4'b0000; frac1 = 8'b10101110;
sign2 = 1'b0; exp2 = 4'b0000; frac2 = 8'b11011100;
# 10;
// a = +0.0106201171875, b = -0.013427734375
sign1 = 1'b0; exp1 = 4'b0000; frac1 = 8'b10101110;
sign2 = 1'b1; exp2 = 4'b0000; frac2 = 8'b11011100;
# 10;

// Group 6
// a = +0.0106201171875, b = +0.0106201171875
sign1 = 1'b0; exp1 = 4'b0000; frac1 = 8'b10101110;
sign2 = 1'b0; exp2 = 4'b0000; frac2 = 8'b10101110;
# 10;
// a = -0.0106201171875, b = -0.0106201171875
sign1 = 1'b1; exp1 = 4'b0000; frac1 = 8'b10101110;
sign2 = 1'b1; exp2 = 4'b0000; frac2 = 8'b10101110;
# 10;

// Group 7
// a = +0, b = +0
sign1 = 1'b0; exp1 = 4'b0000; frac1 = 8'b00000000;
sign2 = 1'b0; exp2 = 4'b0000; frac2 = 8'b00000000;
# 10;
// a = +0, b = -0
sign1 = 1'b0; exp1 = 4'b0000; frac1 = 8'b00000000;
sign2 = 1'b1; exp2 = 4'b0000; frac2 = 8'b00000000;
# 10;

$stop;
end

initial begin
tb_out = 0;
# 10;
// g1
tb_out = 13'h0bc0; # 10;
tb_out = 13'h0768; # 10;
tb_out = 13'h1768; # 10;
tb_out = 13'h1bc0; # 10;
// g2
tb_out = 13'h0bc0; # 10;
tb_out = 13'h1768; # 10;
tb_out = 13'h0768; # 10;
tb_out = 13'h1bc0; # 10;
// g3
tb_out = 13'h0e07; # 10;
tb_out = 13'h1d99; # 10;
tb_out = 13'h0d99; # 10;
tb_out = 13'h1e07; # 10;
// g4
tb_out = 13'h0ea0; # 10;
tb_out = 13'h0e6b; # 10;
tb_out = 13'h1e6b; # 10;
tb_out = 13'h1ea0; # 10;
// g5
tb_out = 13'h018a; # 10;
tb_out = 13'h102e; # 10;
// g6
tb_out = 13'h015c; # 10;
tb_out = 13'h115c; # 10;
// g7
tb_out = 13'h0000; # 10;
tb_out = 13'h0000; # 10;
$stop;
end

endmodule

