/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adder_14 (
    input [15:0] a,
    input [15:0] b,
    input [1:0] alufn,
    output reg z,
    output reg v,
    output reg n,
    output reg [15:0] s
  );
  
  
  
  reg [15:0] out;
  
  always @* begin
    
    case (alufn)
      2'h0: begin
        out = a + b;
        z = (~|out);
        v = (((a[15+0-:1]) & (b[15+0-:1]) & (~out[15+0-:1])) | ((~a[15+0-:1]) & (~b[15+0-:1]) & (out[15+0-:1])));
        n = out[15+0-:1];
      end
      2'h1: begin
        out = a - b;
        z = (~|out);
        v = (((a[15+0-:1]) & (~b[15+0-:1]) & (~out[15+0-:1])) | ((~a[15+0-:1]) & (b[15+0-:1]) & (out[15+0-:1])));
        n = out[15+0-:1];
      end
      2'h2: begin
        out = a * b;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
      default: begin
        out = 16'h0000;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
    endcase
    s = out[0+15-:16];
  end
endmodule
