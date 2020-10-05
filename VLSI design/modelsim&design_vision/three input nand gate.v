`timescale 1 ns / 1 ps

////////////////////////////////////////////////////////////////////////////////
// Company: archip lab
// Engineer: guiming
//
// Create Date: 20201005
// Design Name: three input nand gate
// Module Name: <name_of_this_module>
// Target Device: <target device>
// Tool versions: <tool_versions>
// Description:
//    <Description here>
// Dependencies:
//    <Dependencies here>
// Revision:
//    <Code_revision_information>
// Additional Comments:
//    <Additional_comments>
////////////////////////////////////////////////////////////////////////////////
			
			

module gate3(
input a,
input b,
input c,
output y
);
assign y=~( a & b & c );

endmodule;