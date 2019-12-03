/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module randomSequence_18 (
    input [5:0] value,
    output reg [15:0] sequence
  );
  
  
  
  always @* begin
    
    case (value)
      6'h00: begin
        sequence = 16'h0080;
      end
      6'h01: begin
        sequence = 16'h0008;
      end
      6'h02: begin
        sequence = 16'h1000;
      end
      6'h03: begin
        sequence = 16'h0002;
      end
      6'h04: begin
        sequence = 16'h0200;
      end
      6'h05: begin
        sequence = 16'h0020;
      end
      6'h06: begin
        sequence = 16'h0040;
      end
      6'h07: begin
        sequence = 16'h0001;
      end
      6'h08: begin
        sequence = 16'h0100;
      end
      6'h09: begin
        sequence = 16'h0200;
      end
      6'h0a: begin
        sequence = 16'h4000;
      end
      6'h0b: begin
        sequence = 16'h0002;
      end
      6'h0c: begin
        sequence = 16'h0004;
      end
      6'h0d: begin
        sequence = 16'h8000;
      end
      6'h0e: begin
        sequence = 16'h0400;
      end
      6'h0f: begin
        sequence = 16'h0100;
      end
      6'h10: begin
        sequence = 16'h0080;
      end
      6'h11: begin
        sequence = 16'h0008;
      end
      6'h12: begin
        sequence = 16'h1000;
      end
      6'h13: begin
        sequence = 16'h0002;
      end
      6'h14: begin
        sequence = 16'h0080;
      end
      6'h15: begin
        sequence = 16'h0020;
      end
      6'h16: begin
        sequence = 16'h0040;
      end
      6'h17: begin
        sequence = 16'h2000;
      end
      6'h18: begin
        sequence = 16'h0100;
      end
      6'h19: begin
        sequence = 16'h0008;
      end
      6'h1a: begin
        sequence = 16'h8000;
      end
      6'h1b: begin
        sequence = 16'h0800;
      end
      6'h1c: begin
        sequence = 16'h0004;
      end
      6'h1d: begin
        sequence = 16'h0200;
      end
      6'h1e: begin
        sequence = 16'h0400;
      end
      6'h1f: begin
        sequence = 16'h2000;
      end
      6'h20: begin
        sequence = 16'h0080;
      end
      6'h21: begin
        sequence = 16'h0004;
      end
      6'h22: begin
        sequence = 16'h1000;
      end
      6'h23: begin
        sequence = 16'h0002;
      end
      6'h24: begin
        sequence = 16'h0200;
      end
      6'h25: begin
        sequence = 16'h0020;
      end
      6'h26: begin
        sequence = 16'h0100;
      end
      6'h27: begin
        sequence = 16'h0200;
      end
      6'h28: begin
        sequence = 16'h0100;
      end
      6'h29: begin
        sequence = 16'h2000;
      end
      6'h2a: begin
        sequence = 16'h4000;
      end
      6'h2b: begin
        sequence = 16'h0800;
      end
      6'h2c: begin
        sequence = 16'h0008;
      end
      6'h2d: begin
        sequence = 16'h8000;
      end
      6'h2e: begin
        sequence = 16'h0400;
      end
      6'h2f: begin
        sequence = 16'h2000;
      end
      6'h30: begin
        sequence = 16'h8000;
      end
      6'h31: begin
        sequence = 16'h0008;
      end
      6'h32: begin
        sequence = 16'h1000;
      end
      6'h33: begin
        sequence = 16'h0080;
      end
      6'h34: begin
        sequence = 16'h0200;
      end
      6'h35: begin
        sequence = 16'h0002;
      end
      6'h36: begin
        sequence = 16'h0040;
      end
      6'h37: begin
        sequence = 16'h2000;
      end
      6'h38: begin
        sequence = 16'h0200;
      end
      6'h39: begin
        sequence = 16'h0010;
      end
      6'h3a: begin
        sequence = 16'h0002;
      end
      6'h3b: begin
        sequence = 16'h0080;
      end
      6'h3c: begin
        sequence = 16'h8000;
      end
      6'h3d: begin
        sequence = 16'h0100;
      end
      6'h3e: begin
        sequence = 16'h0400;
      end
      6'h3f: begin
        sequence = 16'h2000;
      end
      default: begin
        sequence = 16'h0000;
      end
    endcase
  end
endmodule