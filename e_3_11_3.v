`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     20:41:16 01/23/2026
// Design Name:     pong_p_chu
// Module Name:     e_3_11_3
// Project Name:    -
// Target Devices:  -
// Tool versions:   -
// Description:     -
//
// Dependencies: -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
//////////////////////////////////////////////////////////////////////////////////
module bcd_incrementer_1_logic_expression (out, overflow, in, clk);
output out;
output overflow;
input in;
input clk;

wire [3:0] out1;
reg [3:0] out;
wire overflow;
reg overflow_1;
wire [3:0] in;
wire clk;
wire aaa;

always @(posedge clk) begin
//f=a*b'*c'*d'+a'*b*c*d
out[3] = (in[3] & ~in[2] & ~in[1] & ~in[0]) | (~in[3] & in[2] & in[1] & in[0]);
//f=a'*b'*c*d+a'*b*d'+a'*b*c'*d
out[2] = (~in[3] & ~in[2] & in[1] & in[0]) | (~in[3] & in[2] & ~in[0]) | (~in[3] & in[2] & ~in[1] & in[0]);
//f=a'*c'*d+a'*c*d'
out[1] = (~in[3] & ~in[1] & in[0]) | (~in[3] & in[1] & ~in[0]);
//f=a'*c'*d'+a'*c*d'+a*b'*c'*d'
out[0] = (~in[3] & ~in[1] & in[0]) | (~in[3] & in[1] & ~in[0]) | (in[3] & ~in[2] & ~in[1] & ~in[0]);
//f=a'*b'*c'*d'
overflow_1 = (~in[3] & ~in[2] & ~in[1] & ~in[0]);
end

// LDCPE: Transparent latch with Asynchronous Reset, Preset and
// Gate Enable.
// All families.
// Xilinx HDL Libraries Guide, version 10.1.2
FDRSE #(
.INIT(1'b0) // Initial value of register (1'b0 or 1'b1)
) FDRSE_inst (
.Q(aaa), // Data output
.C(clk), // Clock input
.CE(1'b1), // Clock enable input
.D(out[3] & ~out[2] & ~out[1] & out[0]), // Data input
.R(overflow_1), // Synchronous reset input
.S(1'b0) // Synchronous set input
);
// End of LDCPE_inst instantiation

assign overflow = aaa;

endmodule

module bcd_decoder (out, in);
output out;
input in;

reg [3:0] out;
wire [3:0] in;

always @* begin
  case (in)
    4'd0 : out = 4'b0000;
    4'd1 : out = 4'b0001;
    4'd2 : out = 4'b0010;
    4'd3 : out = 4'b0011;
    4'd4 : out = 4'b0100;
    4'd5 : out = 4'b0101;
    4'd6 : out = 4'b0110;
    4'd7 : out = 4'b0111;
    4'd8 : out = 4'b1000;
    4'd9 : out = 4'b1001;
    default: out = 4'b0000;
  endcase
end

endmodule
module e_3_11_3(out);
output out;

wire [11:0] out;

reg [11:0] cntr_1;

bcd_decoder uut1 (.out (out[11:8]), .in (cntr_1 [11:8]));
bcd_decoder uut2 (.out (out[7:4]), .in (cntr_1 [7:4]));
bcd_decoder uut3 (.out (out[3:0]), .in (cntr_1 [3:0]));

endmodule
