#
## dual mxfe
#

set_property -quiet -dict {PACKAGE_PIN J4                                                          } [get_ports serdes0_m2c_p[1]  ] ; ## DP1_M2C_P      A2    MGTHRXP1_229                
set_property -quiet -dict {PACKAGE_PIN J3                                                          } [get_ports serdes0_m2c_n[1]  ] ; ## DP1_M2C_N      A3    MGTHRXN1_229                
set_property -quiet -dict {PACKAGE_PIN F2                                                          } [get_ports serdes0_m2c_p[2]  ] ; ## DP2_M2C_P      A6    MGTHRXP3_229                
set_property -quiet -dict {PACKAGE_PIN F1                                                          } [get_ports serdes0_m2c_n[2]  ] ; ## DP2_M2C_N      A7    MGTHRXN3_229                
set_property -quiet -dict {PACKAGE_PIN K2                                                          } [get_ports serdes0_m2c_p[3]  ] ; ## DP3_M2C_P      A10   MGTHRXP0_229                
set_property -quiet -dict {PACKAGE_PIN K1                                                          } [get_ports serdes0_m2c_n[3]  ] ; ## DP3_M2C_N      A11   MGTHRXN0_229                
set_property -quiet -dict {PACKAGE_PIN L4                                                          } [get_ports serdes1_m2c_p[0]  ] ; ## DP4_M2C_P      A14   MGTHRXP3_228                
set_property -quiet -dict {PACKAGE_PIN L3                                                          } [get_ports serdes1_m2c_n[0]  ] ; ## DP4_M2C_N      A15   MGTHRXN3_228                
set_property -quiet -dict {PACKAGE_PIN P2                                                          } [get_ports serdes1_m2c_p[1]  ] ; ## DP5_M2C_P      A18   MGTHRXP1_228                
set_property -quiet -dict {PACKAGE_PIN P1                                                          } [get_ports serdes1_m2c_n[1]  ] ; ## DP5_M2C_N      A19   MGTHRXN1_228                
set_property -quiet -dict {PACKAGE_PIN H6                                                          } [get_ports serdes0_c2m_p[1]  ] ; ## DP1_C2M_P      A22   MGTHTXP1_229                
set_property -quiet -dict {PACKAGE_PIN H5                                                          } [get_ports serdes0_c2m_n[1]  ] ; ## DP1_C2M_N      A23   MGTHTXN1_229                
set_property -quiet -dict {PACKAGE_PIN F6                                                          } [get_ports serdes0_c2m_p[2]  ] ; ## DP2_C2M_P      A26   MGTHTXP3_229                
set_property -quiet -dict {PACKAGE_PIN F5                                                          } [get_ports serdes0_c2m_n[2]  ] ; ## DP2_C2M_N      A27   MGTHTXN3_229                
set_property -quiet -dict {PACKAGE_PIN K6                                                          } [get_ports serdes0_c2m_p[3]  ] ; ## DP3_C2M_P      A30   MGTHTXP0_229                
set_property -quiet -dict {PACKAGE_PIN K5                                                          } [get_ports serdes0_c2m_n[3]  ] ; ## DP3_C2M_N      A31   MGTHTXN0_229                
set_property -quiet -dict {PACKAGE_PIN M6                                                          } [get_ports serdes1_c2m_p[0]  ] ; ## DP4_C2M_P      A34   MGTHTXP3_228                
set_property -quiet -dict {PACKAGE_PIN M5                                                          } [get_ports serdes1_c2m_n[0]  ] ; ## DP4_C2M_N      A35   MGTHTXN3_228                
set_property -quiet -dict {PACKAGE_PIN P6                                                          } [get_ports serdes1_c2m_p[1]  ] ; ## DP5_C2M_P      A38   MGTHTXP1_228                
set_property -quiet -dict {PACKAGE_PIN P5                                                          } [get_ports serdes1_c2m_n[1]  ] ; ## DP5_C2M_N      A39   MGTHTXN1_228                
set_property -quiet -dict {PACKAGE_PIN M2                                                          } [get_ports serdes1_m2c_p[3]  ] ; ## DP7_M2C_P      B12   MGTHRXP2_228                
set_property -quiet -dict {PACKAGE_PIN M1                                                          } [get_ports serdes1_m2c_n[3]  ] ; ## DP7_M2C_N      B13   MGTHRXN2_228                
set_property -quiet -dict {PACKAGE_PIN T2                                                          } [get_ports serdes1_m2c_p[2]  ] ; ## DP6_M2C_P      B16   MGTHRXP0_228                
set_property -quiet -dict {PACKAGE_PIN T1                                                          } [get_ports serdes1_m2c_n[2]  ] ; ## DP6_M2C_N      B17   MGTHRXN0_228                
set_property        -dict {PACKAGE_PIN L8                                                          } [get_ports fpga_clk1_p       ] ; ## GBTCLK1_M2C_P  B20   MGTREFCLK0P_228             
set_property        -dict {PACKAGE_PIN L7                                                          } [get_ports fpga_clk1_n       ] ; ## GBTCLK1_M2C_N  B21   MGTREFCLK0N_228             
set_property -quiet -dict {PACKAGE_PIN N4                                                          } [get_ports serdes1_c2m_p[3]  ] ; ## DP7_C2M_P      B32   MGTHTXP2_228                
set_property -quiet -dict {PACKAGE_PIN N3                                                          } [get_ports serdes1_c2m_n[3]  ] ; ## DP7_C2M_N      B33   MGTHTXN2_228                
set_property -quiet -dict {PACKAGE_PIN R4                                                          } [get_ports serdes1_c2m_p[2]  ] ; ## DP6_C2M_P      B36   MGTHTXP0_228                
set_property -quiet -dict {PACKAGE_PIN R3                                                          } [get_ports serdes1_c2m_n[2]  ] ; ## DP6_C2M_N      B37   MGTHTXN0_228                
set_property -quiet -dict {PACKAGE_PIN G4                                                          } [get_ports serdes0_c2m_p[0]  ] ; ## DP0_C2M_P      C2    MGTHTXP2_229                
set_property -quiet -dict {PACKAGE_PIN G3                                                          } [get_ports serdes0_c2m_n[0]  ] ; ## DP0_C2M_N      C3    MGTHTXN2_229                
set_property -quiet -dict {PACKAGE_PIN H2                                                          } [get_ports serdes0_m2c_p[0]  ] ; ## DP0_M2C_P      C6    MGTHRXP2_229                
set_property -quiet -dict {PACKAGE_PIN H1                                                          } [get_ports serdes0_m2c_n[0]  ] ; ## DP0_M2C_N      C7    MGTHRXN2_229                
set_property        -dict {PACKAGE_PIN AC2  IOSTANDARD LVDS                                        } [get_ports syncin_p[0]       ] ; ## LA06_P         C10   IO_L19P_T3L_N0_DBC_AD9P_66  
set_property        -dict {PACKAGE_PIN AC1  IOSTANDARD LVDS                                        } [get_ports syncin_n[0]       ] ; ## LA06_N         C11   IO_L19N_T3L_N1_DBC_AD9N_66  
set_property        -dict {PACKAGE_PIN W5   IOSTANDARD LVDS                                        } [get_ports syncin_p[1]       ] ; ## LA10_P         C14   IO_L15P_T2L_N4_AD11P_66     
set_property        -dict {PACKAGE_PIN W4   IOSTANDARD LVDS                                        } [get_ports syncin_n[1]       ] ; ## LA10_N         C15   IO_L15N_T2L_N5_AD11N_66     
set_property        -dict {PACKAGE_PIN AC7  IOSTANDARD LVCMOS18                                    } [get_ports syncin_p[2]       ] ; ## LA14_P         C18   IO_L7P_T1L_N0_QBC_AD13P_66  
set_property        -dict {PACKAGE_PIN AC6  IOSTANDARD LVCMOS18                                    } [get_ports syncin_p[3]       ] ; ## LA14_N         C19   IO_L7N_T1L_N1_QBC_AD13N_66  
set_property        -dict {PACKAGE_PIN N9   IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports fpga_sysref1_p    ] ; ## LA18_P_CC      C22   IO_L16P_T2U_N6_QBC_AD3P_67  
set_property        -dict {PACKAGE_PIN N8   IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports fpga_sysref1_n    ] ; ## LA18_N_CC      C23   IO_L16N_T2U_N7_QBC_AD3N_67  
set_property        -dict {PACKAGE_PIN M10  IOSTANDARD LVCMOS18                                    } [get_ports mxfe_reset[0]     ] ; ## LA27_P         C26   IO_L15P_T2L_N4_AD11P_67     
set_property        -dict {PACKAGE_PIN L10  IOSTANDARD LVCMOS18                                    } [get_ports mxfe_reset[1]     ] ; ## LA27_N         C27   IO_L15N_T2L_N5_AD11N_67     
set_property        -dict {PACKAGE_PIN G8                                                          } [get_ports fpga_clk0_p       ] ; ## GBTCLK0_M2C_P  D4    MGTREFCLK0P_229             
set_property        -dict {PACKAGE_PIN G7                                                          } [get_ports fpga_clk0_n       ] ; ## GBTCLK0_M2C_N  D5    MGTREFCLK0N_229             
set_property        -dict {PACKAGE_PIN AB4  IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports fpga_sysref0_p    ] ; ## LA01_P_CC      D8    IO_L16P_T2U_N6_QBC_AD3P_66  
set_property        -dict {PACKAGE_PIN AC4  IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports fpga_sysref0_n    ] ; ## LA01_N_CC      D9    IO_L16N_T2U_N7_QBC_AD3N_66  
set_property        -dict {PACKAGE_PIN AB3  IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports syncout_p[0]      ] ; ## LA05_P         D11   IO_L20P_T3L_N2_AD1P_66      
set_property        -dict {PACKAGE_PIN AC3  IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports syncout_n[0]      ] ; ## LA05_N         D12   IO_L20N_T3L_N3_AD1N_66      
set_property        -dict {PACKAGE_PIN W2   IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports syncout_p[1]      ] ; ## LA09_P         D14   IO_L24P_T3U_N10_66          
set_property        -dict {PACKAGE_PIN W1   IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports syncout_n[1]      ] ; ## LA09_N         D15   IO_L24N_T3U_N11_66          
set_property        -dict {PACKAGE_PIN AB8  IOSTANDARD LVCMOS18                                    } [get_ports syncout_p[2]      ] ; ## LA13_P         D17   IO_L8P_T1L_N2_AD5P_66       
set_property        -dict {PACKAGE_PIN AC8  IOSTANDARD LVCMOS18                                    } [get_ports syncout_p[3]      ] ; ## LA13_N         D18   IO_L8N_T1L_N3_AD5N_66       
set_property        -dict {PACKAGE_PIN P11  IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_rxen[0]     ] ; ## LA17_P_CC      D20   IO_L13P_T2L_N0_GC_QBC_67    
set_property        -dict {PACKAGE_PIN N11  IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_rxen[1]     ] ; ## LA17_N_CC      D21   IO_L13N_T2L_N1_GC_QBC_67    
set_property        -dict {PACKAGE_PIN L16  IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_rxen[0]     ] ; ## LA23_P         D23   IO_L19P_T3L_N0_DBC_AD9P_67  
set_property        -dict {PACKAGE_PIN K16  IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_rxen[1]     ] ; ## LA23_N         D24   IO_L19N_T3L_N1_DBC_AD9N_67  
set_property        -dict {PACKAGE_PIN L15  IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_txen[0]     ] ; ## LA26_P         D26   IO_L24P_T3U_N10_67          
set_property        -dict {PACKAGE_PIN K15  IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_txen[1]     ] ; ## LA26_N         D27   IO_L24N_T3U_N11_67          
set_property        -dict {PACKAGE_PIN T8   IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports fpga_clk3_p       ] ; ## CLK1_M2C_P     G2    IO_L12P_T1U_N10_GC_67       
set_property        -dict {PACKAGE_PIN R8   IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports fpga_clk3_n       ] ; ## CLK1_M2C_N     G3    IO_L12N_T1U_N11_GC_67       
set_property        -dict {PACKAGE_PIN Y4   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_txen[0]     ] ; ## LA00_P_CC      G6    IO_L13P_T2L_N0_GC_QBC_66    
set_property        -dict {PACKAGE_PIN Y3   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_txen[1]     ] ; ## LA00_N_CC      G7    IO_L13N_T2L_N1_GC_QBC_66    
set_property        -dict {PACKAGE_PIN Y2   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_cs          ] ; ## LA03_P         G9    IO_L22P_T3U_N6_DBC_AD0P_66  
set_property        -dict {PACKAGE_PIN Y1   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_miso        ] ; ## LA03_N         G10   IO_L22N_T3U_N7_DBC_AD0N_66  
set_property        -dict {PACKAGE_PIN V4   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_mosi        ] ; ## LA08_P         G12   IO_L17P_T2U_N8_AD10P_66     
set_property        -dict {PACKAGE_PIN V3   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_sclk        ] ; ## LA08_N         G13   IO_L17N_T2U_N9_AD10N_66     
set_property        -dict {PACKAGE_PIN W7   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_cs          ] ; ## LA12_P         G15   IO_L9P_T1L_N4_AD12P_66      
set_property        -dict {PACKAGE_PIN W6   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_miso        ] ; ## LA12_N         G16   IO_L9N_T1L_N5_AD12N_66      
set_property        -dict {PACKAGE_PIN Y12  IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_mosi        ] ; ## LA16_P         G18   IO_L5P_T0U_N8_AD14P_66      
set_property        -dict {PACKAGE_PIN AA12 IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_sclk        ] ; ## LA16_N         G19   IO_L5N_T0U_N9_AD14N_66      
set_property        -dict {PACKAGE_PIN N13  IOSTANDARD LVCMOS18                                    } [get_ports adf4377_enclk1    ] ; ## LA20_P         G21   IO_L22P_T3U_N6_DBC_AD0P_67  
set_property        -dict {PACKAGE_PIN M13  IOSTANDARD LVCMOS18                                    } [get_ports hmc7044_reset     ] ; ## LA20_N         G22   IO_L22N_T3U_N7_DBC_AD0N_67  
set_property        -dict {PACKAGE_PIN M15  IOSTANDARD LVCMOS18                                    } [get_ports hmc7044_sclk      ] ; ## LA22_P         G24   IO_L20P_T3L_N2_AD1P_67      
set_property        -dict {PACKAGE_PIN M14  IOSTANDARD LVCMOS18                                    } [get_ports hmc7044_sdata     ] ; ## LA22_N         G25   IO_L20N_T3L_N3_AD1N_67      
set_property        -dict {PACKAGE_PIN M11  IOSTANDARD LVCMOS18                                    } [get_ports hmc7044_slen      ] ; ## LA25_P         G27   IO_L17P_T2U_N8_AD10P_67     
set_property        -dict {PACKAGE_PIN L11  IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[0]     ] ; ## LA25_N         G28   IO_L17N_T2U_N9_AD10N_67     
set_property        -dict {PACKAGE_PIN U9   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[1]     ] ; ## LA29_P         G30   IO_L9P_T1L_N4_AD12P_67      
set_property        -dict {PACKAGE_PIN U8   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[2]     ] ; ## LA29_N         G31   IO_L9N_T1L_N5_AD12N_67      
set_property        -dict {PACKAGE_PIN V8   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[3]     ] ; ## LA31_P         G33   IO_L7P_T1L_N0_QBC_AD13P_67  
set_property        -dict {PACKAGE_PIN V7   IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[4]     ] ; ## LA31_N         G34   IO_L7N_T1L_N1_QBC_AD13N_67  
set_property        -dict {PACKAGE_PIN V12  IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[5]     ] ; ## LA33_P         G36   IO_L5P_T0U_N8_AD14P_67      
set_property        -dict {PACKAGE_PIN V11  IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[6]     ] ; ## LA33_N         G37   IO_L5N_T0U_N9_AD14N_67      
set_property        -dict {PACKAGE_PIN AA7  IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports fpga_clk2_p       ] ; ## CLK0_M2C_P     H4    IO_L12P_T1U_N10_GC_66       
set_property        -dict {PACKAGE_PIN AA6  IOSTANDARD LVDS     DIFF_TERM_ADV TERM_100             } [get_ports fpga_clk2_n       ] ; ## CLK0_M2C_N     H5    IO_L12N_T1U_N11_GC_66       
set_property        -dict {PACKAGE_PIN V2   IOSTANDARD LVDS                                        } [get_ports gpio_rf_p[0]      ] ; ## LA02_P         H7    IO_L23P_T3U_N8_66           
set_property        -dict {PACKAGE_PIN V1   IOSTANDARD LVDS                                        } [get_ports gpio_rf_n[0]      ] ; ## LA02_N         H8    IO_L23N_T3U_N9_66           
set_property        -dict {PACKAGE_PIN AA2  IOSTANDARD LVDS                                        } [get_ports gpio_rf_p[1]      ] ; ## LA04_P         H10   IO_L21P_T3L_N4_AD8P_66      
set_property        -dict {PACKAGE_PIN AA1  IOSTANDARD LVDS                                        } [get_ports gpio_rf_n[1]      ] ; ## LA04_N         H11   IO_L21N_T3L_N5_AD8N_66      
set_property        -dict {PACKAGE_PIN U5   IOSTANDARD LVDS                                        } [get_ports gpio_rf_p[2]      ] ; ## LA07_P         H13   IO_L18P_T2U_N10_AD2P_66     
set_property        -dict {PACKAGE_PIN U4   IOSTANDARD LVDS                                        } [get_ports gpio_rf_n[2]      ] ; ## LA07_N         H14   IO_L18N_T2U_N11_AD2N_66     
set_property        -dict {PACKAGE_PIN AB6  IOSTANDARD LVCMOS18                                    } [get_ports adf4377_sdio      ] ; ## LA11_P         H16   IO_L10P_T1U_N6_QBC_AD4P_66  
set_property        -dict {PACKAGE_PIN AB5  IOSTANDARD LVCMOS18                                    } [get_ports adf4377_sclk      ] ; ## LA11_N         H17   IO_L10N_T1U_N7_QBC_AD4N_66  
set_property        -dict {PACKAGE_PIN Y10  IOSTANDARD LVCMOS18                                    } [get_ports adf4377_enclk2    ] ; ## LA15_P         H19   IO_L6P_T0U_N10_AD6P_66      
set_property        -dict {PACKAGE_PIN Y9   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[0]     ] ; ## LA15_N         H20   IO_L6N_T0U_N11_AD6N_66      
set_property        -dict {PACKAGE_PIN L13  IOSTANDARD LVCMOS18                                    } [get_ports adf4377_csb       ] ; ## LA19_P         H22   IO_L23P_T3U_N8_67           
set_property        -dict {PACKAGE_PIN K13  IOSTANDARD LVCMOS18                                    } [get_ports adf4377_ce        ] ; ## LA19_N         H23   IO_L23N_T3U_N9_67           
set_property        -dict {PACKAGE_PIN P12  IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[7]     ] ; ## LA21_P         H25   IO_L21P_T3L_N4_AD8P_67      
set_property        -dict {PACKAGE_PIN N12  IOSTANDARD LVCMOS18                                    } [get_ports mxfe1_gpio[8]     ] ; ## LA21_N         H26   IO_L21N_T3L_N5_AD8N_67      
set_property        -dict {PACKAGE_PIN L12  IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[1]     ] ; ## LA24_P         H28   IO_L18P_T2U_N10_AD2P_67     
set_property        -dict {PACKAGE_PIN K12  IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[2]     ] ; ## LA24_N         H29   IO_L18N_T2U_N11_AD2N_67     
set_property        -dict {PACKAGE_PIN T7   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[3]     ] ; ## LA28_P         H31   IO_L10P_T1U_N6_QBC_AD4P_67  
set_property        -dict {PACKAGE_PIN T6   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[4]     ] ; ## LA28_N         H32   IO_L10N_T1U_N7_QBC_AD4N_67  
set_property        -dict {PACKAGE_PIN V6   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[5]     ] ; ## LA30_P         H34   IO_L8P_T1L_N2_AD5P_67       
set_property        -dict {PACKAGE_PIN U6   IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[6]     ] ; ## LA30_N         H35   IO_L8N_T1L_N3_AD5N_67       
set_property        -dict {PACKAGE_PIN U11  IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[7]     ] ; ## LA32_P         H37   IO_L6P_T0U_N10_AD6P_67      
set_property        -dict {PACKAGE_PIN T11  IOSTANDARD LVCMOS18                                    } [get_ports mxfe0_gpio[8]     ] ; ## LA32_N         H38   IO_L6N_T0U_N11_AD6N_67      

