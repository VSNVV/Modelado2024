// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jun  5 22:13:53 2024
// Host        : victorsanavia running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               V:/Programacion/RepositoriosGit/Modelado2024/ProyectosVivado/Apartado3/Apartado3.sim/sim_1/impl/timing/xsim/receiver_tb_time_impl.v
// Design      : test_receiver
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module receiver
   (error_recep_OBUF,
    E,
    Q,
    CLK,
    rst_IBUF,
    D);
  output error_recep_OBUF;
  output [0:0]E;
  output [7:0]Q;
  input CLK;
  input rst_IBUF;
  input [0:0]D;

  wire CLK;
  wire [3:0]CntB_Cnt;
  wire CntB_Cnt1__0;
  wire \CntB_Cnt[0]_i_1_n_0 ;
  wire \CntB_Cnt[1]_i_1_n_0 ;
  wire \CntB_Cnt[2]_i_1_n_0 ;
  wire \CntB_Cnt[3]_i_1_n_0 ;
  wire \CntB_Cnt[3]_i_2_n_0 ;
  wire CntB_FC_i_1_n_0;
  wire CntB_FC_reg_n_0;
  wire [3:0]CntM_Cnt;
  wire CntM_Cnt1__0;
  wire \CntM_Cnt[0]_i_1_n_0 ;
  wire \CntM_Cnt[1]_i_1_n_0 ;
  wire \CntM_Cnt[2]_i_1_n_0 ;
  wire \CntM_Cnt[3]_i_1_n_0 ;
  wire \CntM_Cnt[3]_i_2_n_0 ;
  wire CntM_FC_i_1_n_0;
  wire CntM_FC_reg_n_0;
  wire [0:0]D;
  wire DATO_RX_OK_i_1_n_0;
  wire [0:0]E;
  wire \FSM_sequential_STD_Act[0]_i_1_n_0 ;
  wire \FSM_sequential_STD_Act[1]_i_1_n_0 ;
  wire \FSM_sequential_STD_Act[2]_i_1_n_0 ;
  wire \FSM_sequential_STD_Act[2]_i_3_n_0 ;
  wire \FSM_sequential_STD_Act[2]_i_4_n_0 ;
  wire \PR_Cnt[0]_i_1_n_0 ;
  wire \PR_Cnt[1]_i_1_n_0 ;
  wire \PR_Cnt[2]_i_1_n_0 ;
  wire \PR_Cnt[3]_i_1_n_0 ;
  wire \PR_Cnt[4]_i_2_n_0 ;
  wire \PR_Cnt_reg_n_0_[0] ;
  wire \PR_Cnt_reg_n_0_[1] ;
  wire \PR_Cnt_reg_n_0_[2] ;
  wire \PR_Cnt_reg_n_0_[3] ;
  wire \PR_Cnt_reg_n_0_[4] ;
  wire PR_FC;
  wire PR_FC_i_1_n_0;
  wire PR_FC_reg_n_0;
  wire [7:0]Q;
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
  wire \dato_rx[7]_i_1_n_0 ;
  wire error_recep0;
  wire error_recep_OBUF;
  wire p_0_in;
  wire p_0_in_0;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire rst_IBUF;

  LUT3 #(
    .INIT(8'hA8)) 
    CntB_Cnt1
       (.I0(CntB_Cnt[3]),
        .I1(CntB_Cnt[1]),
        .I2(CntB_Cnt[2]),
        .O(CntB_Cnt1__0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \CntB_Cnt[0]_i_1 
       (.I0(CntB_Cnt[0]),
        .I1(CntB_Cnt[3]),
        .I2(CntB_Cnt[1]),
        .I3(CntB_Cnt[2]),
        .I4(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\CntB_Cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00001344)) 
    \CntB_Cnt[1]_i_1 
       (.I0(CntB_Cnt[3]),
        .I1(CntB_Cnt[1]),
        .I2(CntB_Cnt[2]),
        .I3(CntB_Cnt[0]),
        .I4(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\CntB_Cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00001450)) 
    \CntB_Cnt[2]_i_1 
       (.I0(CntB_Cnt[3]),
        .I1(CntB_Cnt[1]),
        .I2(CntB_Cnt[2]),
        .I3(CntB_Cnt[0]),
        .I4(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\CntB_Cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00004202)) 
    \CntB_Cnt[3]_i_1 
       (.I0(CntB_Cnt[3]),
        .I1(CntB_Cnt[1]),
        .I2(CntB_Cnt[2]),
        .I3(CntB_Cnt[0]),
        .I4(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\CntB_Cnt[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \CntB_Cnt[3]_i_2 
       (.I0(STD_Act[2]),
        .I1(STD_Act[0]),
        .I2(STD_Act[1]),
        .O(\CntB_Cnt[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \CntB_Cnt_reg[0] 
       (.C(CLK),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\CntB_Cnt[0]_i_1_n_0 ),
        .Q(CntB_Cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \CntB_Cnt_reg[1] 
       (.C(CLK),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\CntB_Cnt[1]_i_1_n_0 ),
        .Q(CntB_Cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \CntB_Cnt_reg[2] 
       (.C(CLK),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\CntB_Cnt[2]_i_1_n_0 ),
        .Q(CntB_Cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \CntB_Cnt_reg[3] 
       (.C(CLK),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\CntB_Cnt[3]_i_1_n_0 ),
        .Q(CntB_Cnt[3]));
  LUT6 #(
    .INIT(64'hFFFFFFA000000080)) 
    CntB_FC_i_1
       (.I0(STD_Act[0]),
        .I1(CntB_Cnt1__0),
        .I2(CntM_FC_reg_n_0),
        .I3(STD_Act[2]),
        .I4(STD_Act[1]),
        .I5(CntB_FC_reg_n_0),
        .O(CntB_FC_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    CntB_FC_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(CntB_FC_i_1_n_0),
        .Q(CntB_FC_reg_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    CntM_Cnt1
       (.I0(CntM_Cnt[2]),
        .I1(CntM_Cnt[3]),
        .I2(CntM_Cnt[1]),
        .O(CntM_Cnt1__0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00001555)) 
    \CntM_Cnt[0]_i_1 
       (.I0(CntM_Cnt[0]),
        .I1(CntM_Cnt[2]),
        .I2(CntM_Cnt[3]),
        .I3(CntM_Cnt[1]),
        .I4(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\CntM_Cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000F70)) 
    \CntM_Cnt[1]_i_1 
       (.I0(CntM_Cnt[2]),
        .I1(CntM_Cnt[3]),
        .I2(CntM_Cnt[1]),
        .I3(CntM_Cnt[0]),
        .I4(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\CntM_Cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00005A2A)) 
    \CntM_Cnt[2]_i_1 
       (.I0(CntM_Cnt[2]),
        .I1(CntM_Cnt[3]),
        .I2(CntM_Cnt[1]),
        .I3(CntM_Cnt[0]),
        .I4(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\CntM_Cnt[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h000D)) 
    \CntM_Cnt[3]_i_1 
       (.I0(STD_Act[0]),
        .I1(PR_FC_reg_n_0),
        .I2(STD_Act[2]),
        .I3(STD_Act[1]),
        .O(\CntM_Cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006C4C)) 
    \CntM_Cnt[3]_i_2 
       (.I0(CntM_Cnt[2]),
        .I1(CntM_Cnt[3]),
        .I2(CntM_Cnt[1]),
        .I3(CntM_Cnt[0]),
        .I4(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\CntM_Cnt[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \CntM_Cnt_reg[0] 
       (.C(CLK),
        .CE(\CntM_Cnt[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\CntM_Cnt[0]_i_1_n_0 ),
        .Q(CntM_Cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \CntM_Cnt_reg[1] 
       (.C(CLK),
        .CE(\CntM_Cnt[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\CntM_Cnt[1]_i_1_n_0 ),
        .Q(CntM_Cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \CntM_Cnt_reg[2] 
       (.C(CLK),
        .CE(\CntM_Cnt[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\CntM_Cnt[2]_i_1_n_0 ),
        .Q(CntM_Cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \CntM_Cnt_reg[3] 
       (.C(CLK),
        .CE(\CntM_Cnt[3]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\CntM_Cnt[3]_i_2_n_0 ),
        .Q(CntM_Cnt[3]));
  LUT6 #(
    .INIT(64'hFFFFFFA000000080)) 
    CntM_FC_i_1
       (.I0(STD_Act[0]),
        .I1(CntM_Cnt1__0),
        .I2(PR_FC_reg_n_0),
        .I3(STD_Act[2]),
        .I4(STD_Act[1]),
        .I5(CntM_FC_reg_n_0),
        .O(CntM_FC_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    CntM_FC_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(CntM_FC_i_1_n_0),
        .Q(CntM_FC_reg_n_0));
  LUT4 #(
    .INIT(16'hFE08)) 
    DATO_RX_OK_i_1
       (.I0(STD_Act[1]),
        .I1(STD_Act[0]),
        .I2(STD_Act[2]),
        .I3(E),
        .O(DATO_RX_OK_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    DATO_RX_OK_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(DATO_RX_OK_i_1_n_0),
        .Q(E));
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
    .INIT(64'h4114144100000000)) 
    \FSM_sequential_STD_Act[2]_i_2 
       (.I0(\RDB_Out_reg_n_0_[0] ),
        .I1(p_0_in_0),
        .I2(p_6_in),
        .I3(\FSM_sequential_STD_Act[2]_i_4_n_0 ),
        .I4(\RDB_Out_reg_n_0_[1] ),
        .I5(\RDB_Out_reg_n_0_[10] ),
        .O(Val_Out));
  LUT6 #(
    .INIT(64'h7774747447447777)) 
    \FSM_sequential_STD_Act[2]_i_3 
       (.I0(Val_Out),
        .I1(STD_Act[2]),
        .I2(STD_Act[1]),
        .I3(CntB_FC_reg_n_0),
        .I4(STD_Act[0]),
        .I5(D),
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
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_STD_Act[0]_i_1_n_0 ),
        .Q(STD_Act[0]));
  (* FSM_ENCODED_STATES = "idle:000,receiving:001,verifying:010,outputing:011,error:100,iSTATE:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_STD_Act_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_STD_Act[1]_i_1_n_0 ),
        .Q(STD_Act[1]));
  (* FSM_ENCODED_STATES = "idle:000,receiving:001,verifying:010,outputing:011,error:100,iSTATE:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_STD_Act_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_STD_Act[2]_i_1_n_0 ),
        .Q(STD_Act[2]));
  LUT6 #(
    .INIT(64'h0000000045555555)) 
    \PR_Cnt[0]_i_1 
       (.I0(\PR_Cnt_reg_n_0_[0] ),
        .I1(\PR_Cnt_reg_n_0_[1] ),
        .I2(\PR_Cnt_reg_n_0_[2] ),
        .I3(\PR_Cnt_reg_n_0_[3] ),
        .I4(\PR_Cnt_reg_n_0_[4] ),
        .I5(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\PR_Cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \PR_Cnt[1]_i_1 
       (.I0(\PR_Cnt_reg_n_0_[0] ),
        .I1(\PR_Cnt_reg_n_0_[1] ),
        .I2(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\PR_Cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000068787878)) 
    \PR_Cnt[2]_i_1 
       (.I0(\PR_Cnt_reg_n_0_[0] ),
        .I1(\PR_Cnt_reg_n_0_[1] ),
        .I2(\PR_Cnt_reg_n_0_[2] ),
        .I3(\PR_Cnt_reg_n_0_[3] ),
        .I4(\PR_Cnt_reg_n_0_[4] ),
        .I5(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\PR_Cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006F807F80)) 
    \PR_Cnt[3]_i_1 
       (.I0(\PR_Cnt_reg_n_0_[0] ),
        .I1(\PR_Cnt_reg_n_0_[1] ),
        .I2(\PR_Cnt_reg_n_0_[2] ),
        .I3(\PR_Cnt_reg_n_0_[3] ),
        .I4(\PR_Cnt_reg_n_0_[4] ),
        .I5(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\PR_Cnt[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \PR_Cnt[4]_i_1 
       (.I0(STD_Act[1]),
        .I1(STD_Act[2]),
        .O(PR_FC));
  LUT6 #(
    .INIT(64'h000000006FFF8000)) 
    \PR_Cnt[4]_i_2 
       (.I0(\PR_Cnt_reg_n_0_[0] ),
        .I1(\PR_Cnt_reg_n_0_[1] ),
        .I2(\PR_Cnt_reg_n_0_[2] ),
        .I3(\PR_Cnt_reg_n_0_[3] ),
        .I4(\PR_Cnt_reg_n_0_[4] ),
        .I5(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\PR_Cnt[4]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \PR_Cnt_reg[0] 
       (.C(CLK),
        .CE(PR_FC),
        .CLR(rst_IBUF),
        .D(\PR_Cnt[0]_i_1_n_0 ),
        .Q(\PR_Cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \PR_Cnt_reg[1] 
       (.C(CLK),
        .CE(PR_FC),
        .CLR(rst_IBUF),
        .D(\PR_Cnt[1]_i_1_n_0 ),
        .Q(\PR_Cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \PR_Cnt_reg[2] 
       (.C(CLK),
        .CE(PR_FC),
        .CLR(rst_IBUF),
        .D(\PR_Cnt[2]_i_1_n_0 ),
        .Q(\PR_Cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \PR_Cnt_reg[3] 
       (.C(CLK),
        .CE(PR_FC),
        .CLR(rst_IBUF),
        .D(\PR_Cnt[3]_i_1_n_0 ),
        .Q(\PR_Cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \PR_Cnt_reg[4] 
       (.C(CLK),
        .CE(PR_FC),
        .CLR(rst_IBUF),
        .D(\PR_Cnt[4]_i_2_n_0 ),
        .Q(\PR_Cnt_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    PR_FC_i_1
       (.I0(\PR_Cnt_reg_n_0_[3] ),
        .I1(\PR_Cnt_reg_n_0_[0] ),
        .I2(\PR_Cnt_reg_n_0_[4] ),
        .I3(\PR_Cnt_reg_n_0_[2] ),
        .I4(\PR_Cnt_reg_n_0_[1] ),
        .I5(\CntB_Cnt[3]_i_2_n_0 ),
        .O(PR_FC_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    PR_FC_reg
       (.C(CLK),
        .CE(PR_FC),
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
        .I1(p_0_in),
        .I2(RDM_Out[14]),
        .I3(RDM_Out[3]),
        .I4(RDM_Out[1]),
        .I5(RDM_Out[2]),
        .O(\RDB_Out[10]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \RDB_Out[10]_i_16 
       (.I0(RDM_Out[14]),
        .I1(p_0_in),
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
        .I1(p_0_in),
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
        .I4(p_0_in),
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
        .I4(p_0_in),
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
       (.I0(p_0_in_0),
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
       (.C(CLK),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[0]),
        .Q(\RDB_Out_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[10] 
       (.C(CLK),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[10]),
        .Q(\RDB_Out_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[1] 
       (.C(CLK),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[1]),
        .Q(\RDB_Out_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[2] 
       (.C(CLK),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[2]),
        .Q(p_6_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[3] 
       (.C(CLK),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[3]),
        .Q(p_5_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[4] 
       (.C(CLK),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[4]),
        .Q(p_4_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[5] 
       (.C(CLK),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[5]),
        .Q(p_3_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[6] 
       (.C(CLK),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[6]),
        .Q(p_2_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[7] 
       (.C(CLK),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[7]),
        .Q(p_1_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[8] 
       (.C(CLK),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[8]),
        .Q(\RDB_Out_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[9] 
       (.C(CLK),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(RDB_Out[9]),
        .Q(p_0_in_0));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[0] 
       (.C(CLK),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[1]),
        .Q(RDM_Out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[10] 
       (.C(CLK),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[11]),
        .Q(RDM_Out[10]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[11] 
       (.C(CLK),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[12]),
        .Q(RDM_Out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[12] 
       (.C(CLK),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(p_0_in),
        .Q(RDM_Out[12]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[13] 
       (.C(CLK),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[14]),
        .Q(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[14] 
       (.C(CLK),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(D),
        .Q(RDM_Out[14]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[1] 
       (.C(CLK),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[2]),
        .Q(RDM_Out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[2] 
       (.C(CLK),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[3]),
        .Q(RDM_Out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[3] 
       (.C(CLK),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[4]),
        .Q(RDM_Out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[4] 
       (.C(CLK),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[5]),
        .Q(RDM_Out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[5] 
       (.C(CLK),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[6]),
        .Q(RDM_Out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[6] 
       (.C(CLK),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[7]),
        .Q(RDM_Out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[7] 
       (.C(CLK),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[8]),
        .Q(RDM_Out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[8] 
       (.C(CLK),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[9]),
        .Q(RDM_Out[8]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[9] 
       (.C(CLK),
        .CE(PR_FC_reg_n_0),
        .CLR(rst_IBUF),
        .D(RDM_Out[10]),
        .Q(RDM_Out[9]));
  LUT3 #(
    .INIT(8'h08)) 
    \dato_rx[7]_i_1 
       (.I0(STD_Act[1]),
        .I1(STD_Act[0]),
        .I2(STD_Act[2]),
        .O(\dato_rx[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[0] 
       (.C(CLK),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\RDB_Out_reg_n_0_[1] ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[1] 
       (.C(CLK),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_6_in),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[2] 
       (.C(CLK),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_5_in),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[3] 
       (.C(CLK),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_4_in),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[4] 
       (.C(CLK),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_3_in),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[5] 
       (.C(CLK),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_2_in),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[6] 
       (.C(CLK),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[7] 
       (.C(CLK),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\RDB_Out_reg_n_0_[8] ),
        .Q(Q[7]));
  LUT5 #(
    .INIT(32'h00000111)) 
    error_recep_i_1
       (.I0(STD_Act[0]),
        .I1(STD_Act[2]),
        .I2(STD_Act[1]),
        .I3(Val_Out),
        .I4(rst_IBUF),
        .O(error_recep0));
  FDRE #(
    .INIT(1'b0)) 
    error_recep_reg
       (.C(CLK),
        .CE(error_recep0),
        .D(STD_Act[1]),
        .Q(error_recep_OBUF),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "cfa43a00" *) 
(* NotValidForBitStream *)
module test_receiver
   (clk,
    rst,
    rx,
    led,
    error_recep);
  input clk;
  input rst;
  input rx;
  output [7:0]led;
  output error_recep;

  wire DATO_RX_OK;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]dato_rx;
  wire error_recep;
  wire error_recep_OBUF;
  wire [7:0]led;
  wire [7:0]led_OBUF;
  wire rst;
  wire rst_IBUF;
  wire rx;
  wire rx_IBUF;

initial begin
 $sdf_annotate("receiver_tb_time_impl.sdf",,,,"tool_control");
end
  receiver DUT
       (.CLK(clk_IBUF_BUFG),
        .D(rx_IBUF),
        .E(DATO_RX_OK),
        .Q(dato_rx),
        .error_recep_OBUF(error_recep_OBUF),
        .rst_IBUF(rst_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF error_recep_OBUF_inst
       (.I(error_recep_OBUF),
        .O(error_recep));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(rst_IBUF),
        .D(dato_rx[0]),
        .Q(led_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(rst_IBUF),
        .D(dato_rx[1]),
        .Q(led_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(rst_IBUF),
        .D(dato_rx[2]),
        .Q(led_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(rst_IBUF),
        .D(dato_rx[3]),
        .Q(led_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(rst_IBUF),
        .D(dato_rx[4]),
        .Q(led_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(rst_IBUF),
        .D(dato_rx[5]),
        .Q(led_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(rst_IBUF),
        .D(dato_rx[6]),
        .Q(led_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \led_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(rst_IBUF),
        .D(dato_rx[7]),
        .Q(led_OBUF[7]));
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
