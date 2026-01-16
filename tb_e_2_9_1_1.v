`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   10:33:23 01/16/2026
// Design Name:   e_2_9_1_1
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/tb_e_2_9_1_1.v
// Project Name:  pong_p_chu
// Target Device: -
// Tool versions: -
// Description:   -
//
// Verilog Test Fixture created by ISE for module: e_2_9_1_1
//
// Dependencies: -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
////////////////////////////////////////////////////////////////////////////////

module tb_e_2_9_1_1;
// Inputs
reg a;
reg b;
reg c;
reg d;
// Outputs
wire f;
// Instantiate the Unit Under Test (UUT)
e_2_9_1_1 uut (.a(a), .b(b), .c(c), .d(d), .f(f));

initial begin
// Initialize Inputs
a = 0;
b = 0;
c = 0;
d = 0;
// Wait 100 ns for global reset to finish
#100;
// Add stimulus here
a = 0 ; b = 0; c = 0 ; d = 0 ; #100 ;
a = 0 ; b = 1; c = 0 ; d = 0 ; #100 ;
a = 1 ; b = 0; c = 0 ; d = 0 ; #100 ;
a = 1 ; b = 1; c = 0 ; d = 0 ; #100 ;
a = 0 ; b = 0; c = 0 ; d = 1 ; #100 ;
a = 0 ; b = 1; c = 0 ; d = 1 ; #100 ;
a = 1 ; b = 0; c = 0 ; d = 1 ; #100 ;
a = 1 ; b = 1; c = 0 ; d = 1 ; #100 ;
a = 0 ; b = 0; c = 1 ; d = 0 ; #100 ;
a = 0 ; b = 1; c = 1 ; d = 0 ; #100 ;
a = 1 ; b = 0; c = 1 ; d = 0 ; #100 ;
a = 1 ; b = 1; c = 1 ; d = 0 ; #100 ;
a = 0 ; b = 0; c = 1 ; d = 1 ; #100 ;
a = 0 ; b = 1; c = 1 ; d = 1 ; #100 ;
a = 1 ; b = 0; c = 1 ; d = 1 ; #100 ;
a = 1 ; b = 1; c = 1 ; d = 1 ; #100 ;
$stop;
end
endmodule

module tb_comp_gt2;

// Inputs
reg [1:0] test_a;
reg [1:0] test_b;

// Outputs
wire gt2;

// Instantiate the Unit Under Test (UUT)
comp_gt2 uut (.a(test_a), .b(test_b), .gt2(gt2));

initial begin
// Wait 100 ns for global reset to finish
#100;
// Add stimulus here
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
