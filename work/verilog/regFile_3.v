/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module regFile_3 (
    input clk,
    input rst,
    input [4:0] ra_addr,
    input [4:0] rb_addr,
    input write,
    input default_values,
    input [15:0] wa_data,
    output reg [15:0] ra_data,
    output reg [15:0] rb_data,
    output reg [15:0] hiscore,
    output reg [15:0] score
  );
  
  
  
  reg [15:0] M_r1_data_d, M_r1_data_q = 1'h0;
  reg [15:0] M_r2_data_d, M_r2_data_q = 1'h0;
  reg [15:0] M_r3_data_d, M_r3_data_q = 1'h0;
  reg [15:0] M_r4_data_d, M_r4_data_q = 1'h0;
  reg [15:0] M_r5_data_d, M_r5_data_q = 1'h0;
  reg [15:0] M_r6_data_d, M_r6_data_q = 1'h0;
  reg [15:0] M_r7_data_d, M_r7_data_q = 1'h0;
  reg [15:0] M_r8_data_d, M_r8_data_q = 1'h0;
  reg [15:0] M_r9_data_d, M_r9_data_q = 1'h0;
  reg [15:0] M_r10_data_d, M_r10_data_q = 1'h0;
  reg [15:0] M_r11_data_d, M_r11_data_q = 1'h0;
  reg [15:0] M_r12_data_d, M_r12_data_q = 1'h0;
  reg [15:0] M_r13_data_d, M_r13_data_q = 1'h0;
  reg [15:0] M_r14_data_d, M_r14_data_q = 1'h0;
  reg [15:0] M_r15_data_d, M_r15_data_q = 1'h0;
  reg [15:0] M_r16_data_d, M_r16_data_q = 1'h0;
  reg [15:0] M_r17_data_d, M_r17_data_q = 1'h0;
  reg [15:0] M_r18_data_d, M_r18_data_q = 1'h0;
  reg [15:0] M_r19_data_d, M_r19_data_q = 1'h0;
  
  always @* begin
    M_r11_data_d = M_r11_data_q;
    M_r8_data_d = M_r8_data_q;
    M_r13_data_d = M_r13_data_q;
    M_r10_data_d = M_r10_data_q;
    M_r15_data_d = M_r15_data_q;
    M_r6_data_d = M_r6_data_q;
    M_r4_data_d = M_r4_data_q;
    M_r9_data_d = M_r9_data_q;
    M_r1_data_d = M_r1_data_q;
    M_r16_data_d = M_r16_data_q;
    M_r18_data_d = M_r18_data_q;
    M_r17_data_d = M_r17_data_q;
    M_r14_data_d = M_r14_data_q;
    M_r12_data_d = M_r12_data_q;
    M_r2_data_d = M_r2_data_q;
    M_r7_data_d = M_r7_data_q;
    M_r19_data_d = M_r19_data_q;
    M_r3_data_d = M_r3_data_q;
    M_r5_data_d = M_r5_data_q;
    
    if (default_values) begin
      M_r1_data_d = 16'h0000;
      M_r2_data_d = 16'h0000;
      M_r3_data_d = 16'h0000;
      M_r4_data_d = 16'h0000;
      M_r5_data_d = 16'h0000;
      M_r6_data_d = 16'h0000;
      M_r7_data_d = 16'h0000;
      M_r8_data_d = 16'h0000;
      M_r9_data_d = 16'h0000;
      M_r10_data_d = 16'h0000;
      M_r11_data_d = 16'h0000;
      M_r12_data_d = 16'h0000;
      M_r13_data_d = 16'h0000;
      M_r14_data_d = 16'h0000;
      M_r15_data_d = M_r15_data_q;
      M_r16_data_d = 16'h0000;
      M_r17_data_d = M_r17_data_q;
      M_r18_data_d = 16'h0000;
      M_r19_data_d = 16'h0000;
    end
    if (write) begin
      
      case (ra_addr)
        5'h01: begin
          M_r1_data_d = wa_data;
        end
        5'h02: begin
          M_r2_data_d = wa_data;
        end
        5'h03: begin
          M_r3_data_d = wa_data;
        end
        5'h04: begin
          M_r4_data_d = wa_data;
        end
        5'h05: begin
          M_r5_data_d = wa_data;
        end
        5'h06: begin
          M_r6_data_d = wa_data;
        end
        5'h07: begin
          M_r7_data_d = wa_data;
        end
        5'h08: begin
          M_r8_data_d = wa_data;
        end
        5'h09: begin
          M_r9_data_d = wa_data;
        end
        5'h0a: begin
          M_r10_data_d = wa_data;
        end
        5'h0b: begin
          M_r11_data_d = wa_data;
        end
        5'h0c: begin
          M_r12_data_d = wa_data;
        end
        5'h0d: begin
          M_r13_data_d = wa_data;
        end
        5'h0e: begin
          M_r14_data_d = wa_data;
        end
        5'h0f: begin
          M_r15_data_d = wa_data;
        end
        5'h10: begin
          M_r16_data_d = wa_data;
        end
        5'h11: begin
          M_r17_data_d = wa_data;
        end
        5'h12: begin
          M_r18_data_d = wa_data;
        end
        5'h13: begin
          M_r19_data_d = wa_data;
        end
      endcase
    end
    
    case (ra_addr)
      5'h01: begin
        ra_data = M_r1_data_q;
      end
      5'h02: begin
        ra_data = M_r2_data_q;
      end
      5'h03: begin
        ra_data = M_r3_data_q;
      end
      5'h04: begin
        ra_data = M_r4_data_q;
      end
      5'h05: begin
        ra_data = M_r5_data_q;
      end
      5'h06: begin
        ra_data = M_r6_data_q;
      end
      5'h07: begin
        ra_data = M_r7_data_q;
      end
      5'h08: begin
        ra_data = M_r8_data_q;
      end
      5'h09: begin
        ra_data = M_r9_data_q;
      end
      5'h0a: begin
        ra_data = M_r10_data_q;
      end
      5'h0b: begin
        ra_data = M_r11_data_q;
      end
      5'h0c: begin
        ra_data = M_r12_data_q;
      end
      5'h0d: begin
        ra_data = M_r13_data_q;
      end
      5'h0e: begin
        ra_data = M_r14_data_q;
      end
      5'h0f: begin
        ra_data = M_r15_data_q;
      end
      5'h10: begin
        ra_data = M_r16_data_q;
      end
      5'h11: begin
        ra_data = M_r17_data_q;
      end
      5'h12: begin
        ra_data = M_r18_data_q;
      end
      5'h13: begin
        ra_data = M_r19_data_q;
      end
      5'h1f: begin
        ra_data = 16'h0000;
      end
      default: begin
        ra_data = 16'h0000;
      end
    endcase
    
    case (rb_addr)
      5'h01: begin
        rb_data = M_r1_data_q;
      end
      5'h02: begin
        rb_data = M_r2_data_q;
      end
      5'h03: begin
        rb_data = M_r3_data_q;
      end
      5'h04: begin
        rb_data = M_r4_data_q;
      end
      5'h05: begin
        rb_data = M_r5_data_q;
      end
      5'h06: begin
        rb_data = M_r6_data_q;
      end
      5'h07: begin
        rb_data = M_r7_data_q;
      end
      5'h08: begin
        rb_data = M_r8_data_q;
      end
      5'h09: begin
        rb_data = M_r9_data_q;
      end
      5'h0a: begin
        rb_data = M_r10_data_q;
      end
      5'h0b: begin
        rb_data = M_r11_data_q;
      end
      5'h0c: begin
        rb_data = M_r12_data_q;
      end
      5'h0d: begin
        rb_data = M_r13_data_q;
      end
      5'h0e: begin
        rb_data = M_r14_data_q;
      end
      5'h0f: begin
        rb_data = M_r15_data_q;
      end
      5'h10: begin
        rb_data = M_r16_data_q;
      end
      5'h11: begin
        rb_data = M_r17_data_q;
      end
      5'h12: begin
        rb_data = M_r18_data_q;
      end
      5'h13: begin
        rb_data = M_r19_data_q;
      end
      5'h1f: begin
        rb_data = 16'h0000;
      end
      default: begin
        rb_data = 16'h0000;
      end
    endcase
    hiscore = M_r15_data_q;
    score = M_r16_data_q;
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_r1_data_q <= 1'h0;
      M_r2_data_q <= 1'h0;
      M_r3_data_q <= 1'h0;
      M_r4_data_q <= 1'h0;
      M_r5_data_q <= 1'h0;
      M_r6_data_q <= 1'h0;
      M_r7_data_q <= 1'h0;
      M_r8_data_q <= 1'h0;
      M_r9_data_q <= 1'h0;
      M_r10_data_q <= 1'h0;
      M_r11_data_q <= 1'h0;
      M_r12_data_q <= 1'h0;
      M_r13_data_q <= 1'h0;
      M_r14_data_q <= 1'h0;
      M_r15_data_q <= 1'h0;
      M_r16_data_q <= 1'h0;
      M_r17_data_q <= 1'h0;
      M_r18_data_q <= 1'h0;
      M_r19_data_q <= 1'h0;
    end else begin
      M_r1_data_q <= M_r1_data_d;
      M_r2_data_q <= M_r2_data_d;
      M_r3_data_q <= M_r3_data_d;
      M_r4_data_q <= M_r4_data_d;
      M_r5_data_q <= M_r5_data_d;
      M_r6_data_q <= M_r6_data_d;
      M_r7_data_q <= M_r7_data_d;
      M_r8_data_q <= M_r8_data_d;
      M_r9_data_q <= M_r9_data_d;
      M_r10_data_q <= M_r10_data_d;
      M_r11_data_q <= M_r11_data_d;
      M_r12_data_q <= M_r12_data_d;
      M_r13_data_q <= M_r13_data_d;
      M_r14_data_q <= M_r14_data_d;
      M_r15_data_q <= M_r15_data_d;
      M_r16_data_q <= M_r16_data_d;
      M_r17_data_q <= M_r17_data_d;
      M_r18_data_q <= M_r18_data_d;
      M_r19_data_q <= M_r19_data_d;
    end
  end
  
endmodule
