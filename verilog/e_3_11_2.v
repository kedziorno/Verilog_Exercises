`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:         HomeDL
// Engineer:        ko
//
// Create Date:     20:16:51 01/22/2026
// Design Name:     pong_p_chu
// Module Name:     e_3_11_2
// Project Name:    Dual-priority encoder first/second output
// Target Devices:  -
// Tool versions:   -
// Description:     Based on :
//                  https://embeddedsystemengineering.blogspot.com/2016/07/verilog-tutorial-2-modelsim-dual.html
//                  because AND and NOT was not be to much intuitive.
//
// Dependencies:    -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Almost all logic experssions.
//
//////////////////////////////////////////////////////////////////////////////////
module e_3_11_2(first, second, req);
output first, second;
input req;

reg [3:0] first, second;
wire [11:0] req;

reg [15:0] first_dec, second1;
wire [15:0] first_dec_neg, second1w;

always @* begin
  if (req[11]) first = 4'b1100;
  else if (req[10]) first = 4'b1011;
  else if (req[9]) first = 4'b1010;
  else if (req[8]) first = 4'b1001;
  else if (req[7]) first = 4'b1000;
  else if (req[6]) first = 4'b0111;
  else if (req[5]) first = 4'b0110;
  else if (req[4]) first = 4'b0101;
  else if (req[3]) first = 4'b0100;
  else if (req[2]) first = 4'b0011;
  else if (req[1]) first = 4'b0010;
  else if (req[0]) first = 4'b0001;
  else first = 4'b0000;
end

always @* begin
  case (first)
    4'b0000 : first_dec = 16'b0000000000000000;
    4'b0001 : first_dec = 16'b0000000000000001;
    4'b0010 : first_dec = 16'b0000000000000010;
    4'b0011 : first_dec = 16'b0000000000000100;
    4'b0100 : first_dec = 16'b0000000000001000;
    4'b0101 : first_dec = 16'b0000000000010000;
    4'b0110 : first_dec = 16'b0000000000100000;
    4'b0111 : first_dec = 16'b0000000001000000;
    4'b1000 : first_dec = 16'b0000000010000000;
    4'b1001 : first_dec = 16'b0000000100000000;
    4'b1010 : first_dec = 16'b0000001000000000;
    4'b1011 : first_dec = 16'b0000010000000000;
    4'b1100 : first_dec = 16'b0000100000000000;
    4'b1101 : first_dec = 16'b0001000000000000;
    4'b1110 : first_dec = 16'b0010000000000000;
    4'b1111 : first_dec = 16'b0100000000000000;
    default : first_dec = 16'b1000000000000000;
  endcase
end

genvar i;

generate
  for (i = 0; i < 16; i = i + 1) begin : g1
    not not_first_dec (first_dec_neg[i], first_dec[i]);
  end
endgenerate

generate
  for (i = 0; i < 12; i = i + 1) begin : g2
    and and_req_not_first_dec (second1w[i], req[i], first_dec_neg[i]);
  end
endgenerate

always @* second1 = second1w;

always @* begin
  if (second1[11]) second = 4'b1100;
  else if (second1[10]) second = 4'b1011;
  else if (second1[9]) second = 4'b1010;
  else if (second1[8]) second = 4'b1001;
  else if (second1[7]) second = 4'b1000;
  else if (second1[6]) second = 4'b0111;
  else if (second1[5]) second = 4'b0110;
  else if (second1[4]) second = 4'b0101;
  else if (second1[3]) second = 4'b0100;
  else if (second1[2]) second = 4'b0011;
  else if (second1[1]) second = 4'b0010;
  else if (second1[0]) second = 4'b0001;
  else second = 4'b0000;
end

endmodule
