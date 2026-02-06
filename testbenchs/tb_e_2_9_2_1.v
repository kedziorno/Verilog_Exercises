`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   12:19:42 01/17/2026
// Design Name:   e_2_9_2_1
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/tb_e_2_9_2_1.v
// Project Name:  pong_p_chu
// Target Device: -
// Tool versions: -
// Description:   -
//
// Verilog Test Fixture created by ISE for module: e_2_9_2_1
//
// Dependencies: -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
////////////////////////////////////////////////////////////////////////////////

module tb_e_2_9_2_1;

// Inputs
reg [1:0] i2;
reg en;

// Outputs
wire [3:0] o4;

// Instantiate the Unit Under Test (UUT)
e_2_9_2_1 uut (.o4(o4), .i2(i2), .en(en));

initial begin
// Initialize Inputs
i2 = 0;
en = 0;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here
en = 1; i2 = 2'b00; #100;
en = 1; i2 = 2'b01; #100;
en = 1; i2 = 2'b10; #100;
en = 1; i2 = 2'b11; #100;
en = 1; i2 = 2'b00; #100;
en = 1; i2 = 2'b00; #100;
en = 1; i2 = 2'b01; #100;
en = 1; i2 = 2'b10; #100;
en = 1; i2 = 2'b11; #100;

en = 1; i2 = 2'b00; #100;
en = 0; i2 = 2'b01; #100;
en = 1; i2 = 2'b10; #100;
en = 0; i2 = 2'b11; #100;
en = 1; i2 = 2'b00; #100;
en = 0; i2 = 2'b00; #100;
en = 1; i2 = 2'b01; #100;
en = 0; i2 = 2'b10; #100;
en = 1; i2 = 2'b11; #100;
$finish;
end

endmodule

