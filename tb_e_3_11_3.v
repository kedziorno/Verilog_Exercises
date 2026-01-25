`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   12:17:50 01/24/2026
// Design Name:   e_3_11_3
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/tb_e_3_11_3.v
// Project Name:  pong_p_chu
// Target Device: -
// Tool versions: -
// Description:   -
//
// Verilog Test Fixture created by ISE for module: e_3_11_3
//
// Dependencies: -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
////////////////////////////////////////////////////////////////////////////////

module tb_bcd_incrementer_1_logic_expression;

// Inputs
reg [3:0] in;

// Outputs
wire [3:0] out;
wire overflow;

// Instantiate the Unit Under Test (UUT)
bcd_incrementer_1_logic_expression uut (
.out (out),
.overflow (overflow),
.in (in)
);

initial begin
// Initialize Inputs
in = 0;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here
// 0 - 9
in = 4'b0000; #100;
in = 4'b0001; #100;
in = 4'b0010; #100;
in = 4'b0011; #100;
in = 4'b0100; #100;
in = 4'b0101; #100;
in = 4'b0110; #100;
in = 4'b0111; #100;
in = 4'b1000; #100;
in = 4'b1001; #100;
#100;
// 0 - 9
in = 4'b0000; #100;
in = 4'b0001; #100;
in = 4'b0010; #100;
in = 4'b0011; #100;
in = 4'b0100; #100;
in = 4'b0101; #100;
in = 4'b0110; #100;
in = 4'b0111; #100;
in = 4'b1000; #100;
in = 4'b1001; #100;
#100;
// 10 - 0
in = 4'd10; #100;
in = 4'd9; #100;
in = 4'd8; #100;
in = 4'd7; #100;
in = 4'd6; #100;
in = 4'd5; #100;
in = 4'd4; #100;
in = 4'd3; #100;
in = 4'd2; #100;
in = 4'd1; #100;
in = 4'd0; #100;
#100;
// 10 - 0
in = 4'd0; #100;
in = 4'd1; #100;
in = 4'd2; #100;
in = 4'd3; #100;
in = 4'd4; #100;
in = 4'd5; #100;
in = 4'd6; #100;
in = 4'd7; #100;
in = 4'd8; #100;
in = 4'd9; #100;
in = 4'd10; #100;
#100;
// 0,1,...,8,9,0
in = 4'd0; #100;
in = 4'd1; #100;
in = 4'd0; #100;
in = 4'd1; #100;
in = 4'd0; #100;
in = 4'd1; #100;
in = 4'd0; #100;
in = 4'd1; #100;
in = 4'd8; #100;
in = 4'd9; #100;
in = 4'd0; #100;
#100;
in = 4'd8; #100;
in = 4'd9; #100;
in = 4'd10; #100;
in = 4'd11; #100;
in = 4'd12; #100;
in = 4'd13; #100;
in = 4'd14; #100;
in = 4'd15; #100;
in = 4'd16; #100;

$stop;

end

endmodule


module tb_e_3_11_3;

// Inputs
reg [11:0] in_test;
reg en_test;

// Outputs
wire [11:0] out;
wire overflow;

// Instantiate the Unit Under Test (UUT)
e_3_11_3 uut (
.out (out), .overflow (overflow), .in (in_test), .en (en_test)
);

initial begin
// Initialize Inputs
in_test = 0;
en_test = 0;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here
en_test = 1'b0;

in_test = 12'b000000000000; // 000
# 200;
in_test = 12'b000000000011; // 003
# 200;
in_test = 12'b000000100011; // 023
# 200;
in_test = 12'b000100100011; // 123
# 200;
in_test = 12'b000100101001; // 129
# 200;
in_test = 12'b000110010011; // 193
# 200;
in_test = 12'b100100100011; // 923
# 200;
in_test = 12'b000010011001; // 099
# 200;
in_test = 12'b100100001001; // 909
# 200;
in_test = 12'b100110010000; // 990
# 200;
in_test = 12'b100110011001; // 999
# 200;

en_test = 1'b1;

in_test = 12'b000000000000; // 000
# 200;
in_test = 12'b000000000011; // 003
# 200;
in_test = 12'b000000100011; // 023
# 200;
in_test = 12'b000100100011; // 123
# 200;
in_test = 12'b000100101001; // 129
# 200;
in_test = 12'b000110010011; // 193
# 200;
in_test = 12'b100100100011; // 923
# 200;
in_test = 12'b000010011001; // 099
# 200;
in_test = 12'b100100001001; // 909
# 200;
in_test = 12'b100110010000; // 990
# 200;
in_test = 12'b100110011001; // 999
# 200;
$stop;

end

endmodule

