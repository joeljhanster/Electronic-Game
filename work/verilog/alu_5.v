/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_5 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn,
    output reg [15:0] alu,
    output reg z,
    output reg v,
    output reg n
  );
  
  
  
  wire [1-1:0] M_add_z;
  wire [1-1:0] M_add_v;
  wire [1-1:0] M_add_n;
  wire [16-1:0] M_add_s;
  reg [16-1:0] M_add_a;
  reg [16-1:0] M_add_b;
  reg [2-1:0] M_add_alufn;
  adder_14 add (
    .a(M_add_a),
    .b(M_add_b),
    .alufn(M_add_alufn),
    .z(M_add_z),
    .v(M_add_v),
    .n(M_add_n),
    .s(M_add_s)
  );
  
  wire [16-1:0] M_cmp_cmp;
  reg [1-1:0] M_cmp_z;
  reg [1-1:0] M_cmp_v;
  reg [1-1:0] M_cmp_n;
  reg [2-1:0] M_cmp_alufn;
  compare_15 cmp (
    .z(M_cmp_z),
    .v(M_cmp_v),
    .n(M_cmp_n),
    .alufn(M_cmp_alufn),
    .cmp(M_cmp_cmp)
  );
  
  wire [16-1:0] M_boole_boole;
  reg [16-1:0] M_boole_a;
  reg [16-1:0] M_boole_b;
  reg [4-1:0] M_boole_alufn;
  boolean_16 boole (
    .a(M_boole_a),
    .b(M_boole_b),
    .alufn(M_boole_alufn),
    .boole(M_boole_boole)
  );
  
  wire [16-1:0] M_shift_shift;
  reg [16-1:0] M_shift_a;
  reg [4-1:0] M_shift_b;
  reg [2-1:0] M_shift_alufn;
  shifter_17 shift (
    .a(M_shift_a),
    .b(M_shift_b),
    .alufn(M_shift_alufn),
    .shift(M_shift_shift)
  );
  
  always @* begin
    M_add_a = a;
    M_add_b = b;
    M_add_alufn = alufn[0+1-:2];
    M_cmp_z = M_add_z;
    M_cmp_v = M_add_v;
    M_cmp_n = M_add_n;
    M_cmp_alufn = alufn[2+1-:2];
    M_boole_a = a;
    M_boole_b = b;
    M_boole_alufn = alufn[0+3-:4];
    M_shift_a = a;
    M_shift_b = b[0+3-:4];
    M_shift_alufn = alufn[0+1-:2];
    
    case (alufn[4+1-:2])
      2'h0: begin
        alu = M_add_s;
      end
      2'h1: begin
        alu = M_boole_boole;
      end
      2'h2: begin
        alu = M_shift_shift;
      end
      2'h3: begin
        alu = M_cmp_cmp;
      end
      default: begin
        alu = 16'h0000;
      end
    endcase
    z = M_add_z;
    v = M_add_v;
    n = M_add_n;
  end
endmodule
