`timescale 1ns / 1ps

///////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   13:00:26 03/01/2026
// Design Name:   enc_4_2
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/testbenchs/tb_enc_4_2.v
// Project Name:  pong_p_chu
// Target Device: -
// Tool versions: -
// Description:   -
//
// Verilog Test Fixture created by ISE for module: enc_4_2
//
// Dependencies:  -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
///////////////////////////////////////////////////////////////////////////////

module tb_enc_4_2;

// Inputs
reg i3;
reg i2;
reg i1;
reg i0;
reg en;

// Outputs
wire o1;
wire o0;

// Instantiate the Unit Under Test (UUT)
enc_4_2 uut (
.o1(o1),
.o0(o0),
.i3(i3),
.i2(i2),
.i1(i1),
.i0(i0),
.en(en)
);

initial begin
// Initialize Inputs
i3 = 0;
i2 = 1;
i1 = 0;
i0 = 0;
en = 0;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here
// zero and enable
en = 1; i3 = 0; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i3 = 0; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i3 = 0; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i3 = 0; i2 = 0; i1 = 0; i0 = 0; #10;
// one bit
en = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 1; #10;
en = 0; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 0; i3 = 0; i2 = 1; i1 = 0; i0 = 0; #10;
en = 0; i3 = 1; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i3 = 0; i2 = 0; i1 = 0; i0 = 1; #10;
en = 1; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 1; i3 = 0; i2 = 1; i1 = 0; i0 = 0; #10;
en = 1; i3 = 1; i2 = 0; i1 = 0; i0 = 0; #10;
en = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 1; #10;
en = 0; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 0; i3 = 0; i2 = 1; i1 = 0; i0 = 0; #10;
en = 0; i3 = 1; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i3 = 0; i2 = 0; i1 = 0; i0 = 1; #10;
en = 0; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 1; i3 = 0; i2 = 1; i1 = 0; i0 = 0; #10;
en = 0; i3 = 1; i2 = 0; i1 = 0; i0 = 0; #10;
en = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 1; #10;
en = 1; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 0; i3 = 0; i2 = 1; i1 = 0; i0 = 0; #10;
en = 1; i3 = 1; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i3 = 0; i2 = 0; i1 = 0; i0 = 1; #10;
en = 0; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 0; i3 = 0; i2 = 1; i1 = 0; i0 = 0; #10;
en = 1; i3 = 1; i2 = 0; i1 = 0; i0 = 0; #10;
en = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 1; #10;
en = 1; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 1; i3 = 0; i2 = 1; i1 = 0; i0 = 0; #10;
en = 0; i3 = 1; i2 = 0; i1 = 0; i0 = 0; #10;
en = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 1; #10;
en = 0; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 1; i3 = 0; i2 = 1; i1 = 0; i0 = 0; #10;
en = 1; i3 = 1; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i3 = 0; i2 = 0; i1 = 0; i0 = 1; #10;
en = 1; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 0; i3 = 0; i2 = 1; i1 = 0; i0 = 0; #10;
en = 0; i3 = 1; i2 = 0; i1 = 0; i0 = 0; #10;
// more bit - output is zero
en = 0; i3 = 1; i2 = 0; i1 = 0; i0 = 1; #10;
en = 0; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 0; i3 = 0; i2 = 1; i1 = 0; i0 = 0; #10;
en = 0; i3 = 1; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i3 = 0; i2 = 0; i1 = 0; i0 = 1; #10;
en = 1; i3 = 1; i2 = 0; i1 = 1; i0 = 0; #10;
en = 1; i3 = 0; i2 = 1; i1 = 0; i0 = 0; #10;
en = 1; i3 = 1; i2 = 0; i1 = 0; i0 = 0; #10;
en = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 1; #10;
en = 0; i3 = 0; i2 = 1; i1 = 1; i0 = 0; #10;
en = 0; i3 = 0; i2 = 1; i1 = 0; i0 = 0; #10;
en = 0; i3 = 1; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i3 = 0; i2 = 0; i1 = 0; i0 = 1; #10;
en = 0; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 1; i3 = 0; i2 = 1; i1 = 0; i0 = 1; #10;
en = 0; i3 = 1; i2 = 0; i1 = 0; i0 = 0; #10;
en = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 1; #10;
en = 1; i3 = 0; i2 = 1; i1 = 1; i0 = 0; #10;
en = 0; i3 = 0; i2 = 1; i1 = 0; i0 = 0; #10;
en = 1; i3 = 1; i2 = 0; i1 = 1; i0 = 0; #10;
en = 1; i3 = 0; i2 = 1; i1 = 0; i0 = 1; #10;
en = 0; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 0; i3 = 0; i2 = 1; i1 = 0; i0 = 0; #10;
en = 1; i3 = 1; i2 = 0; i1 = 1; i0 = 0; #10;
en = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 1; #10;
en = 1; i3 = 1; i2 = 0; i1 = 1; i0 = 0; #10;
en = 1; i3 = 1; i2 = 1; i1 = 0; i0 = 0; #10;
en = 0; i3 = 1; i2 = 0; i1 = 0; i0 = 0; #10;
en = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 1; #10;
en = 0; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 1; i3 = 0; i2 = 1; i1 = 0; i0 = 0; #10;
en = 1; i3 = 1; i2 = 0; i1 = 1; i0 = 0; #10;
en = 1; i3 = 0; i2 = 0; i1 = 0; i0 = 1; #10;
en = 1; i3 = 0; i2 = 0; i1 = 1; i0 = 1; #10;
en = 0; i3 = 0; i2 = 1; i1 = 0; i0 = 0; #10;
en = 0; i3 = 1; i2 = 0; i1 = 0; i0 = 0; #10;
$finish;
end

endmodule

