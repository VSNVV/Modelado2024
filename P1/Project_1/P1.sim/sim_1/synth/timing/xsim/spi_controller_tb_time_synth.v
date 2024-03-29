// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Mar 29 19:07:35 2024
// Host        : DESKTOP-RFN3QFD running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/34638/Desktop/Uni/Tercero/SegundoCuatri/Modelado_L/Laboratorio/Modelado2024/P1/Project_1/P1.sim/sim_1/synth/timing/xsim/spi_controller_tb_time_synth.v
// Design      : display_controller
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

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
  wire [7:0]AND_70_OBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [7:0]DATO_RX;
  wire [7:0]DATO_RX_IBUF;
  wire DATO_RX_OK;
  wire DATO_RX_OK_IBUF;
  wire DP;
  wire DP_OBUF;
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
  wire cc_out;
  wire [2:0]cont_out;
  wire \cont_out_reg[0]_i_1_n_0 ;
  wire \cont_out_reg[1]_i_1_n_0 ;
  wire \cont_out_reg[2]_i_1_n_0 ;
  wire \cont_out_reg[2]_i_2_n_0 ;
  wire [7:0]counter_reg;
  wire \counter_reg[1]_i_2_n_0 ;
  wire \counter_reg[7]_i_2_n_0 ;
  wire \counter_reg_reg_n_0_[0] ;
  wire \counter_reg_reg_n_0_[1] ;
  wire \counter_reg_reg_n_0_[2] ;
  wire \counter_reg_reg_n_0_[3] ;
  wire \counter_reg_reg_n_0_[4] ;
  wire \counter_reg_reg_n_0_[5] ;
  wire \counter_reg_reg_n_0_[6] ;
  wire \counter_reg_reg_n_0_[7] ;
  wire [7:0]dec_3To8_out;
  wire [6:0]dec_hexTo7_out;
  wire prescaler_out;
  wire prescaler_out_reg_n_0;
  wire [31:0]reg_desp;
  wire [3:0]sel0;

initial begin
 $sdf_annotate("spi_controller_tb_time_synth.sdf",,,,"tool_control");
