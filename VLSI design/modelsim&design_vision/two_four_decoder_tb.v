`timescale 1 ns / 1 ps

////////////////////////////////////////////////////////////////////////////////
// Company: archip lab
// Engineer: guiming
//
// Create Date: 20201005
// Design Name: 2-4decoder_testbench
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
module two_four_decoder_tb;
reg Cs;
reg A1;
reg A0;
wire Y0;
wire Y1;
wire Y2;
wire Y3;

initial begin
#10 {Cs , A1 , A0} = 3'b000;
#10 {Cs , A1 , A0} = 3'b001;
#10 {Cs , A1 , A0} = 3'b010;
#10 {Cs , A1 , A0} = 3'b011;
#10 {Cs , A1 , A0} = 3'b100;
#10 {Cs , A1 , A0} = 3'b101;
#10 {Cs , A1 , A0} = 3'b110;
#10 {Cs , A1 , A0} = 3'b111;

end

two_four_decoder two_four_decoder_inst(
    .Cs(Cs),
    .A1(A1),
    .A0(A0),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);
endmodule