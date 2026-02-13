`timescale 1ns / 1ps

///////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   20:06:46 02/11/2026
// Design Name:   e_4_7_3
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/testbenchs/tb_e_4_7_3.v
// Project Name:  pong_p_chu
// Target Device: -
// Tool versions: -
// Description:   Rotating square circuit
//
// Verilog Test Fixture created by ISE for module: e_4_7_3
//
// Dependencies: -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
///////////////////////////////////////////////////////////////////////////////

module tb_tick_4;

// Inputs
reg clock = 0;
reg reset;

// Outputs
wire tick;

// Instantiate the Unit Under Test (UUT)
tick_4 uut (
.tick(tick),
.clock(clock),
.reset(reset)
);

always clock = #5 ~clock;

initial begin
// Initialize Inputs
reset = 1;

// Wait 100 ns for global reset to finish
#100;
reset = 0;

// Add stimulus here

end

endmodule

module tb_counter_down_3;

// Inputs
reg [2:0] x;

// Outputs
wire [2:0] y;

// Instantiate the Unit Under Test (UUT)
counter_down_3 uut (
.y (y),
.x (x)
);

initial begin
// Initialize Inputs

// Wait 100 ns for global reset to finish
#10;

// Add stimulus here
x = 3'd7; #10;
x = 3'd6; #10;
x = 3'd5; #10;
x = 3'd4; #10;
x = 3'd3; #10;
x = 3'd2; #10;
x = 3'd1; #10;
x = 3'd0; #10;
$finish;

end

endmodule

module tb_counter_up_2_seq;

// Inputs
reg clock = 0;
reg reset;
reg enable = 1'b1;

// Outputs
wire [1:0] counter_out;

always clock = #5 ~clock;

// Instantiate the Unit Under Test (UUT)
counter_up_2_seq uut (
.counter_out (counter_out),
.clock (clock),
.reset (reset),
.enable (enable)
);

initial begin
// Initialize Inputs
reset = 1;
// Wait 100 ns for global reset to finish
#102.5;
reset = 0;

// Add stimulus here
#100;
$finish;

end

endmodule

module tb_counter_up_3;

// Inputs
reg [2:0] x;

// Outputs
wire [2:0] y;

// Instantiate the Unit Under Test (UUT)
counter_up_3 uut (
.y (y),
.x (x)
);

initial begin
// Initialize Inputs

// Wait 100 ns for global reset to finish
#10;

// Add stimulus here
x = 3'd0; #10;
x = 3'd1; #10;
x = 3'd2; #10;
x = 3'd3; #10;
x = 3'd4; #10;
x = 3'd5; #10;
x = 3'd6; #10;
x = 3'd7; #10;
$finish;

end

endmodule

module tb_counter_down_2_seq;

// Inputs
reg clock = 0;
reg reset;
reg enable = 1'b1;

// Outputs
wire [1:0] counter_out;

always clock = #5 ~clock;

// Instantiate the Unit Under Test (UUT)
counter_down_2_seq uut (
.counter_out (counter_out),
.clock (clock),
.reset (reset),
.enable (enable)
);

initial begin
// Initialize Inputs
reset = 1;
// Wait 100 ns for global reset to finish
#102.5;
reset = 0;

// Add stimulus here
#100;
$finish;

end

endmodule

module tb_mux_81;

// Inputs
reg [7:0] x;
reg [2:0] s;

// Outputs
wire y;

// Instantiate the Unit Under Test (UUT)
mux_81 uut (
.y (y),
.x (x),
.s (s)
);

initial begin
// Initialize Inputs

// Wait 100 ns for global reset to finish
#10;

// Add stimulus here
x = 8'b00000001; s = 3'd0; #10;
x = 8'b00000010; s = 3'd1; #10;
x = 8'b00000100; s = 3'd2; #10;
x = 8'b00001000; s = 3'd3; #10;
x = 8'b00010000; s = 3'd4; #10;
x = 8'b00100000; s = 3'd5; #10;
x = 8'b01000000; s = 3'd6; #10;
x = 8'b10000000; s = 3'd7; #10;
x = 8'b10000000; s = 3'd0; #10;
x = 8'b01000000; s = 3'd1; #10;
x = 8'b00100000; s = 3'd2; #10;
x = 8'b00010000; s = 3'd3; #10;
x = 8'b00001000; s = 3'd4; #10;
x = 8'b00000100; s = 3'd5; #10;
x = 8'b00000010; s = 3'd6; #10;
x = 8'b00000001; s = 3'd7; #10;
x = 8'b10000000; s = 3'd0; #10;
x = 8'b10000000; s = 3'd1; #10;
x = 8'b10000000; s = 3'd2; #10;
x = 8'b10000000; s = 3'd3; #10;
x = 8'b10000000; s = 3'd4; #10;
x = 8'b10000000; s = 3'd5; #10;
x = 8'b10000000; s = 3'd6; #10;
x = 8'b10000000; s = 3'd7; #10;
x = 8'b01000000; s = 3'd0; #10;
x = 8'b01000000; s = 3'd1; #10;
x = 8'b01000000; s = 3'd2; #10;
x = 8'b01000000; s = 3'd3; #10;
x = 8'b01000000; s = 3'd4; #10;
x = 8'b01000000; s = 3'd5; #10;
x = 8'b01000000; s = 3'd6; #10;
x = 8'b01000000; s = 3'd7; #10;
x = 8'b00100000; s = 3'd0; #10;
x = 8'b00100000; s = 3'd1; #10;
x = 8'b00100000; s = 3'd2; #10;
x = 8'b00100000; s = 3'd3; #10;
x = 8'b00100000; s = 3'd4; #10;
x = 8'b00100000; s = 3'd5; #10;
x = 8'b00100000; s = 3'd6; #10;
x = 8'b00100000; s = 3'd7; #10;
x = 8'b00010000; s = 3'd0; #10;
x = 8'b00010000; s = 3'd1; #10;
x = 8'b00010000; s = 3'd2; #10;
x = 8'b00010000; s = 3'd3; #10;
x = 8'b00010000; s = 3'd4; #10;
x = 8'b00010000; s = 3'd5; #10;
x = 8'b00010000; s = 3'd6; #10;
x = 8'b00010000; s = 3'd7; #10;
x = 8'b00001000; s = 3'd0; #10;
x = 8'b00001000; s = 3'd1; #10;
x = 8'b00001000; s = 3'd2; #10;
x = 8'b00001000; s = 3'd3; #10;
x = 8'b00001000; s = 3'd4; #10;
x = 8'b00001000; s = 3'd5; #10;
x = 8'b00001000; s = 3'd6; #10;
x = 8'b00001000; s = 3'd7; #10;
x = 8'b00000100; s = 3'd0; #10;
x = 8'b00000100; s = 3'd1; #10;
x = 8'b00000100; s = 3'd2; #10;
x = 8'b00000100; s = 3'd3; #10;
x = 8'b00000100; s = 3'd4; #10;
x = 8'b00000100; s = 3'd5; #10;
x = 8'b00000100; s = 3'd6; #10;
x = 8'b00000100; s = 3'd7; #10;
x = 8'b00000010; s = 3'd0; #10;
x = 8'b00000010; s = 3'd1; #10;
x = 8'b00000010; s = 3'd2; #10;
x = 8'b00000010; s = 3'd3; #10;
x = 8'b00000010; s = 3'd4; #10;
x = 8'b00000010; s = 3'd5; #10;
x = 8'b00000010; s = 3'd6; #10;
x = 8'b00000010; s = 3'd7; #10;
x = 8'b00000001; s = 3'd0; #10;
x = 8'b00000001; s = 3'd1; #10;
x = 8'b00000001; s = 3'd2; #10;
x = 8'b00000001; s = 3'd3; #10;
x = 8'b00000001; s = 3'd4; #10;
x = 8'b00000001; s = 3'd5; #10;
x = 8'b00000001; s = 3'd6; #10;
x = 8'b00000001; s = 3'd7; #10;
$finish;

end

endmodule

module tb_mux_41;

// Inputs
reg [3:0] x;
reg [1:0] s;

// Outputs
wire y;

// Instantiate the Unit Under Test (UUT)
mux_41 uut (
.y (y),
.x (x),
.s (s)
);

initial begin
// Initialize Inputs

// Wait 100 ns for global reset to finish
#10;

// Add stimulus here
x = 4'b0001; s = 2'b00; #10;
x = 4'b0010; s = 2'b01; #10;
x = 4'b0100; s = 2'b10; #10;
x = 4'b1000; s = 2'b11; #10;
x = 4'b1000; s = 2'b00; #10;
x = 4'b0100; s = 2'b01; #10;
x = 4'b0010; s = 2'b10; #10;
x = 4'b0001; s = 2'b11; #10;
x = 4'b1000; s = 2'b00; #10;
x = 4'b1000; s = 2'b01; #10;
x = 4'b1000; s = 2'b10; #10;
x = 4'b1000; s = 2'b11; #10;
x = 4'b0100; s = 2'b00; #10;
x = 4'b0100; s = 2'b01; #10;
x = 4'b0100; s = 2'b10; #10;
x = 4'b0100; s = 2'b11; #10;
x = 4'b0010; s = 2'b00; #10;
x = 4'b0010; s = 2'b01; #10;
x = 4'b0010; s = 2'b10; #10;
x = 4'b0010; s = 2'b11; #10;
x = 4'b0001; s = 2'b00; #10;
x = 4'b0001; s = 2'b01; #10;
x = 4'b0001; s = 2'b10; #10;
x = 4'b0001; s = 2'b11; #10;
x = 4'b0001; s = 2'b11; #10;
x = 4'b0001; s = 2'b10; #10;
x = 4'b0001; s = 2'b01; #10;
x = 4'b0001; s = 2'b00; #10;
x = 4'b0010; s = 2'b11; #10;
x = 4'b0010; s = 2'b10; #10;
x = 4'b0010; s = 2'b01; #10;
x = 4'b0010; s = 2'b00; #10;
x = 4'b0100; s = 2'b11; #10;
x = 4'b0100; s = 2'b10; #10;
x = 4'b0100; s = 2'b01; #10;
x = 4'b0100; s = 2'b00; #10;
x = 4'b1000; s = 2'b11; #10;
x = 4'b1000; s = 2'b10; #10;
x = 4'b1000; s = 2'b01; #10;
x = 4'b1000; s = 2'b00; #10;
$finish;

end

endmodule

module tb_e_4_7_3;

// Inputs
reg clock = 0;
reg reset;
reg en;
reg cw;

// Outputs
wire [3:0] anode;
wire [6:0] segment;

// Instantiate the Unit Under Test (UUT)
e_4_7_3 uut (
.anode(anode),
.segment(segment),
.clock(clock),
.reset(reset),
.en(en),
.cw(cw)
);

always clock = #5 ~clock;

initial begin
// Initialize Inputs
reset = 1;
en = 0;
cw = 0;

// Wait 100 ns for global reset to finish
#102.5;
reset = 0;

// Add stimulus here
en = 1; #(640*10);
cw = 1; #(640*10);
cw = 0; #(640*10);
en = 0; #(640*10);
$finish;
end

endmodule
