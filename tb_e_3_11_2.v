`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   20:46:20 01/22/2026
// Design Name:   e_3_11_2
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/tb_e_3_11_2.v
// Project Name:  pong_p_chu
// Target Device: -
// Tool versions: -
// Description:   -
//
// Verilog Test Fixture created by ISE for module: e_3_11_2
//
// Dependencies:  -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
////////////////////////////////////////////////////////////////////////////////

module tb_e_3_11_2;

// Inputs
reg [11:0] req;

// Outputs
wire [3:0] first;
wire [3:0] second;

// Instantiate the Unit Under Test (UUT)
e_3_11_2 uut (
.first(first), 
.second(second), 
.req(req)
);

initial begin
// Initialize Inputs
req = 0;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here

// Test 1: Only one bit active
req = 12'b0000_1000_0000; #10; // First=7, Second=0 (no second bit)
// Test 2: Multiple bits active
req = 12'b1000_0100_0001; #10; // First=11, Second=6
// Test 3: Adjacent bits
req = 12'b0000_0000_0011; #10; // First=1, Second=0
req = 12'b100000000000; # 10;
req = 12'b000010000000; # 10;
req = 12'b000011000000; # 10;
req = 12'b000010100000; # 10;
req = 12'b000010001000; # 10;
req = 12'b000010101000; # 10;
req = 12'b100000000001; # 10;
req = 12'b000000000000; # 10;
$finish;
end

endmodule

