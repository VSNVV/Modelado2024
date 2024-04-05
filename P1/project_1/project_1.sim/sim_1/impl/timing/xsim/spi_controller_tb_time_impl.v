// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Apr  5 17:39:07 2024
// Host        : DESKTOP-RFN3QFD running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/34638/Desktop/Uni/Tercero/SegundoCuatri/Modelado_L/Laboratorio/Modelado2024/P1/project_1/project_1.sim/sim_1/impl/timing/xsim/spi_controller_tb_time_impl.v
// Design      : spi_controller
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "56c06d5" *) 
(* NotValidForBitStream *)
module spi_controller
   (CLK,
    RST,
    DATA_SPI_OK,
    DATA_SPI,
    D_C,
    CS,
    SDIN,
    SCLK,
    END_SPI);
  input CLK;
  input RST;
  input DATA_SPI_OK;
  input [8:0]DATA_SPI;
  output D_C;
  output CS;
  output SDIN;
  output SCLK;
  output END_SPI;

  wire BUSY;
  wire BUSY_i_1_n_0;
  wire BUSY_i_2_n_0;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire CS;
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
  wire \CntReg[0]_i_1_n_0 ;
  wire \CntReg[1]_i_1_n_0 ;
  wire \CntReg[2]_i_1_n_0 ;
  wire \CntReg[3]_i_1_n_0 ;
  wire \CntReg[4]_i_1_n_0 ;
  wire [8:0]DATA_SPI;
  wire [8:0]DATA_SPI_IBUF;
  wire DATA_SPI_OK;
  wire DATA_SPI_OK_IBUF;
  wire D_C;
  wire D_C_OBUF;
  wire END_SPI;
  wire END_SPI_OBUF;
  wire END_SPI_OBUF_inst_i_2_n_0;
  wire FC;
  wire FC_i_1_n_0;
  wire RST;
  wire RST_IBUF;
  wire \RegOut_reg_n_0_[0] ;
  wire SCLK;
  wire SCLK_OBUF;
  wire SCLK_Out_i_1_n_0;
  wire SDIN;
  wire SDIN_OBUF;
  wire SDIN_i_1_n_0;
  wire SDIN_i_2_n_0;
  wire SDIN_i_3_n_0;
  wire data1;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire ultFC;
  wire ultFC_i_1_n_0;

initial begin
 $sdf_annotate("spi_controller_tb_time_impl.sdf",,,,"tool_control");
