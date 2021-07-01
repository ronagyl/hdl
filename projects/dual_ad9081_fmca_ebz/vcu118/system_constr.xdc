#
## Dual mxfe
#

set_property -quiet -dict {PACKAGE_PIN AN45                                                         } [get_ports serdes0_m2c_p[1]  ] ; ## DP1_M2C_P      A2    MGTYRXP1_121
set_property -quiet -dict {PACKAGE_PIN AN46                                                         } [get_ports serdes0_m2c_n[1]  ] ; ## DP1_M2C_N      A3    MGTYRXN1_121
set_property -quiet -dict {PACKAGE_PIN AL45                                                         } [get_ports serdes0_m2c_p[2]  ] ; ## DP2_M2C_P      A6    MGTYRXP2_121
set_property -quiet -dict {PACKAGE_PIN AL46                                                         } [get_ports serdes0_m2c_n[2]  ] ; ## DP2_M2C_N      A7    MGTYRXN2_121
set_property -quiet -dict {PACKAGE_PIN AJ45                                                         } [get_ports serdes0_m2c_p[3]  ] ; ## DP3_M2C_P      A10   MGTYRXP3_121
set_property -quiet -dict {PACKAGE_PIN AJ46                                                         } [get_ports serdes0_m2c_n[3]  ] ; ## DP3_M2C_N      A11   MGTYRXN3_121
set_property -quiet -dict {PACKAGE_PIN W45                                                          } [get_ports serdes1_m2c_p[0]  ] ; ## DP4_M2C_P      A14   MGTYRXP0_126
set_property -quiet -dict {PACKAGE_PIN W46                                                          } [get_ports serdes1_m2c_n[0]  ] ; ## DP4_M2C_N      A15   MGTYRXN0_126
set_property -quiet -dict {PACKAGE_PIN U45                                                          } [get_ports serdes1_m2c_p[1]  ] ; ## DP5_M2C_P      A18   MGTYRXP1_126
set_property -quiet -dict {PACKAGE_PIN U46                                                          } [get_ports serdes1_m2c_n[1]  ] ; ## DP5_M2C_N      A19   MGTYRXN1_126
set_property -quiet -dict {PACKAGE_PIN AP42                                                         } [get_ports serdes0_c2m_p[1]  ] ; ## DP1_C2M_P      A22   MGTYTXP1_121
set_property -quiet -dict {PACKAGE_PIN AP43                                                         } [get_ports serdes0_c2m_n[1]  ] ; ## DP1_C2M_N      A23   MGTYTXN1_121
set_property -quiet -dict {PACKAGE_PIN AM42                                                         } [get_ports serdes0_c2m_p[2]  ] ; ## DP2_C2M_P      A26   MGTYTXP2_121
set_property -quiet -dict {PACKAGE_PIN AM43                                                         } [get_ports serdes0_c2m_n[2]  ] ; ## DP2_C2M_N      A27   MGTYTXN2_121
set_property -quiet -dict {PACKAGE_PIN AL40                                                         } [get_ports serdes0_c2m_p[3]  ] ; ## DP3_C2M_P      A30   MGTYTXP3_121
set_property -quiet -dict {PACKAGE_PIN AL41                                                         } [get_ports serdes0_c2m_n[3]  ] ; ## DP3_C2M_N      A31   MGTYTXN3_121
set_property -quiet -dict {PACKAGE_PIN T42                                                          } [get_ports serdes1_c2m_p[0]  ] ; ## DP4_C2M_P      A34   MGTYTXP0_126
set_property -quiet -dict {PACKAGE_PIN T43                                                          } [get_ports serdes1_c2m_n[0]  ] ; ## DP4_C2M_N      A35   MGTYTXN0_126
set_property -quiet -dict {PACKAGE_PIN P42                                                          } [get_ports serdes1_c2m_p[1]  ] ; ## DP5_C2M_P      A38   MGTYTXP1_126
set_property -quiet -dict {PACKAGE_PIN P43                                                          } [get_ports serdes1_c2m_n[1]  ] ; ## DP5_C2M_N      A39   MGTYTXN1_126
set_property -quiet -dict {PACKAGE_PIN AF43                                                         } [get_ports serdes0_m2c_p[5]  ] ; ## DP9_M2C_P      B4    MGTYRXP1_122
set_property -quiet -dict {PACKAGE_PIN AF44                                                         } [get_ports serdes0_m2c_n[5]  ] ; ## DP9_M2C_N      B5    MGTYRXN1_122
set_property -quiet -dict {PACKAGE_PIN AG45                                                         } [get_ports serdes0_m2c_p[4]  ] ; ## DP8_M2C_P      B8    MGTYRXP0_122
set_property -quiet -dict {PACKAGE_PIN AG46                                                         } [get_ports serdes0_m2c_n[4]  ] ; ## DP8_M2C_N      B9    MGTYRXN0_122
set_property -quiet -dict {PACKAGE_PIN N45                                                          } [get_ports serdes1_m2c_p[3]  ] ; ## DP7_M2C_P      B12   MGTYRXP3_126
set_property -quiet -dict {PACKAGE_PIN N46                                                          } [get_ports serdes1_m2c_n[3]  ] ; ## DP7_M2C_N      B13   MGTYRXN3_126
set_property -quiet -dict {PACKAGE_PIN R45                                                          } [get_ports serdes1_m2c_p[2]  ] ; ## DP6_M2C_P      B16   MGTYRXP2_126
set_property -quiet -dict {PACKAGE_PIN R46                                                          } [get_ports serdes1_m2c_n[2]  ] ; ## DP6_M2C_N      B17   MGTYRXN2_126
set_property        -dict {PACKAGE_PIN AM38                                                         } [get_ports fpga_clk1_p       ] ; ## GBTCLK1_M2C_P  B20   MGTREFCLK1P_120
set_property        -dict {PACKAGE_PIN AM39                                                         } [get_ports fpga_clk1_n       ] ; ## GBTCLK1_M2C_N  B21   MGTREFCLK1N_120
set_property -quiet -dict {PACKAGE_PIN AJ40                                                         } [get_ports serdes0_c2m_p[5]  ] ; ## DP9_C2M_P      B24   MGTYTXP1_122
set_property -quiet -dict {PACKAGE_PIN AJ41                                                         } [get_ports serdes0_c2m_n[5]  ] ; ## DP9_C2M_N      B25   MGTYTXN1_122
set_property -quiet -dict {PACKAGE_PIN AK42                                                         } [get_ports serdes0_c2m_p[4]  ] ; ## DP8_C2M_P      B28   MGTYTXP0_122
set_property -quiet -dict {PACKAGE_PIN AK43                                                         } [get_ports serdes0_c2m_n[4]  ] ; ## DP8_C2M_N      B29   MGTYTXN0_122
set_property -quiet -dict {PACKAGE_PIN K42                                                          } [get_ports serdes1_c2m_p[3]  ] ; ## DP7_C2M_P      B32   MGTYTXP3_126
set_property -quiet -dict {PACKAGE_PIN K43                                                          } [get_ports serdes1_c2m_n[3]  ] ; ## DP7_C2M_N      B33   MGTYTXN3_126
set_property -quiet -dict {PACKAGE_PIN M42                                                          } [get_ports serdes1_c2m_p[2]  ] ; ## DP6_C2M_P      B36   MGTYTXP2_126
set_property -quiet -dict {PACKAGE_PIN M43                                                          } [get_ports serdes1_c2m_n[2]  ] ; ## DP6_C2M_N      B37   MGTYTXN2_126
set_property -quiet -dict {PACKAGE_PIN AT42                                                         } [get_ports serdes0_c2m_p[0]  ] ; ## DP0_C2M_P      C2    MGTYTXP0_121
set_property -quiet -dict {PACKAGE_PIN AT43                                                         } [get_ports serdes0_c2m_n[0]  ] ; ## DP0_C2M_N      C3    MGTYTXN0_121
set_property -quiet -dict {PACKAGE_PIN AR45                                                         } [get_ports serdes0_m2c_p[0]  ] ; ## DP0_M2C_P      C6    MGTYRXP0_121
set_property -quiet -dict {PACKAGE_PIN AR46                                                         } [get_ports serdes0_m2c_n[0]  ] ; ## DP0_M2C_N      C7    MGTYRXN0_121
set_property        -dict {PACKAGE_PIN AT35  IOSTANDARD LVDS                                        } [get_ports syncin_p[0]       ] ; ## LA06_P         C10   IO_L2P_T0L_N2_43
set_property        -dict {PACKAGE_PIN AT36  IOSTANDARD LVDS                                        } [get_ports syncin_n[0]       ] ; ## LA06_N         C11   IO_L2N_T0L_N3_43
set_property        -dict {PACKAGE_PIN AP35  IOSTANDARD LVDS                                        } [get_ports syncin_p[1]       ] ; ## LA10_P         C14   IO_L3P_T0L_N4_AD15P_43
set_property        -dict {PACKAGE_PIN AR35  IOSTANDARD LVDS                                        } [get_ports syncin_n[1]       ] ; ## LA10_N         C15   IO_L3N_T0L_N5_AD15N_43
set_property        -dict {PACKAGE_PIN AG31  IOSTANDARD LVCMOS18                                    } [get_ports syncin_p[2]       ] ; ## LA14_P         C18   IO_L23P_T3U_N8_43
set_property        -dict {PACKAGE_PIN AH31  IOSTANDARD LVCMOS18                                    } [get_ports syncin_p[3]       ] ; ## LA14_N         C19   IO_L23N_T3U_N9_43
set_property        -dict {PACKAGE_PIN R31   IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports fpga_sysref1_p    ] ; ## LA18_P_CC      C22   IO_L10P_T1U_N6_QBC_AD4P_45
set_property        -dict {PACKAGE_PIN P31   IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports fpga_sysref1_n    ] ; ## LA18_N_CC      C23   IO_L10N_T1U_N7_QBC_AD4N_45
set_property        -dict {PACKAGE_PIN V33   IOSTANDARD LVCMOS18                                    } [get_ports mxfe_reset[0]     ] ; ## LA27_P         C26   IO_L5P_T0U_N8_AD14P_45
set_property        -dict {PACKAGE_PIN V34   IOSTANDARD LVCMOS18                                    } [get_ports mxfe_reset[1]     ] ; ## LA27_N         C27   IO_L5N_T0U_N9_AD14N_45
set_property        -dict {PACKAGE_PIN AK38                                                         } [get_ports fpga_clk0_p       ] ; ## GBTCLK0_M2C_P  D4    MGTREFCLK0P_121
set_property        -dict {PACKAGE_PIN AK39                                                         } [get_ports fpga_clk0_n       ] ; ## GBTCLK0_M2C_N  D5    MGTREFCLK0N_121
set_property        -dict {PACKAGE_PIN AL30  IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports fpga_sysref0_p    ] ; ## LA01_P_CC      D8    IO_L16P_T2U_N6_QBC_AD3P_43
set_property        -dict {PACKAGE_PIN AL31  IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports fpga_sysref0_n    ] ; ## LA01_N_CC      D9    IO_L16N_T2U_N7_QBC_AD3N_43
set_property        -dict {PACKAGE_PIN AP38  IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports syncout_p[0]      ] ; ## LA05_P         D11   IO_L1P_T0L_N0_DBC_43
set_property        -dict {PACKAGE_PIN AR38  IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports syncout_n[0]      ] ; ## LA05_N         D12   IO_L1N_T0L_N1_DBC_43
set_property        -dict {PACKAGE_PIN AJ33  IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports syncout_p[1]      ] ; ## LA09_P         D14   IO_L19P_T3L_N0_DBC_AD9P_43
set_property        -dict {PACKAGE_PIN AK33  IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports syncout_n[1]      ] ; ## LA09_N         D15   IO_L19N_T3L_N1_DBC_AD9N_43
set_property        -dict {PACKAGE_PIN AJ35  IOSTANDARD LVCMOS18                                    } [get_ports syncout_p[2]      ] ; ## LA13_P         D17   IO_L20P_T3L_N2_AD1P_43
set_property        -dict {PACKAGE_PIN AJ36  IOSTANDARD LVCMOS18                                    } [get_ports syncout_p[3]      ] ; ## LA13_N         D18   IO_L20N_T3L_N3_AD1N_43
set_property        -dict {PACKAGE_PIN R34   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_rxen[0]     ] ; ## LA17_P_CC      D20   IO_L13P_T2L_N0_GC_QBC_45
set_property        -dict {PACKAGE_PIN P34   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_rxen[1]     ] ; ## LA17_N_CC      D21   IO_L13N_T2L_N1_GC_QBC_45
set_property        -dict {PACKAGE_PIN Y32   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_rxen[0]     ] ; ## LA23_P         D23   IO_L1P_T0L_N0_DBC_45
set_property        -dict {PACKAGE_PIN W32   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_rxen[1]     ] ; ## LA23_N         D24   IO_L1N_T0L_N1_DBC_45
set_property        -dict {PACKAGE_PIN V32   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_txen[0]     ] ; ## LA26_P         D26   IO_L2P_T0L_N2_45
set_property        -dict {PACKAGE_PIN U33   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_txen[1]     ] ; ## LA26_N         D27   IO_L2N_T0L_N3_45
set_property        -dict {PACKAGE_PIN R14   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[0]    ] ; ## HA05_P         E6    IO_L14P_T2L_N2_GC_70
set_property        -dict {PACKAGE_PIN P14   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[0]    ] ; ## HA05_N         E7    IO_L14N_T2L_N3_GC_70
set_property        -dict {PACKAGE_PIN W14   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[1]    ] ; ## HA09_P         E9    IO_L6P_T0U_N10_AD6P_70
set_property        -dict {PACKAGE_PIN V14   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[1]    ] ; ## HA09_N         E10   IO_L6N_T0U_N11_AD6N_70
set_property        -dict {PACKAGE_PIN V13   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[2]    ] ; ## HA13_P         E12   IO_L4P_T0U_N6_DBC_AD7P_70
set_property        -dict {PACKAGE_PIN U12   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[2]    ] ; ## HA13_N         E13   IO_L4N_T0U_N7_DBC_AD7N_70
set_property        -dict {PACKAGE_PIN T14   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[3]    ] ; ## HA16_P         E15   IO_L11P_T1U_N8_GC_70
set_property        -dict {PACKAGE_PIN R13   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[3]    ] ; ## HA16_N         E16   IO_L11N_T1U_N9_GC_70
set_property        -dict {PACKAGE_PIN M15   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[4]    ] ; ## HA20_P         E18   IO_L17P_T2U_N8_AD10P_70
set_property        -dict {PACKAGE_PIN L15   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[4]    ] ; ## HA20_N         E19   IO_L17N_T2U_N9_AD10N_70
set_property        -dict {PACKAGE_PIN N14   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[5]    ] ; ## HA00_P_CC      F4    IO_L13P_T2L_N0_GC_QBC_70
set_property        -dict {PACKAGE_PIN N13   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[5]    ] ; ## HA00_N_CC      F5    IO_L13N_T2L_N1_GC_QBC_70
set_property        -dict {PACKAGE_PIN AA13  IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[6]    ] ; ## HA04_P         F7    IO_L1P_T0L_N0_DBC_70
set_property        -dict {PACKAGE_PIN Y13   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[6]    ] ; ## HA04_N         F8    IO_L1N_T0L_N1_DBC_70
set_property        -dict {PACKAGE_PIN U11   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[7]    ] ; ## HA08_P         F10   IO_L10P_T1U_N6_QBC_AD4P_70
set_property        -dict {PACKAGE_PIN T11   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[7]    ] ; ## HA08_N         F11   IO_L10N_T1U_N7_QBC_AD4N_70
set_property        -dict {PACKAGE_PIN T16   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[8]    ] ; ## HA12_P         F13   IO_L9P_T1L_N4_AD12P_70
set_property        -dict {PACKAGE_PIN T15   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[8]    ] ; ## HA12_N         F14   IO_L9N_T1L_N5_AD12N_70
set_property        -dict {PACKAGE_PIN M13   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[9]    ] ; ## HA15_P         F16   IO_L19P_T3L_N0_DBC_AD9P_70
set_property        -dict {PACKAGE_PIN M12   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[9]    ] ; ## HA15_N         F17   IO_L19N_T3L_N1_DBC_AD9N_70
set_property        -dict {PACKAGE_PIN L14   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[10]   ] ; ## HA19_P         F19   IO_L20P_T3L_N2_AD1P_70
set_property        -dict {PACKAGE_PIN L13   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[10]   ] ; ## HA19_N         F20   IO_L20N_T3L_N3_AD1N_70
set_property        -dict {PACKAGE_PIN P35   IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports fpga_clk3_p       ] ; ## CLK1_M2C_P     G2    IO_L14P_T2L_N2_GC_45
set_property        -dict {PACKAGE_PIN P36   IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports fpga_clk3_n       ] ; ## CLK1_M2C_N     G3    IO_L14N_T2L_N3_GC_45
set_property        -dict {PACKAGE_PIN AL35  IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_txen[0]     ] ; ## LA00_P_CC      G6    IO_L7P_T1L_N0_QBC_AD13P_43
set_property        -dict {PACKAGE_PIN AL36  IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_txen[1]     ] ; ## LA00_N_CC      G7    IO_L7N_T1L_N1_QBC_AD13N_43
set_property        -dict {PACKAGE_PIN AT39  IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_cs          ] ; ## LA03_P         G9    IO_L4P_T0U_N6_DBC_AD7P_43
set_property        -dict {PACKAGE_PIN AT40  IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_miso        ] ; ## LA03_N         G10   IO_L4N_T0U_N7_DBC_AD7N_43
set_property        -dict {PACKAGE_PIN AK29  IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_mosi        ] ; ## LA08_P         G12   IO_L18P_T2U_N10_AD2P_43
set_property        -dict {PACKAGE_PIN AK30  IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_sclk        ] ; ## LA08_N         G13   IO_L18N_T2U_N11_AD2N_43
set_property        -dict {PACKAGE_PIN AH33  IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_cs          ] ; ## LA12_P         G15   IO_L21P_T3L_N4_AD8P_43
set_property        -dict {PACKAGE_PIN AH34  IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_miso        ] ; ## LA12_N         G16   IO_L21N_T3L_N5_AD8N_43
set_property        -dict {PACKAGE_PIN AG34  IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_mosi        ] ; ## LA16_P         G18   IO_L22P_T3U_N6_DBC_AD0P_43
set_property        -dict {PACKAGE_PIN AH35  IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_sclk        ] ; ## LA16_N         G19   IO_L22N_T3U_N7_DBC_AD0N_43
set_property        -dict {PACKAGE_PIN N32   IOSTANDARD LVCMOS18                                    } [get_ports adf4377_enclk1    ] ; ## LA20_P         G21   IO_L23P_T3U_N8_45
set_property        -dict {PACKAGE_PIN M32   IOSTANDARD LVCMOS18                                    } [get_ports hmc7044_reset     ] ; ## LA20_N         G22   IO_L23N_T3U_N9_45
set_property        -dict {PACKAGE_PIN N34   IOSTANDARD LVCMOS18                                    } [get_ports hmc7044_sclk      ] ; ## LA22_P         G24   IO_L20P_T3L_N2_AD1P_45
set_property        -dict {PACKAGE_PIN N35   IOSTANDARD LVCMOS18                                    } [get_ports hmc7044_sdata     ] ; ## LA22_N         G25   IO_L20N_T3L_N3_AD1N_45
set_property        -dict {PACKAGE_PIN Y34   IOSTANDARD LVCMOS18                                    } [get_ports hmc7044_slen      ] ; ## LA25_P         G27   IO_L3P_T0L_N4_AD15P_45
set_property        -dict {PACKAGE_PIN W34   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[0]     ] ; ## LA25_N         G28   IO_L3N_T0L_N5_AD15N_45
set_property        -dict {PACKAGE_PIN U35   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[1]     ] ; ## LA29_P         G30   IO_L4P_T0U_N6_DBC_AD7P_45
set_property        -dict {PACKAGE_PIN T36   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[2]     ] ; ## LA29_N         G31   IO_L4N_T0U_N7_DBC_AD7N_45
set_property        -dict {PACKAGE_PIN P37   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[3]     ] ; ## LA31_P         G33   IO_L16P_T2U_N6_QBC_AD3P_45
set_property        -dict {PACKAGE_PIN N37   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[4]     ] ; ## LA31_N         G34   IO_L16N_T2U_N7_QBC_AD3N_45
set_property        -dict {PACKAGE_PIN L34   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[5]     ] ; ## LA33_P         G36   IO_L19P_T3L_N0_DBC_AD9P_45
set_property        -dict {PACKAGE_PIN K34   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[6]     ] ; ## LA33_N         G37   IO_L19N_T3L_N1_DBC_AD9N_45
set_property        -dict {PACKAGE_PIN AL32  IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports fpga_clk2_p       ] ; ## CLK0_M2C_P     H4    IO_L13P_T2L_N0_GC_QBC_43
set_property        -dict {PACKAGE_PIN AM32  IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports fpga_clk2_n       ] ; ## CLK0_M2C_N     H5    IO_L13N_T2L_N1_GC_QBC_43
set_property        -dict {PACKAGE_PIN AJ32  IOSTANDARD LVDS                                        } [get_ports gpio_rf_p[0]      ] ; ## LA02_P         H7    IO_L14P_T2L_N2_GC_43
set_property        -dict {PACKAGE_PIN AK32  IOSTANDARD LVDS                                        } [get_ports gpio_rf_n[0]      ] ; ## LA02_N         H8    IO_L14N_T2L_N3_GC_43
set_property        -dict {PACKAGE_PIN AR37  IOSTANDARD LVDS                                        } [get_ports gpio_rf_p[1]      ] ; ## LA04_P         H10   IO_L6P_T0U_N10_AD6P_43
set_property        -dict {PACKAGE_PIN AT37  IOSTANDARD LVDS                                        } [get_ports gpio_rf_n[1]      ] ; ## LA04_N         H11   IO_L6N_T0U_N11_AD6N_43
set_property        -dict {PACKAGE_PIN AP36  IOSTANDARD LVDS                                        } [get_ports gpio_rf_p[2]      ] ; ## LA07_P         H13   IO_L5P_T0U_N8_AD14P_43
set_property        -dict {PACKAGE_PIN AP37  IOSTANDARD LVDS                                        } [get_ports gpio_rf_n[2]      ] ; ## LA07_N         H14   IO_L5N_T0U_N9_AD14N_43
set_property        -dict {PACKAGE_PIN AJ30  IOSTANDARD LVCMOS18                                    } [get_ports adf4377_sdio      ] ; ## LA11_P         H16   IO_L17P_T2U_N8_AD10P_43
set_property        -dict {PACKAGE_PIN AJ31  IOSTANDARD LVCMOS18                                    } [get_ports adf4377_sclk      ] ; ## LA11_N         H17   IO_L17N_T2U_N9_AD10N_43
set_property        -dict {PACKAGE_PIN AG32  IOSTANDARD LVCMOS18                                    } [get_ports adf4377_enclk2    ] ; ## LA15_P         H19   IO_L24P_T3U_N10_43
set_property        -dict {PACKAGE_PIN AG33  IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[0]     ] ; ## LA15_N         H20   IO_L24N_T3U_N11_43
set_property        -dict {PACKAGE_PIN N33   IOSTANDARD LVCMOS18                                    } [get_ports adf4377_csb       ] ; ## LA19_P         H22   IO_L22P_T3U_N6_DBC_AD0P_45
set_property        -dict {PACKAGE_PIN M33   IOSTANDARD LVCMOS18                                    } [get_ports adf4377_ce        ] ; ## LA19_N         H23   IO_L22N_T3U_N7_DBC_AD0N_45
set_property        -dict {PACKAGE_PIN M35   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[7]     ] ; ## LA21_P         H25   IO_L24P_T3U_N10_45
set_property        -dict {PACKAGE_PIN L35   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[8]     ] ; ## LA21_N         H26   IO_L24N_T3U_N11_45
set_property        -dict {PACKAGE_PIN T34   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[1]     ] ; ## LA24_P         H28   IO_L6P_T0U_N10_AD6P_45
set_property        -dict {PACKAGE_PIN T35   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[2]     ] ; ## LA24_N         H29   IO_L6N_T0U_N11_AD6N_45
set_property        -dict {PACKAGE_PIN M36   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[3]     ] ; ## LA28_P         H31   IO_L17P_T2U_N8_AD10P_45
set_property        -dict {PACKAGE_PIN L36   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[4]     ] ; ## LA28_N         H32   IO_L17N_T2U_N9_AD10N_45
set_property        -dict {PACKAGE_PIN N38   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[5]     ] ; ## LA30_P         H34   IO_L18P_T2U_N10_AD2P_45
set_property        -dict {PACKAGE_PIN M38   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[6]     ] ; ## LA30_N         H35   IO_L18N_T2U_N11_AD2N_45
set_property        -dict {PACKAGE_PIN L33   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[7]     ] ; ## LA32_P         H37   IO_L21P_T3L_N4_AD8P_45
set_property        -dict {PACKAGE_PIN K33   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[8]     ] ; ## LA32_N         H38   IO_L21N_T3L_N5_AD8N_45
set_property        -dict {PACKAGE_PIN W12   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[11]   ] ; ## HA03_P         J6    IO_L3P_T0L_N4_AD15P_70
set_property        -dict {PACKAGE_PIN V12   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[11]   ] ; ## HA03_N         J7    IO_L3N_T0L_N5_AD15N_70
set_property        -dict {PACKAGE_PIN AA14  IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[12]   ] ; ## HA07_P         J9    IO_L2P_T0L_N2_70
set_property        -dict {PACKAGE_PIN Y14   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[12]   ] ; ## HA07_N         J10   IO_L2N_T0L_N3_70
set_property        -dict {PACKAGE_PIN R12   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[13]   ] ; ## HA11_P         J12   IO_L18P_T2U_N10_AD2P_70
set_property        -dict {PACKAGE_PIN P12   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[13]   ] ; ## HA11_N         J13   IO_L18N_T2U_N11_AD2N_70
set_property        -dict {PACKAGE_PIN M11   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[14]   ] ; ## HA14_P         J15   IO_L22P_T3U_N6_DBC_AD0P_70
set_property        -dict {PACKAGE_PIN L11   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[14]   ] ; ## HA14_N         J16   IO_L22N_T3U_N7_DBC_AD0N_70
set_property        -dict {PACKAGE_PIN P15   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[15]   ] ; ## HA18_P         J18   IO_L15P_T2L_N4_AD11P_70
set_property        -dict {PACKAGE_PIN N15   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[15]   ] ; ## HA18_N         J19   IO_L15N_T2L_N5_AD11N_70
set_property        -dict {PACKAGE_PIN K12   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[16]   ] ; ## HA22_P         J21   IO_L24P_T3U_N10_70
set_property        -dict {PACKAGE_PIN J12   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[16]   ] ; ## HA22_N         J22   IO_L24N_T3U_N11_70
set_property        -dict {PACKAGE_PIN AA12  IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[17]   ] ; ## HA02_P         K7    IO_L5P_T0U_N8_AD14P_70
set_property        -dict {PACKAGE_PIN Y12   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[17]   ] ; ## HA02_N         K8    IO_L5N_T0U_N9_AD14N_70
set_property        -dict {PACKAGE_PIN U13   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[18]   ] ; ## HA06_P         K10   IO_L12P_T1U_N10_GC_70
set_property        -dict {PACKAGE_PIN T13   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[18]   ] ; ## HA06_N         K11   IO_L12N_T1U_N11_GC_70
set_property        -dict {PACKAGE_PIN V16   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[19]   ] ; ## HA10_P         K13   IO_L8P_T1L_N2_AD5P_70
set_property        -dict {PACKAGE_PIN U16   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[19]   ] ; ## HA10_N         K14   IO_L8N_T1L_N3_AD5N_70
set_property        -dict {PACKAGE_PIN R11   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[20]   ] ; ## HA17_P_CC      K16   IO_L16P_T2U_N6_QBC_AD3P_70
set_property        -dict {PACKAGE_PIN P11   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[20]   ] ; ## HA17_N_CC      K17   IO_L16N_T2U_N7_QBC_AD3N_70
set_property        -dict {PACKAGE_PIN K14   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[21]   ] ; ## HA21_P         K19   IO_L23P_T3U_N8_70
set_property        -dict {PACKAGE_PIN K13   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[21]   ] ; ## HA21_N         K20   IO_L23N_T3U_N9_70
set_property        -dict {PACKAGE_PIN K11   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_p[22]   ] ; ## HA23_P         K22   IO_L21P_T3L_N4_AD8P_70
set_property        -dict {PACKAGE_PIN J11   IOSTANDARD LVDS                                        } [get_ports gpio_fmcp_n[22]   ] ; ## HA23_N         K23   IO_L21N_T3L_N5_AD8N_70
set_property        -dict {PACKAGE_PIN AF38                                                         } [get_ports fpga_clk4_p       ] ; ## GBTCLK2_M2C_P  L12   MGTREFCLK0P_122
set_property        -dict {PACKAGE_PIN AF39                                                         } [get_ports fpga_clk4_n       ] ; ## GBTCLK2_M2C_N  L13   MGTREFCLK0N_122
set_property -quiet -dict {PACKAGE_PIN W40                                                          } [get_ports serdes1_c2m_p[6]  ] ; ## DP14_C2M_P     M18   MGTYTXP2_125
set_property -quiet -dict {PACKAGE_PIN W41                                                          } [get_ports serdes1_c2m_n[6]  ] ; ## DP14_C2M_N     M19   MGTYTXN2_125
set_property -quiet -dict {PACKAGE_PIN U40                                                          } [get_ports serdes1_c2m_p[7]  ] ; ## DP15_C2M_P     M22   MGTYTXP3_125
set_property -quiet -dict {PACKAGE_PIN U41                                                          } [get_ports serdes1_c2m_n[7]  ] ; ## DP15_C2M_N     M23   MGTYTXN3_125
set_property -quiet -dict {PACKAGE_PIN AE45                                                         } [get_ports serdes0_m2c_p[6]  ] ; ## DP10_M2C_P     Y10   MGTYRXP2_122
set_property -quiet -dict {PACKAGE_PIN AE46                                                         } [get_ports serdes0_m2c_n[6]  ] ; ## DP10_M2C_N     Y11   MGTYRXN2_122
set_property -quiet -dict {PACKAGE_PIN AC45                                                         } [get_ports serdes1_m2c_p[4]  ] ; ## DP12_M2C_P     Y14   MGTYRXP0_125
set_property -quiet -dict {PACKAGE_PIN AC46                                                         } [get_ports serdes1_m2c_n[4]  ] ; ## DP12_M2C_N     Y15   MGTYRXN0_125
set_property -quiet -dict {PACKAGE_PIN AA45                                                         } [get_ports serdes1_m2c_p[6]  ] ; ## DP14_M2C_P     Y18   MGTYRXP2_125
set_property -quiet -dict {PACKAGE_PIN AA46                                                         } [get_ports serdes1_m2c_n[6]  ] ; ## DP14_M2C_N     Y19   MGTYRXN2_125
set_property -quiet -dict {PACKAGE_PIN Y43                                                          } [get_ports serdes1_m2c_p[7]  ] ; ## DP15_M2C_P     Y22   MGTYRXP3_125
set_property -quiet -dict {PACKAGE_PIN Y44                                                          } [get_ports serdes1_m2c_n[7]  ] ; ## DP15_M2C_N     Y23   MGTYRXN3_125
set_property -quiet -dict {PACKAGE_PIN AE40                                                         } [get_ports serdes0_c2m_p[7]  ] ; ## DP11_C2M_P     Y26   MGTYTXP3_122
set_property -quiet -dict {PACKAGE_PIN AE41                                                         } [get_ports serdes0_c2m_n[7]  ] ; ## DP11_C2M_N     Y27   MGTYTXN3_122
set_property -quiet -dict {PACKAGE_PIN AA40                                                         } [get_ports serdes1_c2m_p[5]  ] ; ## DP13_C2M_P     Y30   MGTYTXP1_125
set_property -quiet -dict {PACKAGE_PIN AA41                                                         } [get_ports serdes1_c2m_n[5]  ] ; ## DP13_C2M_N     Y31   MGTYTXN1_125
set_property -quiet -dict {PACKAGE_PIN AD43                                                         } [get_ports serdes0_m2c_p[7]  ] ; ## DP11_M2C_P     Z12   MGTYRXP3_122
set_property -quiet -dict {PACKAGE_PIN AD44                                                         } [get_ports serdes0_m2c_n[7]  ] ; ## DP11_M2C_N     Z13   MGTYRXN3_122
set_property -quiet -dict {PACKAGE_PIN AB43                                                         } [get_ports serdes1_m2c_p[5]  ] ; ## DP13_M2C_P     Z16   MGTYRXP1_125
set_property -quiet -dict {PACKAGE_PIN AB44                                                         } [get_ports serdes1_m2c_n[5]  ] ; ## DP13_M2C_N     Z17   MGTYRXN1_125
set_property -quiet -dict {PACKAGE_PIN AG40                                                         } [get_ports serdes0_c2m_p[6]  ] ; ## DP10_C2M_P     Z24   MGTYTXP2_122
set_property -quiet -dict {PACKAGE_PIN AG41                                                         } [get_ports serdes0_c2m_n[6]  ] ; ## DP10_C2M_N     Z25   MGTYTXN2_122
set_property -quiet -dict {PACKAGE_PIN AC40                                                         } [get_ports serdes1_c2m_p[4]  ] ; ## DP12_C2M_P     Z28   MGTYTXP0_125
set_property -quiet -dict {PACKAGE_PIN AC41                                                         } [get_ports serdes1_c2m_n[4]  ] ; ## DP12_C2M_N     Z29   MGTYTXN0_125


set_property        -dict {PACKAGE_PIN AK35 IOSTANDARD LVCMOS18 PULLTYPE PULLUP                     } [get_ports vadj_1v8_pgood   ] ; ## IO_T1U_N12_43_AK35 
set_property        -dict {PACKAGE_PIN V38                                                          } [get_ports fpga_clk0_replica_p  ] ; ## GBTCLK0_M2C_P  D4   MGTREFCLK0P_126
set_property        -dict {PACKAGE_PIN V39                                                          } [get_ports fpga_clk0_replica_n  ] ; ## GBTCLK0_M2C_N  D5   MGTREFCLK0N_126

