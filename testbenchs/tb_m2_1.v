// Verilog test fixture created from schematic /home/user/_WORKSPACE_/kedziorno/pong_p_chu/m2_1.sch - Mon Feb  2 21:14:25 2026

`timescale 1ns / 1ps

module tb_m2_1_sch();

// Inputs
reg s0;
reg d0;
reg d1;

// Output
wire o;

// Bidirs

// Instantiate the UUT
m2_1 UUT (
.s0(s0), 
.d0(d0), 
.d1(d1), 
.o(o)
);

// Initialize Inputs
initial begin
s0 = 0;
d0 = 0;
d1 = 0;
#10;
d0 = 0; d1 = 1; s0 = 0; #10;
d1 = 0; d0 = 1; s0 = 1; #10;
d0 = 1; d1 = 0; s0 = 0; #10;
d1 = 1; d0 = 0; s0 = 1; #10;
$stop;
end

endmodule
