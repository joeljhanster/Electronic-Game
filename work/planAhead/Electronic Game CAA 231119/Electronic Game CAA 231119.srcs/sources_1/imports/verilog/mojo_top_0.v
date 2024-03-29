/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    input start_button,
    input [15:0] switch,
    output reg [15:0] light,
    output reg [6:0] segment,
    output reg [2:0] hiscore_sel,
    output reg [2:0] score_sel
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [8-1:0] M_fsm_logic_led;
  wire [16-1:0] M_fsm_logic_light;
  wire [6-1:0] M_fsm_logic_alufn;
  wire [5-1:0] M_fsm_logic_ra_addr;
  wire [5-1:0] M_fsm_logic_rb_addr;
  wire [16-1:0] M_fsm_logic_wa_data;
  wire [1-1:0] M_fsm_logic_write;
  wire [1-1:0] M_fsm_logic_default_values;
  reg [1-1:0] M_fsm_logic_start_button;
  reg [16-1:0] M_fsm_logic_push_button;
  reg [16-1:0] M_fsm_logic_alu;
  logic_2 fsm_logic (
    .clk(clk),
    .rst(rst),
    .start_button(M_fsm_logic_start_button),
    .push_button(M_fsm_logic_push_button),
    .alu(M_fsm_logic_alu),
    .led(M_fsm_logic_led),
    .light(M_fsm_logic_light),
    .alufn(M_fsm_logic_alufn),
    .ra_addr(M_fsm_logic_ra_addr),
    .rb_addr(M_fsm_logic_rb_addr),
    .wa_data(M_fsm_logic_wa_data),
    .write(M_fsm_logic_write),
    .default_values(M_fsm_logic_default_values)
  );
  wire [16-1:0] M_regFile_ra_data;
  wire [16-1:0] M_regFile_rb_data;
  wire [16-1:0] M_regFile_hiscore;
  wire [16-1:0] M_regFile_score;
  reg [5-1:0] M_regFile_ra_addr;
  reg [5-1:0] M_regFile_rb_addr;
  reg [1-1:0] M_regFile_write;
  reg [1-1:0] M_regFile_default_values;
  reg [16-1:0] M_regFile_wa_data;
  regFile_3 regFile (
    .clk(clk),
    .rst(rst),
    .ra_addr(M_regFile_ra_addr),
    .rb_addr(M_regFile_rb_addr),
    .write(M_regFile_write),
    .default_values(M_regFile_default_values),
    .wa_data(M_regFile_wa_data),
    .ra_data(M_regFile_ra_data),
    .rb_data(M_regFile_rb_data),
    .hiscore(M_regFile_hiscore),
    .score(M_regFile_score)
  );
  wire [7-1:0] M_bc_score_seg;
  wire [3-1:0] M_bc_hiscore_sel;
  wire [3-1:0] M_bc_score_sel;
  reg [10-1:0] M_bc_hiscore;
  reg [10-1:0] M_bc_score;
  binary_to_bcd_4 bc (
    .clk(clk),
    .rst(rst),
    .hiscore(M_bc_hiscore),
    .score(M_bc_score),
    .score_seg(M_bc_score_seg),
    .hiscore_sel(M_bc_hiscore_sel),
    .score_sel(M_bc_score_sel)
  );
  
  wire [16-1:0] M_alu_alu;
  wire [1-1:0] M_alu_z;
  wire [1-1:0] M_alu_v;
  wire [1-1:0] M_alu_n;
  reg [16-1:0] M_alu_a;
  reg [16-1:0] M_alu_b;
  reg [6-1:0] M_alu_alufn;
  alu_5 alu (
    .a(M_alu_a),
    .b(M_alu_b),
    .alufn(M_alu_alufn),
    .alu(M_alu_alu),
    .z(M_alu_z),
    .v(M_alu_v),
    .n(M_alu_n)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = M_fsm_logic_led;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    M_fsm_logic_start_button = start_button;
    M_fsm_logic_push_button = switch;
    M_fsm_logic_alu = M_alu_alu;
    M_regFile_default_values = M_fsm_logic_default_values;
    M_regFile_write = M_fsm_logic_write;
    M_regFile_ra_addr = M_fsm_logic_ra_addr;
    M_regFile_wa_data = M_fsm_logic_wa_data;
    M_regFile_rb_addr = M_fsm_logic_rb_addr;
    M_alu_a = M_regFile_ra_data;
    M_alu_b = M_regFile_rb_data;
    M_alu_alufn = M_fsm_logic_alufn;
    light = M_fsm_logic_light;
    M_bc_hiscore = M_regFile_hiscore[0+9-:10];
    M_bc_score = M_regFile_score[0+9-:10];
    segment = M_bc_score_seg;
    hiscore_sel = M_bc_hiscore_sel;
    score_sel = M_bc_score_sel;
  end
endmodule
