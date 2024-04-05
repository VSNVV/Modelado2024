// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Apr  5 17:12:51 2024
// Host        : DESKTOP-RFN3QFD running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/34638/Desktop/Uni/Tercero/SegundoCuatri/Modelado_L/Laboratorio/Modelado2024/P1/project_1/project_1.sim/sim_1/impl/timing/xsim/spi_controller_tb_time_impl.v
// Design      : spi_controller
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "dc059cb6" *) 
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
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire CS;
  wire CS_OBUF;
  wire [8:0]DATA_SPI;
  wire [8:7]DATA_SPI_IBUF;
  wire DATA_SPI_OK;
  wire DATA_SPI_OK_IBUF;
  wire D_C;
  wire D_C_OBUF;
  wire END_SPI;
  wire RST;
  wire RST_IBUF;
  wire SCLK;
  wire SDIN;
  wire SDIN_OBUF;
  wire data7;

initial begin
 $sdf_annotate("spi_controller_tb_time_impl.sdf",,,,"tool_control");
end
  FDCE #(
    .INIT(1'b0)) 
    BUSY_reg
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_SPI_OK_IBUF),
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
  LUT1 #(
    .INIT(2'h1)) 
    CS_OBUF_inst_i_1
       (.I0(BUSY),
        .O(CS_OBUF));
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
       (.I(1'b0),
        .O(END_SPI));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    \RegOut_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(DATA_SPI_OK_IBUF),
        .CLR(RST_IBUF),
        .D(DATA_SPI_IBUF[7]),
        .Q(data7));
  OBUF SCLK_OBUF_inst
       (.I(1'b1),
        .O(SCLK));
  OBUF SDIN_OBUF_inst
       (.I(SDIN_OBUF),
        .O(SDIN));
  FDCE #(
    .INIT(1'b0)) 
    SDIN_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(data7),
        .Q(SDIN_OBUF));
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
