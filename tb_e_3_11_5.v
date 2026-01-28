`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   18:56:44 01/28/2026
// Design Name:   e_3_11_5_1
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/tb_e_3_11_5.v
// Project Name:  pong_p_chu
// Target Device: -
// Tool versions: -
// Description:   fp13 -> s8 tb, s8 -> fp13 tb
//
// Verilog Test Fixture created by ISE for module: e_3_11_5_1, e_3_11_5_5
//
// Dependencies:  -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
////////////////////////////////////////////////////////////////////////////////

module tb_subtractor_4;

// Inputs
reg [3:0] a, b;

// Outputs
wire [3:0] y;

// Instantiate the Unit Under Test (UUT)
subtractor_4 uut (.y (y), .a (a), .b (b));

initial begin
// Initialize Inputs
a = 0;
b = 0;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here
a = 4'd8; b = 4'd0; #10;
a = 4'd8; b = 4'd1; #10;
a = 4'd8; b = 4'd2; #10;
a = 4'd8; b = 4'd3; #10;
a = 4'd8; b = 4'd4; #10;
a = 4'd8; b = 4'd5; #10;
a = 4'd8; b = 4'd6; #10;
a = 4'd8; b = 4'd7; #10;
a = 4'd8; b = 4'd8; #10;
$stop;
end

endmodule

module tb_prio_enc_8_3;

// Inputs
reg [7:0] x;

// Outputs
wire [2:0] y;

// Instantiate the Unit Under Test (UUT)
prio_enc_8_3 uut (.y(y), .x(x));

initial begin
// Initialize Inputs
x = 0;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here
x = 8'b00000000; # 10;
x = 8'b10000000; # 10;
x = 8'b00000001; # 10;
x = 8'b10000001; # 10;
x = 8'b00000010; # 10;
x = 8'b10000010; # 10;
x = 8'b00100100; # 10;
x = 8'b10100100; # 10;
x = 8'b01111111; # 10;
x = 8'b11111111; # 10;
x = 8'b00000001; # 10;
x = 8'b00000011; # 10;
x = 8'b00000111; # 10;
x = 8'b00001111; # 10;
x = 8'b00011111; # 10;
x = 8'b00111111; # 10;
x = 8'b01111111; # 10;
x = 8'b11111111; # 10;
x = 8'b10000000; # 10;
x = 8'b01000000; # 10;
x = 8'b00100000; # 10;
x = 8'b00010000; # 10;
x = 8'b00001000; # 10;
x = 8'b00000100; # 10;
x = 8'b00000010; # 10;
x = 8'b00000001; # 10;
$stop;
end

endmodule

module tb_e_3_11_5_1;

// Inputs
reg [7:0] s8;

// Outputs
wire [12:0] fp13;

// Instantiate the Unit Under Test (UUT)
e_3_11_5_1 uut (.fp13(fp13), .s8(s8));

initial begin
// Initialize Inputs
s8 = 0;

// Wait 100 ns for global reset to finish
#10;

// Add stimulus here
s8 = 8'b00000000; // +0
# 10;
s8 = 8'b10000000; // -0
# 10;
s8 = 8'b00000001; // +1
# 10;
s8 = 8'b10000001; // -1
# 10;
s8 = 8'b00000010; // +2
# 10;
s8 = 8'b10000010; // -2
# 10;
s8 = 8'b00100100; // +36
# 10;
s8 = 8'b10100100; // -36
# 10;
s8 = 8'b01111111; // +127
# 10;
s8 = 8'b11111111; // -127
# 10;
$stop;
end

endmodule

module tb_e_3_11_5_5;

// Inputs
reg [12:0] fp13;

// Outputs
wire [7:0] s8;

// Instantiate the Unit Under Test (UUT)
e_3_11_5_5 uut (.s8(s8), .fp13(fp13));

initial begin
// Initialize Inputs
fp13 = 0;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here
fp13 = 13'b0000000000000; // +0.00000000 * 2^0 (+0)
# 10;
fp13 = 13'b1000000000000; // -0.00000000 * 2^0 (-0)
# 10;
fp13 = 13'b0000010000000; // +0.10000000 * 2^0 (+0.5)
# 10;
fp13 = 13'b1000010000000; // -0.10000000 * 2^0 (-0.5)
# 10;
fp13 = 13'b0000011111111; // +0.11111111 * 2^0 (+0.999)
# 10;
fp13 = 13'b1000011111111; // -0.11111111 * 2^0 (-0.999)
# 10;
fp13 = 13'b0000110000000; // +0.10000000 * 2^1 (+1)
# 10;
fp13 = 13'b1000110000000; // -0.10000000 * 2^1 (-1)
# 10;
fp13 = 13'b0000111110000; // +0.11110000 * 2^1 (+1.875)
# 10;
fp13 = 13'b1000111110000; // -0.11110000 * 2^1 (-1.875)
# 10;
fp13 = 13'b0001010000000; // +0.10000000 * 2^2 (+2)
# 10;
fp13 = 13'b1001010000000; // -0.10000000 * 2^2 (-2)
# 10;
fp13 = 13'b0011010010000; // +0.10010000 * 2^6 (+36)
# 10;
fp13 = 13'b1011010010000; // -0.10010000 * 2^6 (-36)
# 10;
fp13 = 13'b0011111111110; // +0.11111110 * 2^7 (+127)
# 10;
fp13 = 13'b1011111111110; // -0.11111110 * 2^7 (-127)
# 10;
fp13 = 13'b0100010000000; // +0.10000000 * 2^8 (+128)
# 10;
fp13 = 13'b1100010000000; // -0.10000000 * 2^8 (-128)
# 10;
fp13 = 13'b0111111111111; // +0.11111111 * 2^15 (+32460)
# 10;
fp13 = 13'b1111111111111; // -0.11111111 * 2^15 (-32460)
# 10;
$stop;
end

endmodule

