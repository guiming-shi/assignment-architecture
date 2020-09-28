
// This module describes a adder,2 input adder (a + b)
// Make sure the widths are less than what is supported by the architecture
module ALU #(
                    parameter AWIDTH = 32,      // Width of adder's 1st input
                              BWIDTH = 32,      // Width of adder's 2nd input
                              PWIDTH = 33       // Output width
                   )
                   (
                    input clk,      // Clock
                    input rst,      // Reset
                    input signed [AWIDTH-1:0] a,  // adder input
                    input signed [BWIDTH-1:0] b,  // adder input
                    input ce,                     // Clock enable  
                    output signed [PWIDTH-1:0] p  // Output
                   );

reg signed [AWIDTH-1:0] a_r;
reg signed [BWIDTH-1:0] b_r;
reg signed [CWIDTH-1:0] c_r;
reg signed [PWIDTH-1:0] p_r;

always @ (posedge clk)
begin
 if(rst)
 begin
  a_r <= 0;
  b_r <= 0;
  c_r <= 0;
  p_r <= 0;
 end
 else
  begin
   if(ce)
   begin
    a_r <= a;
    b_r <= b;
    c_r <= c;
    p_r   <= a_r * b_r + c_r + p_r; 
   end
  end
end
assign p = p_r;

endmodule                   
/* 
 The following is an instantation template for  mult_add_3 
 
 mult_add_3 # (
               .AWIDTH(AWIDTH),
               .BWIDTH(BWIDTH),
               .CWIDTH(CWIDTH),
               .PWIDTH(PWIDTH)
              )
your_instance_name 
             (
              .clk(clk),
              .rst(rst),
              .a(a),
              .b(b),
              .c(c),
              .ce(ce),
              .p(p)
             );
*/
				
				