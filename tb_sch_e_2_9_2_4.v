// Verilog test fixture created from schematic /home/user/_WORKSPACE_/kedziorno/pong_p_chu/sch_e_2_9_2_4.sch - Sat Jan 17 18:31:25 2026
// ko, HomeDL
// 3-to-8 decoder with enable

`timescale 1ns / 1ps

module tb_sch_e_2_9_2_4();

// Inputs
reg i2;
reg i1;
reg i0;
reg en;

// Output
wire o0;
wire o1;
wire o2;
wire o3;
wire o4;
wire o5;
wire o6;
wire o7;

// Bidirs

// Instantiate the UUT
sch_e_2_9_2_4 UUT (.en(en),
.i2(i2), .i1(i1), .i0(i0), 
.o0(o0), .o1(o1), .o2(o2), .o3(o3), 
.o4(o4), .o5(o5), .o6(o6), .o7(o7));

// Initialize Inputs
initial begin
i2 = 0;
i1 = 0;
i0 = 0;
en = 0;
#100;
en = 1; i2 = 0; i1 = 0; i0 = 0; #100;
en = 1; i2 = 0; i1 = 0; i0 = 1; #100;
en = 1; i2 = 0; i1 = 1; i0 = 0; #100;
en = 1; i2 = 0; i1 = 1; i0 = 1; #100;
en = 1; i2 = 1; i1 = 0; i0 = 0; #100;
en = 1; i2 = 1; i1 = 0; i0 = 1; #100;
en = 1; i2 = 1; i1 = 1; i0 = 0; #100;
en = 1; i2 = 1; i1 = 1; i0 = 1; #100;

en = 0; i2 = 0; i1 = 0; i0 = 0; #100;
en = 0; i2 = 0; i1 = 0; i0 = 1; #100;
en = 0; i2 = 0; i1 = 1; i0 = 0; #100;
en = 0; i2 = 0; i1 = 1; i0 = 1; #100;
en = 0; i2 = 1; i1 = 0; i0 = 0; #100;
en = 0; i2 = 1; i1 = 0; i0 = 1; #100;
en = 0; i2 = 1; i1 = 1; i0 = 0; #100;
en = 0; i2 = 1; i1 = 1; i0 = 1; #100;

en = 1; i2 = 0; i1 = 0; i0 = 0; #100;
en = 0; i2 = 0; i1 = 0; i0 = 1; #100;
en = 1; i2 = 0; i1 = 1; i0 = 0; #100;
en = 0; i2 = 0; i1 = 1; i0 = 1; #100;
en = 1; i2 = 1; i1 = 0; i0 = 0; #100;
en = 0; i2 = 1; i1 = 0; i0 = 1; #100;
en = 1; i2 = 1; i1 = 1; i0 = 0; #100;
en = 0; i2 = 1; i1 = 1; i0 = 1; #100;

en = 0; i2 = 0; i1 = 0; i0 = 0; #100;
en = 1; i2 = 0; i1 = 0; i0 = 1; #100;
en = 0; i2 = 0; i1 = 1; i0 = 0; #100;
en = 1; i2 = 0; i1 = 1; i0 = 1; #100;
en = 0; i2 = 1; i1 = 0; i0 = 0; #100;
en = 1; i2 = 1; i1 = 0; i0 = 1; #100;
en = 0; i2 = 1; i1 = 1; i0 = 0; #100;
en = 1; i2 = 1; i1 = 1; i0 = 1; #100;

$finish;
end

endmodule