end
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    BUSY_i_1
       (.I0(SCLK_OBUF),
        .I1(CntOut[3]),
        .I2(BUSY_i_2_n_0),
        .I3(FC),
        .I4(DATA_SPI_OK_IBUF),
        .O(BUSY_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h01)) 
    BUSY_i_2
       (.I0(CntOut[0]),
        .I1(CntOut[1]),
        .I2(CntOut[2]),
        .O(BUSY_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    BUSY_reg
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY_i_1_n_0),
        .CLR(RST_IBUF),
        .D(DATA_SPI_OK_IBUF),
        .Q(BUSY));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  OBUF CS_OBUF_inst
       (.I(CS_OBUF),
        .O(CS));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    CS_OBUF_inst_i_1
       (.I0(BUSY),
        .O(CS_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \CntOut[0]_i_1 
       (.I0(CntOut[3]),
        .I1(CntOut[2]),
        .I2(CntOut[1]),
        .I3(CntOut[0]),
        .O(\CntOut[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \CntOut[1]_i_1 
       (.I0(CntOut[3]),
        .I1(CntOut[2]),
        .I2(CntOut[0]),
        .I3(CntOut[1]),
        .O(\CntOut[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFC02)) 
    \CntOut[2]_i_1 
       (.I0(CntOut[3]),
        .I1(CntOut[1]),
        .I2(CntOut[0]),
        .I3(CntOut[2]),
        .O(\CntOut[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \CntOut[3]_i_1 
       (.I0(SCLK_OBUF),
        .I1(FC),
        .I2(BUSY),
        .O(CntOut0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \CntOut[3]_i_2 
       (.I0(CntOut[3]),
        .I1(CntOut[0]),
        .I2(CntOut[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \CntReg[0]_i_1 
       (.I0(CntReg[0]),
        .O(\CntReg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \CntReg[1]_i_1 
       (.I0(CntReg[0]),
        .I1(CntReg[1]),
        .O(\CntReg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h15AAAAAA)) 
    \CntReg[2]_i_1 
       (.I0(CntReg[2]),
        .I1(CntReg[3]),
        .I2(CntReg[4]),
        .I3(CntReg[0]),
        .I4(CntReg[1]),
        .O(\CntReg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h26CCCCCC)) 
    \CntReg[3]_i_1 
       (.I0(CntReg[2]),
        .I1(CntReg[3]),
        .I2(CntReg[4]),
        .I3(CntReg[0]),
        .I4(CntReg[1]),
        .O(\CntReg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h38F0F0F0)) 
    \CntReg[4]_i_1 
       (.I0(CntReg[2]),
        .I1(CntReg[3]),
        .I2(CntReg[4]),
        .I3(CntReg[0]),
        .I4(CntReg[1]),
        .O(\CntReg[4]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \CntReg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY),
        .CLR(RST_IBUF),
        .D(\CntReg[0]_i_1_n_0 ),
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
  IBUF \DATA_SPI_IBUF[0]_inst 
       (.I(DATA_SPI[0]),
        .O(DATA_SPI_IBUF[0]));
  IBUF \DATA_SPI_IBUF[1]_inst 
       (.I(DATA_SPI[1]),
        .O(DATA_SPI_IBUF[1]));
  IBUF \DATA_SPI_IBUF[2]_inst 
       (.I(DATA_SPI[2]),
        .O(DATA_SPI_IBUF[2]));
  IBUF \DATA_SPI_IBUF[3]_inst 
       (.I(DATA_SPI[3]),
        .O(DATA_SPI_IBUF[3]));
  IBUF \DATA_SPI_IBUF[4]_inst 
       (.I(DATA_SPI[4]),
        .O(DATA_SPI_IBUF[4]));
  IBUF \DATA_SPI_IBUF[5]_inst 
       (.I(DATA_SPI[5]),
        .O(DATA_SPI_IBUF[5]));
  IBUF \DATA_SPI_IBUF[6]_inst 
       (.I(DATA_SPI[6]),
        .O(DATA_SPI_IBUF[6]));
  IBUF \DATA_SPI_IBUF[7]_inst 
       (.I(DATA_SPI[7]),
        .O(DATA_SPI_IBUF[7]));
  IBUF \DATA_SPI_IBUF[8]_inst 
       (.I(DATA_SPI[8]),
        .O(DATA_SPI_IBUF[8]));
  IBUF DATA_SPI_OK_IBUF_inst
       (.I(DATA_SPI_OK),
        .O(DATA_SPI_OK_IBUF));
  OBUF D_C_OBUF_inst
       (.I(D_C_OBUF),
        .O(D_C));
  FDCE #(
    .INIT(1'b0)) 
    D_C_reg
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_SPI_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATA_SPI_IBUF[8]),
        .Q(D_C_OBUF));
  OBUF END_SPI_OBUF_inst
       (.I(END_SPI_OBUF),
        .O(END_SPI));
  LUT6 #(
    .INIT(64'h0000000000001110)) 
    END_SPI_OBUF_inst_i_1
       (.I0(CntOut_Out[2]),
        .I1(CntOut_Out[0]),
        .I2(END_SPI_OBUF_inst_i_2_n_0),
        .I3(CntOut[3]),
        .I4(CntOut_Out[1]),
        .I5(CntOut_Out[3]),
        .O(END_SPI_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    END_SPI_OBUF_inst_i_2
       (.I0(CntOut[1]),
        .I1(CntOut[0]),
        .I2(CntOut[2]),
        .O(END_SPI_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    FC_i_1
       (.I0(CntReg[1]),
        .I1(CntReg[0]),
        .I2(CntReg[4]),
        .I3(CntReg[3]),
        .I4(CntReg[2]),
        .O(FC_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    FC_reg
       (.C(CLK_IBUF_BUFG),
        .CE(BUSY),
        .CLR(RST_IBUF),
        .D(FC_i_1_n_0),
        .Q(FC));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    \RegOut_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_SPI_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATA_SPI_IBUF[0]),
        .Q(\RegOut_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \RegOut_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_SPI_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATA_SPI_IBUF[1]),
        .Q(data1));
  FDCE #(
    .INIT(1'b0)) 
    \RegOut_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_SPI_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATA_SPI_IBUF[2]),
        .Q(data2));
  FDCE #(
    .INIT(1'b0)) 
    \RegOut_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_SPI_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATA_SPI_IBUF[3]),
        .Q(data3));
  FDCE #(
    .INIT(1'b0)) 
    \RegOut_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_SPI_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATA_SPI_IBUF[4]),
        .Q(data4));
  FDCE #(
    .INIT(1'b0)) 
    \RegOut_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_SPI_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATA_SPI_IBUF[5]),
        .Q(data5));
  FDCE #(
    .INIT(1'b0)) 
    \RegOut_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_SPI_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATA_SPI_IBUF[6]),
        .Q(data6));
  FDCE #(
    .INIT(1'b0)) 
    \RegOut_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_SPI_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATA_SPI_IBUF[7]),
        .Q(data7));
  OBUF SCLK_OBUF_inst
       (.I(SCLK_OBUF),
        .O(SCLK));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBF4F)) 
    SCLK_Out_i_1
       (.I0(FC),
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
  OBUF SDIN_OBUF_inst
       (.I(SDIN_OBUF),
        .O(SDIN));
  LUT6 #(
    .INIT(64'h8F808F8F8F808080)) 
    SDIN_i_1
       (.I0(BUSY_i_2_n_0),
        .I1(data7),
        .I2(CntOut[3]),
        .I3(SDIN_i_2_n_0),
        .I4(CntOut[2]),
        .I5(SDIN_i_3_n_0),
        .O(SDIN_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    SDIN_i_2
       (.I0(data6),
        .I1(data5),
        .I2(CntOut[1]),
        .I3(data4),
        .I4(CntOut[0]),
        .I5(data3),
        .O(SDIN_i_2_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    SDIN_i_3
       (.I0(data2),
        .I1(data1),
        .I2(CntOut[1]),
        .I3(CntOut[0]),
        .I4(\RegOut_reg_n_0_[0] ),
        .O(SDIN_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    SDIN_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(SDIN_i_1_n_0),
        .Q(SDIN_OBUF));
  LUT4 #(
    .INIT(16'hFB08)) 
    ultFC_i_1
       (.I0(FC),
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
