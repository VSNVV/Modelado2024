// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jun  5 22:52:12 2024
// Host        : victorsanavia running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               V:/Programacion/RepositoriosGit/Modelado2024/ProyectosVivado/Apartado4/Apartado4.sim/sim_1/impl/timing/xsim/top_system_tb_time_impl.v
// Design      : top_system
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module display_controller
   (DP_OBUF,
    \SEG_AG[6] ,
    AND_70_OBUF,
    CLK_IBUF_BUFG,
    RST_IBUF,
    DATO_RX_OK,
    Q);
  output DP_OBUF;
  output [6:0]\SEG_AG[6] ;
  output [7:0]AND_70_OBUF;
  input CLK_IBUF_BUFG;
  input RST_IBUF;
  input DATO_RX_OK;
  input [7:0]Q;

  wire \AND_70[0]_i_1_n_0 ;
  wire \AND_70[1]_i_1_n_0 ;
  wire \AND_70[2]_i_1_n_0 ;
  wire \AND_70[3]_i_1_n_0 ;
  wire \AND_70[4]_i_1_n_0 ;
  wire \AND_70[5]_i_1_n_0 ;
  wire \AND_70[6]_i_1_n_0 ;
  wire \AND_70[7]_i_1_n_0 ;
  wire [7:0]AND_70_OBUF;
  wire CLK_IBUF_BUFG;
  wire [2:0]CntOut;
  wire \CntOut[0]_i_1_n_0 ;
  wire \CntOut[1]_i_1_n_0 ;
  wire \CntOut[2]_i_1_n_0 ;
  wire [7:0]CntReg;
  wire \CntReg[1]_i_2_n_0 ;
  wire \CntReg[7]_i_2_n_0 ;
  wire \CntReg_reg_n_0_[0] ;
  wire \CntReg_reg_n_0_[1] ;
  wire \CntReg_reg_n_0_[2] ;
  wire \CntReg_reg_n_0_[3] ;
  wire \CntReg_reg_n_0_[4] ;
  wire \CntReg_reg_n_0_[5] ;
  wire \CntReg_reg_n_0_[6] ;
  wire \CntReg_reg_n_0_[7] ;
  wire DATO_RX_OK;
  wire DP_OBUF;
  wire [6:0]DecHexOut;
  wire PROut;
  wire PROut_0;
  wire [7:0]Q;
  wire [31:0]RDOut;
  wire RST_IBUF;
  wire [6:0]\SEG_AG[6] ;
  wire \SEG_AG[6]_i_10_n_0 ;
  wire \SEG_AG[6]_i_11_n_0 ;
  wire \SEG_AG[6]_i_12_n_0 ;
  wire \SEG_AG[6]_i_13_n_0 ;
  wire \SEG_AG[6]_i_6_n_0 ;
  wire \SEG_AG[6]_i_7_n_0 ;
  wire \SEG_AG[6]_i_8_n_0 ;
  wire \SEG_AG[6]_i_9_n_0 ;
  wire [3:0]sel0;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \AND_70[0]_i_1 
       (.I0(CntOut[0]),
        .I1(CntOut[2]),
        .O(\AND_70[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \AND_70[1]_i_1 
       (.I0(CntOut[2]),
        .I1(CntOut[0]),
        .O(\AND_70[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AND_70[2]_i_1 
       (.I0(CntOut[0]),
        .I1(CntOut[1]),
        .O(\AND_70[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \AND_70[3]_i_1 
       (.I0(CntOut[0]),
        .I1(CntOut[1]),
        .O(\AND_70[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AND_70[4]_i_1 
       (.I0(CntOut[0]),
        .I1(CntOut[2]),
        .O(\AND_70[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \AND_70[5]_i_1 
       (.I0(CntOut[0]),
        .I1(CntOut[2]),
        .O(\AND_70[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \AND_70[6]_i_1 
       (.I0(CntOut[2]),
        .I1(CntOut[1]),
        .O(\AND_70[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \AND_70[7]_i_1 
       (.I0(CntOut[1]),
        .O(\AND_70[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \AND_70_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\AND_70[0]_i_1_n_0 ),
        .Q(AND_70_OBUF[0]),
        .S(CntOut[1]));
  FDSE #(
    .INIT(1'b1)) 
    \AND_70_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\AND_70[1]_i_1_n_0 ),
        .Q(AND_70_OBUF[1]),
        .S(CntOut[1]));
  FDSE #(
    .INIT(1'b1)) 
    \AND_70_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\AND_70[2]_i_1_n_0 ),
        .Q(AND_70_OBUF[2]),
        .S(CntOut[2]));
  FDSE #(
    .INIT(1'b1)) 
    \AND_70_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\AND_70[3]_i_1_n_0 ),
        .Q(AND_70_OBUF[3]),
        .S(CntOut[2]));
  FDSE #(
    .INIT(1'b1)) 
    \AND_70_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\AND_70[4]_i_1_n_0 ),
        .Q(AND_70_OBUF[4]),
        .S(CntOut[1]));
  FDSE #(
    .INIT(1'b1)) 
    \AND_70_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\AND_70[5]_i_1_n_0 ),
        .Q(AND_70_OBUF[5]),
        .S(CntOut[1]));
  FDSE #(
    .INIT(1'b1)) 
    \AND_70_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\AND_70[6]_i_1_n_0 ),
        .Q(AND_70_OBUF[6]),
        .S(CntOut[0]));
  FDSE #(
    .INIT(1'b1)) 
    \AND_70_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\AND_70[5]_i_1_n_0 ),
        .Q(AND_70_OBUF[7]),
        .S(\AND_70[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CntOut[0]_i_1 
       (.I0(PROut),
        .I1(CntOut[0]),
        .O(\CntOut[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \CntOut[1]_i_1 
       (.I0(CntOut[0]),
        .I1(PROut),
        .I2(CntOut[1]),
        .O(\CntOut[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \CntOut[2]_i_1 
       (.I0(CntOut[1]),
        .I1(CntOut[0]),
        .I2(PROut),
        .I3(CntOut[2]),
        .O(\CntOut[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \CntOut_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\CntOut[0]_i_1_n_0 ),
        .Q(CntOut[0]));
  FDCE #(
    .INIT(1'b0)) 
    \CntOut_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\CntOut[1]_i_1_n_0 ),
        .Q(CntOut[1]));
  FDCE #(
    .INIT(1'b0)) 
    \CntOut_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\CntOut[2]_i_1_n_0 ),
        .Q(CntOut[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \CntReg[0]_i_1 
       (.I0(\CntReg_reg_n_0_[0] ),
        .O(CntReg[0]));
  LUT6 #(
    .INIT(64'h4555AAAA5555AAAA)) 
    \CntReg[1]_i_1 
       (.I0(\CntReg_reg_n_0_[1] ),
        .I1(\CntReg[1]_i_2_n_0 ),
        .I2(\CntReg_reg_n_0_[7] ),
        .I3(\CntReg_reg_n_0_[6] ),
        .I4(\CntReg_reg_n_0_[0] ),
        .I5(\CntReg_reg_n_0_[2] ),
        .O(CntReg[1]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \CntReg[1]_i_2 
       (.I0(\CntReg_reg_n_0_[1] ),
        .I1(\CntReg_reg_n_0_[5] ),
        .I2(\CntReg_reg_n_0_[4] ),
        .I3(\CntReg_reg_n_0_[3] ),
        .O(\CntReg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \CntReg[2]_i_1 
       (.I0(\CntReg_reg_n_0_[1] ),
        .I1(\CntReg_reg_n_0_[0] ),
        .I2(\CntReg_reg_n_0_[2] ),
        .O(CntReg[2]));
  LUT6 #(
    .INIT(64'hFFFF00000000FDFF)) 
    \CntReg[3]_i_1 
       (.I0(\CntReg_reg_n_0_[7] ),
        .I1(\CntReg_reg_n_0_[4] ),
        .I2(\CntReg_reg_n_0_[5] ),
        .I3(\CntReg_reg_n_0_[6] ),
        .I4(\CntReg[7]_i_2_n_0 ),
        .I5(\CntReg_reg_n_0_[3] ),
        .O(CntReg[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \CntReg[4]_i_1 
       (.I0(\CntReg_reg_n_0_[3] ),
        .I1(\CntReg_reg_n_0_[1] ),
        .I2(\CntReg_reg_n_0_[0] ),
        .I3(\CntReg_reg_n_0_[2] ),
        .I4(\CntReg_reg_n_0_[4] ),
        .O(CntReg[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \CntReg[5]_i_1 
       (.I0(\CntReg_reg_n_0_[4] ),
        .I1(\CntReg_reg_n_0_[2] ),
        .I2(\CntReg_reg_n_0_[0] ),
        .I3(\CntReg_reg_n_0_[1] ),
        .I4(\CntReg_reg_n_0_[3] ),
        .I5(\CntReg_reg_n_0_[5] ),
        .O(CntReg[5]));
  LUT6 #(
    .INIT(64'hCCCCCCCC3CCCCCC4)) 
    \CntReg[6]_i_1 
       (.I0(\CntReg_reg_n_0_[7] ),
        .I1(\CntReg_reg_n_0_[6] ),
        .I2(\CntReg_reg_n_0_[3] ),
        .I3(\CntReg_reg_n_0_[4] ),
        .I4(\CntReg_reg_n_0_[5] ),
        .I5(\CntReg[7]_i_2_n_0 ),
        .O(CntReg[6]));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAA2)) 
    \CntReg[7]_i_1 
       (.I0(\CntReg_reg_n_0_[7] ),
        .I1(\CntReg_reg_n_0_[6] ),
        .I2(\CntReg[7]_i_2_n_0 ),
        .I3(\CntReg_reg_n_0_[3] ),
        .I4(\CntReg_reg_n_0_[5] ),
        .I5(\CntReg_reg_n_0_[4] ),
        .O(CntReg[7]));
  LUT3 #(
    .INIT(8'h7F)) 
    \CntReg[7]_i_2 
       (.I0(\CntReg_reg_n_0_[1] ),
        .I1(\CntReg_reg_n_0_[0] ),
        .I2(\CntReg_reg_n_0_[2] ),
        .O(\CntReg[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[0]),
        .Q(\CntReg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[1]),
        .Q(\CntReg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[2]),
        .Q(\CntReg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[3]),
        .Q(\CntReg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[4]),
        .Q(\CntReg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[5]),
        .Q(\CntReg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[6]),
        .Q(\CntReg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[7]),
        .Q(\CntReg_reg_n_0_[7] ));
  FDRE #(
    .INIT(1'b0)) 
    DP_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(CntOut[0]),
        .Q(DP_OBUF),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    PROut_i_1
       (.I0(\CntReg_reg_n_0_[3] ),
        .I1(\CntReg[7]_i_2_n_0 ),
        .I2(\CntReg_reg_n_0_[6] ),
        .I3(\CntReg_reg_n_0_[5] ),
        .I4(\CntReg_reg_n_0_[4] ),
        .I5(\CntReg_reg_n_0_[7] ),
        .O(PROut_0));
  FDCE #(
    .INIT(1'b0)) 
    PROut_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(PROut_0),
        .Q(PROut));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(Q[0]),
        .Q(RDOut[0]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[2]),
        .Q(RDOut[10]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[3]),
        .Q(RDOut[11]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[4]),
        .Q(RDOut[12]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[5]),
        .Q(RDOut[13]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[6]),
        .Q(RDOut[14]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[7]),
        .Q(RDOut[15]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[8]),
        .Q(RDOut[16]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[9]),
        .Q(RDOut[17]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[10]),
        .Q(RDOut[18]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[11]),
        .Q(RDOut[19]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(Q[1]),
        .Q(RDOut[1]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[12]),
        .Q(RDOut[20]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[13]),
        .Q(RDOut[21]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[14]),
        .Q(RDOut[22]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[15]),
        .Q(RDOut[23]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[16]),
        .Q(RDOut[24]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[17]),
        .Q(RDOut[25]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[18]),
        .Q(RDOut[26]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[19]),
        .Q(RDOut[27]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[20]),
        .Q(RDOut[28]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[29] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[21]),
        .Q(RDOut[29]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(Q[2]),
        .Q(RDOut[2]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[30] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[22]),
        .Q(RDOut[30]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[31] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[23]),
        .Q(RDOut[31]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(Q[3]),
        .Q(RDOut[3]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(Q[4]),
        .Q(RDOut[4]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(Q[5]),
        .Q(RDOut[5]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(Q[6]),
        .Q(RDOut[6]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(Q[7]),
        .Q(RDOut[7]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[0]),
        .Q(RDOut[8]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK),
        .CLR(RST_IBUF),
        .D(RDOut[1]),
        .Q(RDOut[9]));
  LUT4 #(
    .INIT(16'h2094)) 
    \SEG_AG[0]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(DecHexOut[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \SEG_AG[1]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(DecHexOut[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \SEG_AG[2]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(DecHexOut[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC234)) 
    \SEG_AG[3]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(DecHexOut[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \SEG_AG[4]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(DecHexOut[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \SEG_AG[5]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(DecHexOut[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4025)) 
    \SEG_AG[6]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(DecHexOut[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_10 
       (.I0(RDOut[14]),
        .I1(RDOut[10]),
        .I2(CntOut[1]),
        .I3(RDOut[6]),
        .I4(CntOut[0]),
        .I5(RDOut[2]),
        .O(\SEG_AG[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_11 
       (.I0(RDOut[30]),
        .I1(RDOut[26]),
        .I2(CntOut[1]),
        .I3(RDOut[22]),
        .I4(CntOut[0]),
        .I5(RDOut[18]),
        .O(\SEG_AG[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_12 
       (.I0(RDOut[13]),
        .I1(RDOut[9]),
        .I2(CntOut[1]),
        .I3(RDOut[5]),
        .I4(CntOut[0]),
        .I5(RDOut[1]),
        .O(\SEG_AG[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_13 
       (.I0(RDOut[29]),
        .I1(RDOut[25]),
        .I2(CntOut[1]),
        .I3(RDOut[21]),
        .I4(CntOut[0]),
        .I5(RDOut[17]),
        .O(\SEG_AG[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_6 
       (.I0(RDOut[15]),
        .I1(RDOut[11]),
        .I2(CntOut[1]),
        .I3(RDOut[7]),
        .I4(CntOut[0]),
        .I5(RDOut[3]),
        .O(\SEG_AG[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_7 
       (.I0(RDOut[31]),
        .I1(RDOut[27]),
        .I2(CntOut[1]),
        .I3(RDOut[23]),
        .I4(CntOut[0]),
        .I5(RDOut[19]),
        .O(\SEG_AG[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_8 
       (.I0(RDOut[12]),
        .I1(RDOut[8]),
        .I2(CntOut[1]),
        .I3(RDOut[4]),
        .I4(CntOut[0]),
        .I5(RDOut[0]),
        .O(\SEG_AG[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_9 
       (.I0(RDOut[28]),
        .I1(RDOut[24]),
        .I2(CntOut[1]),
        .I3(RDOut[20]),
        .I4(CntOut[0]),
        .I5(RDOut[16]),
        .O(\SEG_AG[6]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[0]),
        .Q(\SEG_AG[6] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[1]),
        .Q(\SEG_AG[6] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[2]),
        .Q(\SEG_AG[6] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[3]),
        .Q(\SEG_AG[6] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[4]),
        .Q(\SEG_AG[6] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[5]),
        .Q(\SEG_AG[6] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[6]),
        .Q(\SEG_AG[6] [6]),
        .R(1'b0));
  MUXF7 \SEG_AG_reg[6]_i_2 
       (.I0(\SEG_AG[6]_i_6_n_0 ),
        .I1(\SEG_AG[6]_i_7_n_0 ),
        .O(sel0[3]),
        .S(CntOut[2]));
  MUXF7 \SEG_AG_reg[6]_i_3 
       (.I0(\SEG_AG[6]_i_8_n_0 ),
        .I1(\SEG_AG[6]_i_9_n_0 ),
        .O(sel0[0]),
        .S(CntOut[2]));
  MUXF7 \SEG_AG_reg[6]_i_4 
       (.I0(\SEG_AG[6]_i_10_n_0 ),
        .I1(\SEG_AG[6]_i_11_n_0 ),
        .O(sel0[2]),
        .S(CntOut[2]));
  MUXF7 \SEG_AG_reg[6]_i_5 
       (.I0(\SEG_AG[6]_i_12_n_0 ),
        .I1(\SEG_AG[6]_i_13_n_0 ),
        .O(sel0[1]),
        .S(CntOut[2]));
endmodule

module oled_controller
   (BUSY_OBUF,
    RES_OBUF,
    VBAT_OBUF,
    VDD_OBUF,
    out,
    D_C_reg,
    D,
    E,
    CLK_IBUF_BUFG,
    RST_IBUF,
    DATO_RX_OK,
    Q,
    \CntOut_Out_reg[0] ,
    lopt);
  output BUSY_OBUF;
  output RES_OBUF;
  output VBAT_OBUF;
  output VDD_OBUF;
  output [0:0]out;
  output [0:0]D_C_reg;
  output [7:0]D;
  output [0:0]E;
  input CLK_IBUF_BUFG;
  input RST_IBUF;
  input DATO_RX_OK;
  input [7:0]Q;
  input \CntOut_Out_reg[0] ;
  output lopt;

  wire \/i__n_0 ;
  wire BUSY_OBUF;
  wire BUSY_i_1_n_0;
  wire CLK_IBUF_BUFG;
  wire \CntOut_Out_reg[0] ;
  wire [7:0]D;
  wire [8:0]DATA_TX;
  wire DATA_TX_OK;
  wire \DATA_TX_reg[0]_i_2_n_0 ;
  wire \DATA_TX_reg[1]_i_2_n_0 ;
  wire \DATA_TX_reg[2]_i_2_n_0 ;
  wire \DATA_TX_reg[3]_i_2_n_0 ;
  wire \DATA_TX_reg[4]_i_2_n_0 ;
  wire \DATA_TX_reg[5]_i_2_n_0 ;
  wire \DATA_TX_reg[6]_i_2_n_0 ;
  wire \DATA_TX_reg[7]_i_2_n_0 ;
  wire \DATA_TX_reg[8]_i_3_n_0 ;
  wire \DATA_TX_reg_reg_n_0_[7] ;
  wire DATO_RX_OK;
  wire [8:0]DOUT_cfg;
  wire \DOUT_cfg[0]_i_1_n_0 ;
  wire \DOUT_cfg[1]_i_1_n_0 ;
  wire \DOUT_cfg[2]_i_1_n_0 ;
  wire \DOUT_cfg[3]_i_1_n_0 ;
  wire \DOUT_cfg[4]_i_2_n_0 ;
  wire \DOUT_cfg[4]_i_3_n_0 ;
  wire \DOUT_cfg[5]_i_2_n_0 ;
  wire \DOUT_cfg[5]_i_3_n_0 ;
  wire \DOUT_cfg[6]_i_2_n_0 ;
  wire \DOUT_cfg[6]_i_3_n_0 ;
  wire \DOUT_cfg[7]_i_2_n_0 ;
  wire \DOUT_cfg[8]_i_2_n_0 ;
  wire [7:0]DOUT_dec_reg__0;
  wire [0:0]D_C_reg;
  wire [0:0]E;
  wire EN;
  wire END_TIME;
  wire END_TIME_i_1_n_0;
  wire END_TX;
  (* RTL_KEEP = "yes" *) wire [1:0]END_vector;
  wire EN_reg;
  wire \FSM_onehot_state_cfg[1]_i_1_n_0 ;
  wire \FSM_onehot_state_cfg[2]_i_1_n_0 ;
  wire \FSM_onehot_state_cfg[3]_i_1_n_0 ;
  wire \FSM_onehot_state_cfg[3]_i_2_n_0 ;
  wire \FSM_onehot_state_cfg[4]_i_1_n_0 ;
  wire \FSM_onehot_state_cfg[4]_i_2_n_0 ;
  wire \FSM_onehot_state_cfg[4]_i_3_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_cfg_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_cfg_reg_n_0_[1] ;
  wire \FSM_onehot_std_2[7]_i_1_n_0 ;
  wire \FSM_onehot_std_2[7]_i_2_n_0 ;
  wire \FSM_onehot_std_2[7]_i_3_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_std_2_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_std_2_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_std_2_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_std_2_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_std_2_reg_n_0_[6] ;
  wire \FSM_sequential_state_dec[0]_i_1_n_0 ;
  wire \FSM_sequential_state_dec[0]_i_2_n_0 ;
  wire \FSM_sequential_state_dec[1]_i_1_n_0 ;
  wire \FSM_sequential_state_dec[1]_i_2_n_0 ;
  wire \FSM_sequential_state_dec[2]_i_1_n_0 ;
  wire \FSM_sequential_state_dec[2]_i_2_n_0 ;
  wire \FSM_sequential_std_1[0]_i_1_n_0 ;
  wire \FSM_sequential_std_1[1]_i_1_n_0 ;
  wire \FSM_sequential_std_1[2]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire NEW_DAT_config;
  wire [7:0]Q;
  wire Q_0;
  wire Q_i_2_n_0;
  wire RES_OBUF;
  wire RES_i_1_n_0;
  wire RES_i_2_n_0;
  wire RST_IBUF;
  wire [2:2]VAL_TIME;
  (* RTL_KEEP = "yes" *) wire VAL_TIME_3;
  wire \^VBAT_OBUF ;
  wire VBAT_reg_lopt_replica_1;
  wire VDD_OBUF;
  wire aux_end;
  wire ce__7;
  wire cnt_1ms1__0;
  wire \cnt_1ms[0]_i_1_n_0 ;
  wire \cnt_1ms[1]_i_1_n_0 ;
  wire \cnt_1ms[2]_i_1_n_0 ;
  wire \cnt_1ms[3]_i_1_n_0 ;
  wire \cnt_1ms[4]_i_1_n_0 ;
  wire \cnt_1ms[5]_i_1_n_0 ;
  wire \cnt_1ms[5]_i_2_n_0 ;
  wire \cnt_1ms[6]_i_1_n_0 ;
  wire \cnt_1ms[6]_i_2_n_0 ;
  wire [6:0]cnt_1ms_reg__0;
  (* RTL_KEEP = "yes" *) wire cnt_ADDR_cfg;
  wire \cnt_ADDR_cfg[6]_i_2_n_0 ;
  wire [6:0]cnt_ADDR_cfg_reg__0;
  wire cnt_cmd_glob;
  wire \cnt_cmd_glob[0]_i_1_n_0 ;
  wire \cnt_cmd_glob[1]_i_1_n_0 ;
  wire [3:0]cnt_cmd_glob_reg__0;
  wire [2:0]cnt_cmd_var;
  wire \cnt_cmd_var[0]_i_1_n_0 ;
  wire \cnt_cmd_var[1]_i_1_n_0 ;
  wire \cnt_cmd_var[2]_i_1_n_0 ;
  wire \cnt_msg[1]_i_1_n_0 ;
  wire \cnt_msg[3]_i_1_n_0 ;
  wire \cnt_msg[4]_i_1_n_0 ;
  wire \cnt_msg[6]_i_1_n_0 ;
  wire \cnt_msg[6]_i_4_n_0 ;
  wire [6:0]cnt_msg_reg__0;
  wire [9:3]cnt_pix;
  wire \cnt_pix[0]_i_1_n_0 ;
  wire \cnt_pix[1]_i_1_n_0 ;
  wire \cnt_pix[2]_i_1_n_0 ;
  wire \cnt_pix[9]_i_1_n_0 ;
  wire \cnt_pix[9]_i_3_n_0 ;
  wire [9:3]cnt_pix_4;
  wire [9:0]cnt_pix__0;
  wire \cnt_pix_reg_n_0_[0] ;
  wire \cnt_pix_reg_n_0_[1] ;
  wire \cnt_pix_reg_n_0_[2] ;
  wire [8:4]\memoria_clear[0]_1 ;
  wire [2:0]num_cmds;
  wire \num_cmds[0]_i_1_n_0 ;
  wire \num_cmds[1]_i_1_n_0 ;
  wire \num_cmds[2]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire [6:0]p_0_in;
  (* RTL_KEEP = "yes" *) wire p_0_in1_in;
  wire [9:3]p_0_in_2;
  wire [3:2]p_0_in__0;
  wire [6:0]plusOp;
  wire \plusOp_inferred__1/cnt_pix[4]_i_2_n_0 ;
  wire \plusOp_inferred__1/cnt_pix[5]_i_2_n_0 ;
  wire \plusOp_inferred__1/cnt_pix[8]_i_2_n_0 ;
  wire \plusOp_inferred__1/cnt_pix[9]_i_4_n_0 ;
  wire s_dat;
  wire start;
  wire start_i_1_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]state_dec;
  wire [1:0]state_vd;
  wire \state_vd[0]_i_1_n_0 ;
  wire \state_vd[1]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire [2:0]std_1;
  wire std_11_n_0;
  wire [15:8]NLW_DOUT_dec_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_DOUT_dec_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_DOUT_dec_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_DOUT_dec_reg_DOPBDOP_UNCONNECTED;

  assign lopt = VBAT_reg_lopt_replica_1;
  LUT5 #(
    .INIT(32'h33B833FF)) 
    \/i_ 
       (.I0(END_TX),
        .I1(std_1[1]),
        .I2(s_dat),
        .I3(std_1[2]),
        .I4(std_1[0]),
        .O(\/i__n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    BUSY_i_1
       (.I0(state_vd[1]),
        .I1(state_vd[0]),
        .O(BUSY_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    BUSY_reg
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY_i_1_n_0),
        .D(DATO_RX_OK),
        .PRE(RST_IBUF),
        .Q(BUSY_OBUF));
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_TX_reg[0]_i_1 
       (.I0(Q[0]),
        .I1(END_vector[0]),
        .I2(\DATA_TX_reg[0]_i_2_n_0 ),
        .O(DATA_TX[0]));
  LUT6 #(
    .INIT(64'h88BBB8BB88BB8888)) 
    \DATA_TX_reg[0]_i_2 
       (.I0(DOUT_cfg[0]),
        .I1(END_vector[1]),
        .I2(cnt_cmd_glob_reg__0[1]),
        .I3(cnt_cmd_glob_reg__0[3]),
        .I4(cnt_cmd_glob_reg__0[2]),
        .I5(cnt_cmd_glob_reg__0[0]),
        .O(\DATA_TX_reg[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_TX_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(END_vector[0]),
        .I2(\DATA_TX_reg[1]_i_2_n_0 ),
        .O(DATA_TX[1]));
  LUT6 #(
    .INIT(64'h88B888B88B88888B)) 
    \DATA_TX_reg[1]_i_2 
       (.I0(DOUT_cfg[1]),
        .I1(END_vector[1]),
        .I2(cnt_cmd_glob_reg__0[3]),
        .I3(cnt_cmd_glob_reg__0[2]),
        .I4(cnt_cmd_glob_reg__0[1]),
        .I5(cnt_cmd_glob_reg__0[0]),
        .O(\DATA_TX_reg[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_TX_reg[2]_i_1 
       (.I0(Q[2]),
        .I1(END_vector[0]),
        .I2(\DATA_TX_reg[2]_i_2_n_0 ),
        .O(DATA_TX[2]));
  LUT6 #(
    .INIT(64'h88B88B8B888B888B)) 
    \DATA_TX_reg[2]_i_2 
       (.I0(DOUT_cfg[2]),
        .I1(END_vector[1]),
        .I2(cnt_cmd_glob_reg__0[3]),
        .I3(cnt_cmd_glob_reg__0[2]),
        .I4(cnt_cmd_glob_reg__0[0]),
        .I5(cnt_cmd_glob_reg__0[1]),
        .O(\DATA_TX_reg[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_TX_reg[3]_i_1 
       (.I0(Q[3]),
        .I1(END_vector[0]),
        .I2(\DATA_TX_reg[3]_i_2_n_0 ),
        .O(DATA_TX[3]));
  LUT6 #(
    .INIT(64'h88BB88BB8B8888BB)) 
    \DATA_TX_reg[3]_i_2 
       (.I0(DOUT_cfg[3]),
        .I1(END_vector[1]),
        .I2(cnt_cmd_glob_reg__0[3]),
        .I3(cnt_cmd_glob_reg__0[2]),
        .I4(cnt_cmd_glob_reg__0[1]),
        .I5(cnt_cmd_glob_reg__0[0]),
        .O(\DATA_TX_reg[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_TX_reg[4]_i_1 
       (.I0(Q[4]),
        .I1(END_vector[0]),
        .I2(\DATA_TX_reg[4]_i_2_n_0 ),
        .O(DATA_TX[4]));
  LUT6 #(
    .INIT(64'h88888B8B888BB888)) 
    \DATA_TX_reg[4]_i_2 
       (.I0(DOUT_cfg[4]),
        .I1(END_vector[1]),
        .I2(cnt_cmd_glob_reg__0[3]),
        .I3(cnt_cmd_glob_reg__0[0]),
        .I4(cnt_cmd_glob_reg__0[2]),
        .I5(cnt_cmd_glob_reg__0[1]),
        .O(\DATA_TX_reg[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_TX_reg[5]_i_1 
       (.I0(Q[5]),
        .I1(END_vector[0]),
        .I2(\DATA_TX_reg[5]_i_2_n_0 ),
        .O(DATA_TX[5]));
  LUT6 #(
    .INIT(64'h8BB8888888B88B8B)) 
    \DATA_TX_reg[5]_i_2 
       (.I0(DOUT_cfg[5]),
        .I1(END_vector[1]),
        .I2(cnt_cmd_glob_reg__0[3]),
        .I3(cnt_cmd_glob_reg__0[2]),
        .I4(cnt_cmd_glob_reg__0[1]),
        .I5(cnt_cmd_glob_reg__0[0]),
        .O(\DATA_TX_reg[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_TX_reg[6]_i_1 
       (.I0(Q[6]),
        .I1(END_vector[0]),
        .I2(\DATA_TX_reg[6]_i_2_n_0 ),
        .O(DATA_TX[6]));
  LUT6 #(
    .INIT(64'h888B88B888888BB8)) 
    \DATA_TX_reg[6]_i_2 
       (.I0(DOUT_cfg[6]),
        .I1(END_vector[1]),
        .I2(cnt_cmd_glob_reg__0[3]),
        .I3(cnt_cmd_glob_reg__0[2]),
        .I4(cnt_cmd_glob_reg__0[1]),
        .I5(cnt_cmd_glob_reg__0[0]),
        .O(\DATA_TX_reg[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \DATA_TX_reg[7]_i_1 
       (.I0(Q[7]),
        .I1(END_vector[0]),
        .I2(\DATA_TX_reg[7]_i_2_n_0 ),
        .O(DATA_TX[7]));
  LUT6 #(
    .INIT(64'h8BBB88888BBB8BBB)) 
    \DATA_TX_reg[7]_i_2 
       (.I0(DOUT_cfg[7]),
        .I1(END_vector[1]),
        .I2(cnt_cmd_glob_reg__0[2]),
        .I3(cnt_cmd_glob_reg__0[3]),
        .I4(cnt_cmd_glob_reg__0[0]),
        .I5(cnt_cmd_glob_reg__0[1]),
        .O(\DATA_TX_reg[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \DATA_TX_reg[8]_i_1 
       (.I0(state_vd[1]),
        .I1(state_vd[0]),
        .I2(END_vector[0]),
        .I3(\DATA_TX_reg[8]_i_3_n_0 ),
        .O(DATA_TX_OK));
  LUT3 #(
    .INIT(8'hEA)) 
    \DATA_TX_reg[8]_i_2 
       (.I0(END_vector[0]),
        .I1(DOUT_cfg[8]),
        .I2(END_vector[1]),
        .O(DATA_TX[8]));
  LUT5 #(
    .INIT(32'h888888B8)) 
    \DATA_TX_reg[8]_i_3 
       (.I0(NEW_DAT_config),
        .I1(END_vector[1]),
        .I2(std_1[1]),
        .I3(std_1[2]),
        .I4(std_1[0]),
        .O(\DATA_TX_reg[8]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[0]),
        .Q(p_0_in_2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[1]),
        .Q(p_0_in_2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[2]),
        .Q(p_0_in_2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[3]),
        .Q(p_0_in_2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[4]),
        .Q(p_0_in_2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[5]),
        .Q(p_0_in_2[8]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[6]),
        .Q(p_0_in_2[9]));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[7]),
        .Q(\DATA_TX_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \DATA_TX_reg_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_TX_OK),
        .CLR(RST_IBUF),
        .D(DATA_TX[8]),
        .Q(D_C_reg));
  LUT6 #(
    .INIT(64'h0519510A0E140100)) 
    \DOUT_cfg[0]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[4]),
        .I1(cnt_ADDR_cfg_reg__0[0]),
        .I2(cnt_ADDR_cfg_reg__0[6]),
        .I3(cnt_ADDR_cfg_reg__0[2]),
        .I4(cnt_ADDR_cfg_reg__0[3]),
        .I5(cnt_ADDR_cfg_reg__0[1]),
        .O(\DOUT_cfg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101038A412000732)) 
    \DOUT_cfg[1]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[3]),
        .I1(cnt_ADDR_cfg_reg__0[4]),
        .I2(cnt_ADDR_cfg_reg__0[2]),
        .I3(cnt_ADDR_cfg_reg__0[1]),
        .I4(cnt_ADDR_cfg_reg__0[6]),
        .I5(cnt_ADDR_cfg_reg__0[0]),
        .O(\DOUT_cfg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0032005001121012)) 
    \DOUT_cfg[2]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[4]),
        .I1(cnt_ADDR_cfg_reg__0[6]),
        .I2(cnt_ADDR_cfg_reg__0[3]),
        .I3(cnt_ADDR_cfg_reg__0[2]),
        .I4(cnt_ADDR_cfg_reg__0[0]),
        .I5(cnt_ADDR_cfg_reg__0[1]),
        .O(\DOUT_cfg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002014F00003400)) 
    \DOUT_cfg[3]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[1]),
        .I1(cnt_ADDR_cfg_reg__0[2]),
        .I2(cnt_ADDR_cfg_reg__0[4]),
        .I3(cnt_ADDR_cfg_reg__0[0]),
        .I4(cnt_ADDR_cfg_reg__0[6]),
        .I5(cnt_ADDR_cfg_reg__0[3]),
        .O(\DOUT_cfg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000400100)) 
    \DOUT_cfg[4]_i_2 
       (.I0(cnt_ADDR_cfg_reg__0[5]),
        .I1(cnt_ADDR_cfg_reg__0[6]),
        .I2(cnt_ADDR_cfg_reg__0[3]),
        .I3(cnt_ADDR_cfg_reg__0[4]),
        .I4(cnt_ADDR_cfg_reg__0[1]),
        .I5(cnt_ADDR_cfg_reg__0[2]),
        .O(\DOUT_cfg[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \DOUT_cfg[4]_i_3 
       (.I0(cnt_ADDR_cfg_reg__0[2]),
        .I1(cnt_ADDR_cfg_reg__0[4]),
        .I2(cnt_ADDR_cfg_reg__0[3]),
        .I3(cnt_ADDR_cfg_reg__0[5]),
        .I4(cnt_ADDR_cfg_reg__0[6]),
        .O(\DOUT_cfg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4A6A1A7A5A6B1FAB)) 
    \DOUT_cfg[5]_i_2 
       (.I0(cnt_ADDR_cfg_reg__0[5]),
        .I1(cnt_ADDR_cfg_reg__0[2]),
        .I2(cnt_ADDR_cfg_reg__0[4]),
        .I3(cnt_ADDR_cfg_reg__0[3]),
        .I4(cnt_ADDR_cfg_reg__0[1]),
        .I5(cnt_ADDR_cfg_reg__0[0]),
        .O(\DOUT_cfg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000100100)) 
    \DOUT_cfg[5]_i_3 
       (.I0(cnt_ADDR_cfg_reg__0[5]),
        .I1(cnt_ADDR_cfg_reg__0[4]),
        .I2(cnt_ADDR_cfg_reg__0[2]),
        .I3(cnt_ADDR_cfg_reg__0[3]),
        .I4(cnt_ADDR_cfg_reg__0[0]),
        .I5(cnt_ADDR_cfg_reg__0[1]),
        .O(\DOUT_cfg[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \DOUT_cfg[6]_i_1 
       (.I0(\DOUT_cfg[6]_i_2_n_0 ),
        .I1(cnt_ADDR_cfg_reg__0[5]),
        .I2(\DOUT_cfg[6]_i_3_n_0 ),
        .O(\memoria_clear[0]_1 [6]));
  LUT6 #(
    .INIT(64'hFEFF0000FFFF0000)) 
    \DOUT_cfg[6]_i_2 
       (.I0(cnt_ADDR_cfg_reg__0[0]),
        .I1(cnt_ADDR_cfg_reg__0[2]),
        .I2(cnt_ADDR_cfg_reg__0[4]),
        .I3(cnt_ADDR_cfg_reg__0[3]),
        .I4(cnt_ADDR_cfg_reg__0[6]),
        .I5(cnt_ADDR_cfg_reg__0[1]),
        .O(\DOUT_cfg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h31F4F3301134CC0C)) 
    \DOUT_cfg[6]_i_3 
       (.I0(cnt_ADDR_cfg_reg__0[6]),
        .I1(cnt_ADDR_cfg_reg__0[4]),
        .I2(cnt_ADDR_cfg_reg__0[3]),
        .I3(cnt_ADDR_cfg_reg__0[2]),
        .I4(cnt_ADDR_cfg_reg__0[1]),
        .I5(cnt_ADDR_cfg_reg__0[0]),
        .O(\DOUT_cfg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \DOUT_cfg[7]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[5]),
        .I1(cnt_ADDR_cfg_reg__0[2]),
        .I2(cnt_ADDR_cfg_reg__0[3]),
        .I3(\DOUT_cfg[7]_i_2_n_0 ),
        .I4(cnt_ADDR_cfg_reg__0[4]),
        .I5(cnt_ADDR_cfg_reg__0[0]),
        .O(\memoria_clear[0]_1 [7]));
  LUT2 #(
    .INIT(4'h8)) 
    \DOUT_cfg[7]_i_2 
       (.I0(cnt_ADDR_cfg_reg__0[6]),
        .I1(cnt_ADDR_cfg_reg__0[1]),
        .O(\DOUT_cfg[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F0F1E)) 
    \DOUT_cfg[8]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[4]),
        .I1(cnt_ADDR_cfg_reg__0[5]),
        .I2(cnt_ADDR_cfg_reg__0[6]),
        .I3(cnt_ADDR_cfg_reg__0[3]),
        .I4(\DOUT_cfg[8]_i_2_n_0 ),
        .O(\memoria_clear[0]_1 [8]));
  LUT3 #(
    .INIT(8'hA8)) 
    \DOUT_cfg[8]_i_2 
       (.I0(cnt_ADDR_cfg_reg__0[2]),
        .I1(cnt_ADDR_cfg_reg__0[1]),
        .I2(cnt_ADDR_cfg_reg__0[0]),
        .O(\DOUT_cfg[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\DOUT_cfg[0]_i_1_n_0 ),
        .Q(DOUT_cfg[0]),
        .R(cnt_ADDR_cfg_reg__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\DOUT_cfg[1]_i_1_n_0 ),
        .Q(DOUT_cfg[1]),
        .R(cnt_ADDR_cfg_reg__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\DOUT_cfg[2]_i_1_n_0 ),
        .Q(DOUT_cfg[2]),
        .R(cnt_ADDR_cfg_reg__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\DOUT_cfg[3]_i_1_n_0 ),
        .Q(DOUT_cfg[3]),
        .R(cnt_ADDR_cfg_reg__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\memoria_clear[0]_1 [4]),
        .Q(DOUT_cfg[4]),
        .R(1'b0));
  MUXF7 \DOUT_cfg_reg[4]_i_1 
       (.I0(\DOUT_cfg[4]_i_2_n_0 ),
        .I1(\DOUT_cfg[4]_i_3_n_0 ),
        .O(\memoria_clear[0]_1 [4]),
        .S(cnt_ADDR_cfg_reg__0[0]));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\memoria_clear[0]_1 [5]),
        .Q(DOUT_cfg[5]),
        .R(1'b0));
  MUXF7 \DOUT_cfg_reg[5]_i_1 
       (.I0(\DOUT_cfg[5]_i_2_n_0 ),
        .I1(\DOUT_cfg[5]_i_3_n_0 ),
        .O(\memoria_clear[0]_1 [5]),
        .S(cnt_ADDR_cfg_reg__0[6]));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\memoria_clear[0]_1 [6]),
        .Q(DOUT_cfg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\memoria_clear[0]_1 [7]),
        .Q(DOUT_cfg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DOUT_cfg_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\memoria_clear[0]_1 [8]),
        .Q(DOUT_cfg[8]),
        .R(1'b0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U_OLED/DOUT_dec" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000005F00000000000000000000000000000000000000000000),
    .INIT_11(256'h000000240026003C00640026003C006400000000000000030000000300000000),
    .INIT_12(256'h000000210052002400080012002500420000003200490049007F004900490026),
    .INIT_13(256'h0000000000000000000300000000000000000028005800220055004E00500020),
    .INIT_14(256'h00000000001C0022004100000000000000000000000000410022001C00000000),
    .INIT_15(256'h0000000000080008003E000800080000000000150015000E000E001500150000),
    .INIT_16(256'h0000000000080008000800080008000000000000000000300050000000000000),
    .INIT_17(256'h0000000100020004000800100020004000000000000000000040000000000000),
    .INIT_18(256'h0000000000000040007F00410000000000000000003E004100410041003E0000),
    .INIT_19(256'h0000000000360049004900410022000000000000006E00490051006100420000),
    .INIT_1A(256'h00000000007100490049004900270000000000000010007F0012001400180000),
    .INIT_1B(256'h000000000003000D001100210043000000000000007000480049004A003C0000),
    .INIT_1C(256'h00000000001E0029004900090006000000000000003600490049004900360000),
    .INIT_1D(256'h0000000000000030005200000000000000000000000000000012000000000000),
    .INIT_1E(256'h0000001400140014001400140014000000000000002200140014000800000000),
    .INIT_1F(256'h0000000000020005005900010002000000000000000800140014002200000000),
    .INIT_20(256'h00000040007C004A0009004A007C00400000002E0051004D0055005D0041003E),
    .INIT_21(256'h0000002200410041004100410022001C000000360049004900490049007F0041),
    .INIT_22(256'h000000630041005D00490049007F00410000001C0022004100410041007F0041),
    .INIT_23(256'h00000008003A0049004900410022001C000000030001001D00090049007F0041),
    .INIT_24(256'h0000000000410041007F00410041000000000041007F000800080008007F0041),
    .INIT_25(256'h0000004100610012000C0008007F0041000000010001003F0041004100400030),
    .INIT_26(256'h00000041007F0042000C0042007F0041000000600040004000400041007F0041),
    .INIT_27(256'h0000001C00220041004100410022001C00000001007F0011000C0042007F0041),
    .INIT_28(256'h0000004C00520061002100210012000C000000060009000900090049007F0041),
    .INIT_29(256'h00000033004900490049004900490066000000460069001900090009007F0041),
    .INIT_2A(256'h00000001003F004100400041003F00010000000300010041007F004100010003),
    .INIT_2B(256'h00000001001F006100140061001F000100000001000F003100400031000F0001),
    .INIT_2C(256'h0000000100030044007800440003000100000041004100360008003600410041),
    .INIT_2D(256'h00000000000000410041007F0000000000000061004300450049005100610043),
    .INIT_2E(256'h000000000000007F004100410000000000000040002000100008000400020001),
    .INIT_2F(256'h0000004000400040004000400040000000000004000200010001000200040000),
    .INIT_30(256'h00000040003C004A004A004A0034000000000000000000000000000200010000),
    .INIT_31(256'h000000000024004200420042003C000000000030004800480048003F00410000),
    .INIT_32(256'h00000000002C004A004A004A003C000000000040003F00490048004800300000),
    .INIT_33(256'h00000001003F004900490049002600000000000000090049007E004800000000),
    .INIT_34(256'h0000000000000040007D004400000000000000400078004400040048007F0041),
    .INIT_35(256'h000000420042002400180010007F0041000000000000003D0044004000000000),
    .INIT_36(256'h00000040007E0002007C0002007E00420000000000400040007F004100400000),
    .INIT_37(256'h00000000003C004200420042003C000000000040007C004200020044007E0042),
    .INIT_38(256'h00000041007F0049000900090006000000000006000900090049007F00410000),
    .INIT_39(256'h000000000036004A004A004A0064000000000004000200020044007E00420000),
    .INIT_3A(256'h0040007E002200400040003E0002000000000000002000440044003F00040000),
    .INIT_3B(256'h00000002001E006200180062001E000200000002000E003200400032000E0002),
    .INIT_3C(256'h0000000100030005003800450043000100000042006200140008001400620042),
    .INIT_3D(256'h00000000000000410036000800000000000000620046004A0052006200460000),
    .INIT_3E(256'h000000000008003600410000000000000000000000000000007F000000000000),
    .INIT_3F(256'h005500AA005500AA005500AA005500AA00000018001000100008000800180000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    DOUT_dec_reg
       (.ADDRARDADDR({cnt_pix__0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(CLK_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_DOUT_dec_reg_DOADO_UNCONNECTED[15:8],DOUT_dec_reg__0}),
        .DOBDO(NLW_DOUT_dec_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_DOUT_dec_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_DOUT_dec_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h40)) 
    D_C_i_1
       (.I0(state_dec[2]),
        .I1(state_dec[0]),
        .I2(out),
        .O(E));
  LUT5 #(
    .INIT(32'h00000001)) 
    END_TIME_i_1
       (.I0(cnt_msg_reg__0[6]),
        .I1(cnt_msg_reg__0[4]),
        .I2(cnt_msg_reg__0[5]),
        .I3(Q_i_2_n_0),
        .I4(Q_0),
        .O(END_TIME_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    END_TIME_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(END_TIME_i_1_n_0),
        .Q(END_TIME));
  LUT3 #(
    .INIT(8'hFE)) 
    EN_reg0
       (.I0(VAL_TIME_3),
        .I1(\FSM_onehot_std_2_reg_n_0_[1] ),
        .I2(p_0_in1_in),
        .O(EN));
  FDPE #(
    .INIT(1'b1)) 
    EN_reg_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(EN),
        .PRE(RST_IBUF),
        .Q(EN_reg));
  LUT3 #(
    .INIT(8'hCD)) 
    \FSM_onehot_state_cfg[1]_i_1 
       (.I0(NEW_DAT_config),
        .I1(\FSM_onehot_state_cfg_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_cfg_reg_n_0_[1] ),
        .O(\FSM_onehot_state_cfg[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state_cfg[2]_i_1 
       (.I0(\FSM_onehot_state_cfg_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_cfg_reg_n_0_[0] ),
        .O(\FSM_onehot_state_cfg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \FSM_onehot_state_cfg[3]_i_1 
       (.I0(\FSM_onehot_state_cfg_reg_n_0_[1] ),
        .I1(cnt_ADDR_cfg_reg__0[2]),
        .I2(\FSM_onehot_state_cfg[3]_i_2_n_0 ),
        .I3(\FSM_onehot_state_cfg_reg_n_0_[0] ),
        .I4(NEW_DAT_config),
        .O(\FSM_onehot_state_cfg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \FSM_onehot_state_cfg[3]_i_2 
       (.I0(cnt_ADDR_cfg_reg__0[6]),
        .I1(cnt_ADDR_cfg_reg__0[0]),
        .I2(cnt_ADDR_cfg_reg__0[4]),
        .I3(cnt_ADDR_cfg_reg__0[5]),
        .I4(cnt_ADDR_cfg_reg__0[1]),
        .I5(cnt_ADDR_cfg_reg__0[3]),
        .O(\FSM_onehot_state_cfg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \FSM_onehot_state_cfg[4]_i_1 
       (.I0(\FSM_onehot_state_cfg_reg_n_0_[1] ),
        .I1(END_vector[1]),
        .I2(\FSM_onehot_state_cfg_reg_n_0_[0] ),
        .I3(END_TX),
        .I4(NEW_DAT_config),
        .I5(cnt_ADDR_cfg),
        .O(\FSM_onehot_state_cfg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00540000)) 
    \FSM_onehot_state_cfg[4]_i_2 
       (.I0(\FSM_onehot_state_cfg_reg_n_0_[1] ),
        .I1(cnt_ADDR_cfg_reg__0[2]),
        .I2(\FSM_onehot_state_cfg[4]_i_3_n_0 ),
        .I3(\FSM_onehot_state_cfg_reg_n_0_[0] ),
        .I4(NEW_DAT_config),
        .O(\FSM_onehot_state_cfg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FSM_onehot_state_cfg[4]_i_3 
       (.I0(cnt_ADDR_cfg_reg__0[6]),
        .I1(cnt_ADDR_cfg_reg__0[0]),
        .I2(cnt_ADDR_cfg_reg__0[5]),
        .I3(cnt_ADDR_cfg_reg__0[4]),
        .I4(cnt_ADDR_cfg_reg__0[1]),
        .I5(cnt_ADDR_cfg_reg__0[3]),
        .O(\FSM_onehot_state_cfg[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle_cfg:00001,rd_rom_cfg:00010,actv_nd_cfg:00100,inc_cnt_addr_cfg:10000,fin_cfg:01000" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_cfg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_cfg[4]_i_1_n_0 ),
        .D(1'b0),
        .PRE(RST_IBUF),
        .Q(\FSM_onehot_state_cfg_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "idle_cfg:00001,rd_rom_cfg:00010,actv_nd_cfg:00100,inc_cnt_addr_cfg:10000,fin_cfg:01000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_cfg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_cfg[4]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_state_cfg[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_cfg_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "idle_cfg:00001,rd_rom_cfg:00010,actv_nd_cfg:00100,inc_cnt_addr_cfg:10000,fin_cfg:01000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_cfg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_cfg[4]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_state_cfg[2]_i_1_n_0 ),
        .Q(NEW_DAT_config));
  (* FSM_ENCODED_STATES = "idle_cfg:00001,rd_rom_cfg:00010,actv_nd_cfg:00100,inc_cnt_addr_cfg:10000,fin_cfg:01000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_cfg_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_cfg[4]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_state_cfg[3]_i_1_n_0 ),
        .Q(END_vector[0]));
  (* FSM_ENCODED_STATES = "idle_cfg:00001,rd_rom_cfg:00010,actv_nd_cfg:00100,inc_cnt_addr_cfg:10000,fin_cfg:01000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_cfg_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_cfg[4]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_state_cfg[4]_i_2_n_0 ),
        .Q(cnt_ADDR_cfg));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEEA)) 
    \FSM_onehot_std_2[7]_i_1 
       (.I0(\FSM_onehot_std_2[7]_i_2_n_0 ),
        .I1(END_TIME),
        .I2(\FSM_onehot_std_2_reg_n_0_[1] ),
        .I3(VAL_TIME_3),
        .I4(p_0_in1_in),
        .I5(\FSM_onehot_std_2_reg_n_0_[0] ),
        .O(\FSM_onehot_std_2[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \FSM_onehot_std_2[7]_i_2 
       (.I0(END_TX),
        .I1(\FSM_onehot_std_2_reg_n_0_[2] ),
        .I2(\FSM_onehot_std_2_reg_n_0_[6] ),
        .I3(\FSM_onehot_std_2_reg_n_0_[4] ),
        .I4(\FSM_onehot_std_2[7]_i_3_n_0 ),
        .O(\FSM_onehot_std_2[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_std_2[7]_i_3 
       (.I0(std_1[2]),
        .I1(std_1[0]),
        .I2(std_1[1]),
        .O(\FSM_onehot_std_2[7]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "start_ini:00000001,vdd_on:00000010,send_ae:00000100,wait_1ms:00001000,send_4cmd:00010000,wait_100ms:00100000,send_rest_cmds:01000000,end_init:10000000" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_std_2_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2[7]_i_1_n_0 ),
        .D(1'b0),
        .PRE(RST_IBUF),
        .Q(\FSM_onehot_std_2_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "start_ini:00000001,vdd_on:00000010,send_ae:00000100,wait_1ms:00001000,send_4cmd:00010000,wait_100ms:00100000,send_rest_cmds:01000000,end_init:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_std_2_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_std_2_reg_n_0_[0] ),
        .Q(\FSM_onehot_std_2_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "start_ini:00000001,vdd_on:00000010,send_ae:00000100,wait_1ms:00001000,send_4cmd:00010000,wait_100ms:00100000,send_rest_cmds:01000000,end_init:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_std_2_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_std_2_reg_n_0_[1] ),
        .Q(\FSM_onehot_std_2_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "start_ini:00000001,vdd_on:00000010,send_ae:00000100,wait_1ms:00001000,send_4cmd:00010000,wait_100ms:00100000,send_rest_cmds:01000000,end_init:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_std_2_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_std_2_reg_n_0_[2] ),
        .Q(p_0_in1_in));
  (* FSM_ENCODED_STATES = "start_ini:00000001,vdd_on:00000010,send_ae:00000100,wait_1ms:00001000,send_4cmd:00010000,wait_100ms:00100000,send_rest_cmds:01000000,end_init:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_std_2_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(p_0_in1_in),
        .Q(\FSM_onehot_std_2_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "start_ini:00000001,vdd_on:00000010,send_ae:00000100,wait_1ms:00001000,send_4cmd:00010000,wait_100ms:00100000,send_rest_cmds:01000000,end_init:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_std_2_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_std_2_reg_n_0_[4] ),
        .Q(VAL_TIME_3));
  (* FSM_ENCODED_STATES = "start_ini:00000001,vdd_on:00000010,send_ae:00000100,wait_1ms:00001000,send_4cmd:00010000,wait_100ms:00100000,send_rest_cmds:01000000,end_init:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_std_2_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(VAL_TIME_3),
        .Q(\FSM_onehot_std_2_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "start_ini:00000001,vdd_on:00000010,send_ae:00000100,wait_1ms:00001000,send_4cmd:00010000,wait_100ms:00100000,send_rest_cmds:01000000,end_init:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_std_2_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\FSM_onehot_std_2_reg_n_0_[6] ),
        .Q(END_vector[1]));
  LUT5 #(
    .INIT(32'h0700F0F0)) 
    \FSM_sequential_state_dec[0]_i_1 
       (.I0(state_dec[2]),
        .I1(out),
        .I2(state_dec[0]),
        .I3(\FSM_sequential_state_dec[0]_i_2_n_0 ),
        .I4(\FSM_sequential_state_dec[2]_i_2_n_0 ),
        .O(\FSM_sequential_state_dec[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80FFFFFF)) 
    \FSM_sequential_state_dec[0]_i_2 
       (.I0(\cnt_pix_reg_n_0_[2] ),
        .I1(\cnt_pix_reg_n_0_[0] ),
        .I2(\cnt_pix_reg_n_0_[1] ),
        .I3(D_C_reg),
        .I4(state_dec[2]),
        .O(\FSM_sequential_state_dec[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFE00CCCC)) 
    \FSM_sequential_state_dec[1]_i_1 
       (.I0(state_dec[0]),
        .I1(out),
        .I2(D_C_reg),
        .I3(\FSM_sequential_state_dec[1]_i_2_n_0 ),
        .I4(\FSM_sequential_state_dec[2]_i_2_n_0 ),
        .O(\FSM_sequential_state_dec[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1C1E1E1E1E1E1E1E)) 
    \FSM_sequential_state_dec[1]_i_2 
       (.I0(state_dec[2]),
        .I1(out),
        .I2(state_dec[0]),
        .I3(\cnt_pix_reg_n_0_[1] ),
        .I4(\cnt_pix_reg_n_0_[2] ),
        .I5(\cnt_pix_reg_n_0_[0] ),
        .O(\FSM_sequential_state_dec[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA4CC)) 
    \FSM_sequential_state_dec[2]_i_1 
       (.I0(state_dec[0]),
        .I1(state_dec[2]),
        .I2(out),
        .I3(\FSM_sequential_state_dec[2]_i_2_n_0 ),
        .O(\FSM_sequential_state_dec[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE5AFE)) 
    \FSM_sequential_state_dec[2]_i_2 
       (.I0(state_dec[0]),
        .I1(DATA_TX_OK),
        .I2(out),
        .I3(state_dec[2]),
        .I4(\CntOut_Out_reg[0] ),
        .O(\FSM_sequential_state_dec[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle_dec:000,ld_cnt_pix_dec:001,rd_rom_dec:010,actv_nd_dec_inter:011,actv_nd_dec:100,inc_cnt_pix_dec:110,fin_dec:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_dec_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\FSM_sequential_state_dec[0]_i_1_n_0 ),
        .Q(state_dec[0]));
  (* FSM_ENCODED_STATES = "idle_dec:000,ld_cnt_pix_dec:001,rd_rom_dec:010,actv_nd_dec_inter:011,actv_nd_dec:100,inc_cnt_pix_dec:110,fin_dec:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_dec_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\FSM_sequential_state_dec[1]_i_1_n_0 ),
        .Q(out));
  (* FSM_ENCODED_STATES = "idle_dec:000,ld_cnt_pix_dec:001,rd_rom_dec:010,actv_nd_dec_inter:011,actv_nd_dec:100,inc_cnt_pix_dec:110,fin_dec:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_dec_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\FSM_sequential_state_dec[2]_i_1_n_0 ),
        .Q(state_dec[2]));
  LUT4 #(
    .INIT(16'h07F0)) 
    \FSM_sequential_std_1[0]_i_1 
       (.I0(std_1[2]),
        .I1(std_1[1]),
        .I2(std_1[0]),
        .I3(\/i__n_0 ),
        .O(\FSM_sequential_std_1[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h043CF0F0)) 
    \FSM_sequential_std_1[1]_i_1 
       (.I0(std_11_n_0),
        .I1(std_1[0]),
        .I2(std_1[1]),
        .I3(std_1[2]),
        .I4(\/i__n_0 ),
        .O(\FSM_sequential_std_1[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h24CC)) 
    \FSM_sequential_std_1[2]_i_1 
       (.I0(std_1[0]),
        .I1(std_1[2]),
        .I2(std_1[1]),
        .I3(\/i__n_0 ),
        .O(\FSM_sequential_std_1[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle_1:000,wait_sd:001,act_nd_ini:010,wait_end_tx:011,inc_cnts:100,verif:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_std_1_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\FSM_sequential_std_1[0]_i_1_n_0 ),
        .Q(std_1[0]));
  (* FSM_ENCODED_STATES = "idle_1:000,wait_sd:001,act_nd_ini:010,wait_end_tx:011,inc_cnts:100,verif:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_std_1_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\FSM_sequential_std_1[1]_i_1_n_0 ),
        .Q(std_1[1]));
  (* FSM_ENCODED_STATES = "idle_1:000,wait_sd:001,act_nd_ini:010,wait_end_tx:011,inc_cnts:100,verif:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_std_1_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\FSM_sequential_std_1[2]_i_1_n_0 ),
        .Q(std_1[2]));
  LUT4 #(
    .INIT(16'h0001)) 
    Q_i_1
       (.I0(cnt_msg_reg__0[6]),
        .I1(cnt_msg_reg__0[4]),
        .I2(cnt_msg_reg__0[5]),
        .I3(Q_i_2_n_0),
        .O(aux_end));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Q_i_2
       (.I0(cnt_msg_reg__0[2]),
        .I1(cnt_msg_reg__0[3]),
        .I2(cnt_msg_reg__0[0]),
        .I3(cnt_msg_reg__0[1]),
        .O(Q_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    Q_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(aux_end),
        .PRE(RST_IBUF),
        .Q(Q_0));
  LUT2 #(
    .INIT(4'hE)) 
    RES_i_1
       (.I0(\FSM_onehot_std_2_reg_n_0_[4] ),
        .I1(p_0_in1_in),
        .O(RES_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    RES_i_2
       (.I0(p_0_in1_in),
        .O(RES_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    RES_reg
       (.C(CLK_IBUF_BUFG),
        .CE(RES_i_1_n_0),
        .D(RES_i_2_n_0),
        .PRE(RST_IBUF),
        .Q(RES_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegOut[0]_i_1 
       (.I0(DOUT_dec_reg__0[0]),
        .I1(D_C_reg),
        .I2(p_0_in_2[3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegOut[1]_i_1 
       (.I0(DOUT_dec_reg__0[1]),
        .I1(D_C_reg),
        .I2(p_0_in_2[4]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegOut[2]_i_1 
       (.I0(DOUT_dec_reg__0[2]),
        .I1(D_C_reg),
        .I2(p_0_in_2[5]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegOut[3]_i_1 
       (.I0(DOUT_dec_reg__0[3]),
        .I1(D_C_reg),
        .I2(p_0_in_2[6]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegOut[4]_i_1 
       (.I0(DOUT_dec_reg__0[4]),
        .I1(D_C_reg),
        .I2(p_0_in_2[7]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegOut[5]_i_1 
       (.I0(DOUT_dec_reg__0[5]),
        .I1(D_C_reg),
        .I2(p_0_in_2[8]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegOut[6]_i_1 
       (.I0(DOUT_dec_reg__0[6]),
        .I1(D_C_reg),
        .I2(p_0_in_2[9]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \RegOut[7]_i_1 
       (.I0(DOUT_dec_reg__0[7]),
        .I1(D_C_reg),
        .I2(\DATA_TX_reg_reg_n_0_[7] ),
        .O(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \VAL_TIME_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(VAL_TIME_3),
        .CLR(RST_IBUF),
        .D(1'b1),
        .Q(VAL_TIME));
  FDPE #(
    .INIT(1'b1)) 
    VBAT_reg
       (.C(CLK_IBUF_BUFG),
        .CE(VAL_TIME_3),
        .D(1'b0),
        .PRE(RST_IBUF),
        .Q(\^VBAT_OBUF ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDPE #(
    .INIT(1'b1)) 
    VBAT_reg_lopt_replica
       (.C(CLK_IBUF_BUFG),
        .CE(VAL_TIME_3),
        .D(1'b0),
        .PRE(RST_IBUF),
        .Q(VBAT_reg_lopt_replica_1));
  FDPE #(
    .INIT(1'b1)) 
    VDD_reg
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_std_2_reg_n_0_[1] ),
        .D(1'b0),
        .PRE(RST_IBUF),
        .Q(VDD_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_1ms[0]_i_1 
       (.I0(cnt_1ms_reg__0[0]),
        .I1(cnt_1ms1__0),
        .O(\cnt_1ms[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \cnt_1ms[1]_i_1 
       (.I0(cnt_1ms_reg__0[1]),
        .I1(cnt_1ms_reg__0[0]),
        .I2(cnt_1ms1__0),
        .O(\cnt_1ms[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \cnt_1ms[2]_i_1 
       (.I0(cnt_1ms_reg__0[2]),
        .I1(cnt_1ms_reg__0[1]),
        .I2(cnt_1ms_reg__0[0]),
        .I3(cnt_1ms1__0),
        .O(\cnt_1ms[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cnt_1ms[3]_i_1 
       (.I0(cnt_1ms_reg__0[3]),
        .I1(cnt_1ms_reg__0[2]),
        .I2(cnt_1ms_reg__0[0]),
        .I3(cnt_1ms_reg__0[1]),
        .I4(cnt_1ms1__0),
        .O(\cnt_1ms[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \cnt_1ms[4]_i_1 
       (.I0(cnt_1ms_reg__0[4]),
        .I1(cnt_1ms_reg__0[3]),
        .I2(cnt_1ms_reg__0[1]),
        .I3(cnt_1ms_reg__0[0]),
        .I4(cnt_1ms_reg__0[2]),
        .I5(cnt_1ms1__0),
        .O(\cnt_1ms[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA6AAAAA)) 
    \cnt_1ms[5]_i_1 
       (.I0(cnt_1ms_reg__0[5]),
        .I1(cnt_1ms_reg__0[4]),
        .I2(cnt_1ms_reg__0[2]),
        .I3(\cnt_1ms[5]_i_2_n_0 ),
        .I4(cnt_1ms_reg__0[3]),
        .I5(cnt_1ms1__0),
        .O(\cnt_1ms[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt_1ms[5]_i_2 
       (.I0(cnt_1ms_reg__0[1]),
        .I1(cnt_1ms_reg__0[0]),
        .O(\cnt_1ms[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \cnt_1ms[6]_i_1 
       (.I0(cnt_1ms_reg__0[6]),
        .I1(cnt_1ms_reg__0[5]),
        .I2(\cnt_1ms[6]_i_2_n_0 ),
        .I3(cnt_1ms1__0),
        .O(\cnt_1ms[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt_1ms[6]_i_2 
       (.I0(cnt_1ms_reg__0[4]),
        .I1(cnt_1ms_reg__0[2]),
        .I2(cnt_1ms_reg__0[0]),
        .I3(cnt_1ms_reg__0[1]),
        .I4(cnt_1ms_reg__0[3]),
        .O(\cnt_1ms[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cnt_1ms[6]_i_3 
       (.I0(start),
        .I1(ce__7),
        .O(cnt_1ms1__0));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_1ms[0]_i_1_n_0 ),
        .Q(cnt_1ms_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_1ms[1]_i_1_n_0 ),
        .Q(cnt_1ms_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_1ms[2]_i_1_n_0 ),
        .Q(cnt_1ms_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_1ms[3]_i_1_n_0 ),
        .Q(cnt_1ms_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_1ms[4]_i_1_n_0 ),
        .Q(cnt_1ms_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_1ms[5]_i_1_n_0 ),
        .Q(cnt_1ms_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_1ms_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_1ms[6]_i_1_n_0 ),
        .Q(cnt_1ms_reg__0[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_ADDR_cfg[0]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_ADDR_cfg[1]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[0]),
        .I1(cnt_ADDR_cfg_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_ADDR_cfg[2]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[0]),
        .I1(cnt_ADDR_cfg_reg__0[1]),
        .I2(cnt_ADDR_cfg_reg__0[2]),
        .O(plusOp[2]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_ADDR_cfg[3]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[1]),
        .I1(cnt_ADDR_cfg_reg__0[0]),
        .I2(cnt_ADDR_cfg_reg__0[2]),
        .I3(cnt_ADDR_cfg_reg__0[3]),
        .O(plusOp[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt_ADDR_cfg[4]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[2]),
        .I1(cnt_ADDR_cfg_reg__0[0]),
        .I2(cnt_ADDR_cfg_reg__0[1]),
        .I3(cnt_ADDR_cfg_reg__0[3]),
        .I4(cnt_ADDR_cfg_reg__0[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_ADDR_cfg[5]_i_1 
       (.I0(cnt_ADDR_cfg_reg__0[3]),
        .I1(cnt_ADDR_cfg_reg__0[1]),
        .I2(cnt_ADDR_cfg_reg__0[0]),
        .I3(cnt_ADDR_cfg_reg__0[2]),
        .I4(cnt_ADDR_cfg_reg__0[4]),
        .I5(cnt_ADDR_cfg_reg__0[5]),
        .O(plusOp[5]));
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_ADDR_cfg[6]_i_1 
       (.I0(\cnt_ADDR_cfg[6]_i_2_n_0 ),
        .I1(cnt_ADDR_cfg_reg__0[5]),
        .I2(cnt_ADDR_cfg_reg__0[6]),
        .O(plusOp[6]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt_ADDR_cfg[6]_i_2 
       (.I0(cnt_ADDR_cfg_reg__0[4]),
        .I1(cnt_ADDR_cfg_reg__0[2]),
        .I2(cnt_ADDR_cfg_reg__0[0]),
        .I3(cnt_ADDR_cfg_reg__0[1]),
        .I4(cnt_ADDR_cfg_reg__0[3]),
        .O(\cnt_ADDR_cfg[6]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ADDR_cfg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_ADDR_cfg),
        .CLR(RST_IBUF),
        .D(plusOp[0]),
        .Q(cnt_ADDR_cfg_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ADDR_cfg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_ADDR_cfg),
        .CLR(RST_IBUF),
        .D(plusOp[1]),
        .Q(cnt_ADDR_cfg_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ADDR_cfg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_ADDR_cfg),
        .CLR(RST_IBUF),
        .D(plusOp[2]),
        .Q(cnt_ADDR_cfg_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ADDR_cfg_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_ADDR_cfg),
        .CLR(RST_IBUF),
        .D(plusOp[3]),
        .Q(cnt_ADDR_cfg_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ADDR_cfg_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_ADDR_cfg),
        .CLR(RST_IBUF),
        .D(plusOp[4]),
        .Q(cnt_ADDR_cfg_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ADDR_cfg_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_ADDR_cfg),
        .CLR(RST_IBUF),
        .D(plusOp[5]),
        .Q(cnt_ADDR_cfg_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ADDR_cfg_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_ADDR_cfg),
        .CLR(RST_IBUF),
        .D(plusOp[6]),
        .Q(cnt_ADDR_cfg_reg__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_cmd_glob[0]_i_1 
       (.I0(cnt_cmd_glob_reg__0[0]),
        .O(\cnt_cmd_glob[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_cmd_glob[1]_i_1 
       (.I0(cnt_cmd_glob_reg__0[0]),
        .I1(cnt_cmd_glob_reg__0[1]),
        .O(\cnt_cmd_glob[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_cmd_glob[2]_i_1 
       (.I0(cnt_cmd_glob_reg__0[0]),
        .I1(cnt_cmd_glob_reg__0[1]),
        .I2(cnt_cmd_glob_reg__0[2]),
        .O(p_0_in__0[2]));
  LUT3 #(
    .INIT(8'h02)) 
    \cnt_cmd_glob[3]_i_1 
       (.I0(std_1[2]),
        .I1(std_1[0]),
        .I2(std_1[1]),
        .O(cnt_cmd_glob));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_cmd_glob[3]_i_2 
       (.I0(cnt_cmd_glob_reg__0[1]),
        .I1(cnt_cmd_glob_reg__0[0]),
        .I2(cnt_cmd_glob_reg__0[2]),
        .I3(cnt_cmd_glob_reg__0[3]),
        .O(p_0_in__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_glob_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_cmd_glob),
        .CLR(RST_IBUF),
        .D(\cnt_cmd_glob[0]_i_1_n_0 ),
        .Q(cnt_cmd_glob_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_glob_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_cmd_glob),
        .CLR(RST_IBUF),
        .D(\cnt_cmd_glob[1]_i_1_n_0 ),
        .Q(cnt_cmd_glob_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_glob_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_cmd_glob),
        .CLR(RST_IBUF),
        .D(p_0_in__0[2]),
        .Q(cnt_cmd_glob_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_glob_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(cnt_cmd_glob),
        .CLR(RST_IBUF),
        .D(p_0_in__0[3]),
        .Q(cnt_cmd_glob_reg__0[3]));
  LUT4 #(
    .INIT(16'hEE10)) 
    \cnt_cmd_var[0]_i_1 
       (.I0(std_1[1]),
        .I1(std_1[0]),
        .I2(std_1[2]),
        .I3(cnt_cmd_var[0]),
        .O(\cnt_cmd_var[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFDFC0200)) 
    \cnt_cmd_var[1]_i_1 
       (.I0(cnt_cmd_var[0]),
        .I1(std_1[1]),
        .I2(std_1[0]),
        .I3(std_1[2]),
        .I4(cnt_cmd_var[1]),
        .O(\cnt_cmd_var[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFF000080000)) 
    \cnt_cmd_var[2]_i_1 
       (.I0(cnt_cmd_var[1]),
        .I1(cnt_cmd_var[0]),
        .I2(std_1[1]),
        .I3(std_1[0]),
        .I4(std_1[2]),
        .I5(cnt_cmd_var[2]),
        .O(\cnt_cmd_var[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_var_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_cmd_var[0]_i_1_n_0 ),
        .Q(cnt_cmd_var[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_var_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_cmd_var[1]_i_1_n_0 ),
        .Q(cnt_cmd_var[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_cmd_var_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\cnt_cmd_var[2]_i_1_n_0 ),
        .Q(cnt_cmd_var[2]));
  LUT3 #(
    .INIT(8'h8B)) 
    \cnt_msg[0]_i_1 
       (.I0(\^VBAT_OBUF ),
        .I1(start),
        .I2(cnt_msg_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \cnt_msg[1]_i_1 
       (.I0(start),
        .I1(cnt_msg_reg__0[1]),
        .I2(cnt_msg_reg__0[0]),
        .O(\cnt_msg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \cnt_msg[2]_i_1 
       (.I0(VAL_TIME),
        .I1(start),
        .I2(cnt_msg_reg__0[1]),
        .I3(cnt_msg_reg__0[0]),
        .I4(cnt_msg_reg__0[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h44444441)) 
    \cnt_msg[3]_i_1 
       (.I0(start),
        .I1(cnt_msg_reg__0[3]),
        .I2(cnt_msg_reg__0[1]),
        .I3(cnt_msg_reg__0[0]),
        .I4(cnt_msg_reg__0[2]),
        .O(\cnt_msg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444441)) 
    \cnt_msg[4]_i_1 
       (.I0(start),
        .I1(cnt_msg_reg__0[4]),
        .I2(cnt_msg_reg__0[2]),
        .I3(cnt_msg_reg__0[0]),
        .I4(cnt_msg_reg__0[1]),
        .I5(cnt_msg_reg__0[3]),
        .O(\cnt_msg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \cnt_msg[5]_i_1 
       (.I0(VAL_TIME),
        .I1(start),
        .I2(\cnt_msg[6]_i_4_n_0 ),
        .I3(cnt_msg_reg__0[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFF0000)) 
    \cnt_msg[6]_i_1 
       (.I0(cnt_msg_reg__0[6]),
        .I1(cnt_msg_reg__0[4]),
        .I2(cnt_msg_reg__0[5]),
        .I3(Q_i_2_n_0),
        .I4(start),
        .I5(ce__7),
        .O(\cnt_msg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \cnt_msg[6]_i_2 
       (.I0(VAL_TIME),
        .I1(start),
        .I2(cnt_msg_reg__0[5]),
        .I3(\cnt_msg[6]_i_4_n_0 ),
        .I4(cnt_msg_reg__0[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cnt_msg[6]_i_3 
       (.I0(cnt_1ms_reg__0[2]),
        .I1(cnt_1ms_reg__0[4]),
        .I2(cnt_1ms_reg__0[3]),
        .I3(\cnt_1ms[5]_i_2_n_0 ),
        .I4(cnt_1ms_reg__0[5]),
        .I5(cnt_1ms_reg__0[6]),
        .O(ce__7));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt_msg[6]_i_4 
       (.I0(cnt_msg_reg__0[3]),
        .I1(cnt_msg_reg__0[1]),
        .I2(cnt_msg_reg__0[0]),
        .I3(cnt_msg_reg__0[2]),
        .I4(cnt_msg_reg__0[4]),
        .O(\cnt_msg[6]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_msg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_msg[6]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(p_0_in[0]),
        .Q(cnt_msg_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_msg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_msg[6]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_msg[1]_i_1_n_0 ),
        .Q(cnt_msg_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_msg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_msg[6]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(p_0_in[2]),
        .Q(cnt_msg_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_msg_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_msg[6]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_msg[3]_i_1_n_0 ),
        .Q(cnt_msg_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_msg_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_msg[6]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_msg[4]_i_1_n_0 ),
        .Q(cnt_msg_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_msg_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_msg[6]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(p_0_in[5]),
        .Q(cnt_msg_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_msg_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_msg[6]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(p_0_in[6]),
        .Q(cnt_msg_reg__0[6]));
  LUT4 #(
    .INIT(16'h5455)) 
    \cnt_pix[0]_i_1 
       (.I0(\cnt_pix_reg_n_0_[0] ),
        .I1(out),
        .I2(state_dec[2]),
        .I3(state_dec[0]),
        .O(\cnt_pix[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h66606666)) 
    \cnt_pix[1]_i_1 
       (.I0(\cnt_pix_reg_n_0_[1] ),
        .I1(\cnt_pix_reg_n_0_[0] ),
        .I2(out),
        .I3(state_dec[2]),
        .I4(state_dec[0]),
        .O(\cnt_pix[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6A6A6A006A6A6A6A)) 
    \cnt_pix[2]_i_1 
       (.I0(\cnt_pix_reg_n_0_[2] ),
        .I1(\cnt_pix_reg_n_0_[1] ),
        .I2(\cnt_pix_reg_n_0_[0] ),
        .I3(out),
        .I4(state_dec[2]),
        .I5(state_dec[0]),
        .O(\cnt_pix[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \cnt_pix[3]_i_1 
       (.I0(p_0_in_2[3]),
        .I1(\cnt_pix[9]_i_3_n_0 ),
        .I2(\cnt_pix_reg_n_0_[1] ),
        .I3(\cnt_pix_reg_n_0_[0] ),
        .I4(\cnt_pix_reg_n_0_[2] ),
        .I5(cnt_pix[3]),
        .O(cnt_pix_4[3]));
  LUT6 #(
    .INIT(64'h0008FFFBFFFB0008)) 
    \cnt_pix[4]_i_1 
       (.I0(p_0_in_2[4]),
        .I1(state_dec[0]),
        .I2(state_dec[2]),
        .I3(out),
        .I4(\plusOp_inferred__1/cnt_pix[4]_i_2_n_0 ),
        .I5(cnt_pix[4]),
        .O(cnt_pix_4[4]));
  LUT6 #(
    .INIT(64'h0008FFFBFFFB0008)) 
    \cnt_pix[5]_i_1 
       (.I0(p_0_in_2[5]),
        .I1(state_dec[0]),
        .I2(state_dec[2]),
        .I3(out),
        .I4(\plusOp_inferred__1/cnt_pix[5]_i_2_n_0 ),
        .I5(cnt_pix[5]),
        .O(cnt_pix_4[5]));
  LUT6 #(
    .INIT(64'h0008FFFBFFFB0008)) 
    \cnt_pix[6]_i_1 
       (.I0(p_0_in_2[6]),
        .I1(state_dec[0]),
        .I2(state_dec[2]),
        .I3(out),
        .I4(\plusOp_inferred__1/cnt_pix[8]_i_2_n_0 ),
        .I5(cnt_pix[6]),
        .O(cnt_pix_4[6]));
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \cnt_pix[7]_i_1 
       (.I0(p_0_in_2[7]),
        .I1(\cnt_pix[9]_i_3_n_0 ),
        .I2(\plusOp_inferred__1/cnt_pix[8]_i_2_n_0 ),
        .I3(cnt_pix[6]),
        .I4(cnt_pix[7]),
        .O(cnt_pix_4[7]));
  LUT6 #(
    .INIT(64'h8BBBBBBBB8888888)) 
    \cnt_pix[8]_i_1 
       (.I0(p_0_in_2[8]),
        .I1(\cnt_pix[9]_i_3_n_0 ),
        .I2(cnt_pix[6]),
        .I3(\plusOp_inferred__1/cnt_pix[8]_i_2_n_0 ),
        .I4(cnt_pix[7]),
        .I5(cnt_pix[8]),
        .O(cnt_pix_4[8]));
  LUT3 #(
    .INIT(8'h42)) 
    \cnt_pix[9]_i_1 
       (.I0(state_dec[0]),
        .I1(out),
        .I2(state_dec[2]),
        .O(\cnt_pix[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \cnt_pix[9]_i_2 
       (.I0(p_0_in_2[9]),
        .I1(\cnt_pix[9]_i_3_n_0 ),
        .I2(\plusOp_inferred__1/cnt_pix[9]_i_4_n_0 ),
        .I3(cnt_pix[8]),
        .I4(cnt_pix[9]),
        .O(cnt_pix_4[9]));
  LUT3 #(
    .INIT(8'h02)) 
    \cnt_pix[9]_i_3 
       (.I0(state_dec[0]),
        .I1(state_dec[2]),
        .I2(out),
        .O(\cnt_pix[9]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_pix[0]_i_1_n_0 ),
        .Q(\cnt_pix_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_pix[1]_i_1_n_0 ),
        .Q(\cnt_pix_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_pix[2]_i_1_n_0 ),
        .Q(\cnt_pix_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_4[3]),
        .Q(cnt_pix[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_4[4]),
        .Q(cnt_pix[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_4[5]),
        .Q(cnt_pix[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_4[6]),
        .Q(cnt_pix[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_4[7]),
        .Q(cnt_pix[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_4[8]),
        .Q(cnt_pix[8]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_4[9]),
        .Q(cnt_pix[9]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_pix[0]_i_1_n_0 ),
        .Q(cnt_pix__0[0]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_pix[1]_i_1_n_0 ),
        .Q(cnt_pix__0[1]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\cnt_pix[2]_i_1_n_0 ),
        .Q(cnt_pix__0[2]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_4[3]),
        .Q(cnt_pix__0[3]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_4[4]),
        .Q(cnt_pix__0[4]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_4[5]),
        .Q(cnt_pix__0[5]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_4[6]),
        .Q(cnt_pix__0[6]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_4[7]),
        .Q(cnt_pix__0[7]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_4[8]),
        .Q(cnt_pix__0[8]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cnt_pix_reg_rep[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\cnt_pix[9]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(cnt_pix_4[9]),
        .Q(cnt_pix__0[9]));
  LUT3 #(
    .INIT(8'h40)) 
    i__i_1
       (.I0(out),
        .I1(state_dec[0]),
        .I2(state_dec[2]),
        .O(END_TX));
  LUT4 #(
    .INIT(16'hFBFA)) 
    \num_cmds[0]_i_1 
       (.I0(\FSM_onehot_std_2_reg_n_0_[6] ),
        .I1(\FSM_onehot_std_2_reg_n_0_[4] ),
        .I2(\FSM_onehot_std_2_reg_n_0_[2] ),
        .I3(num_cmds[0]),
        .O(\num_cmds[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABAA)) 
    \num_cmds[1]_i_1 
       (.I0(\FSM_onehot_std_2_reg_n_0_[6] ),
        .I1(\FSM_onehot_std_2_reg_n_0_[4] ),
        .I2(\FSM_onehot_std_2_reg_n_0_[2] ),
        .I3(num_cmds[1]),
        .O(\num_cmds[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \num_cmds[2]_i_1 
       (.I0(\FSM_onehot_std_2_reg_n_0_[6] ),
        .I1(\FSM_onehot_std_2_reg_n_0_[4] ),
        .I2(\FSM_onehot_std_2_reg_n_0_[2] ),
        .I3(num_cmds[2]),
        .O(\num_cmds[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \num_cmds_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\num_cmds[0]_i_1_n_0 ),
        .Q(num_cmds[0]));
  FDCE #(
    .INIT(1'b0)) 
    \num_cmds_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\num_cmds[1]_i_1_n_0 ),
        .Q(num_cmds[1]));
  FDCE #(
    .INIT(1'b0)) 
    \num_cmds_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\num_cmds[2]_i_1_n_0 ),
        .Q(num_cmds[2]));
  LUT4 #(
    .INIT(16'h8000)) 
    \plusOp_inferred__1/cnt_pix[4]_i_2 
       (.I0(cnt_pix[3]),
        .I1(\cnt_pix_reg_n_0_[1] ),
        .I2(\cnt_pix_reg_n_0_[0] ),
        .I3(\cnt_pix_reg_n_0_[2] ),
        .O(\plusOp_inferred__1/cnt_pix[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \plusOp_inferred__1/cnt_pix[5]_i_2 
       (.I0(cnt_pix[4]),
        .I1(\cnt_pix_reg_n_0_[2] ),
        .I2(\cnt_pix_reg_n_0_[0] ),
        .I3(\cnt_pix_reg_n_0_[1] ),
        .I4(cnt_pix[3]),
        .O(\plusOp_inferred__1/cnt_pix[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \plusOp_inferred__1/cnt_pix[8]_i_2 
       (.I0(cnt_pix[5]),
        .I1(cnt_pix[3]),
        .I2(\cnt_pix_reg_n_0_[1] ),
        .I3(\cnt_pix_reg_n_0_[0] ),
        .I4(\cnt_pix_reg_n_0_[2] ),
        .I5(cnt_pix[4]),
        .O(\plusOp_inferred__1/cnt_pix[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \plusOp_inferred__1/cnt_pix[9]_i_4 
       (.I0(cnt_pix[7]),
        .I1(\plusOp_inferred__1/cnt_pix[8]_i_2_n_0 ),
        .I2(cnt_pix[6]),
        .O(\plusOp_inferred__1/cnt_pix[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00FE)) 
    start_i_1
       (.I0(p_0_in1_in),
        .I1(\FSM_onehot_std_2_reg_n_0_[1] ),
        .I2(VAL_TIME_3),
        .I3(EN_reg),
        .O(start_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    start_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(start_i_1_n_0),
        .Q(start));
  LUT6 #(
    .INIT(64'h000FFF0FFF880088)) 
    \state_vd[0]_i_1 
       (.I0(END_vector[1]),
        .I1(END_vector[0]),
        .I2(DATO_RX_OK),
        .I3(state_vd[1]),
        .I4(END_TX),
        .I5(state_vd[0]),
        .O(\state_vd[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFC44)) 
    \state_vd[1]_i_1 
       (.I0(END_TX),
        .I1(state_vd[1]),
        .I2(DATO_RX_OK),
        .I3(state_vd[0]),
        .O(\state_vd[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_vd_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\state_vd[0]_i_1_n_0 ),
        .Q(state_vd[0]));
  FDCE #(
    .INIT(1'b0)) 
    \state_vd_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\state_vd[1]_i_1_n_0 ),
        .Q(state_vd[1]));
  LUT3 #(
    .INIT(8'hFE)) 
    std_10
       (.I0(\FSM_onehot_std_2_reg_n_0_[6] ),
        .I1(\FSM_onehot_std_2_reg_n_0_[2] ),
        .I2(\FSM_onehot_std_2_reg_n_0_[4] ),
        .O(s_dat));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    std_11
       (.I0(cnt_cmd_var[0]),
        .I1(num_cmds[0]),
        .I2(num_cmds[2]),
        .I3(cnt_cmd_var[2]),
        .I4(num_cmds[1]),
        .I5(cnt_cmd_var[1]),
        .O(std_11_n_0));
endmodule

module receiver
   (LED_OBUF,
    DATO_RX_OK,
    Q,
    CLK_IBUF_BUFG,
    RST_IBUF,
    D);
  output LED_OBUF;
  output DATO_RX_OK;
  output [7:0]Q;
  input CLK_IBUF_BUFG;
  input RST_IBUF;
  input [0:0]D;

  wire CLK_IBUF_BUFG;
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
  wire DATO_RX_OK;
  wire DATO_RX_OK_i_1_n_0;
  wire \FSM_sequential_STD_Act[0]_i_1_n_0 ;
  wire \FSM_sequential_STD_Act[1]_i_1_n_0 ;
  wire \FSM_sequential_STD_Act[2]_i_1_n_0 ;
  wire \FSM_sequential_STD_Act[2]_i_3_n_0 ;
  wire \FSM_sequential_STD_Act[2]_i_4_n_0 ;
  wire LED_OBUF;
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
  wire \RDM_Out_reg_n_0_[13] ;
  wire RST_IBUF;
  (* RTL_KEEP = "yes" *) wire [2:0]STD_Act;
  wire Val_Out;
  wire \dato_rx[7]_i_1_n_0 ;
  wire error_recep_i_1_n_0;
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;

  LUT3 #(
    .INIT(8'hA8)) 
    CntB_Cnt1
       (.I0(CntB_Cnt[3]),
        .I1(CntB_Cnt[1]),
        .I2(CntB_Cnt[2]),
        .O(CntB_Cnt1__0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \CntB_Cnt[0]_i_1 
       (.I0(CntB_Cnt[0]),
        .I1(CntB_Cnt[3]),
        .I2(CntB_Cnt[1]),
        .I3(CntB_Cnt[2]),
        .I4(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\CntB_Cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00001344)) 
    \CntB_Cnt[1]_i_1 
       (.I0(CntB_Cnt[3]),
        .I1(CntB_Cnt[1]),
        .I2(CntB_Cnt[2]),
        .I3(CntB_Cnt[0]),
        .I4(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\CntB_Cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00001450)) 
    \CntB_Cnt[2]_i_1 
       (.I0(CntB_Cnt[3]),
        .I1(CntB_Cnt[1]),
        .I2(CntB_Cnt[2]),
        .I3(CntB_Cnt[0]),
        .I4(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\CntB_Cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
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
       (.C(CLK_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\CntB_Cnt[0]_i_1_n_0 ),
        .Q(CntB_Cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \CntB_Cnt_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\CntB_Cnt[1]_i_1_n_0 ),
        .Q(CntB_Cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \CntB_Cnt_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\CntB_Cnt[2]_i_1_n_0 ),
        .Q(CntB_Cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \CntB_Cnt_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(RST_IBUF),
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
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntB_FC_i_1_n_0),
        .Q(CntB_FC_reg_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    CntM_Cnt1
       (.I0(CntM_Cnt[2]),
        .I1(CntM_Cnt[3]),
        .I2(CntM_Cnt[1]),
        .O(CntM_Cnt1__0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00001555)) 
    \CntM_Cnt[0]_i_1 
       (.I0(CntM_Cnt[0]),
        .I1(CntM_Cnt[2]),
        .I2(CntM_Cnt[3]),
        .I3(CntM_Cnt[1]),
        .I4(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\CntM_Cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00000F70)) 
    \CntM_Cnt[1]_i_1 
       (.I0(CntM_Cnt[2]),
        .I1(CntM_Cnt[3]),
        .I2(CntM_Cnt[1]),
        .I3(CntM_Cnt[0]),
        .I4(\CntB_Cnt[3]_i_2_n_0 ),
        .O(\CntM_Cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
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
       (.C(CLK_IBUF_BUFG),
        .CE(\CntM_Cnt[3]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\CntM_Cnt[0]_i_1_n_0 ),
        .Q(CntM_Cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \CntM_Cnt_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CntM_Cnt[3]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\CntM_Cnt[1]_i_1_n_0 ),
        .Q(CntM_Cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \CntM_Cnt_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CntM_Cnt[3]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\CntM_Cnt[2]_i_1_n_0 ),
        .Q(CntM_Cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \CntM_Cnt_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CntM_Cnt[3]_i_1_n_0 ),
        .CLR(RST_IBUF),
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
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntM_FC_i_1_n_0),
        .Q(CntM_FC_reg_n_0));
  LUT4 #(
    .INIT(16'hFE08)) 
    DATO_RX_OK_i_1
       (.I0(STD_Act[1]),
        .I1(STD_Act[0]),
        .I2(STD_Act[2]),
        .I3(DATO_RX_OK),
        .O(DATO_RX_OK_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    DATO_RX_OK_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(DATO_RX_OK_i_1_n_0),
        .Q(DATO_RX_OK));
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
        .I1(p_0_in),
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
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\FSM_sequential_STD_Act[0]_i_1_n_0 ),
        .Q(STD_Act[0]));
  (* FSM_ENCODED_STATES = "idle:000,receiving:001,verifying:010,outputing:011,error:100,iSTATE:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_STD_Act_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(\FSM_sequential_STD_Act[1]_i_1_n_0 ),
        .Q(STD_Act[1]));
  (* FSM_ENCODED_STATES = "idle:000,receiving:001,verifying:010,outputing:011,error:100,iSTATE:101" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_STD_Act_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
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
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC),
        .CLR(RST_IBUF),
        .D(\PR_Cnt[0]_i_1_n_0 ),
        .Q(\PR_Cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \PR_Cnt_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC),
        .CLR(RST_IBUF),
        .D(\PR_Cnt[1]_i_1_n_0 ),
        .Q(\PR_Cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \PR_Cnt_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC),
        .CLR(RST_IBUF),
        .D(\PR_Cnt[2]_i_1_n_0 ),
        .Q(\PR_Cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \PR_Cnt_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC),
        .CLR(RST_IBUF),
        .D(\PR_Cnt[3]_i_1_n_0 ),
        .Q(\PR_Cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \PR_Cnt_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC),
        .CLR(RST_IBUF),
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
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC),
        .CLR(RST_IBUF),
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
        .I1(\RDM_Out_reg_n_0_[13] ),
        .I2(RDM_Out[14]),
        .I3(RDM_Out[3]),
        .I4(RDM_Out[1]),
        .I5(RDM_Out[2]),
        .O(\RDB_Out[10]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \RDB_Out[10]_i_16 
       (.I0(RDM_Out[14]),
        .I1(\RDM_Out_reg_n_0_[13] ),
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
        .I1(\RDM_Out_reg_n_0_[13] ),
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
        .I4(\RDM_Out_reg_n_0_[13] ),
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
        .I4(\RDM_Out_reg_n_0_[13] ),
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
       (.C(CLK_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(RDB_Out[0]),
        .Q(\RDB_Out_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(RDB_Out[10]),
        .Q(\RDB_Out_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(RDB_Out[1]),
        .Q(\RDB_Out_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(RDB_Out[2]),
        .Q(p_6_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(RDB_Out[3]),
        .Q(p_5_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(RDB_Out[4]),
        .Q(p_4_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(RDB_Out[5]),
        .Q(p_3_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(RDB_Out[6]),
        .Q(p_2_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(RDB_Out[7]),
        .Q(p_1_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(RDB_Out[8]),
        .Q(\RDB_Out_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \RDB_Out_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\RDB_Out[10]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(RDB_Out[9]),
        .Q(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(RST_IBUF),
        .D(RDM_Out[1]),
        .Q(RDM_Out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(RST_IBUF),
        .D(RDM_Out[11]),
        .Q(RDM_Out[10]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(RST_IBUF),
        .D(RDM_Out[12]),
        .Q(RDM_Out[11]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(RST_IBUF),
        .D(\RDM_Out_reg_n_0_[13] ),
        .Q(RDM_Out[12]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(RST_IBUF),
        .D(RDM_Out[14]),
        .Q(\RDM_Out_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(RST_IBUF),
        .D(D),
        .Q(RDM_Out[14]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(RST_IBUF),
        .D(RDM_Out[2]),
        .Q(RDM_Out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(RST_IBUF),
        .D(RDM_Out[3]),
        .Q(RDM_Out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(RST_IBUF),
        .D(RDM_Out[4]),
        .Q(RDM_Out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(RST_IBUF),
        .D(RDM_Out[5]),
        .Q(RDM_Out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(RST_IBUF),
        .D(RDM_Out[6]),
        .Q(RDM_Out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(RST_IBUF),
        .D(RDM_Out[7]),
        .Q(RDM_Out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(RST_IBUF),
        .D(RDM_Out[8]),
        .Q(RDM_Out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(RST_IBUF),
        .D(RDM_Out[9]),
        .Q(RDM_Out[8]));
  FDCE #(
    .INIT(1'b0)) 
    \RDM_Out_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(PR_FC_reg_n_0),
        .CLR(RST_IBUF),
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
       (.C(CLK_IBUF_BUFG),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\RDB_Out_reg_n_0_[1] ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(p_6_in),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(p_5_in),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(p_4_in),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(p_3_in),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(p_2_in),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(p_1_in),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\dato_rx[7]_i_1_n_0 ),
        .CLR(RST_IBUF),
        .D(\RDB_Out_reg_n_0_[8] ),
        .Q(Q[7]));
  LUT5 #(
    .INIT(32'h00000111)) 
    error_recep_i_1
       (.I0(STD_Act[0]),
        .I1(STD_Act[2]),
        .I2(STD_Act[1]),
        .I3(Val_Out),
        .I4(RST_IBUF),
        .O(error_recep_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    error_recep_reg
       (.C(CLK_IBUF_BUFG),
        .CE(error_recep_i_1_n_0),
        .D(STD_Act[1]),
        .Q(LED_OBUF),
        .R(1'b0));
endmodule

module spi_controller
   (D_C_OBUF,
    SDIN_OBUF,
    SCLK_OBUF,
    CS_OBUF,
    \FSM_sequential_state_dec_reg[2] ,
    E,
    \DATA_TX_reg_reg[8] ,
    CLK_IBUF_BUFG,
    RST_IBUF,
    out,
    D);
  output D_C_OBUF;
  output SDIN_OBUF;
  output SCLK_OBUF;
  output CS_OBUF;
  output \FSM_sequential_state_dec_reg[2] ;
  input [0:0]E;
  input [0:0]\DATA_TX_reg_reg[8] ;
  input CLK_IBUF_BUFG;
  input RST_IBUF;
  input [0:0]out;
  input [7:0]D;

  wire BUSY;
  wire BUSY_i_1__0_n_0;
  wire BUSY_i_2_n_0;
  wire CLK_IBUF_BUFG;
  wire CS_OBUF;
  wire [3:0]CntOut;
  wire CntOut0;
  wire \CntOut[0]_i_1_n_0 ;
  wire \CntOut[1]_i_1_n_0 ;
  wire \CntOut[2]_i_1_n_0 ;
  wire \CntOut[3]_i_2_n_0 ;
  wire [3:0]CntOut_Out;
  wire \CntOut_Out[3]_i_1_n_0 ;
  wire [4:0]CntReg;
  wire \CntReg[0]_i_1__0_n_0 ;
  wire \CntReg[1]_i_1_n_0 ;
  wire \CntReg[2]_i_1_n_0 ;
  wire \CntReg[3]_i_1_n_0 ;
  wire \CntReg[4]_i_1_n_0 ;
  wire [7:0]D;
  wire [0:0]\DATA_TX_reg_reg[8] ;
  wire D_C_OBUF;
  wire [0:0]E;
  wire FC__0;
  wire FC_n_0;
  wire \FSM_sequential_state_dec_reg[2] ;
  wire RST_IBUF;
  wire \RegOut_reg_n_0_[0] ;
  wire SCLK_OBUF;
  wire SCLK_Out_i_1_n_0;
  wire SDIN_OBUF;
  wire SDIN_i_1_n_0;
  wire SDIN_i_3_n_0;
  wire SDIN_i_4_n_0;
  wire SDIN_reg_i_2_n_0;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire [0:0]out;
  wire ultFC;
  wire ultFC_i_1_n_0;

  LUT5 #(
    .INIT(32'hFFBFAAAA)) 
    BUSY_i_1__0
       (.I0(E),
        .I1(BUSY_i_2_n_0),
        .I2(FC__0),
        .I3(SCLK_OBUF),
        .I4(BUSY),
        .O(BUSY_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    BUSY_i_2
       (.I0(CntOut[3]),
        .I1(CntOut[2]),
        .I2(CntOut[0]),
        .I3(CntOut[1]),
        .O(BUSY_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    BUSY_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(BUSY_i_1__0_n_0),
        .Q(BUSY));
  LUT1 #(
    .INIT(2'h1)) 
    CS_OBUF_inst_i_1
       (.I0(BUSY),
        .O(CS_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h3332)) 
    \CntOut[0]_i_1 
       (.I0(CntOut[1]),
        .I1(CntOut[0]),
        .I2(CntOut[2]),
        .I3(CntOut[3]),
        .O(\CntOut[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h9998)) 
    \CntOut[1]_i_1 
       (.I0(CntOut[1]),
        .I1(CntOut[0]),
        .I2(CntOut[2]),
        .I3(CntOut[3]),
        .O(\CntOut[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE1E0)) 
    \CntOut[2]_i_1 
       (.I0(CntOut[1]),
        .I1(CntOut[0]),
        .I2(CntOut[2]),
        .I3(CntOut[3]),
        .O(\CntOut[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \CntOut[3]_i_1 
       (.I0(SCLK_OBUF),
        .I1(FC__0),
        .I2(BUSY),
        .O(CntOut0));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \CntOut[3]_i_2 
       (.I0(CntOut[3]),
        .I1(CntOut[1]),
        .I2(CntOut[0]),
        .I3(CntOut[2]),
        .O(\CntOut[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CntOut_Out[3]_i_1 
       (.I0(RST_IBUF),
        .O(\CntOut_Out[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CntOut_Out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CntOut_Out[3]_i_1_n_0 ),
        .D(CntOut[0]),
        .Q(CntOut_Out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CntOut_Out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CntOut_Out[3]_i_1_n_0 ),
        .D(CntOut[1]),
        .Q(CntOut_Out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CntOut_Out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CntOut_Out[3]_i_1_n_0 ),
        .D(CntOut[2]),
        .Q(CntOut_Out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CntOut_Out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CntOut_Out[3]_i_1_n_0 ),
        .D(CntOut[3]),
        .Q(CntOut_Out[3]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \CntOut_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CntOut0),
        .CLR(RST_IBUF),
        .D(\CntOut[0]_i_1_n_0 ),
        .Q(CntOut[0]));
  FDCE #(
    .INIT(1'b0)) 
    \CntOut_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CntOut0),
        .CLR(RST_IBUF),
        .D(\CntOut[1]_i_1_n_0 ),
        .Q(CntOut[1]));
  FDCE #(
    .INIT(1'b0)) 
    \CntOut_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CntOut0),
        .CLR(RST_IBUF),
        .D(\CntOut[2]_i_1_n_0 ),
        .Q(CntOut[2]));
  FDPE #(
    .INIT(1'b1)) 
    \CntOut_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CntOut0),
        .D(\CntOut[3]_i_2_n_0 ),
        .PRE(RST_IBUF),
        .Q(CntOut[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \CntReg[0]_i_1__0 
       (.I0(CntReg[0]),
        .O(\CntReg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \CntReg[1]_i_1 
       (.I0(CntReg[1]),
        .I1(CntReg[0]),
        .O(\CntReg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h0FFF7000)) 
    \CntReg[2]_i_1 
       (.I0(CntReg[4]),
        .I1(CntReg[3]),
        .I2(CntReg[1]),
        .I3(CntReg[0]),
        .I4(CntReg[2]),
        .O(\CntReg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h3CCC4CCC)) 
    \CntReg[3]_i_1 
       (.I0(CntReg[4]),
        .I1(CntReg[3]),
        .I2(CntReg[1]),
        .I3(CntReg[0]),
        .I4(CntReg[2]),
        .O(\CntReg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h6AAA2AAA)) 
    \CntReg[4]_i_1 
       (.I0(CntReg[4]),
        .I1(CntReg[3]),
        .I2(CntReg[1]),
        .I3(CntReg[0]),
        .I4(CntReg[2]),
        .O(\CntReg[4]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY),
        .CLR(RST_IBUF),
        .D(\CntReg[0]_i_1__0_n_0 ),
        .Q(CntReg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY),
        .CLR(RST_IBUF),
        .D(\CntReg[1]_i_1_n_0 ),
        .Q(CntReg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY),
        .CLR(RST_IBUF),
        .D(\CntReg[2]_i_1_n_0 ),
        .Q(CntReg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY),
        .CLR(RST_IBUF),
        .D(\CntReg[3]_i_1_n_0 ),
        .Q(CntReg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY),
        .CLR(RST_IBUF),
        .D(\CntReg[4]_i_1_n_0 ),
        .Q(CntReg[4]));
  FDCE #(
    .INIT(1'b0)) 
    D_C_reg
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(\DATA_TX_reg_reg[8] ),
        .Q(D_C_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    FC
       (.I0(CntReg[2]),
        .I1(CntReg[1]),
        .I2(CntReg[0]),
        .I3(CntReg[3]),
        .I4(CntReg[4]),
        .O(FC_n_0));
  FDCE #(
    .INIT(1'b0)) 
    FC_reg
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY),
        .CLR(RST_IBUF),
        .D(FC_n_0),
        .Q(FC__0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_state_dec[2]_i_3 
       (.I0(CntOut_Out[0]),
        .I1(CntOut_Out[3]),
        .I2(CntOut_Out[1]),
        .I3(CntOut_Out[2]),
        .I4(BUSY_i_2_n_0),
        .I5(out),
        .O(\FSM_sequential_state_dec_reg[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \RegOut_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(D[0]),
        .Q(\RegOut_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \RegOut_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(D[1]),
        .Q(data1));
  FDCE #(
    .INIT(1'b0)) 
    \RegOut_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(D[2]),
        .Q(data2));
  FDCE #(
    .INIT(1'b0)) 
    \RegOut_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(D[3]),
        .Q(data3));
  FDCE #(
    .INIT(1'b0)) 
    \RegOut_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(D[4]),
        .Q(data4));
  FDCE #(
    .INIT(1'b0)) 
    \RegOut_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(D[5]),
        .Q(data5));
  FDCE #(
    .INIT(1'b0)) 
    \RegOut_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(D[6]),
        .Q(data6));
  FDCE #(
    .INIT(1'b0)) 
    \RegOut_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(RST_IBUF),
        .D(D[7]),
        .Q(data7));
  LUT4 #(
    .INIT(16'hBF4F)) 
    SCLK_Out_i_1
       (.I0(FC__0),
        .I1(ultFC),
        .I2(BUSY),
        .I3(SCLK_OBUF),
        .O(SCLK_Out_i_1_n_0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    SCLK_Out_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(SCLK_Out_i_1_n_0),
        .Q(SCLK_OBUF));
  LUT6 #(
    .INIT(64'h22222222222C2220)) 
    SDIN_i_1
       (.I0(SDIN_reg_i_2_n_0),
        .I1(CntOut[3]),
        .I2(CntOut[1]),
        .I3(CntOut[2]),
        .I4(data7),
        .I5(CntOut[0]),
        .O(SDIN_i_1_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    SDIN_i_3
       (.I0(data2),
        .I1(data1),
        .I2(CntOut[1]),
        .I3(CntOut[0]),
        .I4(\RegOut_reg_n_0_[0] ),
        .O(SDIN_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    SDIN_i_4
       (.I0(data6),
        .I1(data5),
        .I2(CntOut[1]),
        .I3(data4),
        .I4(CntOut[0]),
        .I5(data3),
        .O(SDIN_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    SDIN_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(SDIN_i_1_n_0),
        .Q(SDIN_OBUF));
  MUXF7 SDIN_reg_i_2
       (.I0(SDIN_i_3_n_0),
        .I1(SDIN_i_4_n_0),
        .O(SDIN_reg_i_2_n_0),
        .S(CntOut[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    ultFC_i_1
       (.I0(FC__0),
        .I1(BUSY),
        .I2(RST_IBUF),
        .I3(ultFC),
        .O(ultFC_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ultFC_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ultFC_i_1_n_0),
        .Q(ultFC),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "17e30f54" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "1" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module top_system
   (RST,
    CLK,
    RX,
    LED,
    DP,
    SEG_AG,
    AND_70,
    BUSY,
    RES,
    VBAT,
    VDD,
    D_C,
    CS,
    SDIN,
    SCLK);
  input RST;
  input CLK;
  input RX;
  output LED;
  output DP;
  output [6:0]SEG_AG;
  output [7:0]AND_70;
  output BUSY;
  output RES;
  output VBAT;
  output VDD;
  output D_C;
  output CS;
  output SDIN;
  output SCLK;

  wire [7:0]AND_70;
  wire [7:0]AND_70_OBUF;
  wire BUSY;
  wire BUSY_OBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire CS;
  wire CS_OBUF;
  wire DATA_SPI_OK;
  wire DATO_RX_OK;
  wire DP;
  wire DP_OBUF;
  wire D_C;
  wire D_C_OBUF;
  wire LED;
  wire LED_OBUF;
  wire RES;
  wire RES_OBUF;
  wire RST;
  wire RST_IBUF;
  wire RX;
  wire RX_IBUF;
  wire SCLK;
  wire SCLK_OBUF;
  wire SDIN;
  wire SDIN_OBUF;
  wire [6:0]SEG_AG;
  wire [6:0]SEG_AG_OBUF;
  wire U_OLED_n_10;
  wire U_OLED_n_11;
  wire U_OLED_n_12;
  wire U_OLED_n_13;
  wire U_OLED_n_4;
  wire U_OLED_n_6;
  wire U_OLED_n_7;
  wire U_OLED_n_8;
  wire U_OLED_n_9;
  wire U_SPI_n_4;
  wire VBAT;
  wire VDD;
  wire VDD_OBUF;
  wire [7:0]dato_rx;
  wire lopt;
  wire p_1_in;
  wire NLW_U_OLED_VBAT_OBUF_UNCONNECTED;

initial begin
 $sdf_annotate("top_system_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \AND_70_OBUF[0]_inst 
       (.I(AND_70_OBUF[0]),
        .O(AND_70[0]));
  OBUF \AND_70_OBUF[1]_inst 
       (.I(AND_70_OBUF[1]),
        .O(AND_70[1]));
  OBUF \AND_70_OBUF[2]_inst 
       (.I(AND_70_OBUF[2]),
        .O(AND_70[2]));
  OBUF \AND_70_OBUF[3]_inst 
       (.I(AND_70_OBUF[3]),
        .O(AND_70[3]));
  OBUF \AND_70_OBUF[4]_inst 
       (.I(AND_70_OBUF[4]),
        .O(AND_70[4]));
  OBUF \AND_70_OBUF[5]_inst 
       (.I(AND_70_OBUF[5]),
        .O(AND_70[5]));
  OBUF \AND_70_OBUF[6]_inst 
       (.I(AND_70_OBUF[6]),
        .O(AND_70[6]));
  OBUF \AND_70_OBUF[7]_inst 
       (.I(AND_70_OBUF[7]),
        .O(AND_70[7]));
  OBUF BUSY_OBUF_inst
       (.I(BUSY_OBUF),
        .O(BUSY));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  OBUF CS_OBUF_inst
       (.I(CS_OBUF),
        .O(CS));
  OBUF DP_OBUF_inst
       (.I(DP_OBUF),
        .O(DP));
  OBUF D_C_OBUF_inst
       (.I(D_C_OBUF),
        .O(D_C));
  OBUF LED_OBUF_inst
       (.I(LED_OBUF),
        .O(LED));
  OBUF RES_OBUF_inst
       (.I(RES_OBUF),
        .O(RES));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  IBUF RX_IBUF_inst
       (.I(RX),
        .O(RX_IBUF));
  OBUF SCLK_OBUF_inst
       (.I(SCLK_OBUF),
        .O(SCLK));
  OBUF SDIN_OBUF_inst
       (.I(SDIN_OBUF),
        .O(SDIN));
  OBUF \SEG_AG_OBUF[0]_inst 
       (.I(SEG_AG_OBUF[0]),
        .O(SEG_AG[0]));
  OBUF \SEG_AG_OBUF[1]_inst 
       (.I(SEG_AG_OBUF[1]),
        .O(SEG_AG[1]));
  OBUF \SEG_AG_OBUF[2]_inst 
       (.I(SEG_AG_OBUF[2]),
        .O(SEG_AG[2]));
  OBUF \SEG_AG_OBUF[3]_inst 
       (.I(SEG_AG_OBUF[3]),
        .O(SEG_AG[3]));
  OBUF \SEG_AG_OBUF[4]_inst 
       (.I(SEG_AG_OBUF[4]),
        .O(SEG_AG[4]));
  OBUF \SEG_AG_OBUF[5]_inst 
       (.I(SEG_AG_OBUF[5]),
        .O(SEG_AG[5]));
  OBUF \SEG_AG_OBUF[6]_inst 
       (.I(SEG_AG_OBUF[6]),
        .O(SEG_AG[6]));
  display_controller U_DISP
       (.AND_70_OBUF(AND_70_OBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .DATO_RX_OK(DATO_RX_OK),
        .DP_OBUF(DP_OBUF),
        .Q(dato_rx),
        .RST_IBUF(RST_IBUF),
        .\SEG_AG[6] (SEG_AG_OBUF));
  oled_controller U_OLED
       (.BUSY_OBUF(BUSY_OBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\CntOut_Out_reg[0] (U_SPI_n_4),
        .D({U_OLED_n_6,U_OLED_n_7,U_OLED_n_8,U_OLED_n_9,U_OLED_n_10,U_OLED_n_11,U_OLED_n_12,U_OLED_n_13}),
        .DATO_RX_OK(DATO_RX_OK),
        .D_C_reg(p_1_in),
        .E(DATA_SPI_OK),
        .Q(dato_rx),
        .RES_OBUF(RES_OBUF),
        .RST_IBUF(RST_IBUF),
        .VBAT_OBUF(NLW_U_OLED_VBAT_OBUF_UNCONNECTED),
        .VDD_OBUF(VDD_OBUF),
        .lopt(lopt),
        .out(U_OLED_n_4));
  spi_controller U_SPI
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CS_OBUF(CS_OBUF),
        .D({U_OLED_n_6,U_OLED_n_7,U_OLED_n_8,U_OLED_n_9,U_OLED_n_10,U_OLED_n_11,U_OLED_n_12,U_OLED_n_13}),
        .\DATA_TX_reg_reg[8] (p_1_in),
        .D_C_OBUF(D_C_OBUF),
        .E(DATA_SPI_OK),
        .\FSM_sequential_state_dec_reg[2] (U_SPI_n_4),
        .RST_IBUF(RST_IBUF),
        .SCLK_OBUF(SCLK_OBUF),
        .SDIN_OBUF(SDIN_OBUF),
        .out(U_OLED_n_4));
  OBUF VBAT_OBUF_inst
       (.I(lopt),
        .O(VBAT));
  OBUF VDD_OBUF_inst
       (.I(VDD_OBUF),
        .O(VDD));
  receiver u_rx
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D(RX_IBUF),
        .DATO_RX_OK(DATO_RX_OK),
        .LED_OBUF(LED_OBUF),
        .Q(dato_rx),
        .RST_IBUF(RST_IBUF));
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
