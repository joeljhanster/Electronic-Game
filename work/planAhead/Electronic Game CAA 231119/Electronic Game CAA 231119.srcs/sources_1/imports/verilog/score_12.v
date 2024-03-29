/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module score_12 (
    input clk,
    input rst,
    input [15:0] alu,
    output reg [5:0] alufn,
    output reg [4:0] ra_addr,
    output reg [4:0] rb_addr,
    output reg [15:0] wa_data,
    output reg write,
    output reg next
  );
  
  
  
  reg [1:0] M_countScore_d, M_countScore_q = 1'h0;
  reg [15:0] M_score_d, M_score_q = 1'h0;
  reg [15:0] M_hiscore_d, M_hiscore_q = 1'h0;
  
  always @* begin
    M_score_d = M_score_q;
    M_hiscore_d = M_hiscore_q;
    M_countScore_d = M_countScore_q;
    
    write = 1'h0;
    alufn = 6'h00;
    ra_addr = 5'h1f;
    rb_addr = 5'h1f;
    wa_data = 16'h0000;
    next = 1'h0;
    if (M_countScore_q == 2'h2) begin
      write = 1'h1;
      ra_addr = 5'h10;
      wa_data = M_score_q;
      M_countScore_d = 1'h0;
      next = 1'h1;
    end else begin
      if (M_countScore_q == 1'h1) begin
        M_score_d = alu;
        if (M_score_q > M_hiscore_q) begin
          M_hiscore_d = M_score_q;
          write = 1'h1;
          ra_addr = 5'h0f;
          wa_data = M_score_q;
        end
        M_countScore_d = 2'h2;
      end else begin
        write = 1'h0;
        alufn = 6'h00;
        ra_addr = 5'h10;
        rb_addr = 5'h13;
        M_countScore_d = 1'h1;
      end
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_countScore_q <= 1'h0;
      M_score_q <= 1'h0;
      M_hiscore_q <= 1'h0;
    end else begin
      M_countScore_q <= M_countScore_d;
      M_score_q <= M_score_d;
      M_hiscore_q <= M_hiscore_d;
    end
  end
  
endmodule
