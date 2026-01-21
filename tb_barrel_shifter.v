`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   20:04:01 01/20/2026
// Design Name:   barrel_shifter_verilog
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/tb_barrel_shifter.v
// Project Name:  pong_p_chu
// Target Device: -
// Tool versions: -
// Description:   -
//
// Verilog Test Fixture created by ISE for module: barrel_shifter_verilog
//
// Dependencies:  -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
////////////////////////////////////////////////////////////////////////////////

module tb_barrel_shifter_verilog_n3;

// Inputs
reg [7:0] i_order;
reg [2:0] sel_shl_shr;
reg ml_sb_order;

// Outputs
wire [7:0] o_order;

// Instantiate the Unit Under Test (UUT)
barrel_shifter_verilog uut (
.o_order(o_order), 
.i_order(i_order), 
.sel_shl_shr(sel_shl_shr), 
.ml_sb_order(ml_sb_order)
);

initial begin
// Initialize Inputs
i_order = 0;
sel_shl_shr = 0;
ml_sb_order = 0;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here
//i_order <= 16'b01000101;
//i_order <= 16'b01111110;
//i_order <= 16'b11111111;
//i_order <= 16'b00000001;
ml_sb_order = 1'b1;
i_order = 8'b00000101;
sel_shl_shr = 3'b000; #100;
sel_shl_shr = 3'b001; #100;
sel_shl_shr = 3'b010; #100;
sel_shl_shr = 3'b011; #100;
sel_shl_shr = 3'b100; #100;
sel_shl_shr = 3'b101; #100;
sel_shl_shr = 3'b110; #100;
sel_shl_shr = 3'b111; #100;
i_order = 8'b10100000;
sel_shl_shr = 3'b111; #100;
sel_shl_shr = 3'b110; #100;
sel_shl_shr = 3'b101; #100;
sel_shl_shr = 3'b100; #100;
sel_shl_shr = 3'b011; #100;
sel_shl_shr = 3'b010; #100;
sel_shl_shr = 3'b001; #100;
sel_shl_shr = 3'b000; #100;
i_order = 8'b10100000;
sel_shl_shr = 3'b000; #100;
sel_shl_shr = 3'b001; #100;
sel_shl_shr = 3'b010; #100;
sel_shl_shr = 3'b011; #100;
sel_shl_shr = 3'b100; #100;
sel_shl_shr = 3'b101; #100;
sel_shl_shr = 3'b110; #100;
sel_shl_shr = 3'b111; #100;
i_order = 8'b00000101;
sel_shl_shr = 3'b111; #100;
sel_shl_shr = 3'b110; #100;
sel_shl_shr = 3'b101; #100;
sel_shl_shr = 3'b100; #100;
sel_shl_shr = 3'b011; #100;
sel_shl_shr = 3'b010; #100;
sel_shl_shr = 3'b001; #100;
sel_shl_shr = 3'b000; #100;
ml_sb_order = 1'b0;
i_order = 8'b00000101;
sel_shl_shr = 3'b000; #100;
sel_shl_shr = 3'b001; #100;
sel_shl_shr = 3'b010; #100;
sel_shl_shr = 3'b011; #100;
sel_shl_shr = 3'b100; #100;
sel_shl_shr = 3'b101; #100;
sel_shl_shr = 3'b110; #100;
sel_shl_shr = 3'b111; #100;
i_order = 8'b10100000;
sel_shl_shr = 3'b111; #100;
sel_shl_shr = 3'b110; #100;
sel_shl_shr = 3'b101; #100;
sel_shl_shr = 3'b100; #100;
sel_shl_shr = 3'b011; #100;
sel_shl_shr = 3'b010; #100;
sel_shl_shr = 3'b001; #100;
sel_shl_shr = 3'b000; #100;
i_order = 8'b10100000;
sel_shl_shr = 3'b000; #100;
sel_shl_shr = 3'b001; #100;
sel_shl_shr = 3'b010; #100;
sel_shl_shr = 3'b011; #100;
sel_shl_shr = 3'b100; #100;
sel_shl_shr = 3'b101; #100;
sel_shl_shr = 3'b110; #100;
sel_shl_shr = 3'b111; #100;
i_order = 8'b00000101;
sel_shl_shr = 3'b111; #100;
sel_shl_shr = 3'b110; #100;
sel_shl_shr = 3'b101; #100;
sel_shl_shr = 3'b100; #100;
sel_shl_shr = 3'b011; #100;
sel_shl_shr = 3'b010; #100;
sel_shl_shr = 3'b001; #100;
sel_shl_shr = 3'b000; #100;
$finish;
end

endmodule

module tb_barrel_shifter_verilog_n4;

// Inputs
reg [15:0] i_order;
reg [3:0] sel_shl_shr;
reg ml_sb_order;

// Outputs
wire [15:0] o_order;

// Instantiate the Unit Under Test (UUT)
barrel_shifter_verilog #(.n(4)) uut (
.o_order(o_order), 
.i_order(i_order), 
.sel_shl_shr(sel_shl_shr), 
.ml_sb_order(ml_sb_order)
);

initial begin
// Initialize Inputs
i_order = 0;
sel_shl_shr = 0;
ml_sb_order = 0;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here
//i_order <= 16'b01000101;
//i_order <= 16'b01111110;
//i_order <= 16'b11111111;
//i_order <= 16'b00000001;
ml_sb_order = 1'b1;
i_order = 16'b0000000000000101;
sel_shl_shr = 4'b0000; #100;
sel_shl_shr = 4'b0001; #100;
sel_shl_shr = 4'b0010; #100;
sel_shl_shr = 4'b0011; #100;
sel_shl_shr = 4'b0100; #100;
sel_shl_shr = 4'b0101; #100;
sel_shl_shr = 4'b0110; #100;
sel_shl_shr = 4'b0111; #100;
sel_shl_shr = 4'b1000; #100;
sel_shl_shr = 4'b1001; #100;
sel_shl_shr = 4'b1010; #100;
sel_shl_shr = 4'b1011; #100;
sel_shl_shr = 4'b1100; #100;
sel_shl_shr = 4'b1101; #100;
sel_shl_shr = 4'b1110; #100;
sel_shl_shr = 4'b1111; #100;
i_order = 16'b1010000000000000;
sel_shl_shr = 4'b1111; #100;
sel_shl_shr = 4'b1110; #100;
sel_shl_shr = 4'b1101; #100;
sel_shl_shr = 4'b1100; #100;
sel_shl_shr = 4'b1011; #100;
sel_shl_shr = 4'b1010; #100;
sel_shl_shr = 4'b1001; #100;
sel_shl_shr = 4'b1000; #100;
sel_shl_shr = 4'b0111; #100;
sel_shl_shr = 4'b0110; #100;
sel_shl_shr = 4'b0101; #100;
sel_shl_shr = 4'b0100; #100;
sel_shl_shr = 4'b0011; #100;
sel_shl_shr = 4'b0010; #100;
sel_shl_shr = 4'b0001; #100;
sel_shl_shr = 4'b0000; #100;
i_order = 16'b1010000000000000;
sel_shl_shr = 4'b0000; #100;
sel_shl_shr = 4'b0001; #100;
sel_shl_shr = 4'b0010; #100;
sel_shl_shr = 4'b0011; #100;
sel_shl_shr = 4'b0100; #100;
sel_shl_shr = 4'b0101; #100;
sel_shl_shr = 4'b0110; #100;
sel_shl_shr = 4'b0111; #100;
sel_shl_shr = 4'b1000; #100;
sel_shl_shr = 4'b1001; #100;
sel_shl_shr = 4'b1010; #100;
sel_shl_shr = 4'b1011; #100;
sel_shl_shr = 4'b1100; #100;
sel_shl_shr = 4'b1101; #100;
sel_shl_shr = 4'b1110; #100;
sel_shl_shr = 4'b1111; #100;
i_order = 16'b0000000000000101;
sel_shl_shr = 4'b1111; #100;
sel_shl_shr = 4'b1110; #100;
sel_shl_shr = 4'b1101; #100;
sel_shl_shr = 4'b1100; #100;
sel_shl_shr = 4'b1011; #100;
sel_shl_shr = 4'b1010; #100;
sel_shl_shr = 4'b1001; #100;
sel_shl_shr = 4'b1000; #100;
sel_shl_shr = 4'b0111; #100;
sel_shl_shr = 4'b0110; #100;
sel_shl_shr = 4'b0101; #100;
sel_shl_shr = 4'b0100; #100;
sel_shl_shr = 4'b0011; #100;
sel_shl_shr = 4'b0010; #100;
sel_shl_shr = 4'b0001; #100;
sel_shl_shr = 4'b0000; #100;
ml_sb_order = 1'b0;
i_order = 16'b0000000000000101;
sel_shl_shr = 4'b0000; #100;
sel_shl_shr = 4'b0001; #100;
sel_shl_shr = 4'b0010; #100;
sel_shl_shr = 4'b0011; #100;
sel_shl_shr = 4'b0100; #100;
sel_shl_shr = 4'b0101; #100;
sel_shl_shr = 4'b0110; #100;
sel_shl_shr = 4'b0111; #100;
sel_shl_shr = 4'b1000; #100;
sel_shl_shr = 4'b1001; #100;
sel_shl_shr = 4'b1010; #100;
sel_shl_shr = 4'b1011; #100;
sel_shl_shr = 4'b1100; #100;
sel_shl_shr = 4'b1101; #100;
sel_shl_shr = 4'b1110; #100;
sel_shl_shr = 4'b1111; #100;
i_order = 16'b1010000000000000;
sel_shl_shr = 4'b1111; #100;
sel_shl_shr = 4'b1110; #100;
sel_shl_shr = 4'b1101; #100;
sel_shl_shr = 4'b1100; #100;
sel_shl_shr = 4'b1011; #100;
sel_shl_shr = 4'b1010; #100;
sel_shl_shr = 4'b1001; #100;
sel_shl_shr = 4'b1000; #100;
sel_shl_shr = 4'b0111; #100;
sel_shl_shr = 4'b0110; #100;
sel_shl_shr = 4'b0101; #100;
sel_shl_shr = 4'b0100; #100;
sel_shl_shr = 4'b0011; #100;
sel_shl_shr = 4'b0010; #100;
sel_shl_shr = 4'b0001; #100;
sel_shl_shr = 4'b0000; #100;
i_order = 16'b1010000000000000;
sel_shl_shr = 4'b0000; #100;
sel_shl_shr = 4'b0001; #100;
sel_shl_shr = 4'b0010; #100;
sel_shl_shr = 4'b0011; #100;
sel_shl_shr = 4'b0100; #100;
sel_shl_shr = 4'b0101; #100;
sel_shl_shr = 4'b0110; #100;
sel_shl_shr = 4'b0111; #100;
sel_shl_shr = 4'b1000; #100;
sel_shl_shr = 4'b1001; #100;
sel_shl_shr = 4'b1010; #100;
sel_shl_shr = 4'b1011; #100;
sel_shl_shr = 4'b1100; #100;
sel_shl_shr = 4'b1101; #100;
sel_shl_shr = 4'b1110; #100;
sel_shl_shr = 4'b1111; #100;
i_order = 16'b0000000000000101;
sel_shl_shr = 4'b1111; #100;
sel_shl_shr = 4'b1110; #100;
sel_shl_shr = 4'b1101; #100;
sel_shl_shr = 4'b1100; #100;
sel_shl_shr = 4'b1011; #100;
sel_shl_shr = 4'b1010; #100;
sel_shl_shr = 4'b1001; #100;
sel_shl_shr = 4'b1000; #100;
sel_shl_shr = 4'b0111; #100;
sel_shl_shr = 4'b0110; #100;
sel_shl_shr = 4'b0101; #100;
sel_shl_shr = 4'b0100; #100;
sel_shl_shr = 4'b0011; #100;
sel_shl_shr = 4'b0010; #100;
sel_shl_shr = 4'b0001; #100;
sel_shl_shr = 4'b0000; #100;
$finish;
end

endmodule

module tb_barrel_shifter_verilog_n5;

// Inputs
reg [31:0] i_order;
reg [4:0] sel_shl_shr;
reg ml_sb_order;

// Outputs
wire [31:0] o_order;

// Instantiate the Unit Under Test (UUT)
barrel_shifter_verilog #(.n(5)) uut (
.o_order(o_order), 
.i_order(i_order), 
.sel_shl_shr(sel_shl_shr), 
.ml_sb_order(ml_sb_order)
);

initial begin
// Initialize Inputs
i_order = 0;
sel_shl_shr = 0;
ml_sb_order = 0;

// Wait 100 ns for global reset to finish
#100;

// Add stimulus here
//i_order <= 32'b01000101;
//i_order <= 32'b01111110;
//i_order <= 32'b11111111;
//i_order <= 32'b00000001;
ml_sb_order = 1'b1;
i_order = 32'b00000000000000000000000000000101;
sel_shl_shr = 5'b00000; #100;
sel_shl_shr = 5'b00001; #100;
sel_shl_shr = 5'b00010; #100;
sel_shl_shr = 5'b00011; #100;
sel_shl_shr = 5'b00100; #100;
sel_shl_shr = 5'b00101; #100;
sel_shl_shr = 5'b00110; #100;
sel_shl_shr = 5'b00111; #100;
sel_shl_shr = 5'b01000; #100;
sel_shl_shr = 5'b01001; #100;
sel_shl_shr = 5'b01010; #100;
sel_shl_shr = 5'b01011; #100;
sel_shl_shr = 5'b01100; #100;
sel_shl_shr = 5'b01101; #100;
sel_shl_shr = 5'b01110; #100;
sel_shl_shr = 5'b01111; #100;

sel_shl_shr = 5'b10000; #100;
sel_shl_shr = 5'b10001; #100;
sel_shl_shr = 5'b10010; #100;
sel_shl_shr = 5'b10011; #100;
sel_shl_shr = 5'b10100; #100;
sel_shl_shr = 5'b10101; #100;
sel_shl_shr = 5'b10110; #100;
sel_shl_shr = 5'b10111; #100;
sel_shl_shr = 5'b11000; #100;
sel_shl_shr = 5'b11001; #100;
sel_shl_shr = 5'b11010; #100;
sel_shl_shr = 5'b11011; #100;
sel_shl_shr = 5'b11100; #100;
sel_shl_shr = 5'b11101; #100;
sel_shl_shr = 5'b11110; #100;
sel_shl_shr = 5'b11111; #100;

i_order = 32'b10100000000000000000000000000000;
sel_shl_shr = 5'b11111; #100;
sel_shl_shr = 5'b11110; #100;
sel_shl_shr = 5'b11101; #100;
sel_shl_shr = 5'b11100; #100;
sel_shl_shr = 5'b11011; #100;
sel_shl_shr = 5'b11010; #100;
sel_shl_shr = 5'b11001; #100;
sel_shl_shr = 5'b11000; #100;
sel_shl_shr = 5'b10111; #100;
sel_shl_shr = 5'b10110; #100;
sel_shl_shr = 5'b10101; #100;
sel_shl_shr = 5'b10100; #100;
sel_shl_shr = 5'b10011; #100;
sel_shl_shr = 5'b10010; #100;
sel_shl_shr = 5'b10001; #100;
sel_shl_shr = 5'b10000; #100;

sel_shl_shr = 5'b01111; #100;
sel_shl_shr = 5'b01110; #100;
sel_shl_shr = 5'b01101; #100;
sel_shl_shr = 5'b01100; #100;
sel_shl_shr = 5'b01011; #100;
sel_shl_shr = 5'b01010; #100;
sel_shl_shr = 5'b01001; #100;
sel_shl_shr = 5'b01000; #100;
sel_shl_shr = 5'b00111; #100;
sel_shl_shr = 5'b00110; #100;
sel_shl_shr = 5'b00101; #100;
sel_shl_shr = 5'b00100; #100;
sel_shl_shr = 5'b00011; #100;
sel_shl_shr = 5'b00010; #100;
sel_shl_shr = 5'b00001; #100;
sel_shl_shr = 5'b00000; #100;

i_order = 32'b10100000000000000000000000000000;
sel_shl_shr = 5'b00000; #100;
sel_shl_shr = 5'b00001; #100;
sel_shl_shr = 5'b00010; #100;
sel_shl_shr = 5'b00011; #100;
sel_shl_shr = 5'b00100; #100;
sel_shl_shr = 5'b00101; #100;
sel_shl_shr = 5'b00110; #100;
sel_shl_shr = 5'b00111; #100;
sel_shl_shr = 5'b01000; #100;
sel_shl_shr = 5'b01001; #100;
sel_shl_shr = 5'b01010; #100;
sel_shl_shr = 5'b01011; #100;
sel_shl_shr = 5'b01100; #100;
sel_shl_shr = 5'b01101; #100;
sel_shl_shr = 5'b01110; #100;
sel_shl_shr = 5'b01111; #100;

sel_shl_shr = 5'b10000; #100;
sel_shl_shr = 5'b10001; #100;
sel_shl_shr = 5'b10010; #100;
sel_shl_shr = 5'b10011; #100;
sel_shl_shr = 5'b10100; #100;
sel_shl_shr = 5'b10101; #100;
sel_shl_shr = 5'b10110; #100;
sel_shl_shr = 5'b10111; #100;
sel_shl_shr = 5'b11000; #100;
sel_shl_shr = 5'b11001; #100;
sel_shl_shr = 5'b11010; #100;
sel_shl_shr = 5'b11011; #100;
sel_shl_shr = 5'b11100; #100;
sel_shl_shr = 5'b11101; #100;
sel_shl_shr = 5'b11110; #100;
sel_shl_shr = 5'b11111; #100;

i_order = 32'b00000000000000000000000000000101;
sel_shl_shr = 5'b11111; #100;
sel_shl_shr = 5'b11110; #100;
sel_shl_shr = 5'b11101; #100;
sel_shl_shr = 5'b11100; #100;
sel_shl_shr = 5'b11011; #100;
sel_shl_shr = 5'b11010; #100;
sel_shl_shr = 5'b11001; #100;
sel_shl_shr = 5'b11000; #100;
sel_shl_shr = 5'b10111; #100;
sel_shl_shr = 5'b10110; #100;
sel_shl_shr = 5'b10101; #100;
sel_shl_shr = 5'b10100; #100;
sel_shl_shr = 5'b10011; #100;
sel_shl_shr = 5'b10010; #100;
sel_shl_shr = 5'b10001; #100;
sel_shl_shr = 5'b10000; #100;

sel_shl_shr = 5'b01111; #100;
sel_shl_shr = 5'b01110; #100;
sel_shl_shr = 5'b01101; #100;
sel_shl_shr = 5'b01100; #100;
sel_shl_shr = 5'b01011; #100;
sel_shl_shr = 5'b01010; #100;
sel_shl_shr = 5'b01001; #100;
sel_shl_shr = 5'b01000; #100;
sel_shl_shr = 5'b00111; #100;
sel_shl_shr = 5'b00110; #100;
sel_shl_shr = 5'b00101; #100;
sel_shl_shr = 5'b00100; #100;
sel_shl_shr = 5'b00011; #100;
sel_shl_shr = 5'b00010; #100;
sel_shl_shr = 5'b00001; #100;
sel_shl_shr = 5'b00000; #100;

ml_sb_order = 1'b0;
i_order = 32'b00000000000000000000000000000101;
sel_shl_shr = 5'b00000; #100;
sel_shl_shr = 5'b00001; #100;
sel_shl_shr = 5'b00010; #100;
sel_shl_shr = 5'b00011; #100;
sel_shl_shr = 5'b00100; #100;
sel_shl_shr = 5'b00101; #100;
sel_shl_shr = 5'b00110; #100;
sel_shl_shr = 5'b00111; #100;
sel_shl_shr = 5'b01000; #100;
sel_shl_shr = 5'b01001; #100;
sel_shl_shr = 5'b01010; #100;
sel_shl_shr = 5'b01011; #100;
sel_shl_shr = 5'b01100; #100;
sel_shl_shr = 5'b01101; #100;
sel_shl_shr = 5'b01110; #100;
sel_shl_shr = 5'b01111; #100;

sel_shl_shr = 5'b10000; #100;
sel_shl_shr = 5'b10001; #100;
sel_shl_shr = 5'b10010; #100;
sel_shl_shr = 5'b10011; #100;
sel_shl_shr = 5'b10100; #100;
sel_shl_shr = 5'b10101; #100;
sel_shl_shr = 5'b10110; #100;
sel_shl_shr = 5'b10111; #100;
sel_shl_shr = 5'b11000; #100;
sel_shl_shr = 5'b11001; #100;
sel_shl_shr = 5'b11010; #100;
sel_shl_shr = 5'b11011; #100;
sel_shl_shr = 5'b11100; #100;
sel_shl_shr = 5'b11101; #100;
sel_shl_shr = 5'b11110; #100;
sel_shl_shr = 5'b11111; #100;

i_order = 32'b10100000000000000000000000000000;
sel_shl_shr = 5'b11111; #100;
sel_shl_shr = 5'b11110; #100;
sel_shl_shr = 5'b11101; #100;
sel_shl_shr = 5'b11100; #100;
sel_shl_shr = 5'b11011; #100;
sel_shl_shr = 5'b11010; #100;
sel_shl_shr = 5'b11001; #100;
sel_shl_shr = 5'b11000; #100;
sel_shl_shr = 5'b10111; #100;
sel_shl_shr = 5'b10110; #100;
sel_shl_shr = 5'b10101; #100;
sel_shl_shr = 5'b10100; #100;
sel_shl_shr = 5'b10011; #100;
sel_shl_shr = 5'b10010; #100;
sel_shl_shr = 5'b10001; #100;
sel_shl_shr = 5'b10000; #100;

sel_shl_shr = 5'b01111; #100;
sel_shl_shr = 5'b01110; #100;
sel_shl_shr = 5'b01101; #100;
sel_shl_shr = 5'b01100; #100;
sel_shl_shr = 5'b01011; #100;
sel_shl_shr = 5'b01010; #100;
sel_shl_shr = 5'b01001; #100;
sel_shl_shr = 5'b01000; #100;
sel_shl_shr = 5'b00111; #100;
sel_shl_shr = 5'b00110; #100;
sel_shl_shr = 5'b00101; #100;
sel_shl_shr = 5'b00100; #100;
sel_shl_shr = 5'b00011; #100;
sel_shl_shr = 5'b00010; #100;
sel_shl_shr = 5'b00001; #100;
sel_shl_shr = 5'b00000; #100;

i_order = 32'b10100000000000000000000000000000;
sel_shl_shr = 5'b00000; #100;
sel_shl_shr = 5'b00001; #100;
sel_shl_shr = 5'b00010; #100;
sel_shl_shr = 5'b00011; #100;
sel_shl_shr = 5'b00100; #100;
sel_shl_shr = 5'b00101; #100;
sel_shl_shr = 5'b00110; #100;
sel_shl_shr = 5'b00111; #100;
sel_shl_shr = 5'b01000; #100;
sel_shl_shr = 5'b01001; #100;
sel_shl_shr = 5'b01010; #100;
sel_shl_shr = 5'b01011; #100;
sel_shl_shr = 5'b01100; #100;
sel_shl_shr = 5'b01101; #100;
sel_shl_shr = 5'b01110; #100;
sel_shl_shr = 5'b01111; #100;

sel_shl_shr = 5'b10000; #100;
sel_shl_shr = 5'b10001; #100;
sel_shl_shr = 5'b10010; #100;
sel_shl_shr = 5'b10011; #100;
sel_shl_shr = 5'b10100; #100;
sel_shl_shr = 5'b10101; #100;
sel_shl_shr = 5'b10110; #100;
sel_shl_shr = 5'b10111; #100;
sel_shl_shr = 5'b11000; #100;
sel_shl_shr = 5'b11001; #100;
sel_shl_shr = 5'b11010; #100;
sel_shl_shr = 5'b11011; #100;
sel_shl_shr = 5'b11100; #100;
sel_shl_shr = 5'b11101; #100;
sel_shl_shr = 5'b11110; #100;
sel_shl_shr = 5'b11111; #100;

i_order = 32'b00000000000000000000000000000101;
sel_shl_shr = 5'b11111; #100;
sel_shl_shr = 5'b11110; #100;
sel_shl_shr = 5'b11101; #100;
sel_shl_shr = 5'b11100; #100;
sel_shl_shr = 5'b11011; #100;
sel_shl_shr = 5'b11010; #100;
sel_shl_shr = 5'b11001; #100;
sel_shl_shr = 5'b11000; #100;
sel_shl_shr = 5'b10111; #100;
sel_shl_shr = 5'b10110; #100;
sel_shl_shr = 5'b10101; #100;
sel_shl_shr = 5'b10100; #100;
sel_shl_shr = 5'b10011; #100;
sel_shl_shr = 5'b10010; #100;
sel_shl_shr = 5'b10001; #100;
sel_shl_shr = 5'b10000; #100;

sel_shl_shr = 5'b01111; #100;
sel_shl_shr = 5'b01110; #100;
sel_shl_shr = 5'b01101; #100;
sel_shl_shr = 5'b01100; #100;
sel_shl_shr = 5'b01011; #100;
sel_shl_shr = 5'b01010; #100;
sel_shl_shr = 5'b01001; #100;
sel_shl_shr = 5'b01000; #100;
sel_shl_shr = 5'b00111; #100;
sel_shl_shr = 5'b00110; #100;
sel_shl_shr = 5'b00101; #100;
sel_shl_shr = 5'b00100; #100;
sel_shl_shr = 5'b00011; #100;
sel_shl_shr = 5'b00010; #100;
sel_shl_shr = 5'b00001; #100;
sel_shl_shr = 5'b00000; #100;

$finish;
end

endmodule
