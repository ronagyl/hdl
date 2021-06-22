// ***************************************************************************
// ***************************************************************************
// Copyright 2014 - 2017 (c) Analog Devices, Inc. All rights reserved.
//
// In this HDL repository, there are many different and unique modules, consisting
// of various HDL (Verilog or VHDL) components. The individual modules are
// developed independently, and may be accompanied by separate and unique license
// terms.
//
// The user should read each of these license terms, and understand the
// freedoms and responsibilities that he or she has by using this source/core.
//
// This core is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
// A PARTICULAR PURPOSE.
//
// Redistribution and use of source or resulting binaries, with or without modification
// of this file, are permitted under one of the following two license terms:
//
//   1. The GNU General Public License version 2 as published by the
//      Free Software Foundation, which can be found in the top level directory
//      of this repository (LICENSE_GPL2), and also online at:
//      <https://www.gnu.org/licenses/old-licenses/gpl-2.0.html>
//
// OR
//
//   2. An ADI specific BSD license, which can be found in the top level directory
//      of this repository (LICENSE_ADIBSD), and also on-line at:
//      https://github.com/analogdevicesinc/hdl/blob/master/LICENSE_ADIBSD
//      This will allow to generate bit files and not release the source code,
//      as long as it attaches to an ADI device.
//
// ***************************************************************************
// ***************************************************************************

