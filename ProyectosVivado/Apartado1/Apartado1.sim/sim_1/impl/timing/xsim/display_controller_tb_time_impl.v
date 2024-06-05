// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jun  5 23:40:34 2024
// Host        : victorsanavia running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               V:/Programacion/RepositoriosGit/Modelado2024/ProyectosVivado/Apartado1/Apartado1.sim/sim_1/impl/timing/xsim/display_controller_tb_time_impl.v
// Design      : test_display_controller
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module display_controller
   (DP_OBUF,
    Q,
    AND_70_OBUF,
    CLK_IBUF_BUFG,
    AR,
    E,
    D);
  output DP_OBUF;
  output [6:0]Q;
  output [7:0]AND_70_OBUF;
  input CLK_IBUF_BUFG;
  input [0:0]AR;
  input [0:0]E;
  input [7:0]D;

  wire \AND_70[0]_i_1_n_0 ;
  wire \AND_70[1]_i_1_n_0 ;
  wire \AND_70[2]_i_1_n_0 ;
  wire \AND_70[3]_i_1_n_0 ;
  wire \AND_70[4]_i_1_n_0 ;
  wire \AND_70[5]_i_1_n_0 ;
  wire \AND_70[6]_i_1_n_0 ;
  wire \AND_70[7]_i_1_n_0 ;
  wire [7:0]AND_70_OBUF;
  wire [0:0]AR;
  wire CLK_IBUF_BUFG;
  wire [2:0]CntOut;
  wire \CntOut[0]_i_1_n_0 ;
  wire \CntOut[1]_i_1_n_0 ;
  wire \CntOut[2]_i_1_n_0 ;
  wire [7:0]CntReg;
  wire \CntReg[7]_i_2_n_0 ;
  wire [7:0]CntReg_0;
  wire [7:0]D;
  wire DP_OBUF;
  wire [6:0]DecHexOut;
  wire [0:0]E;
  wire PROut;
  wire PROut_1;
  wire [6:0]Q;
  wire [31:0]RDOut;
  wire \SEG_AG[6]_i_10_n_0 ;
  wire \SEG_AG[6]_i_11_n_0 ;
  wire \SEG_AG[6]_i_12_n_0 ;
  wire \SEG_AG[6]_i_13_n_0 ;
  wire \SEG_AG[6]_i_6_n_0 ;
  wire \SEG_AG[6]_i_7_n_0 ;
  wire \SEG_AG[6]_i_8_n_0 ;
  wire \SEG_AG[6]_i_9_n_0 ;
  wire [3:0]sel0;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AND_70[2]_i_1 
       (.I0(CntOut[0]),
        .I1(CntOut[1]),
        .O(\AND_70[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \AND_70[3]_i_1 
       (.I0(CntOut[0]),
        .I1(CntOut[1]),
        .O(\AND_70[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
        .CLR(AR),
        .D(\CntOut[0]_i_1_n_0 ),
        .Q(CntOut[0]));
  FDCE #(
    .INIT(1'b0)) 
    \CntOut_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\CntOut[1]_i_1_n_0 ),
        .Q(CntOut[1]));
  FDCE #(
    .INIT(1'b0)) 
    \CntOut_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\CntOut[2]_i_1_n_0 ),
        .Q(CntOut[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \CntReg[0]_i_1 
       (.I0(CntReg[0]),
        .O(CntReg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \CntReg[1]_i_1 
       (.I0(CntReg[1]),
        .I1(CntReg[0]),
        .O(CntReg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \CntReg[2]_i_1 
       (.I0(CntReg[2]),
        .I1(CntReg[0]),
        .I2(CntReg[1]),
        .O(CntReg_0[2]));
  LUT6 #(
    .INIT(64'hFFFF00000000FFF7)) 
    \CntReg[3]_i_1 
       (.I0(CntReg[7]),
        .I1(CntReg[6]),
        .I2(CntReg[5]),
        .I3(CntReg[4]),
        .I4(\CntReg[7]_i_2_n_0 ),
        .I5(CntReg[3]),
        .O(CntReg_0[3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \CntReg[4]_i_1 
       (.I0(CntReg[4]),
        .I1(CntReg[2]),
        .I2(CntReg[0]),
        .I3(CntReg[1]),
        .I4(CntReg[3]),
        .O(CntReg_0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \CntReg[5]_i_1 
       (.I0(CntReg[5]),
        .I1(CntReg[3]),
        .I2(CntReg[1]),
        .I3(CntReg[0]),
        .I4(CntReg[2]),
        .I5(CntReg[4]),
        .O(CntReg_0[5]));
  LUT6 #(
    .INIT(64'hCFFFFFFD30000000)) 
    \CntReg[6]_i_1 
       (.I0(CntReg[7]),
        .I1(\CntReg[7]_i_2_n_0 ),
        .I2(CntReg[3]),
        .I3(CntReg[4]),
        .I4(CntReg[5]),
        .I5(CntReg[6]),
        .O(CntReg_0[6]));
  LUT6 #(
    .INIT(64'hFFFF7FFD00008000)) 
    \CntReg[7]_i_1 
       (.I0(CntReg[6]),
        .I1(CntReg[4]),
        .I2(CntReg[5]),
        .I3(CntReg[3]),
        .I4(\CntReg[7]_i_2_n_0 ),
        .I5(CntReg[7]),
        .O(CntReg_0[7]));
  LUT3 #(
    .INIT(8'h7F)) 
    \CntReg[7]_i_2 
       (.I0(CntReg[2]),
        .I1(CntReg[0]),
        .I2(CntReg[1]),
        .O(\CntReg[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(CntReg_0[0]),
        .Q(CntReg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(CntReg_0[1]),
        .Q(CntReg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(CntReg_0[2]),
        .Q(CntReg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(CntReg_0[3]),
        .Q(CntReg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(CntReg_0[4]),
        .Q(CntReg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(CntReg_0[5]),
        .Q(CntReg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(CntReg_0[6]),
        .Q(CntReg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(CntReg_0[7]),
        .Q(CntReg[7]));
  FDRE #(
    .INIT(1'b0)) 
    DP_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(CntOut[0]),
        .Q(DP_OBUF),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    PROut_i_1
       (.I0(\CntReg[7]_i_2_n_0 ),
        .I1(CntReg[7]),
        .I2(CntReg[6]),
        .I3(CntReg[5]),
        .I4(CntReg[4]),
        .I5(CntReg[3]),
        .O(PROut_1));
  FDCE #(
    .INIT(1'b0)) 
    PROut_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(PROut_1),
        .Q(PROut));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(RDOut[0]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[2]),
        .Q(RDOut[10]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[3]),
        .Q(RDOut[11]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[4]),
        .Q(RDOut[12]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[5]),
        .Q(RDOut[13]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[6]),
        .Q(RDOut[14]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[7]),
        .Q(RDOut[15]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[8]),
        .Q(RDOut[16]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[9]),
        .Q(RDOut[17]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[10]),
        .Q(RDOut[18]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[11]),
        .Q(RDOut[19]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(RDOut[1]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[12]),
        .Q(RDOut[20]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[13]),
        .Q(RDOut[21]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[14]),
        .Q(RDOut[22]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[15]),
        .Q(RDOut[23]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[16]),
        .Q(RDOut[24]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[17]),
        .Q(RDOut[25]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[18]),
        .Q(RDOut[26]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[19]),
        .Q(RDOut[27]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[20]),
        .Q(RDOut[28]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[29] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[21]),
        .Q(RDOut[29]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(RDOut[2]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[30] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[22]),
        .Q(RDOut[30]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[31] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[23]),
        .Q(RDOut[31]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(RDOut[3]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(RDOut[4]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(RDOut[5]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(RDOut[6]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(RDOut[7]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[0]),
        .Q(RDOut[8]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(RDOut[1]),
        .Q(RDOut[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[6]),
        .Q(Q[6]),
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

(* ECO_CHECKSUM = "b2a9ac02" *) 
(* NotValidForBitStream *)
module test_display_controller
   (CLK,
    RST,
    SW_OK,
    SW,
    SEG_AG,
    AND_70,
    DP);
  input CLK;
  input RST;
  input SW_OK;
  input [7:0]SW;
  output [6:0]SEG_AG;
  output [7:0]AND_70;
  output DP;

  wire [7:0]AND_70;
  wire [7:0]AND_70_OBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire DP;
  wire DP_OBUF;
  wire LOAD;
  wire LOAD_i_1_n_0;
  wire RST;
  wire RST_IBUF;
  wire [6:0]SEG_AG;
  wire [6:0]SEG_AG_OBUF;
  wire [7:0]SW;
  wire [7:0]SW_IBUF;
  wire SW_OK;
  wire SW_OK_IBUF;
  wire SW_OK_REG;

initial begin
 $sdf_annotate("display_controller_tb_time_impl.sdf",,,,"tool_control");
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
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  OBUF DP_OBUF_inst
       (.I(DP_OBUF),
        .O(DP));
  LUT2 #(
    .INIT(4'h2)) 
    LOAD_i_1
       (.I0(SW_OK_IBUF),
        .I1(SW_OK_REG),
        .O(LOAD_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    LOAD_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(LOAD_i_1_n_0),
        .Q(LOAD));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
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
  IBUF \SW_IBUF[0]_inst 
       (.I(SW[0]),
        .O(SW_IBUF[0]));
  IBUF \SW_IBUF[1]_inst 
       (.I(SW[1]),
        .O(SW_IBUF[1]));
  IBUF \SW_IBUF[2]_inst 
       (.I(SW[2]),
        .O(SW_IBUF[2]));
  IBUF \SW_IBUF[3]_inst 
       (.I(SW[3]),
        .O(SW_IBUF[3]));
  IBUF \SW_IBUF[4]_inst 
       (.I(SW[4]),
        .O(SW_IBUF[4]));
  IBUF \SW_IBUF[5]_inst 
       (.I(SW[5]),
        .O(SW_IBUF[5]));
  IBUF \SW_IBUF[6]_inst 
       (.I(SW[6]),
        .O(SW_IBUF[6]));
  IBUF \SW_IBUF[7]_inst 
       (.I(SW[7]),
        .O(SW_IBUF[7]));
  IBUF SW_OK_IBUF_inst
       (.I(SW_OK),
        .O(SW_OK_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    SW_OK_REG_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(SW_OK_IBUF),
        .Q(SW_OK_REG));
  display_controller U_DISPLAY
       (.AND_70_OBUF(AND_70_OBUF),
        .AR(RST_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D(SW_IBUF),
        .DP_OBUF(DP_OBUF),
        .E(LOAD),
        .Q(SEG_AG_OBUF));
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
