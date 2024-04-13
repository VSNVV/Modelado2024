// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr  6 10:46:32 2024
// Host        : DESKTOP-RFN3QFD running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/34638/Desktop/Uni/Tercero/SegundoCuatri/Modelado_L/Laboratorio/Modelado2024/P1/project_1/project_1.sim/sim_1/impl/timing/xsim/display_controller_tb_time_impl.v
// Design      : display_controller
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "43b9a2a2" *) 
(* NotValidForBitStream *)
module display_controller
   (RST,
    CLK,
    DATO_RX_OK,
    DATO_RX,
    DP,
    SEG_AG,
    AND_70);
  input RST;
  input CLK;
  input DATO_RX_OK;
  input [7:0]DATO_RX;
  output DP;
  output [6:0]SEG_AG;
  output [7:0]AND_70;

  wire [7:0]AND_70;
  wire \AND_70[0]_i_1_n_0 ;
  wire \AND_70[1]_i_1_n_0 ;
  wire \AND_70[2]_i_1_n_0 ;
  wire \AND_70[3]_i_1_n_0 ;
  wire \AND_70[4]_i_1_n_0 ;
  wire \AND_70[5]_i_1_n_0 ;
  wire \AND_70[6]_i_1_n_0 ;
  wire \AND_70[7]_i_1_n_0 ;
  wire [7:0]AND_70_OBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [2:0]CntOut;
  wire \CntOut[0]_i_1_n_0 ;
  wire \CntOut[1]_i_1_n_0 ;
  wire \CntOut[2]_i_1_n_0 ;
  wire [22:0]CntReg;
  wire \CntReg[22]_i_4_n_0 ;
  wire \CntReg[22]_i_5_n_0 ;
  wire \CntReg[22]_i_6_n_0 ;
  wire \CntReg[22]_i_7_n_0 ;
  wire \CntReg[22]_i_8_n_0 ;
  wire \CntReg[22]_i_9_n_0 ;
  wire \CntReg_reg[12]_i_2_n_0 ;
  wire \CntReg_reg[16]_i_2_n_0 ;
  wire \CntReg_reg[20]_i_2_n_0 ;
  wire \CntReg_reg[4]_i_2_n_0 ;
  wire \CntReg_reg[8]_i_2_n_0 ;
  wire \CntReg_reg_n_0_[0] ;
  wire \CntReg_reg_n_0_[10] ;
  wire \CntReg_reg_n_0_[11] ;
  wire \CntReg_reg_n_0_[12] ;
  wire \CntReg_reg_n_0_[13] ;
  wire \CntReg_reg_n_0_[14] ;
  wire \CntReg_reg_n_0_[15] ;
  wire \CntReg_reg_n_0_[16] ;
  wire \CntReg_reg_n_0_[17] ;
  wire \CntReg_reg_n_0_[18] ;
  wire \CntReg_reg_n_0_[19] ;
  wire \CntReg_reg_n_0_[1] ;
  wire \CntReg_reg_n_0_[20] ;
  wire \CntReg_reg_n_0_[21] ;
  wire \CntReg_reg_n_0_[22] ;
  wire \CntReg_reg_n_0_[2] ;
  wire \CntReg_reg_n_0_[3] ;
  wire \CntReg_reg_n_0_[4] ;
  wire \CntReg_reg_n_0_[5] ;
  wire \CntReg_reg_n_0_[6] ;
  wire \CntReg_reg_n_0_[7] ;
  wire \CntReg_reg_n_0_[8] ;
  wire \CntReg_reg_n_0_[9] ;
  wire [7:0]DATO_RX;
  wire [7:0]DATO_RX_IBUF;
  wire DATO_RX_OK;
  wire DATO_RX_OK_IBUF;
  wire DP;
  wire DP_OBUF;
  wire [6:0]DecHexOut;
  wire PROut;
  wire PROut_reg_n_0;
  wire [31:0]RDOut;
  wire RST;
  wire RST_IBUF;
  wire [6:0]SEG_AG;
  wire \SEG_AG[6]_i_10_n_0 ;
  wire \SEG_AG[6]_i_11_n_0 ;
  wire \SEG_AG[6]_i_12_n_0 ;
  wire \SEG_AG[6]_i_13_n_0 ;
  wire \SEG_AG[6]_i_6_n_0 ;
  wire \SEG_AG[6]_i_7_n_0 ;
  wire \SEG_AG[6]_i_8_n_0 ;
  wire \SEG_AG[6]_i_9_n_0 ;
  wire [6:0]SEG_AG_OBUF;
  wire [22:1]data0;
  wire [3:0]sel0;
  wire [2:0]\NLW_CntReg_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_CntReg_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_CntReg_reg[20]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_CntReg_reg[22]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_CntReg_reg[22]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_CntReg_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_CntReg_reg[8]_i_2_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("display_controller_tb_time_impl.sdf",,,,"tool_control");
