
# Configurable parameters

set NUM_OF_CHANNELS 4
set NUM_OF_LANES 4
set SAMPLES_PER_FRAME 1
set ADC_RESOLUTION 16

# Auto-computed parameters

set CHANNEL_DATA_WIDTH [expr 32 * $NUM_OF_LANES / $NUM_OF_CHANNELS]
set ADC_DATA_WIDTH [expr $CHANNEL_DATA_WIDTH * $NUM_OF_CHANNELS]
set DMA_DATA_WIDTH [expr $ADC_DATA_WIDTH < 128 ? $ADC_DATA_WIDTH : 128]
set SAMPLE_WIDTH [expr $ADC_RESOLUTION > 8 ? 16 : 8]
set SAMPLES_PER_CHANNEL [expr $NUM_OF_LANES * 8* 4 / ($NUM_OF_CHANNELS * $SAMPLE_WIDTH)]


set adc_fifo_name axi_ad9694_fifo
set adc_fifo_address_width 16
set adc_data_width $ADC_DATA_WIDTH
set adc_dma_data_width $DMA_DATA_WIDTH

source $ad_hdl_dir/projects/common/zcu102/zcu102_system_bd.tcl
source $ad_hdl_dir/projects/common/xilinx/adcfifo_bd.tcl
source ../common/ad9694_500ebz_bd.tcl


#system ID
ad_ip_parameter axi_sysid_0 CONFIG.ROM_ADDR_BITS 9
ad_ip_parameter rom_sys_0 CONFIG.PATH_TO_FILE "[pwd]/mem_init_sys.txt"
ad_ip_parameter rom_sys_0 CONFIG.ROM_ADDR_BITS 9
set sys_cstring "sys rom custom string placeholder"
sysid_gen_sys_init_file $sys_cstring

# Parameters for 10Gpbs lane rate

ad_ip_parameter util_ad9694_xcvr CONFIG.RX_CLK25_DIV 20
ad_ip_parameter util_ad9694_xcvr CONFIG.TX_CLK25_DIV 20
ad_ip_parameter util_ad9694_xcvr CONFIG.CPLL_CFG0 0x1fa
ad_ip_parameter util_ad9694_xcvr CONFIG.CPLL_CFG1 0x23
ad_ip_parameter util_ad9694_xcvr CONFIG.CPLL_CFG2 0x2
ad_ip_parameter util_ad9694_xcvr CONFIG.CPLL_FBDIV 2
ad_ip_parameter util_ad9694_xcvr CONFIG.A_TXDIFFCTRL 0xc
ad_ip_parameter util_ad9694_xcvr CONFIG.RXCDR_CFG0 0x3
ad_ip_parameter util_ad9694_xcvr CONFIG.RXCDR_CFG2_GEN2 0x265
ad_ip_parameter util_ad9694_xcvr CONFIG.RXCDR_CFG2_GEN4 0x164
ad_ip_parameter util_ad9694_xcvr CONFIG.RXCDR_CFG3 0x12
ad_ip_parameter util_ad9694_xcvr CONFIG.RXCDR_CFG3_GEN2 0x12
ad_ip_parameter util_ad9694_xcvr CONFIG.RXCDR_CFG3_GEN3 0x12
ad_ip_parameter util_ad9694_xcvr CONFIG.RXCDR_CFG3_GEN4 0x12
ad_ip_parameter util_ad9694_xcvr CONFIG.GTH4_CH_HSPMUX 0x2424
ad_ip_parameter util_ad9694_xcvr CONFIG.GTH4_PREIQ_FREQ_BST 0
ad_ip_parameter util_ad9694_xcvr CONFIG.GTH4_RXPI_CFG0 0x102
ad_ip_parameter util_ad9694_xcvr CONFIG.GTH4_RXPI_CFG1 0x15
ad_ip_parameter util_ad9694_xcvr CONFIG.TXPI_CFG 0x54
ad_ip_parameter util_ad9694_xcvr CONFIG.TX_PI_BIASSET 1

ad_ip_parameter util_ad9694_xcvr CONFIG.QPLL_REFCLK_DIV 1
ad_ip_parameter util_ad9694_xcvr CONFIG.POR_CFG 0x0
ad_ip_parameter util_ad9694_xcvr CONFIG.QPLL_CFG0 0x331c
ad_ip_parameter util_ad9694_xcvr CONFIG.QPLL_CFG4 0x3
ad_ip_parameter util_ad9694_xcvr CONFIG.QPLL_FBDIV 20
ad_ip_parameter util_ad9694_xcvr CONFIG.PPF0_CFG 0x600
ad_ip_parameter util_ad9694_xcvr CONFIG.QPLL_CP 0x7F
ad_ip_parameter util_ad9694_xcvr CONFIG.QPLL_CP_G3 0xF
ad_ip_parameter util_ad9694_xcvr CONFIG.QPLL_LPF 0x27F
