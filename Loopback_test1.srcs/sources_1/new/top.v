`timescale 1ns / 1ps
`define DLY #1
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2021 10:29:11 AM
// Design Name: 
// Module Name: top
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


module top(
    input wire  Q0_CLK0_GTREFCLK_PAD_N_IN,
    input wire  Q0_CLK0_GTREFCLK_PAD_P_IN,
    input wire  DRP_CLK_IN_P,
    input wire  DRP_CLK_IN_N,
    input wire  RXN_IN,
    input wire  RXP_IN,
    input wire  GBL_RST,
    //input wire  EN_DATA,
   // input wire  EN_SERIAL,
    output wire TXN_OUT,
    output wire TXP_OUT,
    output wire  TX_RST_DONE,
    output wire  RX_RST_DONE,
    output wire  COMMA_DET,
    output wire  ALIGNMENT,
    output wire SERIAL_DATA
    
    );
    
 wire [31:0] txdata;
 wire [31:0] rxdata;
 wire ktx;
 wire ka;
 wire [3:0] krx;
 wire txusrclk;
 wire txdone;
 wire rxdone;
 wire rxusrclk;
 reg aux1, aux2, aux3;
    
  GTP_TX_RX   GTP_TX_RX (
  .Q0_CLK0_GTREFCLK_PAD_N_IN(Q0_CLK0_GTREFCLK_PAD_N_IN),
  .Q0_CLK0_GTREFCLK_PAD_P_IN(Q0_CLK0_GTREFCLK_PAD_P_IN),
  .DRP_CLK_IN_P(DRP_CLK_IN_P),
  .DRP_CLK_IN_N(DRP_CLK_IN_N),
  .GBL_RST(GBL_RST),
  .TX_DATA(txdata),
  .RX_DATA(rxdata),
  .RXN_IN(RXN_IN),
  .RXP_IN(RXP_IN),
  .TXN_OUT(TXN_OUT),
  .TXP_OUT(TXP_OUT),
  .K_TX(ktx),
  .K_RX(krx),
  .TX_USR_CLK(txusrclk),
  .RX_USR_CLK(rxusrclk),
  .TX_RST_DONE(txdone),
  .RX_RST_DONE(rxdone),
  .COMMA_DET(COMMA_DET),
  .ALIGMENT(ALIGNMENT)
   
  );
 
  top_logic tx(
    .link_ready(txdone),
	.we(aux3),
//	.we(EN_DATA),
//	.led0,
//	.led1,
//	.led2,
//	.led3,
	.reset(GBL_RST),
	.tx_clk(txusrclk),
	.write_clk(txusrclk),
	.txinit_done(txdone),
	.tx_data(txdata),
	.tx_k(ktx)
 
 );
 
 
 rx rx(
    .data_in(rxdata),
    .rx_init_done(rxdone),
	.pll_lock(1'b0),
//	.trans_en(EN_SERIAL),
    .trans_en(1'b1),
	.tx_serial(SERIAL_DATA),
	.k_in(krx),
	.sys_clk(rxusrclk),
	.sys_rst(GBL_RST)
 );
 


 
always @(posedge txusrclk)
    begin
        if (!rxdone)
        begin
            aux1   <=   `DLY 1'b0;
            aux2   <=   `DLY 1'b0;
           aux3    <=   `DLY 1'b0;
        end
        else
        begin
            aux1    <=   `DLY rxdone;
            aux2   <=   `DLY aux1;
            aux3   <=   `DLY aux2;
        end
    end


assign TX_RST_DONE = txdone;
assign RX_RST_DONE = rxdone;

endmodule


