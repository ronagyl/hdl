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

module system_top (

  input   [12:0]    gpio_bd_i,
  output  [ 7:0]    gpio_bd_o,

  input             rx_ref_clk_p,
  input             rx_ref_clk_n,
  output            rx_sync0_p,
  output            rx_sync0_n,
  output            rx_sync1_p,
  output            rx_sync1_n,
  input   [ 3:0]    rx_data_p,
  input   [ 3:0]    rx_data_n,

  inout             adc_fdb,
  inout             adc_fda,

  // FMC ADC SPI
  output            spi_adc_csn,
  output            spi_adc_clk,
  output            spi_adc_mosi,
  input             spi_adc_miso,

  // PMOD clockchips SPI
  output            spi_clk0_csn,
  output            spi_clk0_clk,
  output            spi_clk0_mosi,
  input             spi_clk0_miso,
  output            spi_clk1_csn,
  output            spi_clk1_clk,
  output            spi_clk1_mosi
);

  // internal signals

  wire    [94:0]  gpio_i;
  wire    [94:0]  gpio_o;
  wire    [94:0]  gpio_t;
  wire    [ 2:0]  spi0_csn;
  wire            spi0_clk;
  wire            spi0_mosi;
  wire            spi0_miso;
  wire    [ 2:0]  spi1_csn;
  wire            spi1_clk;
  wire            spi1_mosi;
  wire            spi1_miso;
  wire            rx_ref_clk;
  wire            rx_sync;

  // spi

  assign spi_adc_clk = spi0_clk;
  assign spi_adc_csn = spi0_csn[2];
  assign spi_adc_mosi = spi0_mosi;

  assign spi_clk0_clk = spi0_clk;
  assign spi_clk0_csn = spi0_csn[0];
  assign spi_clk0_mosi = spi0_mosi;
  assign spi_clk1_clk = spi0_clk;
  assign spi_clk1_csn = spi0_csn[1];
  assign spi_clk1_mosi = spi0_mosi;

  assign spi0_miso = |({spi_adc_miso,1'b0,spi_clk0_miso} & ~spi0_csn);

  // instantiations

  IBUFDS_GTE4 i_ibufds_rx_ref_clk (
    .CEB (1'd0),
    .I (rx_ref_clk_p),
    .IB (rx_ref_clk_n),
    .O (rx_ref_clk),
    .ODIV2 ());

  OBUFDS i_obufds_rx_sync0 (
    .I (rx_sync),
    .O (rx_sync0_p),
    .OB (rx_sync0_n));

  OBUFDS i_obufds_rx_sync1 (
    .I (rx_sync),
    .O (rx_sync1_p),
    .OB (rx_sync1_n));

  ad_iobuf #(.DATA_WIDTH(2)) i_iobuf (
    .dio_t ({gpio_t[33:32]}),
    .dio_i ({gpio_o[33:32]}),
    .dio_o ({gpio_i[33:32]}),
    .dio_p ({
              adc_fdb,          // 33
              adc_fda           // 32
            }));

  /* Board GPIOS. Buttons, LEDs, etc... */
  assign gpio_i[20: 8] = gpio_bd_i;
  assign gpio_bd_o = gpio_o[7:0];

  assign gpio_i[94:52] = gpio_o[94:52];
  assign gpio_i[47:34] = gpio_o[47:34];
  assign gpio_i[31:27] = gpio_o[31:27];
  assign gpio_i[ 7: 0] = gpio_o[7:0];

  system_wrapper i_system_wrapper (
    // Common block design IOs
    .gpio_i (gpio_i),
    .gpio_o (gpio_o),
    .spi0_csn (spi0_csn),
    .spi0_miso (spi0_miso),
    .spi0_mosi (spi0_mosi),
    .spi0_sclk (spi0_clk),
    .spi1_csn (spi1_csn),
    .spi1_miso (spi1_miso),
    .spi1_mosi (spi1_mosi),
    .spi1_sclk (spi1_clk),
    // Custom block design IOs
    .rx_data_0_n (rx_data_n[0]),
    .rx_data_0_p (rx_data_p[0]),
    .rx_data_1_n (rx_data_n[1]),
    .rx_data_1_p (rx_data_p[1]),
    .rx_data_2_n (),
    .rx_data_2_p (),
    .rx_data_3_n (),
    .rx_data_3_p (),
    .rx_data_4_n (rx_data_n[2]),
    .rx_data_4_p (rx_data_p[2]),
    .rx_data_5_n (rx_data_n[3]),
    .rx_data_5_p (rx_data_p[3]),
    .rx_ref_clk_0 (rx_ref_clk),
    .rx_sync_0 (rx_sync),
    .rx_sysref_0 (1'b0)
  );

endmodule
