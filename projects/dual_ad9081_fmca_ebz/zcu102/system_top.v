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


module system_top  #(
    parameter TX_JESD_L = 4,
    parameter TX_NUM_LINKS = 2,
    parameter RX_JESD_L = 4,
    parameter RX_NUM_LINKS = 2
  ) (

  input  [12:0] gpio_bd_i,
  output [ 7:0] gpio_bd_o,


  // FMC HPC IOs
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

  inout adf4377_sdio,
  output adf4377_sclk,
  output adf4377_csb,
  output adf4377_ce,
  output adf4377_enclk1,
  output adf4377_enclk2,

  output [1:0] mxfe_reset,
  output [1:0] mxfe0_rxen,
  output [1:0] mxfe1_rxen,
  output [1:0] mxfe0_txen,
  output [1:0] mxfe1_txen,

  inout  [8:0] mxfe0_gpio,
  inout  [8:0] mxfe1_gpio,
  output [2:0] gpio_rf_p,
  output [2:0] gpio_rf_n

);

  // internal signals

  wire    [94:0]  gpio_i;
  wire    [94:0]  gpio_o;
  wire    [94:0]  gpio_t;
  wire    [ 2:0]  spi0_csn;
  wire            spi0_mosi;
  wire            spi0_miso;
  wire            spi0_sclk;

  wire    [ 2:0]  spi1_csn;
  wire            spi1_mosi;
  wire            spi1_miso;
  wire            spi1_sclk;

  wire    [ 7:0]  rx_data_p;
  wire    [ 7:0]  rx_data_n;
  wire    [ 7:0]  tx_data_p;
  wire    [ 7:0]  tx_data_n;

  wire            ref_clk;
  wire            sysref0;
  wire            sysref1;
  wire    [TX_NUM_LINKS-1:0]   tx_syncin;
  wire    [RX_NUM_LINKS-1:0]   rx_syncout;

  wire            tx_device_clk;
  wire            rx_device_clk;

  wire            spi_clk;
  wire            hmc7044_miso;
  wire            adf4377_miso;

  assign iic_rstn = 1'b1;

  // instantiations
  IBUFDS_GTE4 i_ibufds_ref_clk (
    .CEB (1'd0),
    .I (fpga_clk0_p),
    .IB (fpga_clk0_n),
    .O (ref_clk),
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

  assign mxfe0_cs = spi0_csn[0];
  assign mxfe0_mosi = spi0_mosi;
  assign mxfe0_sclk = spi0_sclk;

  assign mxfe1_cs = spi0_csn[1];
  assign mxfe1_mosi = spi0_mosi;
  assign mxfe1_sclk = spi0_sclk;

  assign hmc7044_slen = spi0_csn[2];
  assign hmc7044_sclk = spi0_sclk;

  assign adf4377_csb = spi1_csn[0];
  assign adf4377_sclk = spi1_sclk;

  assign spi0_miso = ~spi0_csn[0] ? mxfe0_miso :
                     ~spi0_csn[1] ? mxfe1_miso :
                     ~spi0_csn[2] ? hmc7044_miso : 1'b0;

  assign spi1_miso = ~spi1_csn[0] ? adf4377_miso : 1'b0;

  ad_3w_spi #(.NUM_OF_SLAVES(1)) i_spi_hmc7044 (
    .spi_csn (spi0_csn[2]),
    .spi_clk (spi0_sclk),
    .spi_mosi (spi0_mosi),
    .spi_miso (hmc7044_miso),
    .spi_sdio (hmc7044_sdata),
    .spi_dir ());

  ad_3w_spi #(.NUM_OF_SLAVES(1)) i_spi_adf4377 (
    .spi_csn (spi1_csn[0]),
    .spi_clk (spi1_sclk),
    .spi_mosi (spi1_mosi),
    .spi_miso (adf4377_miso),
    .spi_sdio (adf4377_sdio),
    .spi_dir ());

  // gpios

  ad_iobuf #(.DATA_WIDTH(18)) i_iobuf (
    .dio_t (gpio_t[49:32]),
    .dio_i (gpio_o[49:32]),
    .dio_o (gpio_i[49:32]),
    .dio_p ({mxfe1_gpio[8:0],      // 49-41
             mxfe0_gpio[8:0]}));   // 40-32

  // RF_GPIO
  for(i=0;i<3;i=i+1) begin : g_rf_gpio // 52-50
    OBUFDS i_obufds_gpio (
      .I (gpio_o[50+i]),
      .O (gpio_rf_p[i]),
      .OB (gpio_rf_n[i]));
  end

  assign adf4377_ce     = gpio_o[53];
  assign adf4377_enclk1 = gpio_o[54];
  assign adf4377_enclk2 = gpio_o[55];

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

  /* Board GPIOS. Buttons, LEDs, etc... */
  assign gpio_i[20: 8] = gpio_bd_i;
  assign gpio_bd_o = gpio_o[7:0];

  // Unused GPIOs
  assign gpio_i[94:54] = gpio_o[94:54];
  assign gpio_i[31:21] = gpio_o[31:21];
  assign gpio_i[7:0] = gpio_o[7:0];

  system_wrapper i_system_wrapper (
    .gpio_i (gpio_i),
    .gpio_o (gpio_o),
    .gpio_t (gpio_t),
    .spi0_csn (spi0_csn),
    .spi0_miso (spi0_miso),
    .spi0_mosi (spi0_mosi),
    .spi0_sclk (spi0_sclk),
    .spi1_csn (spi1_csn),
    .spi1_miso (spi1_miso),
    .spi1_mosi (spi1_mosi),
    .spi1_sclk (spi1_sclk),
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
    .ref_clk_q0 (ref_clk),
    .ref_clk_q1 (ref_clk),
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
