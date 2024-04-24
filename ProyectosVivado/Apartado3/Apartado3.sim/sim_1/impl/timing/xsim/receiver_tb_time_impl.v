// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Apr 24 16:00:42 2024
// Host        : DESKTOP-RFN3QFD running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/34638/Desktop/Uni/Tercero/SegundoCuatri/Modelado_L/Laboratorio/Modelado2024/ProyectosVivado/Apartado3/Apartado3.sim/sim_1/impl/timing/xsim/receiver_tb_time_impl.v
// Design      : receiver
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "b9546ab" *) 
(* NotValidForBitStream *)
module receiver
   (clk,
    rst,
    rx,
    dato_rx,
    error_recep,
    DATO_RX_OK);
  input clk;
  input rst;
  input rx;
  output [7:0]dato_rx;
  output error_recep;
  output DATO_RX_OK;

  wire [3:0]CntB_Cnt;
  wire CntB_Cnt1;
  wire [3:0]CntB_Cnt__0;
  wire CntB_FC_i_1_n_0;
  wire CntB_FC_reg_n_0;
  wire [3:0]CntM_Cnt;
  wire CntM_Cnt1;
  wire \CntM_Cnt[3]_i_1_n_0 ;
  wire [3:0]CntM_Cnt__0;
  wire CntM_FC_i_1_n_0;
  wire CntM_FC_reg_n_0;
  wire DATO_RX_OK;
  wire DATO_RX_OK_OBUF;
  wire DATO_RX_OK_i_1_n_0;
  wire DATO_RX_OK_i_2_n_0;
  wire \FSM_sequential_STD_Act[0]_i_1_n_0 ;
  wire \FSM_sequential_STD_Act[1]_i_1_n_0 ;
  wire \FSM_sequential_STD_Act[2]_i_1_n_0 ;
  wire \FSM_sequential_STD_Act[2]_i_3_n_0 ;
  wire \FSM_sequential_STD_Act[2]_i_4_n_0 ;
  wire \PR_Cnt[0]_i_1_n_0 ;
  wire \PR_Cnt[1]_i_1_n_0 ;
  wire \PR_Cnt[2]_i_1_n_0 ;
  wire \PR_Cnt[3]_i_1_n_0 ;
  wire \PR_Cnt[4]_i_1_n_0 ;
  wire \PR_Cnt[4]_i_2_n_0 ;
  wire \PR_Cnt_reg_n_0_[0] ;
  wire \PR_Cnt_reg_n_0_[1] ;
  wire \PR_Cnt_reg_n_0_[2] ;
  wire \PR_Cnt_reg_n_0_[3] ;
  wire \PR_Cnt_reg_n_0_[4] ;
  wire PR_FC_i_1_n_0;
  wire PR_FC_reg_n_0;
  wire [10:0]RDB_Out;
  wire \RDB_Out[10]_i_10_n_0 ;
  wire \RDB_Out[10]_i_11_n_0 ;
  wire \RDB_Out[10]_i_12_n_0 ;
  wire \RDB_Out[10]_i_13_n_0 ;
  wire \RDB_Out[10]_i_14_n_0 ;
  wire \RDB_Out[10]_i_15_n_0 ;
  wire \RDB_Out[10]_i_16_n_0 ;
  wire \RDB_Out[10]_i_1_n_0 ;
  wire \RDB_Out[10]_i_3_n_0 ;
  wire \RDB_Out[10]_i_4_n_0 ;
  wire \RDB_Out[10]_i_5_n_0 ;
  wire \RDB_Out[10]_i_6_n_0 ;
  wire \RDB_Out[10]_i_7_n_0 ;
  wire \RDB_Out[10]_i_8_n_0 ;
  wire \RDB_Out[10]_i_9_n_0 ;
  wire \RDB_Out_reg_n_0_[0] ;
  wire \RDB_Out_reg_n_0_[10] ;
  wire \RDB_Out_reg_n_0_[1] ;
  wire \RDB_Out_reg_n_0_[8] ;
  wire [14:0]RDM_Out;
  (* RTL_KEEP = "yes" *) wire [2:0]STD_Act;
  wire Val_Out;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]dato_rx;
  wire \dato_rx[7]_i_1_n_0 ;
  wire [7:0]dato_rx_OBUF;
  wire error_recep;
  wire error_recep0;
  wire error_recep_OBUF;
  wire p_0_in;
  wire p_0_in__0;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire rst;
  wire rst_IBUF;
  wire rx;
  wire rx_IBUF;

