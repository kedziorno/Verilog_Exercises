`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     22:07:48 02/16/2026
// Design Name:     -
// Module Name:     e_4_7_5
// Project Name:    -
// Target Devices:  -
// Tool versions:   -
// Description:     Rotating LED banner circuit
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
///////////////////////////////////////////////////////////////////////////////
module lcd7_segment_decoder (y, x);
output y;
input x;

wire [6:0] y;
wire [3:0] x;

assign y[0] = (~x[3]&x[1])|(x[3]&~x[2]&~x[1])|(~x[3]&x[2]&x[0])|(~x[3]&~x[2]&x[0]);
assign y[1] = (~x[3]&~x[2])|(~x[3]&~x[1]&x[0])|(~x[3]&x[1]&x[0])|(x[3]&~x[2]&~x[1])|(~x[2]&~x[1]);
assign y[2] = (~x[3]&~x[1])|(~x[3]&x[0])|(~x[3]&x[2])|(~x[2]&~x[1]);
assign y[3] = (~x[3]&~x[2]&~x[1]&x[0])|(~x[3]&~x[2]&x[1])|(~x[3]&x[1]&~x[0])|(~x[3]&~x[2]&~x[0])|(~x[2]&~x[1]&~x[0])|(x[3]&~x[2]&~x[1]);
assign y[4] = (~x[3]&x[2]&~x[1]&x[0])|(~x[3]&x[1]&~x[0])|(~x[3]&~x[2]&~x[0])|(~x[2]&~x[1]&~x[0]);
assign y[5] = (~x[3]&~x[1]&~x[0])|(x[3]&~x[2]&~x[1])|(~x[3]&x[2]&~x[0]);
assign y[6] = (~x[3]&x[1])|(~x[3]&x[2])|(x[3]&~x[2]&~x[1]);

endmodule

module e_4_7_5 (segment, anode, clock, reset, en, dir);
output segment, anode;
input clock, reset, en, dir;

wire [6:0] segment;
wire [3:0] anode;
wire clock, reset, en, dir;


endmodule
