`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:       HomeDL
// Engineer:      ko
//
// Create Date:   16:23:20 01/16/2026
// Design Name:   e_2_9_1_4
// Module Name:   /home/user/_WORKSPACE_/kedziorno/pong_p_chu/tb_e_2_9_1_4.v
// Project Name:  pong_p_chu
// Target Device: -
// Tool versions: -
// Description:   -
//
// Verilog Test Fixture created by ISE for module: e_2_9_1_4
//
// Dependencies: -
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments: -
//
////////////////////////////////////////////////////////////////////////////////

module tb_e_2_9_1_4;

// Inputs
wire gt4;
reg [3:0] a;
reg [3:0] b;

integer i, j;
integer error_count;

// Instantiate the Unit Under Test (UUT)
e_2_9_1_4 uut (
.gt4(gt4), 
.a(a), 
.b(b)
);

// Exhaustive stimulus and checking
initial begin
  error_count = 0;

  // Loop through all possible values of A and B
  for (i = 0; i < 16; i = i + 1) begin
    for (j = 0; j < 16; j = j + 1) begin
      a[3:0] = i;
      b[3:0] = j;
      #1; // Allow time for propagation

      // Self-checking condition
      if (gt4 !== (i > j)) begin
        $display("ERROR: A=%0d (0x%h), B=%0d (0x%h), Expected GT=%b, Got GT=%b", i, i[3:0], j, j[3:0], (i > j), gt4);
        error_count = error_count + 1;
      end
    end
  end

  // Final result
  if (error_count == 0) begin
    $display("==============================================");
    $display(" TEST PASSED: No errors detected");
    $display("==============================================");
  end else begin
    $display("==============================================");
    $display(" TEST FAILED: %0d errors detected", error_count);
    $display("==============================================");
  end

  $finish;
end

endmodule

