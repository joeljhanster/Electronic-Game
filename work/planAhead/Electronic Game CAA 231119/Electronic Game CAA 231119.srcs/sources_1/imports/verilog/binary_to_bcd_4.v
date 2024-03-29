/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module binary_to_bcd_4 (
    input clk,
    input rst,
    input [9:0] hiscore,
    input [9:0] score,
    output reg [6:0] score_seg,
    output reg [2:0] hiscore_sel,
    output reg [2:0] score_sel
  );
  
  
  
  reg [9:0] M_originalhiscore_d, M_originalhiscore_q = 1'h0;
  reg [9:0] M_originalscore_d, M_originalscore_q = 1'h0;
  reg [43:0] M_binaryscore_d, M_binaryscore_q = 1'h0;
  reg [3:0] M_hiscore_count_d, M_hiscore_count_q = 1'h0;
  reg [3:0] M_score_count_d, M_score_count_q = 1'h0;
  reg M_hiscore_ones_d, M_hiscore_ones_q = 1'h0;
  reg M_hiscore_tens_d, M_hiscore_tens_q = 1'h0;
  reg M_hiscore_hundreds_d, M_hiscore_hundreds_q = 1'h0;
  reg M_score_ones_d, M_score_ones_q = 1'h0;
  reg M_score_tens_d, M_score_tens_q = 1'h0;
  reg M_score_hundreds_d, M_score_hundreds_q = 1'h0;
  wire [7-1:0] M_mss_seg;
  wire [6-1:0] M_mss_sel;
  reg [24-1:0] M_mss_values;
  multi_seven_seg_13 mss (
    .clk(clk),
    .rst(rst),
    .values(M_mss_values),
    .seg(M_mss_seg),
    .sel(M_mss_sel)
  );
  
  always @* begin
    M_originalscore_d = M_originalscore_q;
    M_hiscore_tens_d = M_hiscore_tens_q;
    M_score_ones_d = M_score_ones_q;
    M_hiscore_hundreds_d = M_hiscore_hundreds_q;
    M_binaryscore_d = M_binaryscore_q;
    M_score_hundreds_d = M_score_hundreds_q;
    M_hiscore_ones_d = M_hiscore_ones_q;
    M_score_count_d = M_score_count_q;
    M_originalhiscore_d = M_originalhiscore_q;
    M_hiscore_count_d = M_hiscore_count_q;
    M_score_tens_d = M_score_tens_q;
    
    if (M_hiscore_count_q != 4'ha) begin
      if (M_binaryscore_q[10+3-:4] >= 3'h5 && !M_hiscore_ones_q) begin
        M_binaryscore_d[10+3-:4] = M_binaryscore_q[10+3-:4] + 2'h3;
        M_hiscore_ones_d = 1'h1;
      end else begin
        if (M_binaryscore_q[14+3-:4] >= 3'h5 && !M_hiscore_tens_q) begin
          M_binaryscore_d[14+3-:4] = M_binaryscore_q[14+3-:4] + 2'h3;
          M_hiscore_tens_d = 1'h1;
        end else begin
          if (M_binaryscore_q[18+3-:4] >= 3'h5 && !M_hiscore_hundreds_q) begin
            M_binaryscore_d[18+3-:4] = M_binaryscore_q[18+3-:4] + 2'h3;
            M_hiscore_hundreds_d = 1'h1;
          end else begin
            M_binaryscore_d[0+21-:22] = M_binaryscore_q[0+21-:22] << 1'h1;
            M_hiscore_count_d = M_hiscore_count_q + 1'h1;
            M_hiscore_ones_d = 1'h0;
            M_hiscore_tens_d = 1'h0;
            M_hiscore_hundreds_d = 1'h0;
          end
        end
      end
    end
    if (M_score_count_q != 4'ha) begin
      if (M_binaryscore_q[32+3-:4] >= 3'h5 && !M_score_ones_q) begin
        M_binaryscore_d[32+3-:4] = M_binaryscore_q[32+3-:4] + 2'h3;
        M_score_ones_d = 1'h1;
      end else begin
        if (M_binaryscore_q[36+3-:4] >= 3'h5 && !M_score_tens_q) begin
          M_binaryscore_d[36+3-:4] = M_binaryscore_q[36+3-:4] + 2'h3;
          M_score_tens_d = 1'h1;
        end else begin
          if (M_binaryscore_q[40+3-:4] >= 3'h5 && !M_score_hundreds_q) begin
            M_binaryscore_d[40+3-:4] = M_binaryscore_q[40+3-:4] + 2'h3;
            M_score_hundreds_d = 1'h1;
          end else begin
            M_binaryscore_d[22+21-:22] = M_binaryscore_q[22+21-:22] << 1'h1;
            M_score_count_d = M_score_count_q + 1'h1;
            M_score_ones_d = 1'h0;
            M_score_tens_d = 1'h0;
            M_score_hundreds_d = 1'h0;
          end
        end
      end
    end
    if (M_originalhiscore_q != hiscore) begin
      M_originalhiscore_d = hiscore;
      M_binaryscore_d[10+11-:12] = 12'h000;
      M_binaryscore_d[0+9-:10] = hiscore;
      M_hiscore_count_d = 1'h0;
    end
    if (M_originalscore_q != score) begin
      M_originalscore_d = score;
      M_binaryscore_d[32+11-:12] = 12'h000;
      M_binaryscore_d[22+9-:10] = score;
      M_score_count_d = 1'h0;
    end
    M_mss_values = {M_binaryscore_q[40+3-:4], M_binaryscore_q[36+3-:4], M_binaryscore_q[32+3-:4], M_binaryscore_q[18+3-:4], M_binaryscore_q[14+3-:4], M_binaryscore_q[10+3-:4]};
    score_seg = M_mss_seg;
    hiscore_sel = ~M_mss_sel[0+2-:3];
    score_sel = ~M_mss_sel[3+2-:3];
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_originalhiscore_q <= 1'h0;
      M_originalscore_q <= 1'h0;
      M_binaryscore_q <= 1'h0;
      M_hiscore_count_q <= 1'h0;
      M_score_count_q <= 1'h0;
      M_hiscore_ones_q <= 1'h0;
      M_hiscore_tens_q <= 1'h0;
      M_hiscore_hundreds_q <= 1'h0;
      M_score_ones_q <= 1'h0;
      M_score_tens_q <= 1'h0;
      M_score_hundreds_q <= 1'h0;
    end else begin
      M_originalhiscore_q <= M_originalhiscore_d;
      M_originalscore_q <= M_originalscore_d;
      M_binaryscore_q <= M_binaryscore_d;
      M_hiscore_count_q <= M_hiscore_count_d;
      M_score_count_q <= M_score_count_d;
      M_hiscore_ones_q <= M_hiscore_ones_d;
      M_hiscore_tens_q <= M_hiscore_tens_d;
      M_hiscore_hundreds_q <= M_hiscore_hundreds_d;
      M_score_ones_q <= M_score_ones_d;
      M_score_tens_q <= M_score_tens_d;
      M_score_hundreds_q <= M_score_hundreds_d;
    end
  end
  
endmodule
