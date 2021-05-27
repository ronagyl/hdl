
# Configurable parameters

set NUM_OF_CHANNELS 4
set NUM_OF_LANES 4
set SAMPLES_PER_FRAME 1
set SAMPLE_RATE_MHZ 1000.0
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

source $ad_hdl_dir/projects/common/zc706/zc706_system_bd.tcl
source $ad_hdl_dir/projects/common/zc706/zc706_plddr3_adcfifo_bd.tcl
source ../common/ad9694_500ebz_bd.tcl


#system ID
ad_ip_parameter axi_sysid_0 CONFIG.ROM_ADDR_BITS 9
ad_ip_parameter rom_sys_0 CONFIG.PATH_TO_FILE "[pwd]/mem_init_sys.txt"
ad_ip_parameter rom_sys_0 CONFIG.ROM_ADDR_BITS 9
set sys_cstring "sys rom custom string placeholder"
sysid_gen_sys_init_file $sys_cstring
