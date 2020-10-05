`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/29 22:20:44
// Design Name: 
// Module Name: ALU_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU_tb(

    );
    reg [31:0] a,b;
    reg sign,sub;
    wire [31:0]p;
    wire overflow;
    
    initial begin
    #1
        a = 32'h0000000a;
        b = 32'h000000a0;
        sub = 1'b0;
        sign= 1'b0;
    end
    
    
    
     ALU ALU_inst (
                         .a(a),  // adder input
                         .b(b),  // adder input
                         .sign(sign),
                         .sub(sub),
                         .p(p),  // Output
                         .overflow(overflow)
                       );
    
endmodule
