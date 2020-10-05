
`timescale 1 ns / 1 ps

////////////////////////////////////////////////////////////////////////////////
// Company: archip lab
// Engineer: guiming
//
// Create Date: 20201005
// Design Name: 2-4decoder
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

module two_four_decoder(
    input wire Cs,
    input wire A1,
    input wire A0,
    output wire Y0,
    output wire Y1,
    output wire Y2,
    output wire Y3
);

assign Y0 = Cs ? 1 : ~( (~A1) & (~A0) );

assign Y1 = Cs ? 1 : ~( (~A1) & ( A0) );

assign Y2 = Cs ? 1 : ~( ( A1) & (~A0) );

assign Y3 = Cs ? 1 : ~( ( A1) & ( A0) );
				
endmodule