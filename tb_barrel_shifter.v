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

module tb_barrel_shifter_verilog;

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
//i_order <= 8'b01000101;
//i_order <= 8'b01111110;
//i_order <= 8'b11111111;
//i_order <= 8'b00000001;
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

