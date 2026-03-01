// Verilog test fixture created from schematic /home/user/_WORKSPACE_/kedziorno/pong_p_chu/schematics/enc_8_3.sch - Sun Mar  1 15:11:57 2026
// ko, HomeDL
// 8-to-3 encoder with enable

`timescale 1ns / 1ps

module tb_sch_enc_8_3();

// Inputs
reg i7;
reg i6;
reg i5;
reg i4;
reg en;
reg i3;
reg i2;
reg i1;
reg i0;

// Output
wire o1;
wire o0;
wire o2;

// Instantiate the UUT
enc_8_3 UUT (
.i7(i7),
.i6(i6),
.i5(i5),
.i4(i4),
.en(en),
.i3(i3),
.i2(i2),
.i1(i1),
.i0(i0),
.o1(o1),
.o0(o0),
.o2(o2)
);
// Initialize Inputs
initial begin
i7 = 0;
i6 = 0;
i5 = 0;
i4 = 0;
en = 0;
i3 = 0;
i2 = 0;
i1 = 0;
i0 = 0;
#20;
// enable and zero
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 0; #10;
// one input
en = 1; i7 = 1; i6 = 0; i5 = 0; i4 = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i7 = 0; i6 = 1; i5 = 0; i4 = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 1; i4 = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 1; i3 = 0; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 0; i3 = 1; i2 = 0; i1 = 0; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 0; i3 = 0; i2 = 1; i1 = 0; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 0; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 0; i3 = 0; i2 = 0; i1 = 0; i0 = 1; #10;
// more input (i1) - zero output
en = 1; i7 = 1; i6 = 0; i5 = 0; i4 = 0; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 1; i7 = 0; i6 = 1; i5 = 0; i4 = 0; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 1; i4 = 0; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 1; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 0; i3 = 1; i2 = 0; i1 = 1; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 0; i3 = 0; i2 = 1; i1 = 1; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 0; i3 = 0; i2 = 0; i1 = 1; i0 = 0; #10;
en = 1; i7 = 0; i6 = 0; i5 = 0; i4 = 0; i3 = 0; i2 = 0; i1 = 1; i0 = 1; #10;
$finish;
end

endmodule
