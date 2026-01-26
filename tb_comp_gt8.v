`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:38:51 01/26/2026
// Design Name:   comp_gt8
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/tb_comp_gt8.v
// Project Name:  pong_p_chu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comp_gt8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_comp_gt8;

// Inputs
reg [7:0] a;
reg [7:0] b;

// Outputs
wire gt8;

// Instantiate the Unit Under Test (UUT)
comp_gt8 uut (
.gt8(gt8), 
.a(a), 
.b(b)
);

initial begin
// Initialize Inputs
a = 0;
b = 0;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here
a = 2; b = 1; #100;
a = 1; b = 2; #100;
a = 3; b = 3; #100;
a = 100; b = 101; #100;
a = 101; b = 100; #100;
a = 102; b = 101; #100;
a = 103; b = 102; #100;
a = 102; b = 103; #100;
$stop;
end

endmodule

