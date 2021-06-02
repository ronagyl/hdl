
set_property  -dict {PACKAGE_PIN  G8   } [get_ports rx_ref_clk_p]                                     ; ## D04 FMC_HPC0_GBTCLK0_M2C_C_P  MGTREFCLK0P_229
set_property  -dict {PACKAGE_PIN  G7   } [get_ports rx_ref_clk_n]                                     ; ## D05 FMC_HPC0_GBTCLK0_M2C_C_N  MGTREFCLK0N_229 

set_property  -dict {PACKAGE_PIN  P2   } [get_ports rx_data_p[0]]                                     ; ## A18  FMC_HPC0_DP5_M2C_P MGTHRXP1_228  
set_property  -dict {PACKAGE_PIN  P1   } [get_ports rx_data_n[0]]                                     ; ## A19  FMC_HPC0_DP5_M2C_N MGTHRXN1_228 
set_property  -dict {PACKAGE_PIN  T2   } [get_ports rx_data_p[1]]                                     ; ## B16  FMC_HPC0_DP6_M2C_P MGTHRXP0_228 
set_property  -dict {PACKAGE_PIN  T1   } [get_ports rx_data_n[1]]                                     ; ## B17  FMC_HPC0_DP6_M2C_N MGTHRXN0_228 
set_property  -dict {PACKAGE_PIN  J4   } [get_ports rx_data_p[2]]                                     ; ## A02  FMC_HPC0_DP1_M2C_P MGTHRXP1_229 
set_property  -dict {PACKAGE_PIN  J3   } [get_ports rx_data_n[2]]                                     ; ## A03  FMC_HPC0_DP1_M2C_N MGTHRXN1_229  
set_property  -dict {PACKAGE_PIN  H2   } [get_ports rx_data_p[3]]                                     ; ## C06  FMC_HPC0_DP0_M2C_P MGTHRXP2_229 
set_property  -dict {PACKAGE_PIN  H1   } [get_ports rx_data_n[3]]                                     ; ## C07  FMC_HPC0_DP0_M2C_N MGTHRXN2_229 

set_property  -dict {PACKAGE_PIN  U5    IOSTANDARD LVDS} [get_ports rx_sync0_p]                       ; ## H13  FMC_HPC0_LA07_P 
set_property  -dict {PACKAGE_PIN  U4    IOSTANDARD LVDS} [get_ports rx_sync0_n]                       ; ## H14  FMC_HPC_LA07_N
set_property  -dict {PACKAGE_PIN  AA2   IOSTANDARD LVDS} [get_ports rx_sync1_p]                       ; ## H10  FMC_HPC_LA04_P
set_property  -dict {PACKAGE_PIN  AA1   IOSTANDARD LVDS} [get_ports rx_sync1_n]                       ; ## H11  FMC_HPC_LA04_N

set_property  -dict {PACKAGE_PIN  AC2   IOSTANDARD LVCMOS18} [get_ports spi_adc_csn]                  ; ## C10  FMC_HPC_LA06_P
set_property  -dict {PACKAGE_PIN  AB4   IOSTANDARD LVCMOS18} [get_ports spi_adc_clk]                  ; ## D08  FMC_HPC_LA01_CC_P
set_property  -dict {PACKAGE_PIN  V2    IOSTANDARD LVCMOS18} [get_ports spi_adc_miso]                 ; ## H07  FMC_HPC_LA02_P
set_property  -dict {PACKAGE_PIN  AC4   IOSTANDARD LVCMOS18} [get_ports spi_adc_mosi]                 ; ## D09  FMC_HPC_LA01_CC_N

set_property  -dict {PACKAGE_PIN  AB6   IOSTANDARD LVCMOS18} [get_ports adc_fda]                      ; ## H16  FMC_HPC_LA11_P
set_property  -dict {PACKAGE_PIN  AB5   IOSTANDARD LVCMOS18} [get_ports adc_fdb]                      ; ## H17  FMC_HPC_LA11_N

set_property  -dict {PACKAGE_PIN  D20   IOSTANDARD LVCMOS33} [get_ports spi_clk0_clk]                 ; ## PMOD1_0 J87.1
set_property  -dict {PACKAGE_PIN  E20   IOSTANDARD LVCMOS33} [get_ports spi_clk0_mosi]                ; ## PMOD1_1 J87.3
set_property  -dict {PACKAGE_PIN  D22   IOSTANDARD LVCMOS33} [get_ports spi_clk0_csn]                 ; ## PMOD1_2 J87.5
set_property  -dict {PACKAGE_PIN  E22   IOSTANDARD LVCMOS33} [get_ports spi_clk0_miso]                ; ## PMOD1_3 J87.7
set_property  -dict {PACKAGE_PIN  F20   IOSTANDARD LVCMOS33} [get_ports spi_clk1_clk]                 ; ## PMOD1_4 J87.2
set_property  -dict {PACKAGE_PIN  G20   IOSTANDARD LVCMOS33} [get_ports spi_clk1_mosi]                ; ## PMOD1_5 J87.4
set_property  -dict {PACKAGE_PIN  J20   IOSTANDARD LVCMOS33} [get_ports spi_clk1_csn]                 ; ## PMOD1_6 J87.6

# clocks

create_clock -name rx_ref_clk   -period  4.00 [get_ports rx_ref_clk_p]