initial begin
 $sdf_annotate("receiver_tb_time_impl.sdf",,,,"tool_control");
end
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00570000)) 
    \CntB_Cnt[0]_i_1 
       (.I0(CntB_Cnt__0[3]),
        .I1(CntB_Cnt__0[1]),
        .I2(CntB_Cnt__0[2]),
        .I3(CntB_Cnt__0[0]),
        .I4(DATO_RX_OK_i_2_n_0),
        .O(CntB_Cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h13440000)) 
    \CntB_Cnt[1]_i_1 
       (.I0(CntB_Cnt__0[3]),
        .I1(CntB_Cnt__0[1]),
        .I2(CntB_Cnt__0[2]),
        .I3(CntB_Cnt__0[0]),
        .I4(DATO_RX_OK_i_2_n_0),
        .O(CntB_Cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h14500000)) 
    \CntB_Cnt[2]_i_1 
       (.I0(CntB_Cnt__0[3]),
        .I1(CntB_Cnt__0[1]),
        .I2(CntB_Cnt__0[2]),
        .I3(CntB_Cnt__0[0]),
        .I4(DATO_RX_OK_i_2_n_0),
        .O(CntB_Cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h42020000)) 
    \CntB_Cnt[3]_i_1 
       (.I0(CntB_Cnt__0[3]),
        .I1(CntB_Cnt__0[1]),
        .I2(CntB_Cnt__0[2]),
        .I3(CntB_Cnt__0[0]),
        .I4(DATO_RX_OK_i_2_n_0),
        .O(CntB_Cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \CntB_Cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(CntB_Cnt[0]),
        .Q(CntB_Cnt__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \CntB_Cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(CntB_Cnt[1]),
        .Q(CntB_Cnt__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \CntB_Cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(CntB_Cnt[2]),
        .Q(CntB_Cnt__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \CntB_Cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(CntB_Cnt[3]),
        .Q(CntB_Cnt__0[3]));
  LUT6 #(
    .INIT(64'hFFFFFFA000000080)) 
    CntB_FC_i_1
       (.I0(STD_Act[0]),
        .I1(CntB_Cnt1),
        .I2(CntM_FC_reg_n_0),
        .I3(STD_Act[2]),
        .I4(STD_Act[1]),
        .I5(CntB_FC_reg_n_0),
        .O(CntB_FC_i_1_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    CntB_FC_i_2
       (.I0(CntB_Cnt__0[3]),
        .I1(CntB_Cnt__0[1]),
        .I2(CntB_Cnt__0[2]),
        .O(CntB_Cnt1));
  FDCE #(
    .INIT(1'b0)) 
    CntB_FC_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(CntB_FC_i_1_n_0),
        .Q(CntB_FC_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h007F0000)) 
    \CntM_Cnt[0]_i_1 
       (.I0(CntM_Cnt__0[2]),
        .I1(CntM_Cnt__0[3]),
        .I2(CntM_Cnt__0[1]),
        .I3(CntM_Cnt__0[0]),
        .I4(DATO_RX_OK_i_2_n_0),
        .O(CntM_Cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0F700000)) 
    \CntM_Cnt[1]_i_1 
       (.I0(CntM_Cnt__0[2]),
        .I1(CntM_Cnt__0[3]),
        .I2(CntM_Cnt__0[1]),
        .I3(CntM_Cnt__0[0]),
        .I4(DATO_RX_OK_i_2_n_0),
        .O(CntM_Cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h5A2A0000)) 
    \CntM_Cnt[2]_i_1 
       (.I0(CntM_Cnt__0[2]),
        .I1(CntM_Cnt__0[3]),
        .I2(CntM_Cnt__0[1]),
        .I3(CntM_Cnt__0[0]),
        .I4(DATO_RX_OK_i_2_n_0),
        .O(CntM_Cnt[2]));
  LUT4 #(
    .INIT(16'h000D)) 
    \CntM_Cnt[3]_i_1 
       (.I0(STD_Act[0]),
        .I1(PR_FC_reg_n_0),
        .I2(STD_Act[2]),
        .I3(STD_Act[1]),
        .O(\CntM_Cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6C4C0000)) 
    \CntM_Cnt[3]_i_2 
       (.I0(CntM_Cnt__0[2]),
        .I1(CntM_Cnt__0[3]),
        .I2(CntM_Cnt__0[1]),
        .I3(CntM_Cnt__0[0]),
        .I4(DATO_RX_OK_i_2_n_0),
        .O(CntM_Cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \CntM_Cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\CntM_Cnt[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(CntM_Cnt[0]),
        .Q(CntM_Cnt__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \CntM_Cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\CntM_Cnt[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(CntM_Cnt[1]),
        .Q(CntM_Cnt__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \CntM_Cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\CntM_Cnt[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(CntM_Cnt[2]),
        .Q(CntM_Cnt__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \CntM_Cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\CntM_Cnt[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(CntM_Cnt[3]),
        .Q(CntM_Cnt__0[3]));
  LUT6 #(
    .INIT(64'hFFFFFFA000000080)) 
    CntM_FC_i_1
       (.I0(STD_Act[0]),
        .I1(CntM_Cnt1),
        .I2(PR_FC_reg_n_0),
        .I3(STD_Act[2]),
        .I4(STD_Act[1]),
        .I5(CntM_FC_reg_n_0),
        .O(CntM_FC_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    CntM_FC_i_2
       (.I0(CntM_Cnt__0[2]),
        .I1(CntM_Cnt__0[3]),
        .I2(CntM_Cnt__0[1]),
        .O(CntM_Cnt1));
  FDCE #(
    .INIT(1'b0)) 
    CntM_FC_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(CntM_FC_i_1_n_0),
        .Q(CntM_FC_reg_n_0));
  OBUF DATO_RX_OK_OBUF_inst
       (.I(DATO_RX_OK_OBUF),
        .O(DATO_RX_OK));
  LUT3 #(
    .INIT(8'h41)) 
    DATO_RX_OK_i_1
       (.I0(STD_Act[2]),
        .I1(STD_Act[0]),
        .I2(STD_Act[1]),
        .O(DATO_RX_OK_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    DATO_RX_OK_i_2
       (.I0(STD_Act[1]),
        .I1(STD_Act[0]),
        .I2(STD_Act[2]),
        .O(DATO_RX_OK_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    DATO_RX_OK_reg
       (.C(clk_IBUF_BUFG),
        .CE(DATO_RX_OK_i_1_n_0),
        .CLR(rst_IBUF),
        .D(DATO_RX_OK_i_2_n_0),
        .Q(DATO_RX_OK_OBUF));
  LUT5 #(
    .INIT(32'h5501AAAA)) 
    \FSM_sequential_STD_Act[0]_i_1 
       (.I0(STD_Act[0]),
        .I1(STD_Act[1]),
        .I2(STD_Act[2]),
        .I3(Val_Out),
        .I4(\FSM_sequential_STD_Act[2]_i_3_n_0 ),
        .O(\FSM_sequential_STD_Act[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h38CC)) 
    \FSM_sequential_STD_Act[1]_i_1 
       (.I0(Val_Out),
        .I1(STD_Act[1]),
        .I2(STD_Act[0]),
        .I3(\FSM_sequential_STD_Act[2]_i_3_n_0 ),
        .O(\FSM_sequential_STD_Act[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88B8AAAA)) 
    \FSM_sequential_STD_Act[2]_i_1 
       (.I0(STD_Act[2]),
        .I1(Val_Out),
        .I2(STD_Act[1]),
        .I3(STD_Act[0]),
        .I4(\FSM_sequential_STD_Act[2]_i_3_n_0 ),
        .O(\FSM_sequential_STD_Act[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000082282882)) 
    \FSM_sequential_STD_Act[2]_i_2 
       (.I0(\RDB_Out_reg_n_0_[10] ),
        .I1(p_0_in),
        .I2(p_6_in),
        .I3(\FSM_sequential_STD_Act[2]_i_4_n_0 ),
        .I4(\RDB_Out_reg_n_0_[1] ),
        .I5(\RDB_Out_reg_n_0_[0] ),
        .O(Val_Out));
  LUT6 #(
    .INIT(64'h7774747447447777)) 
    \FSM_sequential_STD_Act[2]_i_3 
       (.I0(Val_Out),
        .I1(STD_Act[2]),
        .I2(STD_Act[1]),
        .I3(CntB_FC_reg_n_0),
        .I4(STD_Act[0]),
        .I5(rx_IBUF),
        .O(\FSM_sequential_STD_Act[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \FSM_sequential_STD_Act[2]_i_4 
       (.I0(p_5_in),
        .I1(p_3_in),
        .I2(p_1_in),
        .I3(\RDB_Out_reg_n_0_[8] ),
        .I4(p_2_in),
        .I5(p_4_in),
        .O(\FSM_sequential_STD_Act[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,receiving:001,verifying:010,outputing:011,error:100,iSTATE:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_STD_Act_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_STD_Act[0]_i_1_n_0 ),
        .Q(STD_Act[0]));
  (* FSM_ENCODED_STATES = "idle:000,receiving:001,verifying:010,outputing:011,error:100,iSTATE:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_STD_Act_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_STD_Act[1]_i_1_n_0 ),
        .Q(STD_Act[1]));
  (* FSM_ENCODED_STATES = "idle:000,receiving:001,verifying:010,outputing:011,error:100,iSTATE:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_STD_Act_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_STD_Act[2]_i_1_n_0 ),
        .Q(STD_Act[2]));
  LUT6 #(
    .INIT(64'h5555155500000000)) 
    \PR_Cnt[0]_i_1 
       (.I0(\PR_Cnt_reg_n_0_[0] ),
        .I1(\PR_Cnt_reg_n_0_[3] ),
        .I2(\PR_Cnt_reg_n_0_[4] ),
        .I3(\PR_Cnt_reg_n_0_[2] ),
        .I4(\PR_Cnt_reg_n_0_[1] ),
        .I5(DATO_RX_OK_i_2_n_0),
        .O(\PR_Cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \PR_Cnt[1]_i_1 
       (.I0(\PR_Cnt_reg_n_0_[0] ),
        .I1(\PR_Cnt_reg_n_0_[1] ),
        .I2(DATO_RX_OK_i_2_n_0),
        .O(\PR_Cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55AABF0000000000)) 
    \PR_Cnt[2]_i_1 
       (.I0(\PR_Cnt_reg_n_0_[0] ),
        .I1(\PR_Cnt_reg_n_0_[3] ),
        .I2(\PR_Cnt_reg_n_0_[4] ),
        .I3(\PR_Cnt_reg_n_0_[2] ),
        .I4(\PR_Cnt_reg_n_0_[1] ),
        .I5(DATO_RX_OK_i_2_n_0),
        .O(\PR_Cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h66CC8CCC00000000)) 
    \PR_Cnt[3]_i_1 
       (.I0(\PR_Cnt_reg_n_0_[0] ),
        .I1(\PR_Cnt_reg_n_0_[3] ),
        .I2(\PR_Cnt_reg_n_0_[4] ),
        .I3(\PR_Cnt_reg_n_0_[2] ),
        .I4(\PR_Cnt_reg_n_0_[1] ),
        .I5(DATO_RX_OK_i_2_n_0),
        .O(\PR_Cnt[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \PR_Cnt[4]_i_1 
       (.I0(STD_Act[2]),
        .I1(STD_Act[1]),
        .O(\PR_Cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h78F0B0F000000000)) 
    \PR_Cnt[4]_i_2 
       (.I0(\PR_Cnt_reg_n_0_[0] ),
        .I1(\PR_Cnt_reg_n_0_[3] ),
        .I2(\PR_Cnt_reg_n_0_[4] ),
        .I3(\PR_Cnt_reg_n_0_[2] ),
        .I4(\PR_Cnt_reg_n_0_[1] ),
        .I5(DATO_RX_OK_i_2_n_0),
        .O(\PR_Cnt[4]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \PR_Cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\PR_Cnt[4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\PR_Cnt[0]_i_1_n_0 ),
        .Q(\PR_Cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \PR_Cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\PR_Cnt[4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\PR_Cnt[1]_i_1_n_0 ),
        .Q(\PR_Cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \PR_Cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\PR_Cnt[4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\PR_Cnt[2]_i_1_n_0 ),
        .Q(\PR_Cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \PR_Cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\PR_Cnt[4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\PR_Cnt[3]_i_1_n_0 ),
        .Q(\PR_Cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \PR_Cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\PR_Cnt[4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\PR_Cnt[4]_i_2_n_0 ),
        .Q(\PR_Cnt_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    PR_FC_i_1
       (.I0(\PR_Cnt_reg_n_0_[1] ),
        .I1(\PR_Cnt_reg_n_0_[2] ),
        .I2(\PR_Cnt_reg_n_0_[4] ),
        .I3(\PR_Cnt_reg_n_0_[3] ),
        .I4(\PR_Cnt_reg_n_0_[0] ),
        .I5(DATO_RX_OK_i_2_n_0),
        .O(PR_FC_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    PR_FC_reg
       (.C(clk_IBUF_BUFG),
        .CE(\PR_Cnt[4]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(PR_FC_i_1_n_0),
        .Q(PR_FC_reg_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \RDB_Out[0]_i_1 
       (.I0(\RDB_Out_reg_n_0_[1] ),
        .I1(STD_Act[0]),
        .O(RDB_Out[0]));
  LUT4 #(
    .INIT(16'h000D)) 
    \RDB_Out[10]_i_1 
       (.I0(STD_Act[0]),
        .I1(CntM_FC_reg_n_0),
        .I2(STD_Act[2]),
        .I3(STD_Act[1]),
        .O(\RDB_Out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E817E8171717)) 
    \RDB_Out[10]_i_10 
       (.I0(RDM_Out[8]),
        .I1(RDM_Out[7]),
        .I2(RDM_Out[9]),
        .I3(RDM_Out[12]),
        .I4(RDM_Out[10]),
        .I5(RDM_Out[11]),
        .O(\RDB_Out[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA995A9955555)) 
    \RDB_Out[10]_i_11 
       (.I0(\RDB_Out[10]_i_4_n_0 ),
        .I1(RDM_Out[6]),
        .I2(RDM_Out[4]),
        .I3(RDM_Out[5]),
        .I4(\RDB_Out[10]_i_16_n_0 ),
        .I5(\RDB_Out[10]_i_12_n_0 ),
        .O(\RDB_Out[10]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \RDB_Out[10]_i_12 
       (.I0(RDM_Out[2]),
        .I1(RDM_Out[3]),
        .I2(RDM_Out[1]),
        .O(\RDB_Out[10]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \RDB_Out[10]_i_13 
       (.I0(RDM_Out[8]),
        .I1(RDM_Out[7]),
        .I2(RDM_Out[9]),
        .O(\RDB_Out[10]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \RDB_Out[10]_i_14 
       (.I0(RDM_Out[5]),
        .I1(RDM_Out[4]),
        .I2(RDM_Out[6]),
        .O(\RDB_Out[10]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \RDB_Out[10]_i_15 
       (.I0(RDM_Out[0]),
        .I1(p_0_in__0),
        .I2(RDM_Out[14]),
        .I3(RDM_Out[3]),
        .I4(RDM_Out[1]),
        .I5(RDM_Out[2]),
        .O(\RDB_Out[10]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \RDB_Out[10]_i_16 
       (.I0(RDM_Out[14]),
        .I1(p_0_in__0),
        .O(\RDB_Out[10]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hAE00)) 
    \RDB_Out[10]_i_2 
       (.I0(\RDB_Out[10]_i_3_n_0 ),
        .I1(\RDB_Out[10]_i_4_n_0 ),
        .I2(\RDB_Out[10]_i_5_n_0 ),
        .I3(STD_Act[0]),
        .O(RDB_Out[10]));
  LUT6 #(
    .INIT(64'h004040D4D4FDFDFF)) 
    \RDB_Out[10]_i_3 
       (.I0(\RDB_Out[10]_i_6_n_0 ),
        .I1(\RDB_Out[10]_i_7_n_0 ),
        .I2(\RDB_Out[10]_i_8_n_0 ),
        .I3(\RDB_Out[10]_i_9_n_0 ),
        .I4(\RDB_Out[10]_i_10_n_0 ),
        .I5(\RDB_Out[10]_i_11_n_0 ),
        .O(\RDB_Out[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E800E8000000)) 
    \RDB_Out[10]_i_4 
       (.I0(RDM_Out[8]),
        .I1(RDM_Out[7]),
        .I2(RDM_Out[9]),
        .I3(RDM_Out[12]),
        .I4(RDM_Out[10]),
        .I5(RDM_Out[11]),
        .O(\RDB_Out[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1515157F157F7F7F)) 
    \RDB_Out[10]_i_5 
       (.I0(\RDB_Out[10]_i_12_n_0 ),
        .I1(p_0_in__0),
        .I2(RDM_Out[14]),
        .I3(RDM_Out[5]),
        .I4(RDM_Out[4]),
        .I5(RDM_Out[6]),
        .O(\RDB_Out[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h69FF0069006969FF)) 
    \RDB_Out[10]_i_6 
       (.I0(RDM_Out[2]),
        .I1(RDM_Out[1]),
        .I2(RDM_Out[3]),
        .I3(RDM_Out[0]),
        .I4(p_0_in__0),
        .I5(RDM_Out[14]),
        .O(\RDB_Out[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000096696996)) 
    \RDB_Out[10]_i_7 
       (.I0(\RDB_Out[10]_i_13_n_0 ),
        .I1(\RDB_Out[10]_i_14_n_0 ),
        .I2(RDM_Out[11]),
        .I3(RDM_Out[10]),
        .I4(RDM_Out[12]),
        .I5(\RDB_Out[10]_i_15_n_0 ),
        .O(\RDB_Out[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h009696FF)) 
    \RDB_Out[10]_i_8 
       (.I0(RDM_Out[11]),
        .I1(RDM_Out[10]),
        .I2(RDM_Out[12]),
        .I3(\RDB_Out[10]_i_14_n_0 ),
        .I4(\RDB_Out[10]_i_13_n_0 ),
        .O(\RDB_Out[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E8E8E8171717)) 
    \RDB_Out[10]_i_9 
       (.I0(RDM_Out[6]),
        .I1(RDM_Out[4]),
        .I2(RDM_Out[5]),
        .I3(RDM_Out[14]),
        .I4(p_0_in__0),
        .I5(\RDB_Out[10]_i_12_n_0 ),
        .O(\RDB_Out[10]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \RDB_Out[1]_i_1 
       (.I0(p_6_in),
        .I1(STD_Act[0]),
        .O(RDB_Out[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \RDB_Out[2]_i_1 
       (.I0(p_5_in),
        .I1(STD_Act[0]),
        .O(RDB_Out[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \RDB_Out[3]_i_1 
       (.I0(p_4_in),
        .I1(STD_Act[0]),
        .O(RDB_Out[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \RDB_Out[4]_i_1 
       (.I0(p_3_in),
        .I1(STD_Act[0]),
        .O(RDB_Out[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \RDB_Out[5]_i_1 
       (.I0(p_2_in),
        .I1(STD_Act[0]),
        .O(RDB_Out[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \RDB_Out[6]_i_1 
       (.I0(p_1_in),
        .I1(STD_Act[0]),
        .O(RDB_Out[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \RDB_Out[7]_i_1 
       (.I0(\RDB_Out_reg_n_0_[8] ),
        .I1(STD_Act[0]),
        .O(RDB_Out[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \RDB_Out[8]_i_1 
       (.I0(p_0_in),
        .I1(STD_Act[0]),
        .O(RDB_Out[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \RDB_Out[9]_i_1 
       (.I0(\RDB_Out_reg_n_0_[10] ),
        .I1(STD_Act[0]),
        .O(RDB_Out[9]));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[0]),
        .Q(\RDB_Out_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[10]),
        .Q(\RDB_Out_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[1]),
        .Q(\RDB_Out_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[2]),
        .Q(p_6_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[3]),
        .Q(p_5_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[4]),
        .Q(p_4_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[5]),
        .Q(p_3_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[6]),
        .Q(p_2_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[7]),
        .Q(p_1_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[8]),
        .Q(\RDB_Out_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[9]),
        .Q(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[1]),
        .Q(RDM_Out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[11]),
        .Q(RDM_Out[10]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[12]),
        .Q(RDM_Out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(p_0_in__0),
        .Q(RDM_Out[12]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[14]),
        .Q(p_0_in__0));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(rx_IBUF),
        .Q(RDM_Out[14]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[2]),
        .Q(RDM_Out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[3]),
        .Q(RDM_Out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[4]),
        .Q(RDM_Out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[5]),
        .Q(RDM_Out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[6]),
        .Q(RDM_Out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[7]),
        .Q(RDM_Out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[8]),
        .Q(RDM_Out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[9]),
        .Q(RDM_Out[8]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[10]),
        .Q(RDM_Out[9]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT3 #(
    .INIT(8'h40)) 
    \dato_rx[7]_i_1 
       (.I0(STD_Act[2]),
        .I1(STD_Act[0]),
        .I2(STD_Act[1]),
        .O(\dato_rx[7]_i_1_n_0 ));
  OBUF \dato_rx_OBUF[0]_inst 
       (.I(dato_rx_OBUF[0]),
        .O(dato_rx[0]));
  OBUF \dato_rx_OBUF[1]_inst 
       (.I(dato_rx_OBUF[1]),
        .O(dato_rx[1]));
  OBUF \dato_rx_OBUF[2]_inst 
       (.I(dato_rx_OBUF[2]),
        .O(dato_rx[2]));
  OBUF \dato_rx_OBUF[3]_inst 
       (.I(dato_rx_OBUF[3]),
        .O(dato_rx[3]));
  OBUF \dato_rx_OBUF[4]_inst 
       (.I(dato_rx_OBUF[4]),
        .O(dato_rx[4]));
  OBUF \dato_rx_OBUF[5]_inst 
       (.I(dato_rx_OBUF[5]),
        .O(dato_rx[5]));
  OBUF \dato_rx_OBUF[6]_inst 
       (.I(dato_rx_OBUF[6]),
        .O(dato_rx[6]));
  OBUF \dato_rx_OBUF[7]_inst 
       (.I(dato_rx_OBUF[7]),
        .O(dato_rx[7]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\RDB_Out_reg_n_0_[1] ),
        .Q(dato_rx_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_6_in),
        .Q(dato_rx_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_5_in),
        .Q(dato_rx_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_4_in),
        .Q(dato_rx_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_3_in),
        .Q(dato_rx_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_2_in),
        .Q(dato_rx_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in),
        .Q(dato_rx_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\RDB_Out_reg_n_0_[8] ),
        .Q(dato_rx_OBUF[7]));
  OBUF error_recep_OBUF_inst
       (.I(error_recep_OBUF),
        .O(error_recep));
  LUT5 #(
    .INIT(32'h00000111)) 
    error_recep_i_1
       (.I0(STD_Act[2]),
        .I1(STD_Act[0]),
        .I2(STD_Act[1]),
        .I3(Val_Out),
        .I4(rst_IBUF),
        .O(error_recep0));
  FDRE #(
    .INIT(1'b0)) 
    error_recep_reg
       (.C(clk_IBUF_BUFG),
        .CE(error_recep0),
        .D(STD_Act[1]),
        .Q(error_recep_OBUF),
        .R(1'b0));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
