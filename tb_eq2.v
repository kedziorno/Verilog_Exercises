`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   11:56:16 01/16/2026
// Design Name:   eq2
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/tb_eq2.v
// Project Name:  pong_p_chu
// Target Device: -
// Tool versions: -
// Description:   e_2_9_1_2
//
// Verilog Test Fixture created by ISE for module: eq2
//
// Dependencies: -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
////////////////////////////////////////////////////////////////////////////////

module tb_eq2_1;

// Inputs
reg a0;
reg a1;
reg b0;
reg b1;

// Outputs
wire eq2;

// Instantiate the Unit Under Test (UUT)
eq2_logic_expression uut (.a0(a0), .a1(a1), .b0(b0), .b1(b1), .eq2(eq2));

initial begin
// Initialize Inputs
a0 = 0;
a1 = 0;
b0 = 0;
b1 = 0;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here
a0 = 0; a1 = 0; b0 = 0; b1 = 0; #100;
a0 = 0; a1 = 1; b0 = 0; b1 = 0; #100;
a0 = 1; a1 = 0; b0 = 0; b1 = 0; #100;
a0 = 1; a1 = 1; b0 = 0; b1 = 0; #100;
a0 = 0; a1 = 0; b0 = 0; b1 = 1; #100;
a0 = 0; a1 = 1; b0 = 0; b1 = 1; #100;
a0 = 1; a1 = 0; b0 = 0; b1 = 1; #100;
a0 = 1; a1 = 1; b0 = 0; b1 = 1; #100;
a0 = 0; a1 = 0; b0 = 1; b1 = 0; #100;
a0 = 0; a1 = 1; b0 = 1; b1 = 0; #100;
a0 = 1; a1 = 0; b0 = 1; b1 = 0; #100;
a0 = 1; a1 = 1; b0 = 1; b1 = 0; #100;
a0 = 0; a1 = 0; b0 = 1; b1 = 1; #100;
a0 = 0; a1 = 1; b0 = 1; b1 = 1; #100;
a0 = 1; a1 = 0; b0 = 1; b1 = 1; #100;
a0 = 1; a1 = 1; b0 = 1; b1 = 1; #100;
$stop;
end

endmodule

module tb_eq2_2;
reg [1:0] test_a, test_b;
wire eq;

eq2_structural_primitive uut (.eq2 (eq), .a (test_a), .b (test_b));

initial
begin
test_a = 2'b00; test_b = 2'b00; #200;
test_a = 2'b01; test_b = 2'b00; #200;
test_a = 2'b01; test_b = 2'b11; #200;
test_a = 2'b10; test_b = 2'b10; #200;
test_a = 2'b10; test_b = 2'b00; #200;
test_a = 2'b11; test_b = 2'b11; #200;
test_a = 2'b11; test_b = 2'b01; #200;
$stop;
end

endmodule

module tb_eq2_3;
reg [1:0] test_a, test_b;
wire eq;

eq2_structural_le uut (.eq2 (eq), .a (test_a), .b (test_b));

initial
begin
test_a = 2'b00; test_b = 2'b00; #200;
test_a = 2'b01; test_b = 2'b00; #200;
test_a = 2'b01; test_b = 2'b11; #200;
test_a = 2'b10; test_b = 2'b10; #200;
test_a = 2'b10; test_b = 2'b00; #200;
test_a = 2'b11; test_b = 2'b11; #200;
test_a = 2'b11; test_b = 2'b01; #200;
$stop;
end

endmodule

module tb_eq2_4;
reg [1:0] test_a, test_b;
wire eq;

eq2_structural_udp uut (.eq2 (eq), .a (test_a), .b (test_b));

initial
begin
test_a = 2'b00; test_b = 2'b00; #200;
test_a = 2'b01; test_b = 2'b00; #200;
test_a = 2'b01; test_b = 2'b11; #200;
test_a = 2'b10; test_b = 2'b10; #200;
test_a = 2'b10; test_b = 2'b00; #200;
test_a = 2'b11; test_b = 2'b11; #200;
test_a = 2'b11; test_b = 2'b01; #200;
$stop;
end

endmodule
