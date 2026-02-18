`timescale 1ns / 1ps

///////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   22:11:07 02/16/2026
// Design Name:   e_4_7_5
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/testbenchs/tb_e_4_7_5.v
// Project Name:  pong_p_chu
// Target Device: -
// Tool versions: -
// Description:   Rotating LED banner circuit
//
// Verilog Test Fixture created by ISE for module: e_4_7_5
//
// Dependencies: -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
///////////////////////////////////////////////////////////////////////////////

module tb_lcd7_segment_decoder;

// Inputs
reg [3:0] x;

// Outputs
wire [6:0] y;

 // Instantiate the Unit Under Test (UUT)
lcd7_segment_decoder uut (
.y(y),
.x(x)
);

initial begin
// Initialize Inputs
x = 0;

// Wait 100 ns for global reset to finish
#10;

// Add stimulus here
x = 4'd0; #10;
x = 4'd1; #10;
x = 4'd2; #10;
x = 4'd3; #10;
x = 4'd4; #10;
x = 4'd5; #10;
x = 4'd6; #10;
x = 4'd7; #10;
x = 4'd8; #10;
x = 4'd9; #10;
$finish;
end;

endmodule

module tb_e_4_7_5;

// Inputs
reg clock = 0;
reg reset;
reg en;
reg dir;

// Outputs
wire [6:0] segment;
wire [3:0] anode;

always clock = #5 ~clock;

// Instantiate the Unit Under Test (UUT)
e_4_7_5 uut (
.segment(segment),
.anode(anode),
.clock(clock),
.reset(reset),
.en(en),
.dir(dir)
);

initial begin
// Initialize Inputs
reset = 1;
en = 0;
dir = 0;

// Wait 100 ns for global reset to finish
#107.5;
reset = 0;

// Add stimulus here
en = 1; #10;
#110;
$finish;

end

endmodule