end
  LUT2 #(
    .INIT(4'hE)) 
    \AND_70[0]_i_1 
       (.I0(CntOut[0]),
        .I1(CntOut[2]),
        .O(\AND_70[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AND_70[1]_i_1 
       (.I0(CntOut[2]),
        .I1(CntOut[0]),
        .O(\AND_70[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AND_70[2]_i_1 
       (.I0(CntOut[0]),
        .I1(CntOut[1]),
        .O(\AND_70[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \AND_70[3]_i_1 
       (.I0(CntOut[0]),
        .I1(CntOut[1]),
        .O(\AND_70[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \AND_70[4]_i_1 
       (.I0(CntOut[0]),
        .I1(CntOut[2]),
        .O(\AND_70[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \AND_70[5]_i_1 
       (.I0(CntOut[0]),
        .I1(CntOut[2]),
        .O(\AND_70[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
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
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  LUT2 #(
    .INIT(4'h6)) 
    \CntOut[0]_i_1 
       (.I0(PROut_reg_n_0),
        .I1(CntOut[0]),
        .O(\CntOut[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \CntOut[1]_i_1 
       (.I0(CntOut[0]),
        .I1(PROut_reg_n_0),
        .I2(CntOut[1]),
        .O(\CntOut[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \CntOut[2]_i_1 
       (.I0(CntOut[1]),
        .I1(CntOut[0]),
        .I2(PROut_reg_n_0),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \CntReg[0]_i_1 
       (.I0(\CntReg_reg_n_0_[0] ),
        .O(CntReg[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[10]_i_1 
       (.I0(PROut),
        .I1(data0[10]),
        .O(CntReg[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[11]_i_1 
       (.I0(PROut),
        .I1(data0[11]),
        .O(CntReg[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[12]_i_1 
       (.I0(PROut),
        .I1(data0[12]),
        .O(CntReg[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[13]_i_1 
       (.I0(PROut),
        .I1(data0[13]),
        .O(CntReg[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[14]_i_1 
       (.I0(PROut),
        .I1(data0[14]),
        .O(CntReg[14]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[15]_i_1 
       (.I0(PROut),
        .I1(data0[15]),
        .O(CntReg[15]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[16]_i_1 
       (.I0(PROut),
        .I1(data0[16]),
        .O(CntReg[16]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[17]_i_1 
       (.I0(PROut),
        .I1(data0[17]),
        .O(CntReg[17]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[18]_i_1 
       (.I0(PROut),
        .I1(data0[18]),
        .O(CntReg[18]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[19]_i_1 
       (.I0(PROut),
        .I1(data0[19]),
        .O(CntReg[19]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[1]_i_1 
       (.I0(PROut),
        .I1(data0[1]),
        .O(CntReg[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[20]_i_1 
       (.I0(PROut),
        .I1(data0[20]),
        .O(CntReg[20]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[21]_i_1 
       (.I0(PROut),
        .I1(data0[21]),
        .O(CntReg[21]));
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[22]_i_1 
       (.I0(PROut),
        .I1(data0[22]),
        .O(CntReg[22]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \CntReg[22]_i_2 
       (.I0(\CntReg[22]_i_4_n_0 ),
        .I1(\CntReg[22]_i_5_n_0 ),
        .I2(\CntReg[22]_i_6_n_0 ),
        .I3(\CntReg[22]_i_7_n_0 ),
        .I4(\CntReg[22]_i_8_n_0 ),
        .I5(\CntReg[22]_i_9_n_0 ),
        .O(PROut));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \CntReg[22]_i_4 
       (.I0(\CntReg_reg_n_0_[18] ),
        .I1(\CntReg_reg_n_0_[17] ),
        .I2(\CntReg_reg_n_0_[19] ),
        .I3(\CntReg_reg_n_0_[20] ),
        .O(\CntReg[22]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \CntReg[22]_i_5 
       (.I0(\CntReg_reg_n_0_[22] ),
        .I1(\CntReg_reg_n_0_[21] ),
        .I2(\CntReg_reg_n_0_[0] ),
        .O(\CntReg[22]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \CntReg[22]_i_6 
       (.I0(\CntReg_reg_n_0_[9] ),
        .I1(\CntReg_reg_n_0_[10] ),
        .I2(\CntReg_reg_n_0_[11] ),
        .I3(\CntReg_reg_n_0_[12] ),
        .O(\CntReg[22]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \CntReg[22]_i_7 
       (.I0(\CntReg_reg_n_0_[14] ),
        .I1(\CntReg_reg_n_0_[13] ),
        .I2(\CntReg_reg_n_0_[16] ),
        .I3(\CntReg_reg_n_0_[15] ),
        .O(\CntReg[22]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \CntReg[22]_i_8 
       (.I0(\CntReg_reg_n_0_[5] ),
        .I1(\CntReg_reg_n_0_[6] ),
        .I2(\CntReg_reg_n_0_[8] ),
        .I3(\CntReg_reg_n_0_[7] ),
        .O(\CntReg[22]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \CntReg[22]_i_9 
       (.I0(\CntReg_reg_n_0_[2] ),
        .I1(\CntReg_reg_n_0_[1] ),
        .I2(\CntReg_reg_n_0_[4] ),
        .I3(\CntReg_reg_n_0_[3] ),
        .O(\CntReg[22]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[2]_i_1 
       (.I0(PROut),
        .I1(data0[2]),
        .O(CntReg[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[3]_i_1 
       (.I0(PROut),
        .I1(data0[3]),
        .O(CntReg[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[4]_i_1 
       (.I0(PROut),
        .I1(data0[4]),
        .O(CntReg[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[5]_i_1 
       (.I0(PROut),
        .I1(data0[5]),
        .O(CntReg[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[6]_i_1 
       (.I0(PROut),
        .I1(data0[6]),
        .O(CntReg[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[7]_i_1 
       (.I0(PROut),
        .I1(data0[7]),
        .O(CntReg[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[8]_i_1 
       (.I0(PROut),
        .I1(data0[8]),
        .O(CntReg[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \CntReg[9]_i_1 
       (.I0(PROut),
        .I1(data0[9]),
        .O(CntReg[9]));
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
    \CntReg_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[10]),
        .Q(\CntReg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[11]),
        .Q(\CntReg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[12]),
        .Q(\CntReg_reg_n_0_[12] ));
  CARRY4 \CntReg_reg[12]_i_2 
       (.CI(\CntReg_reg[8]_i_2_n_0 ),
        .CO({\CntReg_reg[12]_i_2_n_0 ,\NLW_CntReg_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\CntReg_reg_n_0_[12] ,\CntReg_reg_n_0_[11] ,\CntReg_reg_n_0_[10] ,\CntReg_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[13]),
        .Q(\CntReg_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[14]),
        .Q(\CntReg_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[15]),
        .Q(\CntReg_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[16]),
        .Q(\CntReg_reg_n_0_[16] ));
  CARRY4 \CntReg_reg[16]_i_2 
       (.CI(\CntReg_reg[12]_i_2_n_0 ),
        .CO({\CntReg_reg[16]_i_2_n_0 ,\NLW_CntReg_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\CntReg_reg_n_0_[16] ,\CntReg_reg_n_0_[15] ,\CntReg_reg_n_0_[14] ,\CntReg_reg_n_0_[13] }));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[17]),
        .Q(\CntReg_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[18]),
        .Q(\CntReg_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[19]),
        .Q(\CntReg_reg_n_0_[19] ));
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
    \CntReg_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[20]),
        .Q(\CntReg_reg_n_0_[20] ));
  CARRY4 \CntReg_reg[20]_i_2 
       (.CI(\CntReg_reg[16]_i_2_n_0 ),
        .CO({\CntReg_reg[20]_i_2_n_0 ,\NLW_CntReg_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\CntReg_reg_n_0_[20] ,\CntReg_reg_n_0_[19] ,\CntReg_reg_n_0_[18] ,\CntReg_reg_n_0_[17] }));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[21]),
        .Q(\CntReg_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[22]),
        .Q(\CntReg_reg_n_0_[22] ));
  CARRY4 \CntReg_reg[22]_i_3 
       (.CI(\CntReg_reg[20]_i_2_n_0 ),
        .CO(\NLW_CntReg_reg[22]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_CntReg_reg[22]_i_3_O_UNCONNECTED [3:2],data0[22:21]}),
        .S({1'b0,1'b0,\CntReg_reg_n_0_[22] ,\CntReg_reg_n_0_[21] }));
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
  CARRY4 \CntReg_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\CntReg_reg[4]_i_2_n_0 ,\NLW_CntReg_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\CntReg_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\CntReg_reg_n_0_[4] ,\CntReg_reg_n_0_[3] ,\CntReg_reg_n_0_[2] ,\CntReg_reg_n_0_[1] }));
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
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[8]),
        .Q(\CntReg_reg_n_0_[8] ));
  CARRY4 \CntReg_reg[8]_i_2 
       (.CI(\CntReg_reg[4]_i_2_n_0 ),
        .CO({\CntReg_reg[8]_i_2_n_0 ,\NLW_CntReg_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\CntReg_reg_n_0_[8] ,\CntReg_reg_n_0_[7] ,\CntReg_reg_n_0_[6] ,\CntReg_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(CntReg[9]),
        .Q(\CntReg_reg_n_0_[9] ));
  IBUF \DATO_RX_IBUF[0]_inst 
       (.I(DATO_RX[0]),
        .O(DATO_RX_IBUF[0]));
  IBUF \DATO_RX_IBUF[1]_inst 
       (.I(DATO_RX[1]),
        .O(DATO_RX_IBUF[1]));
  IBUF \DATO_RX_IBUF[2]_inst 
       (.I(DATO_RX[2]),
        .O(DATO_RX_IBUF[2]));
  IBUF \DATO_RX_IBUF[3]_inst 
       (.I(DATO_RX[3]),
        .O(DATO_RX_IBUF[3]));
  IBUF \DATO_RX_IBUF[4]_inst 
       (.I(DATO_RX[4]),
        .O(DATO_RX_IBUF[4]));
  IBUF \DATO_RX_IBUF[5]_inst 
       (.I(DATO_RX[5]),
        .O(DATO_RX_IBUF[5]));
  IBUF \DATO_RX_IBUF[6]_inst 
       (.I(DATO_RX[6]),
        .O(DATO_RX_IBUF[6]));
  IBUF \DATO_RX_IBUF[7]_inst 
       (.I(DATO_RX[7]),
        .O(DATO_RX_IBUF[7]));
  IBUF DATO_RX_OK_IBUF_inst
       (.I(DATO_RX_OK),
        .O(DATO_RX_OK_IBUF));
  OBUF DP_OBUF_inst
       (.I(DP_OBUF),
        .O(DP));
  FDRE #(
    .INIT(1'b0)) 
    DP_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(CntOut[0]),
        .Q(DP_OBUF),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    PROut_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(PROut),
        .Q(PROut_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_RX_IBUF[0]),
        .Q(RDOut[0]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[2]),
        .Q(RDOut[10]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[3]),
        .Q(RDOut[11]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[4]),
        .Q(RDOut[12]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[5]),
        .Q(RDOut[13]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[6]),
        .Q(RDOut[14]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[7]),
        .Q(RDOut[15]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[8]),
        .Q(RDOut[16]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[9]),
        .Q(RDOut[17]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[10]),
        .Q(RDOut[18]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[11]),
        .Q(RDOut[19]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_RX_IBUF[1]),
        .Q(RDOut[1]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[12]),
        .Q(RDOut[20]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[13]),
        .Q(RDOut[21]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[14]),
        .Q(RDOut[22]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[15]),
        .Q(RDOut[23]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[16]),
        .Q(RDOut[24]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[17]),
        .Q(RDOut[25]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[18]),
        .Q(RDOut[26]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[19]),
        .Q(RDOut[27]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[20]),
        .Q(RDOut[28]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[29] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[21]),
        .Q(RDOut[29]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_RX_IBUF[2]),
        .Q(RDOut[2]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[30] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[22]),
        .Q(RDOut[30]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[31] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[23]),
        .Q(RDOut[31]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_RX_IBUF[3]),
        .Q(RDOut[3]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_RX_IBUF[4]),
        .Q(RDOut[4]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_RX_IBUF[5]),
        .Q(RDOut[5]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_RX_IBUF[6]),
        .Q(RDOut[6]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_RX_IBUF[7]),
        .Q(RDOut[7]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[0]),
        .Q(RDOut[8]));
  FDCE #(
    .INIT(1'b0)) 
    \RDOut_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(RDOut[1]),
        .Q(RDOut[9]));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \SEG_AG[0]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(DecHexOut[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \SEG_AG[1]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(DecHexOut[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[0]),
        .Q(SEG_AG_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[1]),
        .Q(SEG_AG_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[2]),
        .Q(SEG_AG_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[3]),
        .Q(SEG_AG_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[4]),
        .Q(SEG_AG_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[5]),
        .Q(SEG_AG_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DecHexOut[6]),
        .Q(SEG_AG_OBUF[6]),
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