`timescale 1ns/100ps


module system_top #(
    parameter TX_JESD_L = 8,
    parameter TX_NUM_LINKS = 2,
    parameter RX_JESD_L = 8,
    parameter RX_NUM_LINKS = 2
  ) (

  input         sys_rst,
  input         sys_clk_p,
  input         sys_clk_n,

  input         uart_sin,
  output        uart_sout,

  output        ddr4_act_n,
  output [16:0] ddr4_addr,
  output [ 1:0] ddr4_ba,
  output [ 0:0] ddr4_bg,
  output        ddr4_ck_p,
  output        ddr4_ck_n,
  output [ 0:0] ddr4_cke,
  output [ 0:0] ddr4_cs_n,
  inout  [ 7:0] ddr4_dm_n,
  inout  [63:0] ddr4_dq,
  inout  [ 7:0] ddr4_dqs_p,
  inout  [ 7:0] ddr4_dqs_n,
  output [ 0:0] ddr4_odt,
  output        ddr4_reset_n,

  output        mdio_mdc,
  inout         mdio_mdio,
  input         phy_clk_p,
  input         phy_clk_n,
  output        phy_rst_n,
  input         phy_rx_p,
  input         phy_rx_n,
  output        phy_tx_p,
  output        phy_tx_n,

  inout  [16:0] gpio_bd,

  output        iic_rstn,
  inout         iic_scl,
  inout         iic_sda,

  input         vadj_1v8_pgood,

  // FMC+ IOs
  input [RX_JESD_L-1:0] serdes0_m2c_p,
  input [RX_JESD_L-1:0] serdes0_m2c_n,
  input [RX_JESD_L-1:0] serdes1_m2c_p,
  input [RX_JESD_L-1:0] serdes1_m2c_n,
  output [TX_JESD_L-1:0] serdes0_c2m_p,
  output [TX_JESD_L-1:0] serdes0_c2m_n,
  output [TX_JESD_L-1:0] serdes1_c2m_p,
  output [TX_JESD_L-1:0] serdes1_c2m_n,
  // Reference clocks
  input fpga_clk0_p,
  input fpga_clk0_n,
  input fpga_clk0_replica_p,
  input fpga_clk0_replica_n,
  input fpga_clk1_p, // unused
  input fpga_clk1_n, // unused
  input fpga_clk4_p, // unused
  input fpga_clk4_n, // unused
  // Device clocks
  input fpga_clk2_p,
  input fpga_clk2_n,
  input fpga_clk3_p,
  input fpga_clk3_n,
  // SYSREF clocks
  input fpga_sysref0_p,
  input fpga_sysref0_n,
  input fpga_sysref1_p,
  input fpga_sysref1_n,
  // SYNCN
  input  [TX_NUM_LINKS+1:0] syncout_p,
  input  [TX_NUM_LINKS-1:0] syncout_n,
  output [RX_NUM_LINKS+1:0] syncin_p,
  output [RX_NUM_LINKS-1:0] syncin_n,

  output mxfe0_cs,
  input  mxfe0_miso,
  output mxfe0_mosi,
  output mxfe0_sclk,

  output mxfe1_cs,
  input  mxfe1_miso,
  output mxfe1_mosi,
  output mxfe1_sclk,

  output hmc7044_reset,
  output hmc7044_sclk,
  inout  hmc7044_sdata,
  output hmc7044_slen,

  output [1:0] mxfe_reset,
  output [1:0] mxfe0_rxen,
  output [1:0] mxfe1_rxen,
  output [1:0] mxfe0_txen,
  output [1:0] mxfe1_txen,

  inout  [8:0] mxfe0_gpio,
  inout  [8:0] mxfe1_gpio,
  inout [11:0] gpio_rf,

  output [45:0] gpio_vcu118

);

  // internal signals
  wire    [127:0] gpio_i;
  wire    [127:0] gpio_o;
  wire    [127:0] gpio_t;
  wire    [ 7:0]  spi_csn;
  wire            spi_mosi;
  wire            spi_miso;

  wire    [15:0]  rx_data_p;
  wire    [15:0]  rx_data_n;
  wire    [15:0]  tx_data_p;
  wire    [15:0]  tx_data_n;

  wire            ref_clk;
  wire            ref_clk_replica;
  wire            sysref0;
  wire            sysref1;
  wire    [TX_NUM_LINKS-1:0]   tx_syncin;
  wire    [RX_NUM_LINKS-1:0]   rx_syncout;

  wire            tx_device_clk;
  wire            rx_device_clk;

  assign iic_rstn = 1'b1;

  // instantiations

  IBUFDS_GTE4 i_ibufds_ref_clk (
    .CEB (1'd0),
    .I (fpga_clk0_p),
    .IB (fpga_clk0_n),
    .O (ref_clk),
    .ODIV2 ());

  IBUFDS_GTE4 i_ibufds_ref_clk_replica (
    .CEB (1'd0),
    .I (fpga_clk0_replica_p),
    .IB (fpga_clk0_replica_n),
    .O (ref_clk_replica),
    .ODIV2 ());

  IBUFDS i_ibufds_sysref0 (
    .I (fpga_sysref0_p),
    .IB (fpga_sysref0_n),
    .O (sysref0));

  IBUFDS i_ibufds_sysref1 (
    .I (fpga_sysref1_p),
    .IB (fpga_sysref1_n),
    .O (sysref1));

  IBUFDS i_ibufds_rx_device_clk (
    .I (fpga_clk2_p),
    .IB (fpga_clk2_n),
    .O (fpga_clk2));

  IBUFDS i_ibufds_tx_device_clk (
    .I (fpga_clk3_p),
    .IB (fpga_clk3_n),
    .O (fpga_clk3));

  genvar i;
  generate
  for(i=0;i<TX_NUM_LINKS;i=i+1) begin : g_tx_sync_buffers
    IBUFDS i_ibufds_syncin (
      .I (syncout_p[i]),
      .IB (syncout_n[i]),
      .O (tx_syncin[i]));
  end

  for(i=0;i<RX_NUM_LINKS;i=i+1) begin : g_rx_sync_buffers
    OBUFDS i_obufds_syncout (
      .I (rx_syncout[i]),
      .O (syncin_p[i]),
      .OB (syncin_n[i]));
  end
  endgenerate

  BUFG i_rx_device_clk (
    .I (fpga_clk2),
    .O (rx_device_clk)
  );

  BUFG i_tx_device_clk (
    .I (fpga_clk3),
    .O (tx_device_clk)
  );
  // spi

  assign mxfe0_cs = spi_csn[0];
  assign mxfe0_mosi = spi_mosi;
  assign mxfe0_sclk = spi_clk;

  assign mxfe1_cs = spi_csn[1];
  assign mxfe1_mosi = spi_mosi;
  assign mxfe1_sclk = spi_clk;

  assign hmc7044_slen = spi_csn[2];
  assign hmc7044_sclk = spi_clk;

  assign spi_miso = ~spi_csn[0] ? mxfe0_miso :
                    ~spi_csn[1] ? mxfe1_miso :
                    ~spi_csn[2] ? hmc7044_miso : 1'b0;

  ad_3w_spi #(.NUM_OF_SLAVES(1)) i_spi (
    .spi_csn (spi_csn[2]),
    .spi_clk (spi_clk),
    .spi_mosi (spi_mosi),
    .spi_miso (hmc7044_miso),
    .spi_sdio (hmc7044_sdata),
    .spi_dir ());

  // gpios

  ad_iobuf #(.DATA_WIDTH(30)) i_iobuf (
    .dio_t (gpio_t[61:32]),
    .dio_i (gpio_o[61:32]),
    .dio_o (gpio_i[61:32]),
    .dio_p ({gpio_rf[11:0],        // 61-50
             mxfe1_gpio[8:0],      // 49-41
             mxfe0_gpio[8:0]}));   // 40-32

  assign hmc7044_reset    = gpio_o[62];
  assign mxfe_reset[0]    = gpio_o[63];
  assign mxfe_reset[1]    = gpio_o[64];
  assign mxfe0_rxen[0]    = gpio_o[65];
  assign mxfe0_rxen[1]    = gpio_o[66];
  assign mxfe1_rxen[0]    = gpio_o[67];
  assign mxfe1_rxen[1]    = gpio_o[68];
  assign mxfe0_txen[0]    = gpio_o[69];
  assign mxfe0_txen[1]    = gpio_o[70];
  assign mxfe1_txen[0]    = gpio_o[71];
  assign mxfe1_txen[1]    = gpio_o[72];
  assign dac_fifo_bypass  = gpio_o[73];

  assign gpio_i[73:62] = gpio_o[73:62];

  // RF_GPIO1
  for(i=0;i<6;i=i+1) begin : g_gpio
    OBUFDS i_obufds_gpio (
      .I (gpio_o[74+i]),
      .O (gpio_vcu118[6+i]),
      .OB (gpio_vcu118[12+i]));
  end

  // VCU118 specific GPIOs
  ad_iobuf #(.DATA_WIDTH(17)) i_iobuf_bd (
    .dio_t (gpio_t[16:0]),
    .dio_i (gpio_o[16:0]),
    .dio_o (gpio_i[16:0]),
    .dio_p (gpio_bd));

  //assign gpio_i[63:54] = gpio_o[63:54];
  assign gpio_i[31:17] = gpio_o[31:17];

  system_wrapper i_system_wrapper (
    .sys_rst (sys_rst),
    .sys_clk_clk_n (sys_clk_n),
    .sys_clk_clk_p (sys_clk_p),
    .ddr4_act_n (ddr4_act_n),
    .ddr4_adr (ddr4_addr),
    .ddr4_ba (ddr4_ba),
    .ddr4_bg (ddr4_bg),
    .ddr4_ck_c (ddr4_ck_n),
    .ddr4_ck_t (ddr4_ck_p),
    .ddr4_cke (ddr4_cke),
    .ddr4_cs_n (ddr4_cs_n),
    .ddr4_dm_n (ddr4_dm_n),
    .ddr4_dq (ddr4_dq),
    .ddr4_dqs_c (ddr4_dqs_n),
    .ddr4_dqs_t (ddr4_dqs_p),
    .ddr4_odt (ddr4_odt),
    .ddr4_reset_n (ddr4_reset_n),
    .phy_sd (1'b1),
    .phy_rst_n (phy_rst_n),
    .sgmii_rxn (phy_rx_n),
    .sgmii_rxp (phy_rx_p),
    .sgmii_txn (phy_tx_n),
    .sgmii_txp (phy_tx_p),
    .mdio_mdc (mdio_mdc),
    .mdio_mdio_io (mdio_mdio),
    .sgmii_phyclk_clk_n (phy_clk_n),
    .sgmii_phyclk_clk_p (phy_clk_p),
    .iic_main_scl_io (iic_scl),
    .iic_main_sda_io (iic_sda),
    .uart_sin (uart_sin),
    .uart_sout (uart_sout),
    .spi_clk_i (spi_clk),
    .spi_clk_o (spi_clk),
    .spi_csn_i (spi_csn),
    .spi_csn_o (spi_csn),
    .spi_sdi_i (spi_miso),
    .spi_sdo_i (spi_mosi),
    .spi_sdo_o (spi_mosi),
    .gpio0_i (gpio_i[31:0]),
    .gpio0_o (gpio_o[31:0]),
    .gpio0_t (gpio_t[31:0]),
    .gpio1_i (gpio_i[63:32]),
    .gpio1_o (gpio_o[63:32]),
    .gpio1_t (gpio_t[63:32]),
    .gpio2_i (gpio_i[95:64]),
    .gpio2_o (gpio_o[95:64]),
    .gpio2_t (gpio_t[95:64]),
    .gpio3_i (gpio_i[127:96]),
    .gpio3_o (gpio_o[127:96]),
    .gpio3_t (gpio_t[127:96]),
    // FMC HPC
    .rx_data_0_n (rx_data_n[0]),
    .rx_data_0_p (rx_data_p[0]),
    .rx_data_1_n (rx_data_n[1]),
    .rx_data_1_p (rx_data_p[1]),
    .rx_data_2_n (rx_data_n[2]),
    .rx_data_2_p (rx_data_p[2]),
    .rx_data_3_n (rx_data_n[3]),
    .rx_data_3_p (rx_data_p[3]),
    .rx_data_4_n (rx_data_n[4]),
    .rx_data_4_p (rx_data_p[4]),
    .rx_data_5_n (rx_data_n[5]),
    .rx_data_5_p (rx_data_p[5]),
    .rx_data_6_n (rx_data_n[6]),
    .rx_data_6_p (rx_data_p[6]),
    .rx_data_7_n (rx_data_n[7]),
    .rx_data_7_p (rx_data_p[7]),
    .rx_data_8_n (rx_data_n[8]),
    .rx_data_8_p (rx_data_p[8]),
    .rx_data_9_n (rx_data_n[9]),
    .rx_data_9_p (rx_data_p[9]),
    .rx_data_10_n (rx_data_n[10]),
    .rx_data_10_p (rx_data_p[10]),
    .rx_data_11_n (rx_data_n[11]),
    .rx_data_11_p (rx_data_p[11]),
    .rx_data_12_n (rx_data_n[12]),
    .rx_data_12_p (rx_data_p[12]),
    .rx_data_13_n (rx_data_n[13]),
    .rx_data_13_p (rx_data_p[13]),
    .rx_data_14_n (rx_data_n[14]),
    .rx_data_14_p (rx_data_p[14]),
    .rx_data_15_n (rx_data_n[15]),
    .rx_data_15_p (rx_data_p[15]),

    .tx_data_0_n (tx_data_n[0]),
    .tx_data_0_p (tx_data_p[0]),
    .tx_data_1_n (tx_data_n[1]),
    .tx_data_1_p (tx_data_p[1]),
    .tx_data_2_n (tx_data_n[2]),
    .tx_data_2_p (tx_data_p[2]),
    .tx_data_3_n (tx_data_n[3]),
    .tx_data_3_p (tx_data_p[3]),
    .tx_data_4_n (tx_data_n[4]),
    .tx_data_4_p (tx_data_p[4]),
    .tx_data_5_n (tx_data_n[5]),
    .tx_data_5_p (tx_data_p[5]),
    .tx_data_6_n (tx_data_n[6]),
    .tx_data_6_p (tx_data_p[6]),
    .tx_data_7_n (tx_data_n[7]),
    .tx_data_7_p (tx_data_p[7]),
    .tx_data_8_n (tx_data_n[8]),
    .tx_data_8_p (tx_data_p[8]),
    .tx_data_9_n (tx_data_n[9]),
    .tx_data_9_p (tx_data_p[9]),
    .tx_data_10_n (tx_data_n[10]),
    .tx_data_10_p (tx_data_p[10]),
    .tx_data_11_n (tx_data_n[11]),
    .tx_data_11_p (tx_data_p[11]),
    .tx_data_12_n (tx_data_n[12]),
    .tx_data_12_p (tx_data_p[12]),
    .tx_data_13_n (tx_data_n[13]),
    .tx_data_13_p (tx_data_p[13]),
    .tx_data_14_n (tx_data_n[14]),
    .tx_data_14_p (tx_data_p[14]),
    .tx_data_15_n (tx_data_n[15]),
    .tx_data_15_p (tx_data_p[15]),
    .ref_clk_q0 (ref_clk),
    .ref_clk_q1 (ref_clk),
    .ref_clk_q2 (ref_clk_replica),
    .ref_clk_q3 (ref_clk_replica),
    .rx_device_clk (rx_device_clk),
    .tx_device_clk (tx_device_clk),
    .rx_sync_0 (rx_syncout),
    .tx_sync_0 (tx_syncin),
    .rx_sysref_0 (sysref0),
    .tx_sysref_0 (sysref1),
    .dac_fifo_bypass (dac_fifo_bypass)
  );

  assign {serdes1_c2m_p[TX_JESD_L-1:0],serdes0_c2m_p[TX_JESD_L-1:0]} = tx_data_p[2*TX_JESD_L-1:0];
  assign {serdes1_c2m_n[TX_JESD_L-1:0],serdes0_c2m_n[TX_JESD_L-1:0]} = tx_data_n[2*TX_JESD_L-1:0];

  assign rx_data_p[2*RX_JESD_L-1:0] = {serdes1_m2c_p[RX_JESD_L-1:0],serdes0_m2c_p[RX_JESD_L-1:0]};
  assign rx_data_n[2*RX_JESD_L-1:0] = {serdes1_m2c_n[RX_JESD_L-1:0],serdes0_m2c_n[RX_JESD_L-1:0]};


endmodule

// ***************************************************************************
// ***************************************************************************
