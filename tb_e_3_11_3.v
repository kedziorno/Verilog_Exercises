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

// Outputs
reg [3:0] in;
reg [3:0] out;
reg overflow;
reg clk;

// Instantiate the Unit Under Test (UUT)
bcd_incrementer_1_logic_expression uut (
.out (out),
.overflow (overflow),
.in (in),
.clk (clk)
);

always
begin
#5 clk = 1; // Clock remains low for time dlow
// before transitioning to 1
#5 clk = 0; // Clock remains high for time dhigh
// before transitioning to 0
end;

initial begin
// Initialize Inputs
out = 0;
overflow = 0;
in = 0;
clk = 0;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here
in = 4'b0000; #100;
in = 4'b0001; #100;
in = 4'b1001; #100;
in = 4'b1000; #100;
in = 4'b0010; #100;
in = 4'b1001; #100;
in = 4'b1000; #100;
in = 4'b0001; #100;
in = 4'b0000; #100;
in = 4'b0011; #100;
in = 4'b1001; #100;
in = 4'b0000; #100;
in = 4'b1000; #100;
in = 4'b0001; #100;
in = 4'b0000; #100;
$stop;

end

endmodule


module tb_e_3_11_3;

// Outputs
wire [11:0] out;

// Instantiate the Unit Under Test (UUT)
e_3_11_3 uut (
.out(out)
);

initial begin
// Initialize Inputs

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here

end

endmodule

