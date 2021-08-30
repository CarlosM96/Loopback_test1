`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2021 11:15:36 AM
// Design Name: 
// Module Name: top_tb
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


module top_tb();
reg  Q0_CLK0_GTREFCLK_PAD_N_IN;
reg  Q0_CLK0_GTREFCLK_PAD_P_IN;
reg  DRP_CLK_IN_P;
reg  DRP_CLK_IN_N;
reg  RXN_IN;
reg  RXP_IN;
reg  GBL_RST;
reg  EN_DATA;
reg  EN_SERIAL;
wire TXN_OUT;
wire TXP_OUT;
wire  TX_RST_DONE;
wire  RX_RST_DONE;
wire  COMMA_DET;
wire  ALIGMENT;
wire SERIAL_DATA;

top top(
    .Q0_CLK0_GTREFCLK_PAD_N_IN(Q0_CLK0_GTREFCLK_PAD_N_IN),
    .Q0_CLK0_GTREFCLK_PAD_P_IN(Q0_CLK0_GTREFCLK_PAD_P_IN),
    .DRP_CLK_IN_P(DRP_CLK_IN_P),
    .DRP_CLK_IN_N(DRP_CLK_IN_N),
    .RXN_IN(TXN_OUT),
    .RXP_IN(TXP_OUT),
    .GBL_RST(GBL_RST),
    //.EN_DATA(EN_DATA),
    //.EN_SERIAL(EN_SERIAL),
    .TXN_OUT(TXN_OUT),
    .TXP_OUT(TXP_OUT),
    .TX_RST_DONE(TX_RST_DONE),
    .RX_RST_DONE(RX_RST_DONE),
    .COMMA_DET(COMMA_DET),
    .ALIGMENT(ALIGMENT),
    .SERIAL_DATA(SERIAL_DATA)  
    );
    
    
initial begin 
		Q0_CLK0_GTREFCLK_PAD_P_IN = 1'b1;
	end

	always begin 
		Q0_CLK0_GTREFCLK_PAD_P_IN = !Q0_CLK0_GTREFCLK_PAD_P_IN; #2.083;
		assign Q0_CLK0_GTREFCLK_PAD_N_IN = !Q0_CLK0_GTREFCLK_PAD_P_IN;
	end
	
	initial begin 
		DRP_CLK_IN_P = 1'b1;
	end

	always begin 
		DRP_CLK_IN_P = !DRP_CLK_IN_P; #(5);
		assign DRP_CLK_IN_N = !DRP_CLK_IN_P;
	end
	
	initial begin 
	GBL_RST = 1; #90
	GBL_RST = 0;
	
//	wait(TX_RST_DONE && RX_RST_DONE)
//	    #1000;
//		EN_DATA = 1; #90;
//	    EN_DATA = 0;
//	    EN_SERIAL = 0;  #1200;
//		EN_SERIAL = 1; 
	end	
	   
endmodule