end
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \AND_70[0]_i_1 
       (.I0(cont_out[2]),
        .I1(cont_out[0]),
        .I2(cont_out[1]),
        .O(dec_3To8_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \AND_70[1]_i_1 
       (.I0(cont_out[2]),
        .I1(cont_out[0]),
        .I2(cont_out[1]),
        .O(dec_3To8_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \AND_70[2]_i_1 
       (.I0(cont_out[0]),
        .I1(cont_out[1]),
        .I2(cont_out[2]),
        .O(dec_3To8_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \AND_70[3]_i_1 
       (.I0(cont_out[1]),
        .I1(cont_out[0]),
        .I2(cont_out[2]),
        .O(dec_3To8_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \AND_70[4]_i_1 
       (.I0(cont_out[0]),
        .I1(cont_out[2]),
        .I2(cont_out[1]),
        .O(dec_3To8_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \AND_70[5]_i_1 
       (.I0(cont_out[2]),
        .I1(cont_out[0]),
        .I2(cont_out[1]),
        .O(dec_3To8_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \AND_70[6]_i_1 
       (.I0(cont_out[1]),
        .I1(cont_out[2]),
        .I2(cont_out[0]),
        .O(dec_3To8_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \AND_70[7]_i_1 
       (.I0(cont_out[1]),
        .I1(cont_out[2]),
        .I2(cont_out[0]),
        .O(dec_3To8_out[7]));
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
  FDCE #(
    .INIT(1'b0)) 
    \AND_70_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(dec_3To8_out[0]),
        .Q(AND_70_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \AND_70_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(dec_3To8_out[1]),
        .Q(AND_70_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \AND_70_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(dec_3To8_out[2]),
        .Q(AND_70_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \AND_70_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(dec_3To8_out[3]),
        .Q(AND_70_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \AND_70_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(dec_3To8_out[4]),
        .Q(AND_70_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \AND_70_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(dec_3To8_out[5]),
        .Q(AND_70_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \AND_70_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(dec_3To8_out[6]),
        .Q(AND_70_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \AND_70_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(dec_3To8_out[7]),
        .Q(AND_70_OBUF[7]));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    DP_i_1
       (.I0(cont_out[0]),
        .O(cc_out));
  FDCE #(
    .INIT(1'b0)) 
    DP_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(cc_out),
        .Q(DP_OBUF));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4025)) 
    \SEG_AG[0]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(dec_hexTo7_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \SEG_AG[1]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(dec_hexTo7_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \SEG_AG[2]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(dec_hexTo7_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \SEG_AG[3]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(dec_hexTo7_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \SEG_AG[4]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(dec_hexTo7_out[4]));
  LUT4 #(
    .INIT(16'hAC48)) 
    \SEG_AG[5]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(dec_hexTo7_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \SEG_AG[6]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(dec_hexTo7_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_10 
       (.I0(reg_desp[12]),
        .I1(reg_desp[8]),
        .I2(cont_out[1]),
        .I3(reg_desp[4]),
        .I4(cont_out[0]),
        .I5(reg_desp[0]),
        .O(\SEG_AG[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_11 
       (.I0(reg_desp[28]),
        .I1(reg_desp[24]),
        .I2(cont_out[1]),
        .I3(reg_desp[20]),
        .I4(cont_out[0]),
        .I5(reg_desp[16]),
        .O(\SEG_AG[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_12 
       (.I0(reg_desp[13]),
        .I1(reg_desp[9]),
        .I2(cont_out[1]),
        .I3(reg_desp[5]),
        .I4(cont_out[0]),
        .I5(reg_desp[1]),
        .O(\SEG_AG[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_13 
       (.I0(reg_desp[29]),
        .I1(reg_desp[25]),
        .I2(cont_out[1]),
        .I3(reg_desp[21]),
        .I4(cont_out[0]),
        .I5(reg_desp[17]),
        .O(\SEG_AG[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_6 
       (.I0(reg_desp[15]),
        .I1(reg_desp[11]),
        .I2(cont_out[1]),
        .I3(reg_desp[7]),
        .I4(cont_out[0]),
        .I5(reg_desp[3]),
        .O(\SEG_AG[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_7 
       (.I0(reg_desp[31]),
        .I1(reg_desp[27]),
        .I2(cont_out[1]),
        .I3(reg_desp[23]),
        .I4(cont_out[0]),
        .I5(reg_desp[19]),
        .O(\SEG_AG[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_8 
       (.I0(reg_desp[14]),
        .I1(reg_desp[10]),
        .I2(cont_out[1]),
        .I3(reg_desp[6]),
        .I4(cont_out[0]),
        .I5(reg_desp[2]),
        .O(\SEG_AG[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_9 
       (.I0(reg_desp[30]),
        .I1(reg_desp[26]),
        .I2(cont_out[1]),
        .I3(reg_desp[22]),
        .I4(cont_out[0]),
        .I5(reg_desp[18]),
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
  FDCE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(dec_hexTo7_out[0]),
        .Q(SEG_AG_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(dec_hexTo7_out[1]),
        .Q(SEG_AG_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(dec_hexTo7_out[2]),
        .Q(SEG_AG_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(dec_hexTo7_out[3]),
        .Q(SEG_AG_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(dec_hexTo7_out[4]),
        .Q(SEG_AG_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(dec_hexTo7_out[5]),
        .Q(SEG_AG_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \SEG_AG_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(dec_hexTo7_out[6]),
        .Q(SEG_AG_OBUF[6]));
  MUXF7 \SEG_AG_reg[6]_i_2 
       (.I0(\SEG_AG[6]_i_6_n_0 ),
        .I1(\SEG_AG[6]_i_7_n_0 ),
        .O(sel0[3]),
        .S(cont_out[2]));
  MUXF7 \SEG_AG_reg[6]_i_3 
       (.I0(\SEG_AG[6]_i_8_n_0 ),
        .I1(\SEG_AG[6]_i_9_n_0 ),
        .O(sel0[2]),
        .S(cont_out[2]));
  MUXF7 \SEG_AG_reg[6]_i_4 
       (.I0(\SEG_AG[6]_i_10_n_0 ),
        .I1(\SEG_AG[6]_i_11_n_0 ),
        .O(sel0[0]),
        .S(cont_out[2]));
  MUXF7 \SEG_AG_reg[6]_i_5 
       (.I0(\SEG_AG[6]_i_12_n_0 ),
        .I1(\SEG_AG[6]_i_13_n_0 ),
        .O(sel0[1]),
        .S(cont_out[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cont_out_reg[0] 
       (.CLR(1'b0),
        .D(\cont_out_reg[0]_i_1_n_0 ),
        .G(\cont_out_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(cont_out[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \cont_out_reg[0]_i_1 
       (.I0(cont_out[0]),
        .O(\cont_out_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cont_out_reg[1] 
       (.CLR(1'b0),
        .D(\cont_out_reg[1]_i_1_n_0 ),
        .G(\cont_out_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(cont_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cont_out_reg[1]_i_1 
       (.I0(cont_out[0]),
        .I1(cont_out[1]),
        .O(\cont_out_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \cont_out_reg[2] 
       (.CLR(1'b0),
        .D(\cont_out_reg[2]_i_1_n_0 ),
        .G(\cont_out_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(cont_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \cont_out_reg[2]_i_1 
       (.I0(cont_out[0]),
        .I1(cont_out[2]),
        .I2(cont_out[1]),
        .O(\cont_out_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \cont_out_reg[2]_i_2 
       (.I0(prescaler_out_reg_n_0),
        .I1(cont_out[0]),
        .I2(cont_out[2]),
        .I3(cont_out[1]),
        .O(\cont_out_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter_reg[0]_i_1 
       (.I0(\counter_reg_reg_n_0_[0] ),
        .O(counter_reg[0]));
  LUT6 #(
    .INIT(64'h4555AAAA5555AAAA)) 
    \counter_reg[1]_i_1 
       (.I0(\counter_reg_reg_n_0_[1] ),
        .I1(\counter_reg[1]_i_2_n_0 ),
        .I2(\counter_reg_reg_n_0_[7] ),
        .I3(\counter_reg_reg_n_0_[6] ),
        .I4(\counter_reg_reg_n_0_[0] ),
        .I5(\counter_reg_reg_n_0_[2] ),
        .O(counter_reg[1]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter_reg[1]_i_2 
       (.I0(\counter_reg_reg_n_0_[1] ),
        .I1(\counter_reg_reg_n_0_[5] ),
        .I2(\counter_reg_reg_n_0_[4] ),
        .I3(\counter_reg_reg_n_0_[3] ),
        .O(\counter_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_reg[2]_i_1 
       (.I0(\counter_reg_reg_n_0_[1] ),
        .I1(\counter_reg_reg_n_0_[0] ),
        .I2(\counter_reg_reg_n_0_[2] ),
        .O(counter_reg[2]));
  LUT6 #(
    .INIT(64'hFFFF00000000FDFF)) 
    \counter_reg[3]_i_1 
       (.I0(\counter_reg_reg_n_0_[7] ),
        .I1(\counter_reg_reg_n_0_[4] ),
        .I2(\counter_reg_reg_n_0_[5] ),
        .I3(\counter_reg_reg_n_0_[6] ),
        .I4(\counter_reg[7]_i_2_n_0 ),
        .I5(\counter_reg_reg_n_0_[3] ),
        .O(counter_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_reg[4]_i_1 
       (.I0(\counter_reg_reg_n_0_[3] ),
        .I1(\counter_reg_reg_n_0_[1] ),
        .I2(\counter_reg_reg_n_0_[0] ),
        .I3(\counter_reg_reg_n_0_[2] ),
        .I4(\counter_reg_reg_n_0_[4] ),
        .O(counter_reg[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_reg[5]_i_1 
       (.I0(\counter_reg_reg_n_0_[4] ),
        .I1(\counter_reg_reg_n_0_[2] ),
        .I2(\counter_reg_reg_n_0_[0] ),
        .I3(\counter_reg_reg_n_0_[1] ),
        .I4(\counter_reg_reg_n_0_[3] ),
        .I5(\counter_reg_reg_n_0_[5] ),
        .O(counter_reg[5]));
  LUT6 #(
    .INIT(64'hCCCCCCCC3CCCCCC4)) 
    \counter_reg[6]_i_1 
       (.I0(\counter_reg_reg_n_0_[7] ),
        .I1(\counter_reg_reg_n_0_[6] ),
        .I2(\counter_reg_reg_n_0_[3] ),
        .I3(\counter_reg_reg_n_0_[4] ),
        .I4(\counter_reg_reg_n_0_[5] ),
        .I5(\counter_reg[7]_i_2_n_0 ),
        .O(counter_reg[6]));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAA2)) 
    \counter_reg[7]_i_1 
       (.I0(\counter_reg_reg_n_0_[7] ),
        .I1(\counter_reg_reg_n_0_[6] ),
        .I2(\counter_reg[7]_i_2_n_0 ),
        .I3(\counter_reg_reg_n_0_[3] ),
        .I4(\counter_reg_reg_n_0_[5] ),
        .I5(\counter_reg_reg_n_0_[4] ),
        .O(counter_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \counter_reg[7]_i_2 
       (.I0(\counter_reg_reg_n_0_[1] ),
        .I1(\counter_reg_reg_n_0_[0] ),
        .I2(\counter_reg_reg_n_0_[2] ),
        .O(\counter_reg[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(counter_reg[0]),
        .Q(\counter_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(counter_reg[1]),
        .Q(\counter_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(counter_reg[2]),
        .Q(\counter_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(counter_reg[3]),
        .Q(\counter_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(counter_reg[4]),
        .Q(\counter_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(counter_reg[5]),
        .Q(\counter_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(counter_reg[6]),
        .Q(\counter_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(counter_reg[7]),
        .Q(\counter_reg_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    prescaler_out_i_1
       (.I0(\counter_reg_reg_n_0_[3] ),
        .I1(\counter_reg[7]_i_2_n_0 ),
        .I2(\counter_reg_reg_n_0_[6] ),
        .I3(\counter_reg_reg_n_0_[5] ),
        .I4(\counter_reg_reg_n_0_[4] ),
        .I5(\counter_reg_reg_n_0_[7] ),
        .O(prescaler_out));
  FDCE #(
    .INIT(1'b0)) 
    prescaler_out_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(prescaler_out),
        .Q(prescaler_out_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_RX_IBUF[0]),
        .Q(reg_desp[0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[2]),
        .Q(reg_desp[10]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[3]),
        .Q(reg_desp[11]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[4]),
        .Q(reg_desp[12]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[5]),
        .Q(reg_desp[13]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[6]),
        .Q(reg_desp[14]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[7]),
        .Q(reg_desp[15]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[8]),
        .Q(reg_desp[16]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[9]),
        .Q(reg_desp[17]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[10]),
        .Q(reg_desp[18]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[11]),
        .Q(reg_desp[19]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_RX_IBUF[1]),
        .Q(reg_desp[1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[12]),
        .Q(reg_desp[20]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[13]),
        .Q(reg_desp[21]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[14]),
        .Q(reg_desp[22]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[15]),
        .Q(reg_desp[23]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[16]),
        .Q(reg_desp[24]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[17]),
        .Q(reg_desp[25]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[18]),
        .Q(reg_desp[26]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[19]),
        .Q(reg_desp[27]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[20]),
        .Q(reg_desp[28]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[29] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[21]),
        .Q(reg_desp[29]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_RX_IBUF[2]),
        .Q(reg_desp[2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[30] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[22]),
        .Q(reg_desp[30]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[31] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[23]),
        .Q(reg_desp[31]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_RX_IBUF[3]),
        .Q(reg_desp[3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_RX_IBUF[4]),
        .Q(reg_desp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_RX_IBUF[5]),
        .Q(reg_desp[5]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_RX_IBUF[6]),
        .Q(reg_desp[6]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATO_RX_IBUF[7]),
        .Q(reg_desp[7]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[0]),
        .Q(reg_desp[8]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_desp_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATO_RX_OK_IBUF),
        .CLR(RST_IBUF),
        .D(reg_desp[1]),
        .Q(reg_desp[9]));
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
