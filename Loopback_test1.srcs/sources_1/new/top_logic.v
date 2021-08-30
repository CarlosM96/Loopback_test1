`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2021 10:11:59 AM
// Design Name: 
// Module Name: top_logic
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


module top_logic(
	input link_ready,
	input we,
	output led0,
	input led1,
	output reg led2,
	output reg led3,
	input reset,
	input tx_clk,
	input write_clk,
	input txinit_done,
	output [31:0] tx_data,
	output tx_k
);

wire link_ready1;
reg [31:0] data_in;
reg [1:0] data_type_in;
reg [31:0] data_out;
wire fifo_empty0;
wire fifo_re;
wire tx_init_done0;
reg k;
reg [31:0] crc_encoder_i_data_payload;
reg crc_encoder_i_data_strobe;
wire [19:0] crc_encoder_o_crc;
wire crc_encoder_reset;
wire [31:0] crc_encoder_crc_dat;
reg [19:0] crc_encoder_crc_cur = 20'd1048575;
reg [19:0] crc_encoder_crc_next;
wire stream_controller_link_ready;
wire stream_controller_fifo_empty;
wire [1:0] stream_controller_data_type;
wire stream_controller_tx_init_done;
reg stream_controller_sop = 1'd0;
reg stream_controller_eop = 1'd0;
reg stream_controller_ign;
reg stream_controller_idle = 1'd0;
reg stream_controller_intermediate = 1'd0;
reg stream_controller_encoder_ready = 1'd0;
reg stream_controller_fifo_re = 1'd0;
reg stream_controller_strobe_crc = 1'd0;
reg stream_controller_reset_crc = 1'd0;
reg stream_controller_aux_ign = 1'd0;
reg stream_controller_reset = 1'd0;
wire tx_init_done1;
wire fifo_empty1;
wire write_clk_1;
reg write_rst = 1'd0;
wire tx_clk_1;
wire tx_rst;
wire asyncfifo_we;
wire asyncfifo_writable;
wire asyncfifo_re;
wire asyncfifo_readable;
wire [33:0] asyncfifo_din;
wire [33:0] asyncfifo_dout;
wire graycounter0_ce;
(* no_retiming = "true" *) reg [10:0] graycounter0_q = 11'd0;
wire [10:0] graycounter0_q_next;
reg [10:0] graycounter0_q_binary = 11'd0;
reg [10:0] graycounter0_q_next_binary;
wire graycounter1_ce;
(* no_retiming = "true" *) reg [10:0] graycounter1_q = 11'd0;
wire [10:0] graycounter1_q_next;
reg [10:0] graycounter1_q_binary = 11'd0;
reg [10:0] graycounter1_q_next_binary;
wire [10:0] produce_rdomain;
wire [10:0] consume_wdomain;
wire [9:0] wrport_adr;
wire [33:0] wrport_dat_r;
wire wrport_we;
wire [33:0] wrport_dat_w;
wire [9:0] rdport_adr;
wire [33:0] rdport_dat_r;
reg [31:0] o = 32'd0;
wire enable;
reg [6:0] state = 7'd1;
reg prbs_en = 1'd0;
reg [1:0] data_type = 2'd0;
reg [7:0] index = 8'd0;
wire [7:0] i_ignored;
reg write_fifo = 1'd0;
reg [2:0] tx_state = 3'd0;
reg [2:0] tx_next_state;
reg stream_controller_fifo_re_clockdomainsrenamer0_t_next_value0;
reg stream_controller_fifo_re_clockdomainsrenamer0_t_next_value_ce0;
reg stream_controller_sop_clockdomainsrenamer0_t_next_value1;
reg stream_controller_sop_clockdomainsrenamer0_t_next_value_ce1;
reg stream_controller_idle_clockdomainsrenamer0_t_next_value2;
reg stream_controller_idle_clockdomainsrenamer0_t_next_value_ce2;
reg stream_controller_encoder_ready_clockdomainsrenamer0_next_value0;
reg stream_controller_encoder_ready_clockdomainsrenamer0_next_value_ce0;
reg stream_controller_intermediate_clockdomainsrenamer0_next_value1;
reg stream_controller_intermediate_clockdomainsrenamer0_next_value_ce1;
reg stream_controller_strobe_crc_clockdomainsrenamer0_next_value2;
reg stream_controller_strobe_crc_clockdomainsrenamer0_next_value_ce2;
reg stream_controller_aux_ign_clockdomainsrenamer0_cases_next_value0;
reg stream_controller_aux_ign_clockdomainsrenamer0_cases_next_value_ce0;
reg stream_controller_eop_clockdomainsrenamer0_cases_next_value1;
reg stream_controller_eop_clockdomainsrenamer0_cases_next_value_ce1;
reg stream_controller_reset_crc_clockdomainsrenamer0_cases_next_value2;
reg stream_controller_reset_crc_clockdomainsrenamer0_cases_next_value_ce2;
reg [2:0] fsm_state = 3'd0;
reg [2:0] fsm_next_state;
reg prbs_en_clockdomainsrenamer1_next_value0;
reg prbs_en_clockdomainsrenamer1_next_value_ce0;
reg [1:0] data_type_clockdomainsrenamer1_next_value1;
reg data_type_clockdomainsrenamer1_next_value_ce1;
reg write_fifo_clockdomainsrenamer1_next_value2;
reg write_fifo_clockdomainsrenamer1_next_value_ce2;
reg [7:0] index_clockdomainsrenamer1_next_value3;
reg index_clockdomainsrenamer1_next_value_ce3;
(* no_retiming = "true" *) reg multiregimpl0_regs0 = 1'd0;
(* no_retiming = "true" *) reg multiregimpl0_regs1 = 1'd0;
(* no_retiming = "true" *) reg multiregimpl1_regs0 = 1'd0;
(* no_retiming = "true" *) reg multiregimpl1_regs1 = 1'd0;
(* no_retiming = "true" *) reg [10:0] multiregimpl2_regs0 = 11'd0;
(* no_retiming = "true" *) reg [10:0] multiregimpl2_regs1 = 11'd0;
(* no_retiming = "true" *) reg [10:0] multiregimpl3_regs0 = 11'd0;
(* no_retiming = "true" *) reg [10:0] multiregimpl3_regs1 = 11'd0;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign write_clk_1 = write_clk;
assign tx_rst = reset;
assign tx_clk_1 = tx_clk;
assign i_ignored = 6'd51;
assign asyncfifo_din = {data_type, o};
assign enable = prbs_en;
assign asyncfifo_we = write_fifo;
assign asyncfifo_re = fifo_re;
assign link_ready1 = link_ready;
assign fifo_empty0 = (~asyncfifo_readable);
assign tx_init_done0 = txinit_done;

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	data_in <= 32'd0;
	data_type_in <= 2'd0;
	if ((link_ready & asyncfifo_readable)) begin
		data_type_in <= asyncfifo_dout[33:32];
		data_in <= asyncfifo_dout[31:0];
	end
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end
assign tx_k = k;
assign led0 = txinit_done;

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	led3 <= 1'd0;
	if (we) begin
		led3 <= 1'd1;
	end
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end
assign tx_data = data_out;

// synthesis translate_off
reg dummy_d_2;
// synthesis translate_on
always @(*) begin
	led2 <= 1'd0;
	if (link_ready) begin
		led2 <= 1'd1;
	end
// synthesis translate_off
	dummy_d_2 <= dummy_s;
// synthesis translate_on
end
assign graycounter0_ce = (asyncfifo_writable & asyncfifo_we);
assign graycounter1_ce = (asyncfifo_readable & asyncfifo_re);
assign asyncfifo_writable = (((graycounter0_q[10] == consume_wdomain[10]) | (graycounter0_q[9] == consume_wdomain[9])) | (graycounter0_q[8:0] != consume_wdomain[8:0]));
assign asyncfifo_readable = (graycounter1_q != produce_rdomain);
assign wrport_adr = graycounter0_q_binary[9:0];
assign wrport_dat_w = asyncfifo_din;
assign wrport_we = graycounter0_ce;
assign rdport_adr = graycounter1_q_next_binary[9:0];
assign asyncfifo_dout = rdport_dat_r;

// synthesis translate_off
reg dummy_d_3;
// synthesis translate_on
always @(*) begin
	graycounter0_q_next_binary <= 11'd0;
	if (graycounter0_ce) begin
		graycounter0_q_next_binary <= (graycounter0_q_binary + 1'd1);
	end else begin
		graycounter0_q_next_binary <= graycounter0_q_binary;
	end
// synthesis translate_off
	dummy_d_3 <= dummy_s;
// synthesis translate_on
end
assign graycounter0_q_next = (graycounter0_q_next_binary ^ graycounter0_q_next_binary[10:1]);

// synthesis translate_off
reg dummy_d_4;
// synthesis translate_on
always @(*) begin
	graycounter1_q_next_binary <= 11'd0;
	if (graycounter1_ce) begin
		graycounter1_q_next_binary <= (graycounter1_q_binary + 1'd1);
	end else begin
		graycounter1_q_next_binary <= graycounter1_q_binary;
	end
// synthesis translate_off
	dummy_d_4 <= dummy_s;
// synthesis translate_on
end
assign graycounter1_q_next = (graycounter1_q_next_binary ^ graycounter1_q_next_binary[10:1]);
assign stream_controller_link_ready = link_ready1;
assign stream_controller_fifo_empty = fifo_empty1;
assign stream_controller_data_type = data_type_in;
assign stream_controller_tx_init_done = tx_init_done1;
assign fifo_re = stream_controller_fifo_re;

// synthesis translate_off
reg dummy_d_5;
// synthesis translate_on
always @(*) begin
	crc_encoder_i_data_strobe <= 1'd0;
	if ((data_type_in != 2'd3)) begin
		crc_encoder_i_data_strobe <= stream_controller_strobe_crc;
	end
// synthesis translate_off
	dummy_d_5 <= dummy_s;
// synthesis translate_on
end
assign crc_encoder_reset = stream_controller_reset_crc;

// synthesis translate_off
reg dummy_d_6;
// synthesis translate_on
always @(*) begin
	crc_encoder_i_data_payload <= 32'd0;
	if (stream_controller_encoder_ready) begin
		crc_encoder_i_data_payload <= data_in;
	end
// synthesis translate_off
	dummy_d_6 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_7;
// synthesis translate_on
always @(*) begin
	data_out <= 32'd0;
	k <= 1'd0;
	if (stream_controller_idle) begin
		data_out <= 8'd188;
		k <= 1'd1;
	end
	if (stream_controller_sop) begin
		data_out <= 6'd60;
		k <= 1'd1;
	end
	if (stream_controller_intermediate) begin
		data_out <= data_in;
	end
	if (stream_controller_ign) begin
		data_out <= 7'd92;
		k <= 1'd1;
	end
	if (stream_controller_eop) begin
		data_out <= {crc_encoder_o_crc, 8'd220};
		k <= 1'd1;
	end
	if (((((~stream_controller_idle) & (~stream_controller_eop)) & (~stream_controller_sop)) & (~stream_controller_ign))) begin
		k <= 1'd0;
	end
// synthesis translate_off
	dummy_d_7 <= dummy_s;
// synthesis translate_on
end
assign crc_encoder_crc_dat = crc_encoder_i_data_payload;
assign crc_encoder_o_crc = crc_encoder_crc_cur;

// synthesis translate_off
reg dummy_d_8;
// synthesis translate_on
always @(*) begin
	crc_encoder_crc_next <= 20'd151419;
	crc_encoder_crc_next[0] <= ((((((((((((((((((((((((((((crc_encoder_crc_dat[0] ^ crc_encoder_crc_dat[1]) ^ crc_encoder_crc_dat[3]) ^ crc_encoder_crc_dat[4]) ^ crc_encoder_crc_dat[6]) ^ crc_encoder_crc_dat[7]) ^ crc_encoder_crc_dat[8]) ^ crc_encoder_crc_dat[12]) ^ crc_encoder_crc_dat[13]) ^ crc_encoder_crc_dat[15]) ^ crc_encoder_crc_dat[21]) ^ crc_encoder_crc_dat[22]) ^ crc_encoder_crc_dat[23]) ^ crc_encoder_crc_dat[24]) ^ crc_encoder_crc_dat[26]) ^ crc_encoder_crc_dat[28]) ^ crc_encoder_crc_dat[30]) ^ crc_encoder_crc_dat[31]) ^ crc_encoder_crc_cur[0]) ^ crc_encoder_crc_cur[1]) ^ crc_encoder_crc_cur[3]) ^ crc_encoder_crc_cur[9]) ^ crc_encoder_crc_cur[10]) ^ crc_encoder_crc_cur[11]) ^ crc_encoder_crc_cur[12]) ^ crc_encoder_crc_cur[14]) ^ crc_encoder_crc_cur[16]) ^ crc_encoder_crc_cur[18]) ^ crc_encoder_crc_cur[19]);
	crc_encoder_crc_next[1] <= (((((((((((((((((((((((((((crc_encoder_crc_dat[0] ^ crc_encoder_crc_dat[2]) ^ crc_encoder_crc_dat[3]) ^ crc_encoder_crc_dat[5]) ^ crc_encoder_crc_dat[6]) ^ crc_encoder_crc_dat[9]) ^ crc_encoder_crc_dat[12]) ^ crc_encoder_crc_dat[14]) ^ crc_encoder_crc_dat[15]) ^ crc_encoder_crc_dat[16]) ^ crc_encoder_crc_dat[21]) ^ crc_encoder_crc_dat[25]) ^ crc_encoder_crc_dat[26]) ^ crc_encoder_crc_dat[27]) ^ crc_encoder_crc_dat[28]) ^ crc_encoder_crc_dat[29]) ^ crc_encoder_crc_dat[30]) ^ crc_encoder_crc_cur[0]) ^ crc_encoder_crc_cur[2]) ^ crc_encoder_crc_cur[3]) ^ crc_encoder_crc_cur[4]) ^ crc_encoder_crc_cur[9]) ^ crc_encoder_crc_cur[13]) ^ crc_encoder_crc_cur[14]) ^ crc_encoder_crc_cur[15]) ^ crc_encoder_crc_cur[16]) ^ crc_encoder_crc_cur[17]) ^ crc_encoder_crc_cur[18]);
	crc_encoder_crc_next[2] <= ((((((((((((((((((crc_encoder_crc_dat[0] ^ crc_encoder_crc_dat[8]) ^ crc_encoder_crc_dat[10]) ^ crc_encoder_crc_dat[12]) ^ crc_encoder_crc_dat[16]) ^ crc_encoder_crc_dat[17]) ^ crc_encoder_crc_dat[21]) ^ crc_encoder_crc_dat[23]) ^ crc_encoder_crc_dat[24]) ^ crc_encoder_crc_dat[27]) ^ crc_encoder_crc_dat[29]) ^ crc_encoder_crc_cur[0]) ^ crc_encoder_crc_cur[4]) ^ crc_encoder_crc_cur[5]) ^ crc_encoder_crc_cur[9]) ^ crc_encoder_crc_cur[11]) ^ crc_encoder_crc_cur[12]) ^ crc_encoder_crc_cur[15]) ^ crc_encoder_crc_cur[17]);
	crc_encoder_crc_next[3] <= (((((((((((((((((((((((((crc_encoder_crc_dat[0] ^ crc_encoder_crc_dat[3]) ^ crc_encoder_crc_dat[4]) ^ crc_encoder_crc_dat[6]) ^ crc_encoder_crc_dat[7]) ^ crc_encoder_crc_dat[8]) ^ crc_encoder_crc_dat[9]) ^ crc_encoder_crc_dat[11]) ^ crc_encoder_crc_dat[12]) ^ crc_encoder_crc_dat[15]) ^ crc_encoder_crc_dat[17]) ^ crc_encoder_crc_dat[18]) ^ crc_encoder_crc_dat[21]) ^ crc_encoder_crc_dat[23]) ^ crc_encoder_crc_dat[25]) ^ crc_encoder_crc_dat[26]) ^ crc_encoder_crc_dat[31]) ^ crc_encoder_crc_cur[0]) ^ crc_encoder_crc_cur[3]) ^ crc_encoder_crc_cur[5]) ^ crc_encoder_crc_cur[6]) ^ crc_encoder_crc_cur[9]) ^ crc_encoder_crc_cur[11]) ^ crc_encoder_crc_cur[13]) ^ crc_encoder_crc_cur[14]) ^ crc_encoder_crc_cur[19]);
	crc_encoder_crc_next[4] <= ((((((((((((((((((((((((crc_encoder_crc_dat[1] ^ crc_encoder_crc_dat[4]) ^ crc_encoder_crc_dat[5]) ^ crc_encoder_crc_dat[7]) ^ crc_encoder_crc_dat[8]) ^ crc_encoder_crc_dat[9]) ^ crc_encoder_crc_dat[10]) ^ crc_encoder_crc_dat[12]) ^ crc_encoder_crc_dat[13]) ^ crc_encoder_crc_dat[16]) ^ crc_encoder_crc_dat[18]) ^ crc_encoder_crc_dat[19]) ^ crc_encoder_crc_dat[22]) ^ crc_encoder_crc_dat[24]) ^ crc_encoder_crc_dat[26]) ^ crc_encoder_crc_dat[27]) ^ crc_encoder_crc_cur[0]) ^ crc_encoder_crc_cur[1]) ^ crc_encoder_crc_cur[4]) ^ crc_encoder_crc_cur[6]) ^ crc_encoder_crc_cur[7]) ^ crc_encoder_crc_cur[10]) ^ crc_encoder_crc_cur[12]) ^ crc_encoder_crc_cur[14]) ^ crc_encoder_crc_cur[15]);
	crc_encoder_crc_next[5] <= ((((((((((((((((((((((((crc_encoder_crc_dat[2] ^ crc_encoder_crc_dat[5]) ^ crc_encoder_crc_dat[6]) ^ crc_encoder_crc_dat[8]) ^ crc_encoder_crc_dat[9]) ^ crc_encoder_crc_dat[10]) ^ crc_encoder_crc_dat[11]) ^ crc_encoder_crc_dat[13]) ^ crc_encoder_crc_dat[14]) ^ crc_encoder_crc_dat[17]) ^ crc_encoder_crc_dat[19]) ^ crc_encoder_crc_dat[20]) ^ crc_encoder_crc_dat[23]) ^ crc_encoder_crc_dat[25]) ^ crc_encoder_crc_dat[27]) ^ crc_encoder_crc_dat[28]) ^ crc_encoder_crc_cur[1]) ^ crc_encoder_crc_cur[2]) ^ crc_encoder_crc_cur[5]) ^ crc_encoder_crc_cur[7]) ^ crc_encoder_crc_cur[8]) ^ crc_encoder_crc_cur[11]) ^ crc_encoder_crc_cur[13]) ^ crc_encoder_crc_cur[15]) ^ crc_encoder_crc_cur[16]);
	crc_encoder_crc_next[6] <= ((((((((((((((((((((((((crc_encoder_crc_dat[0] ^ crc_encoder_crc_dat[1]) ^ crc_encoder_crc_dat[4]) ^ crc_encoder_crc_dat[8]) ^ crc_encoder_crc_dat[9]) ^ crc_encoder_crc_dat[10]) ^ crc_encoder_crc_dat[11]) ^ crc_encoder_crc_dat[13]) ^ crc_encoder_crc_dat[14]) ^ crc_encoder_crc_dat[18]) ^ crc_encoder_crc_dat[20]) ^ crc_encoder_crc_dat[22]) ^ crc_encoder_crc_dat[23]) ^ crc_encoder_crc_dat[29]) ^ crc_encoder_crc_dat[30]) ^ crc_encoder_crc_dat[31]) ^ crc_encoder_crc_cur[1]) ^ crc_encoder_crc_cur[2]) ^ crc_encoder_crc_cur[6]) ^ crc_encoder_crc_cur[8]) ^ crc_encoder_crc_cur[10]) ^ crc_encoder_crc_cur[11]) ^ crc_encoder_crc_cur[17]) ^ crc_encoder_crc_cur[18]) ^ crc_encoder_crc_cur[19]);
	crc_encoder_crc_next[7] <= ((((((((((((((((((((((crc_encoder_crc_dat[0] ^ crc_encoder_crc_dat[2]) ^ crc_encoder_crc_dat[3]) ^ crc_encoder_crc_dat[4]) ^ crc_encoder_crc_dat[5]) ^ crc_encoder_crc_dat[6]) ^ crc_encoder_crc_dat[7]) ^ crc_encoder_crc_dat[8]) ^ crc_encoder_crc_dat[9]) ^ crc_encoder_crc_dat[10]) ^ crc_encoder_crc_dat[11]) ^ crc_encoder_crc_dat[13]) ^ crc_encoder_crc_dat[14]) ^ crc_encoder_crc_dat[19]) ^ crc_encoder_crc_dat[22]) ^ crc_encoder_crc_dat[26]) ^ crc_encoder_crc_dat[28]) ^ crc_encoder_crc_cur[1]) ^ crc_encoder_crc_cur[2]) ^ crc_encoder_crc_cur[7]) ^ crc_encoder_crc_cur[10]) ^ crc_encoder_crc_cur[14]) ^ crc_encoder_crc_cur[16]);
	crc_encoder_crc_next[8] <= (((((((((((((((((((((((crc_encoder_crc_dat[1] ^ crc_encoder_crc_dat[3]) ^ crc_encoder_crc_dat[4]) ^ crc_encoder_crc_dat[5]) ^ crc_encoder_crc_dat[6]) ^ crc_encoder_crc_dat[7]) ^ crc_encoder_crc_dat[8]) ^ crc_encoder_crc_dat[9]) ^ crc_encoder_crc_dat[10]) ^ crc_encoder_crc_dat[11]) ^ crc_encoder_crc_dat[12]) ^ crc_encoder_crc_dat[14]) ^ crc_encoder_crc_dat[15]) ^ crc_encoder_crc_dat[20]) ^ crc_encoder_crc_dat[23]) ^ crc_encoder_crc_dat[27]) ^ crc_encoder_crc_dat[29]) ^ crc_encoder_crc_cur[0]) ^ crc_encoder_crc_cur[2]) ^ crc_encoder_crc_cur[3]) ^ crc_encoder_crc_cur[8]) ^ crc_encoder_crc_cur[11]) ^ crc_encoder_crc_cur[15]) ^ crc_encoder_crc_cur[17]);
	crc_encoder_crc_next[9] <= (((((((((((((((((crc_encoder_crc_dat[0] ^ crc_encoder_crc_dat[1]) ^ crc_encoder_crc_dat[2]) ^ crc_encoder_crc_dat[3]) ^ crc_encoder_crc_dat[5]) ^ crc_encoder_crc_dat[9]) ^ crc_encoder_crc_dat[10]) ^ crc_encoder_crc_dat[11]) ^ crc_encoder_crc_dat[16]) ^ crc_encoder_crc_dat[22]) ^ crc_encoder_crc_dat[23]) ^ crc_encoder_crc_dat[26]) ^ crc_encoder_crc_dat[31]) ^ crc_encoder_crc_cur[4]) ^ crc_encoder_crc_cur[10]) ^ crc_encoder_crc_cur[11]) ^ crc_encoder_crc_cur[14]) ^ crc_encoder_crc_cur[19]);
	crc_encoder_crc_next[10] <= ((((((((((((((((crc_encoder_crc_dat[1] ^ crc_encoder_crc_dat[2]) ^ crc_encoder_crc_dat[3]) ^ crc_encoder_crc_dat[4]) ^ crc_encoder_crc_dat[6]) ^ crc_encoder_crc_dat[10]) ^ crc_encoder_crc_dat[11]) ^ crc_encoder_crc_dat[12]) ^ crc_encoder_crc_dat[17]) ^ crc_encoder_crc_dat[23]) ^ crc_encoder_crc_dat[24]) ^ crc_encoder_crc_dat[27]) ^ crc_encoder_crc_cur[0]) ^ crc_encoder_crc_cur[5]) ^ crc_encoder_crc_cur[11]) ^ crc_encoder_crc_cur[12]) ^ crc_encoder_crc_cur[15]);
	crc_encoder_crc_next[11] <= ((((((((((((((((((((((((crc_encoder_crc_dat[0] ^ crc_encoder_crc_dat[1]) ^ crc_encoder_crc_dat[2]) ^ crc_encoder_crc_dat[5]) ^ crc_encoder_crc_dat[6]) ^ crc_encoder_crc_dat[8]) ^ crc_encoder_crc_dat[11]) ^ crc_encoder_crc_dat[15]) ^ crc_encoder_crc_dat[18]) ^ crc_encoder_crc_dat[21]) ^ crc_encoder_crc_dat[22]) ^ crc_encoder_crc_dat[23]) ^ crc_encoder_crc_dat[25]) ^ crc_encoder_crc_dat[26]) ^ crc_encoder_crc_dat[30]) ^ crc_encoder_crc_dat[31]) ^ crc_encoder_crc_cur[3]) ^ crc_encoder_crc_cur[6]) ^ crc_encoder_crc_cur[9]) ^ crc_encoder_crc_cur[10]) ^ crc_encoder_crc_cur[11]) ^ crc_encoder_crc_cur[13]) ^ crc_encoder_crc_cur[14]) ^ crc_encoder_crc_cur[18]) ^ crc_encoder_crc_cur[19]);
	crc_encoder_crc_next[12] <= ((((((((((((((((((((crc_encoder_crc_dat[0] ^ crc_encoder_crc_dat[2]) ^ crc_encoder_crc_dat[4]) ^ crc_encoder_crc_dat[8]) ^ crc_encoder_crc_dat[9]) ^ crc_encoder_crc_dat[13]) ^ crc_encoder_crc_dat[15]) ^ crc_encoder_crc_dat[16]) ^ crc_encoder_crc_dat[19]) ^ crc_encoder_crc_dat[21]) ^ crc_encoder_crc_dat[27]) ^ crc_encoder_crc_dat[28]) ^ crc_encoder_crc_dat[30]) ^ crc_encoder_crc_cur[1]) ^ crc_encoder_crc_cur[3]) ^ crc_encoder_crc_cur[4]) ^ crc_encoder_crc_cur[7]) ^ crc_encoder_crc_cur[9]) ^ crc_encoder_crc_cur[15]) ^ crc_encoder_crc_cur[16]) ^ crc_encoder_crc_cur[18]);
	crc_encoder_crc_next[13] <= ((((((((((((((((((((crc_encoder_crc_dat[1] ^ crc_encoder_crc_dat[3]) ^ crc_encoder_crc_dat[5]) ^ crc_encoder_crc_dat[9]) ^ crc_encoder_crc_dat[10]) ^ crc_encoder_crc_dat[14]) ^ crc_encoder_crc_dat[16]) ^ crc_encoder_crc_dat[17]) ^ crc_encoder_crc_dat[20]) ^ crc_encoder_crc_dat[22]) ^ crc_encoder_crc_dat[28]) ^ crc_encoder_crc_dat[29]) ^ crc_encoder_crc_dat[31]) ^ crc_encoder_crc_cur[2]) ^ crc_encoder_crc_cur[4]) ^ crc_encoder_crc_cur[5]) ^ crc_encoder_crc_cur[8]) ^ crc_encoder_crc_cur[10]) ^ crc_encoder_crc_cur[16]) ^ crc_encoder_crc_cur[17]) ^ crc_encoder_crc_cur[19]);
	crc_encoder_crc_next[14] <= ((((((((((((((((((crc_encoder_crc_dat[2] ^ crc_encoder_crc_dat[4]) ^ crc_encoder_crc_dat[6]) ^ crc_encoder_crc_dat[10]) ^ crc_encoder_crc_dat[11]) ^ crc_encoder_crc_dat[15]) ^ crc_encoder_crc_dat[17]) ^ crc_encoder_crc_dat[18]) ^ crc_encoder_crc_dat[21]) ^ crc_encoder_crc_dat[23]) ^ crc_encoder_crc_dat[29]) ^ crc_encoder_crc_dat[30]) ^ crc_encoder_crc_cur[3]) ^ crc_encoder_crc_cur[5]) ^ crc_encoder_crc_cur[6]) ^ crc_encoder_crc_cur[9]) ^ crc_encoder_crc_cur[11]) ^ crc_encoder_crc_cur[17]) ^ crc_encoder_crc_cur[18]);
	crc_encoder_crc_next[15] <= (((((((((((((((((((crc_encoder_crc_dat[3] ^ crc_encoder_crc_dat[5]) ^ crc_encoder_crc_dat[7]) ^ crc_encoder_crc_dat[11]) ^ crc_encoder_crc_dat[12]) ^ crc_encoder_crc_dat[16]) ^ crc_encoder_crc_dat[18]) ^ crc_encoder_crc_dat[19]) ^ crc_encoder_crc_dat[22]) ^ crc_encoder_crc_dat[24]) ^ crc_encoder_crc_dat[30]) ^ crc_encoder_crc_dat[31]) ^ crc_encoder_crc_cur[0]) ^ crc_encoder_crc_cur[4]) ^ crc_encoder_crc_cur[6]) ^ crc_encoder_crc_cur[7]) ^ crc_encoder_crc_cur[10]) ^ crc_encoder_crc_cur[12]) ^ crc_encoder_crc_cur[18]) ^ crc_encoder_crc_cur[19]);
	crc_encoder_crc_next[16] <= ((((((((((((((((((crc_encoder_crc_dat[4] ^ crc_encoder_crc_dat[6]) ^ crc_encoder_crc_dat[8]) ^ crc_encoder_crc_dat[12]) ^ crc_encoder_crc_dat[13]) ^ crc_encoder_crc_dat[17]) ^ crc_encoder_crc_dat[19]) ^ crc_encoder_crc_dat[20]) ^ crc_encoder_crc_dat[23]) ^ crc_encoder_crc_dat[25]) ^ crc_encoder_crc_dat[31]) ^ crc_encoder_crc_cur[0]) ^ crc_encoder_crc_cur[1]) ^ crc_encoder_crc_cur[5]) ^ crc_encoder_crc_cur[7]) ^ crc_encoder_crc_cur[8]) ^ crc_encoder_crc_cur[11]) ^ crc_encoder_crc_cur[13]) ^ crc_encoder_crc_cur[19]);
	crc_encoder_crc_next[17] <= ((((((((((((((((crc_encoder_crc_dat[5] ^ crc_encoder_crc_dat[7]) ^ crc_encoder_crc_dat[9]) ^ crc_encoder_crc_dat[13]) ^ crc_encoder_crc_dat[14]) ^ crc_encoder_crc_dat[18]) ^ crc_encoder_crc_dat[20]) ^ crc_encoder_crc_dat[21]) ^ crc_encoder_crc_dat[24]) ^ crc_encoder_crc_dat[26]) ^ crc_encoder_crc_cur[1]) ^ crc_encoder_crc_cur[2]) ^ crc_encoder_crc_cur[6]) ^ crc_encoder_crc_cur[8]) ^ crc_encoder_crc_cur[9]) ^ crc_encoder_crc_cur[12]) ^ crc_encoder_crc_cur[14]);
	crc_encoder_crc_next[18] <= (((((((((((((((((((((((((((((crc_encoder_crc_dat[0] ^ crc_encoder_crc_dat[1]) ^ crc_encoder_crc_dat[3]) ^ crc_encoder_crc_dat[4]) ^ crc_encoder_crc_dat[7]) ^ crc_encoder_crc_dat[10]) ^ crc_encoder_crc_dat[12]) ^ crc_encoder_crc_dat[13]) ^ crc_encoder_crc_dat[14]) ^ crc_encoder_crc_dat[19]) ^ crc_encoder_crc_dat[23]) ^ crc_encoder_crc_dat[24]) ^ crc_encoder_crc_dat[25]) ^ crc_encoder_crc_dat[26]) ^ crc_encoder_crc_dat[27]) ^ crc_encoder_crc_dat[28]) ^ crc_encoder_crc_dat[30]) ^ crc_encoder_crc_dat[31]) ^ crc_encoder_crc_cur[0]) ^ crc_encoder_crc_cur[1]) ^ crc_encoder_crc_cur[2]) ^ crc_encoder_crc_cur[7]) ^ crc_encoder_crc_cur[11]) ^ crc_encoder_crc_cur[12]) ^ crc_encoder_crc_cur[13]) ^ crc_encoder_crc_cur[14]) ^ crc_encoder_crc_cur[15]) ^ crc_encoder_crc_cur[16]) ^ crc_encoder_crc_cur[18]) ^ crc_encoder_crc_cur[19]);
	crc_encoder_crc_next[19] <= ((((((((((((((((((((((((((crc_encoder_crc_dat[0] ^ crc_encoder_crc_dat[2]) ^ crc_encoder_crc_dat[3]) ^ crc_encoder_crc_dat[5]) ^ crc_encoder_crc_dat[6]) ^ crc_encoder_crc_dat[7]) ^ crc_encoder_crc_dat[11]) ^ crc_encoder_crc_dat[12]) ^ crc_encoder_crc_dat[14]) ^ crc_encoder_crc_dat[20]) ^ crc_encoder_crc_dat[21]) ^ crc_encoder_crc_dat[22]) ^ crc_encoder_crc_dat[23]) ^ crc_encoder_crc_dat[25]) ^ crc_encoder_crc_dat[27]) ^ crc_encoder_crc_dat[29]) ^ crc_encoder_crc_dat[30]) ^ crc_encoder_crc_cur[0]) ^ crc_encoder_crc_cur[2]) ^ crc_encoder_crc_cur[8]) ^ crc_encoder_crc_cur[9]) ^ crc_encoder_crc_cur[10]) ^ crc_encoder_crc_cur[11]) ^ crc_encoder_crc_cur[13]) ^ crc_encoder_crc_cur[15]) ^ crc_encoder_crc_cur[17]) ^ crc_encoder_crc_cur[18]);
// synthesis translate_off
	dummy_d_8 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_9;
// synthesis translate_on
always @(*) begin
	stream_controller_ign <= 1'd0;
	tx_next_state <= 3'd0;
	stream_controller_fifo_re_clockdomainsrenamer0_t_next_value0 <= 1'd0;
	stream_controller_fifo_re_clockdomainsrenamer0_t_next_value_ce0 <= 1'd0;
	stream_controller_sop_clockdomainsrenamer0_t_next_value1 <= 1'd0;
	stream_controller_sop_clockdomainsrenamer0_t_next_value_ce1 <= 1'd0;
	stream_controller_idle_clockdomainsrenamer0_t_next_value2 <= 1'd0;
	stream_controller_idle_clockdomainsrenamer0_t_next_value_ce2 <= 1'd0;
	stream_controller_encoder_ready_clockdomainsrenamer0_next_value0 <= 1'd0;
	stream_controller_encoder_ready_clockdomainsrenamer0_next_value_ce0 <= 1'd0;
	stream_controller_intermediate_clockdomainsrenamer0_next_value1 <= 1'd0;
	stream_controller_intermediate_clockdomainsrenamer0_next_value_ce1 <= 1'd0;
	stream_controller_strobe_crc_clockdomainsrenamer0_next_value2 <= 1'd0;
	stream_controller_strobe_crc_clockdomainsrenamer0_next_value_ce2 <= 1'd0;
	stream_controller_aux_ign_clockdomainsrenamer0_cases_next_value0 <= 1'd0;
	stream_controller_aux_ign_clockdomainsrenamer0_cases_next_value_ce0 <= 1'd0;
	stream_controller_eop_clockdomainsrenamer0_cases_next_value1 <= 1'd0;
	stream_controller_eop_clockdomainsrenamer0_cases_next_value_ce1 <= 1'd0;
	stream_controller_reset_crc_clockdomainsrenamer0_cases_next_value2 <= 1'd0;
	stream_controller_reset_crc_clockdomainsrenamer0_cases_next_value_ce2 <= 1'd0;
	tx_next_state <= tx_state;
	case (tx_state)
		1'd1: begin
			stream_controller_encoder_ready_clockdomainsrenamer0_next_value0 <= 1'd1;
			stream_controller_encoder_ready_clockdomainsrenamer0_next_value_ce0 <= 1'd1;
			if (stream_controller_fifo_empty) begin
				tx_next_state <= 1'd1;
			end else begin
				if ((stream_controller_link_ready & (stream_controller_data_type == 1'd1))) begin
					tx_next_state <= 2'd2;
					stream_controller_fifo_re_clockdomainsrenamer0_t_next_value0 <= 1'd1;
					stream_controller_fifo_re_clockdomainsrenamer0_t_next_value_ce0 <= 1'd1;
					stream_controller_sop_clockdomainsrenamer0_t_next_value1 <= 1'd1;
					stream_controller_sop_clockdomainsrenamer0_t_next_value_ce1 <= 1'd1;
					stream_controller_idle_clockdomainsrenamer0_t_next_value2 <= 1'd0;
					stream_controller_idle_clockdomainsrenamer0_t_next_value_ce2 <= 1'd1;
				end
			end
		end
		2'd2: begin
			tx_next_state <= 2'd3;
			stream_controller_encoder_ready_clockdomainsrenamer0_next_value0 <= 1'd1;
			stream_controller_encoder_ready_clockdomainsrenamer0_next_value_ce0 <= 1'd1;
			stream_controller_intermediate_clockdomainsrenamer0_next_value1 <= 1'd1;
			stream_controller_intermediate_clockdomainsrenamer0_next_value_ce1 <= 1'd1;
			stream_controller_fifo_re_clockdomainsrenamer0_t_next_value0 <= 1'd1;
			stream_controller_fifo_re_clockdomainsrenamer0_t_next_value_ce0 <= 1'd1;
			stream_controller_sop_clockdomainsrenamer0_t_next_value1 <= 1'd0;
			stream_controller_sop_clockdomainsrenamer0_t_next_value_ce1 <= 1'd1;
			stream_controller_strobe_crc_clockdomainsrenamer0_next_value2 <= 1'd1;
			stream_controller_strobe_crc_clockdomainsrenamer0_next_value_ce2 <= 1'd1;
		end
		2'd3: begin
			if (stream_controller_fifo_empty) begin
				tx_next_state <= 1'd0;
			end else begin
				stream_controller_fifo_re_clockdomainsrenamer0_t_next_value0 <= 1'd1;
				stream_controller_fifo_re_clockdomainsrenamer0_t_next_value_ce0 <= 1'd1;
			end
			if ((~stream_controller_fifo_empty)) begin
				case (stream_controller_data_type)
					1'd0: begin
						stream_controller_encoder_ready_clockdomainsrenamer0_next_value0 <= 1'd1;
						stream_controller_encoder_ready_clockdomainsrenamer0_next_value_ce0 <= 1'd1;
						stream_controller_intermediate_clockdomainsrenamer0_next_value1 <= 1'd1;
						stream_controller_intermediate_clockdomainsrenamer0_next_value_ce1 <= 1'd1;
						stream_controller_strobe_crc_clockdomainsrenamer0_next_value2 <= 1'd1;
						stream_controller_strobe_crc_clockdomainsrenamer0_next_value_ce2 <= 1'd1;
						stream_controller_fifo_re_clockdomainsrenamer0_t_next_value0 <= 1'd1;
						stream_controller_fifo_re_clockdomainsrenamer0_t_next_value_ce0 <= 1'd1;
						stream_controller_aux_ign_clockdomainsrenamer0_cases_next_value0 <= 1'd0;
						stream_controller_aux_ign_clockdomainsrenamer0_cases_next_value_ce0 <= 1'd1;
					end
					1'd1: begin
						tx_next_state <= 2'd2;
						stream_controller_fifo_re_clockdomainsrenamer0_t_next_value0 <= 1'd1;
						stream_controller_fifo_re_clockdomainsrenamer0_t_next_value_ce0 <= 1'd1;
						stream_controller_sop_clockdomainsrenamer0_t_next_value1 <= 1'd1;
						stream_controller_sop_clockdomainsrenamer0_t_next_value_ce1 <= 1'd1;
					end
					2'd2: begin
						tx_next_state <= 3'd4;
						stream_controller_eop_clockdomainsrenamer0_cases_next_value1 <= 1'd1;
						stream_controller_eop_clockdomainsrenamer0_cases_next_value_ce1 <= 1'd1;
						stream_controller_strobe_crc_clockdomainsrenamer0_next_value2 <= 1'd0;
						stream_controller_strobe_crc_clockdomainsrenamer0_next_value_ce2 <= 1'd1;
						stream_controller_reset_crc_clockdomainsrenamer0_cases_next_value2 <= 1'd1;
						stream_controller_reset_crc_clockdomainsrenamer0_cases_next_value_ce2 <= 1'd1;
						stream_controller_intermediate_clockdomainsrenamer0_next_value1 <= 1'd0;
						stream_controller_intermediate_clockdomainsrenamer0_next_value_ce1 <= 1'd1;
						stream_controller_aux_ign_clockdomainsrenamer0_cases_next_value0 <= 1'd0;
						stream_controller_aux_ign_clockdomainsrenamer0_cases_next_value_ce0 <= 1'd1;
					end
					2'd3: begin
						tx_next_state <= 2'd3;
						stream_controller_ign <= 1'd1;
					end
				endcase
			end
		end
		3'd4: begin
			stream_controller_eop_clockdomainsrenamer0_cases_next_value1 <= 1'd0;
			stream_controller_eop_clockdomainsrenamer0_cases_next_value_ce1 <= 1'd1;
			stream_controller_reset_crc_clockdomainsrenamer0_cases_next_value2 <= 1'd0;
			stream_controller_reset_crc_clockdomainsrenamer0_cases_next_value_ce2 <= 1'd1;
			if (((~stream_controller_fifo_empty) & (stream_controller_data_type == 1'd1))) begin
				tx_next_state <= 2'd2;
				stream_controller_fifo_re_clockdomainsrenamer0_t_next_value0 <= 1'd1;
				stream_controller_fifo_re_clockdomainsrenamer0_t_next_value_ce0 <= 1'd1;
				stream_controller_sop_clockdomainsrenamer0_t_next_value1 <= 1'd1;
				stream_controller_sop_clockdomainsrenamer0_t_next_value_ce1 <= 1'd1;
			end else begin
				stream_controller_idle_clockdomainsrenamer0_t_next_value2 <= 1'd1;
				stream_controller_idle_clockdomainsrenamer0_t_next_value_ce2 <= 1'd1;
				stream_controller_fifo_re_clockdomainsrenamer0_t_next_value0 <= 1'd0;
				stream_controller_fifo_re_clockdomainsrenamer0_t_next_value_ce0 <= 1'd1;
				tx_next_state <= 1'd1;
			end
		end
		default: begin
			if (stream_controller_tx_init_done) begin
				if (stream_controller_link_ready) begin
					if (((stream_controller_link_ready & (~stream_controller_fifo_empty)) & (stream_controller_data_type == 1'd1))) begin
						tx_next_state <= 2'd2;
						stream_controller_fifo_re_clockdomainsrenamer0_t_next_value0 <= 1'd1;
						stream_controller_fifo_re_clockdomainsrenamer0_t_next_value_ce0 <= 1'd1;
						stream_controller_sop_clockdomainsrenamer0_t_next_value1 <= 1'd1;
						stream_controller_sop_clockdomainsrenamer0_t_next_value_ce1 <= 1'd1;
						stream_controller_idle_clockdomainsrenamer0_t_next_value2 <= 1'd0;
						stream_controller_idle_clockdomainsrenamer0_t_next_value_ce2 <= 1'd1;
					end else begin
						tx_next_state <= 1'd1;
						stream_controller_idle_clockdomainsrenamer0_t_next_value2 <= 1'd1;
						stream_controller_idle_clockdomainsrenamer0_t_next_value_ce2 <= 1'd1;
					end
				end else begin
					tx_next_state <= 1'd1;
					stream_controller_idle_clockdomainsrenamer0_t_next_value2 <= 1'd1;
					stream_controller_idle_clockdomainsrenamer0_t_next_value_ce2 <= 1'd1;
				end
			end else begin
				tx_next_state <= 1'd0;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_9 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_10;
// synthesis translate_on
always @(*) begin
	fsm_next_state <= 3'd0;
	prbs_en_clockdomainsrenamer1_next_value0 <= 1'd0;
	prbs_en_clockdomainsrenamer1_next_value_ce0 <= 1'd0;
	data_type_clockdomainsrenamer1_next_value1 <= 2'd0;
	data_type_clockdomainsrenamer1_next_value_ce1 <= 1'd0;
	write_fifo_clockdomainsrenamer1_next_value2 <= 1'd0;
	write_fifo_clockdomainsrenamer1_next_value_ce2 <= 1'd0;
	index_clockdomainsrenamer1_next_value3 <= 8'd0;
	index_clockdomainsrenamer1_next_value_ce3 <= 1'd0;
	fsm_next_state <= fsm_state;
	case (fsm_state)
		1'd1: begin
			data_type_clockdomainsrenamer1_next_value1 <= 1'd0;
			data_type_clockdomainsrenamer1_next_value_ce1 <= 1'd1;
			index_clockdomainsrenamer1_next_value3 <= (index + 1'd1);
			index_clockdomainsrenamer1_next_value_ce3 <= 1'd1;
			fsm_next_state <= 2'd2;
		end
		2'd2: begin
			if ((index < 8'd10)) begin
				data_type_clockdomainsrenamer1_next_value1 <= 1'd0;
				data_type_clockdomainsrenamer1_next_value_ce1 <= 1'd1;
				index_clockdomainsrenamer1_next_value3 <= (index + 1'd1);
				index_clockdomainsrenamer1_next_value_ce3 <= 1'd1;
				fsm_next_state <= 2'd2;
			end else begin
				fsm_next_state <= 2'd3;
				data_type_clockdomainsrenamer1_next_value1 <= 2'd2;
				data_type_clockdomainsrenamer1_next_value_ce1 <= 1'd1;
				index_clockdomainsrenamer1_next_value3 <= 1'd0;
				index_clockdomainsrenamer1_next_value_ce3 <= 1'd1;
			end
		end
		2'd3: begin
			prbs_en_clockdomainsrenamer1_next_value0 <= 1'd0;
			prbs_en_clockdomainsrenamer1_next_value_ce0 <= 1'd1;
			write_fifo_clockdomainsrenamer1_next_value2 <= 1'd0;
			write_fifo_clockdomainsrenamer1_next_value_ce2 <= 1'd1;
			fsm_next_state <= 3'd4;
		end
		3'd4: begin
			if ((~we)) begin
				fsm_next_state <= 1'd0;
			end
		end
		default: begin
			if (we) begin
				prbs_en_clockdomainsrenamer1_next_value0 <= 1'd1;
				prbs_en_clockdomainsrenamer1_next_value_ce0 <= 1'd1;
				data_type_clockdomainsrenamer1_next_value1 <= 1'd1;
				data_type_clockdomainsrenamer1_next_value_ce1 <= 1'd1;
				write_fifo_clockdomainsrenamer1_next_value2 <= 1'd1;
				write_fifo_clockdomainsrenamer1_next_value_ce2 <= 1'd1;
				fsm_next_state <= 1'd1;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_10 <= dummy_s;
// synthesis translate_on
end
assign tx_init_done1 = multiregimpl0_regs1;
assign fifo_empty1 = multiregimpl1_regs1;
assign produce_rdomain = multiregimpl2_regs1;
assign consume_wdomain = multiregimpl3_regs1;

always @(posedge tx_clk_1) begin
	graycounter1_q_binary <= graycounter1_q_next_binary;
	graycounter1_q <= graycounter1_q_next;
	if (crc_encoder_i_data_strobe) begin
		crc_encoder_crc_cur <= crc_encoder_crc_next;
	end
	if (crc_encoder_reset) begin
		crc_encoder_crc_cur <= 20'd1048575;
	end
	tx_state <= tx_next_state;
	if (stream_controller_fifo_re_clockdomainsrenamer0_t_next_value_ce0) begin
		stream_controller_fifo_re <= stream_controller_fifo_re_clockdomainsrenamer0_t_next_value0;
	end
	if (stream_controller_sop_clockdomainsrenamer0_t_next_value_ce1) begin
		stream_controller_sop <= stream_controller_sop_clockdomainsrenamer0_t_next_value1;
	end
	if (stream_controller_idle_clockdomainsrenamer0_t_next_value_ce2) begin
		stream_controller_idle <= stream_controller_idle_clockdomainsrenamer0_t_next_value2;
	end
	if (stream_controller_encoder_ready_clockdomainsrenamer0_next_value_ce0) begin
		stream_controller_encoder_ready <= stream_controller_encoder_ready_clockdomainsrenamer0_next_value0;
	end
	if (stream_controller_intermediate_clockdomainsrenamer0_next_value_ce1) begin
		stream_controller_intermediate <= stream_controller_intermediate_clockdomainsrenamer0_next_value1;
	end
	if (stream_controller_strobe_crc_clockdomainsrenamer0_next_value_ce2) begin
		stream_controller_strobe_crc <= stream_controller_strobe_crc_clockdomainsrenamer0_next_value2;
	end
	if (stream_controller_aux_ign_clockdomainsrenamer0_cases_next_value_ce0) begin
		stream_controller_aux_ign <= stream_controller_aux_ign_clockdomainsrenamer0_cases_next_value0;
	end
	if (stream_controller_eop_clockdomainsrenamer0_cases_next_value_ce1) begin
		stream_controller_eop <= stream_controller_eop_clockdomainsrenamer0_cases_next_value1;
	end
	if (stream_controller_reset_crc_clockdomainsrenamer0_cases_next_value_ce2) begin
		stream_controller_reset_crc <= stream_controller_reset_crc_clockdomainsrenamer0_cases_next_value2;
	end
	if (stream_controller_reset) begin
		stream_controller_sop <= 1'd0;
		stream_controller_eop <= 1'd0;
		stream_controller_idle <= 1'd0;
		stream_controller_intermediate <= 1'd0;
		stream_controller_encoder_ready <= 1'd0;
		stream_controller_fifo_re <= 1'd0;
		stream_controller_strobe_crc <= 1'd0;
		stream_controller_reset_crc <= 1'd0;
		stream_controller_aux_ign <= 1'd0;
		tx_state <= 3'd0;
	end
	if (tx_rst) begin
		crc_encoder_crc_cur <= 20'd1048575;
		stream_controller_sop <= 1'd0;
		stream_controller_eop <= 1'd0;
		stream_controller_idle <= 1'd0;
		stream_controller_intermediate <= 1'd0;
		stream_controller_encoder_ready <= 1'd0;
		stream_controller_fifo_re <= 1'd0;
		stream_controller_strobe_crc <= 1'd0;
		stream_controller_reset_crc <= 1'd0;
		stream_controller_aux_ign <= 1'd0;
		graycounter1_q <= 11'd0;
		graycounter1_q_binary <= 11'd0;
		tx_state <= 3'd0;
	end
	multiregimpl0_regs0 <= tx_init_done0;
	multiregimpl0_regs1 <= multiregimpl0_regs0;
	multiregimpl1_regs0 <= fifo_empty0;
	multiregimpl1_regs1 <= multiregimpl1_regs0;
	multiregimpl2_regs0 <= graycounter0_q;
	multiregimpl2_regs1 <= multiregimpl2_regs0;
end

always @(posedge write_clk_1) begin
	graycounter0_q_binary <= graycounter0_q_next_binary;
	graycounter0_q <= graycounter0_q_next;
	if (enable) begin
		state <= {(((((state[4] ^ state[5]) ^ (state[5] ^ state[6])) ^ ((state[5] ^ state[6]) ^ state[0])) ^ (((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1]))) ^ ((((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1])) ^ ((state[0] ^ state[1]) ^ (state[1] ^ state[2])))), (((((state[3] ^ state[4]) ^ (state[4] ^ state[5])) ^ ((state[4] ^ state[5]) ^ (state[5] ^ state[6]))) ^ (((state[4] ^ state[5]) ^ (state[5] ^ state[6])) ^ ((state[5] ^ state[6]) ^ state[0]))) ^ ((((state[4] ^ state[5]) ^ (state[5] ^ state[6])) ^ ((state[5] ^ state[6]) ^ state[0])) ^ (((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1])))), (((((state[2] ^ state[3]) ^ (state[3] ^ state[4])) ^ ((state[3] ^ state[4]) ^ (state[4] ^ state[5]))) ^ (((state[3] ^ state[4]) ^ (state[4] ^ state[5])) ^ ((state[4] ^ state[5]) ^ (state[5] ^ state[6])))) ^ ((((state[3] ^ state[4]) ^ (state[4] ^ state[5])) ^ ((state[4] ^ state[5]) ^ (state[5] ^ state[6]))) ^ (((state[4] ^ state[5]) ^ (state[5] ^ state[6])) ^ ((state[5] ^ state[6]) ^ state[0])))), (((((state[1] ^ state[2]) ^ (state[2] ^ state[3])) ^ ((state[2] ^ state[3]) ^ (state[3] ^ state[4]))) ^ (((state[2] ^ state[3]) ^ (state[3] ^ state[4])) ^ ((state[3] ^ state[4]) ^ (state[4] ^ state[5])))) ^ ((((state[2] ^ state[3]) ^ (state[3] ^ state[4])) ^ ((state[3] ^ state[4]) ^ (state[4] ^ state[5]))) ^ (((state[3] ^ state[4]) ^ (state[4] ^ state[5])) ^ ((state[4] ^ state[5]) ^ (state[5] ^ state[6]))))), (((((state[0] ^ state[1]) ^ (state[1] ^ state[2])) ^ ((state[1] ^ state[2]) ^ (state[2] ^ state[3]))) ^ (((state[1] ^ state[2]) ^ (state[2] ^ state[3])) ^ ((state[2] ^ state[3]) ^ (state[3] ^ state[4])))) ^ ((((state[1] ^ state[2]) ^ (state[2] ^ state[3])) ^ ((state[2] ^ state[3]) ^ (state[3] ^ state[4]))) ^ (((state[2] ^ state[3]) ^ (state[3] ^ state[4])) ^ ((state[3] ^ state[4]) ^ (state[4] ^ state[5]))))), ((((((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1])) ^ ((state[0] ^ state[1]) ^ (state[1] ^ state[2]))) ^ (((state[0] ^ state[1]) ^ (state[1] ^ state[2])) ^ ((state[1] ^ state[2]) ^ (state[2] ^ state[3])))) ^ ((((state[0] ^ state[1]) ^ (state[1] ^ state[2])) ^ ((state[1] ^ state[2]) ^ (state[2] ^ state[3]))) ^ (((state[1] ^ state[2]) ^ (state[2] ^ state[3])) ^ ((state[2] ^ state[3]) ^ (state[3] ^ state[4]))))), ((((((state[4] ^ state[5]) ^ (state[5] ^ state[6])) ^ ((state[5] ^ state[6]) ^ state[0])) ^ (((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1]))) ^ ((((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1])) ^ ((state[0] ^ state[1]) ^ (state[1] ^ state[2])))) ^ (((((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1])) ^ ((state[0] ^ state[1]) ^ (state[1] ^ state[2]))) ^ (((state[0] ^ state[1]) ^ (state[1] ^ state[2])) ^ ((state[1] ^ state[2]) ^ (state[2] ^ state[3])))))};
		o <= {(state[5] ^ state[6]), (state[4] ^ state[5]), (state[3] ^ state[4]), (state[2] ^ state[3]), (state[1] ^ state[2]), (state[0] ^ state[1]), ((state[5] ^ state[6]) ^ state[0]), ((state[4] ^ state[5]) ^ (state[5] ^ state[6])), ((state[3] ^ state[4]) ^ (state[4] ^ state[5])), ((state[2] ^ state[3]) ^ (state[3] ^ state[4])), ((state[1] ^ state[2]) ^ (state[2] ^ state[3])), ((state[0] ^ state[1]) ^ (state[1] ^ state[2])), (((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1])), (((state[4] ^ state[5]) ^ (state[5] ^ state[6])) ^ ((state[5] ^ state[6]) ^ state[0])), (((state[3] ^ state[4]) ^ (state[4] ^ state[5])) ^ ((state[4] ^ state[5]) ^ (state[5] ^ state[6]))), (((state[2] ^ state[3]) ^ (state[3] ^ state[4])) ^ ((state[3] ^ state[4]) ^ (state[4] ^ state[5]))), (((state[1] ^ state[2]) ^ (state[2] ^ state[3])) ^ ((state[2] ^ state[3]) ^ (state[3] ^ state[4]))), (((state[0] ^ state[1]) ^ (state[1] ^ state[2])) ^ ((state[1] ^ state[2]) ^ (state[2] ^ state[3]))), ((((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1])) ^ ((state[0] ^ state[1]) ^ (state[1] ^ state[2]))), ((((state[4] ^ state[5]) ^ (state[5] ^ state[6])) ^ ((state[5] ^ state[6]) ^ state[0])) ^ (((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1]))), ((((state[3] ^ state[4]) ^ (state[4] ^ state[5])) ^ ((state[4] ^ state[5]) ^ (state[5] ^ state[6]))) ^ (((state[4] ^ state[5]) ^ (state[5] ^ state[6])) ^ ((state[5] ^ state[6]) ^ state[0]))), ((((state[2] ^ state[3]) ^ (state[3] ^ state[4])) ^ ((state[3] ^ state[4]) ^ (state[4] ^ state[5]))) ^ (((state[3] ^ state[4]) ^ (state[4] ^ state[5])) ^ ((state[4] ^ state[5]) ^ (state[5] ^ state[6])))), ((((state[1] ^ state[2]) ^ (state[2] ^ state[3])) ^ ((state[2] ^ state[3]) ^ (state[3] ^ state[4]))) ^ (((state[2] ^ state[3]) ^ (state[3] ^ state[4])) ^ ((state[3] ^ state[4]) ^ (state[4] ^ state[5])))), ((((state[0] ^ state[1]) ^ (state[1] ^ state[2])) ^ ((state[1] ^ state[2]) ^ (state[2] ^ state[3]))) ^ (((state[1] ^ state[2]) ^ (state[2] ^ state[3])) ^ ((state[2] ^ state[3]) ^ (state[3] ^ state[4])))), (((((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1])) ^ ((state[0] ^ state[1]) ^ (state[1] ^ state[2]))) ^ (((state[0] ^ state[1]) ^ (state[1] ^ state[2])) ^ ((state[1] ^ state[2]) ^ (state[2] ^ state[3])))), (((((state[4] ^ state[5]) ^ (state[5] ^ state[6])) ^ ((state[5] ^ state[6]) ^ state[0])) ^ (((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1]))) ^ ((((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1])) ^ ((state[0] ^ state[1]) ^ (state[1] ^ state[2])))), (((((state[3] ^ state[4]) ^ (state[4] ^ state[5])) ^ ((state[4] ^ state[5]) ^ (state[5] ^ state[6]))) ^ (((state[4] ^ state[5]) ^ (state[5] ^ state[6])) ^ ((state[5] ^ state[6]) ^ state[0]))) ^ ((((state[4] ^ state[5]) ^ (state[5] ^ state[6])) ^ ((state[5] ^ state[6]) ^ state[0])) ^ (((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1])))), (((((state[2] ^ state[3]) ^ (state[3] ^ state[4])) ^ ((state[3] ^ state[4]) ^ (state[4] ^ state[5]))) ^ (((state[3] ^ state[4]) ^ (state[4] ^ state[5])) ^ ((state[4] ^ state[5]) ^ (state[5] ^ state[6])))) ^ ((((state[3] ^ state[4]) ^ (state[4] ^ state[5])) ^ ((state[4] ^ state[5]) ^ (state[5] ^ state[6]))) ^ (((state[4] ^ state[5]) ^ (state[5] ^ state[6])) ^ ((state[5] ^ state[6]) ^ state[0])))), (((((state[1] ^ state[2]) ^ (state[2] ^ state[3])) ^ ((state[2] ^ state[3]) ^ (state[3] ^ state[4]))) ^ (((state[2] ^ state[3]) ^ (state[3] ^ state[4])) ^ ((state[3] ^ state[4]) ^ (state[4] ^ state[5])))) ^ ((((state[2] ^ state[3]) ^ (state[3] ^ state[4])) ^ ((state[3] ^ state[4]) ^ (state[4] ^ state[5]))) ^ (((state[3] ^ state[4]) ^ (state[4] ^ state[5])) ^ ((state[4] ^ state[5]) ^ (state[5] ^ state[6]))))), (((((state[0] ^ state[1]) ^ (state[1] ^ state[2])) ^ ((state[1] ^ state[2]) ^ (state[2] ^ state[3]))) ^ (((state[1] ^ state[2]) ^ (state[2] ^ state[3])) ^ ((state[2] ^ state[3]) ^ (state[3] ^ state[4])))) ^ ((((state[1] ^ state[2]) ^ (state[2] ^ state[3])) ^ ((state[2] ^ state[3]) ^ (state[3] ^ state[4]))) ^ (((state[2] ^ state[3]) ^ (state[3] ^ state[4])) ^ ((state[3] ^ state[4]) ^ (state[4] ^ state[5]))))), ((((((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1])) ^ ((state[0] ^ state[1]) ^ (state[1] ^ state[2]))) ^ (((state[0] ^ state[1]) ^ (state[1] ^ state[2])) ^ ((state[1] ^ state[2]) ^ (state[2] ^ state[3])))) ^ ((((state[0] ^ state[1]) ^ (state[1] ^ state[2])) ^ ((state[1] ^ state[2]) ^ (state[2] ^ state[3]))) ^ (((state[1] ^ state[2]) ^ (state[2] ^ state[3])) ^ ((state[2] ^ state[3]) ^ (state[3] ^ state[4]))))), ((((((state[4] ^ state[5]) ^ (state[5] ^ state[6])) ^ ((state[5] ^ state[6]) ^ state[0])) ^ (((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1]))) ^ ((((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1])) ^ ((state[0] ^ state[1]) ^ (state[1] ^ state[2])))) ^ (((((state[5] ^ state[6]) ^ state[0]) ^ (state[0] ^ state[1])) ^ ((state[0] ^ state[1]) ^ (state[1] ^ state[2]))) ^ (((state[0] ^ state[1]) ^ (state[1] ^ state[2])) ^ ((state[1] ^ state[2]) ^ (state[2] ^ state[3])))))};
	end
	fsm_state <= fsm_next_state;
	if (prbs_en_clockdomainsrenamer1_next_value_ce0) begin
		prbs_en <= prbs_en_clockdomainsrenamer1_next_value0;
	end
	if (data_type_clockdomainsrenamer1_next_value_ce1) begin
		data_type <= data_type_clockdomainsrenamer1_next_value1;
	end
	if (write_fifo_clockdomainsrenamer1_next_value_ce2) begin
		write_fifo <= write_fifo_clockdomainsrenamer1_next_value2;
	end
	if (index_clockdomainsrenamer1_next_value_ce3) begin
		index <= index_clockdomainsrenamer1_next_value3;
	end
	if (write_rst) begin
		graycounter0_q <= 11'd0;
		graycounter0_q_binary <= 11'd0;
		o <= 32'd0;
		state <= 7'd1;
		prbs_en <= 1'd0;
		data_type <= 2'd0;
		index <= 8'd0;
		write_fifo <= 1'd0;
		fsm_state <= 3'd0;
	end
	multiregimpl3_regs0 <= graycounter1_q;
	multiregimpl3_regs1 <= multiregimpl3_regs0;
end

reg [33:0] storage[0:1023];
reg [9:0] memadr;
reg [9:0] memadr_1;
always @(posedge write_clk_1) begin
	if (wrport_we)
		storage[wrport_adr] <= wrport_dat_w;
	memadr <= wrport_adr;
end

always @(posedge tx_clk_1) begin
	memadr_1 <= rdport_adr;
end

assign wrport_dat_r = storage[memadr];
assign rdport_dat_r = storage[memadr_1];
endmodule
