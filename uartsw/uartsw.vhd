library ieee;
use ieee.std_logic_1164.all;

entity uartsw is
    port(
        -- ADC
--        ADC_CS_n : out std_logic;
--        ADC_DIN  : out std_logic;
--        ADC_DOUT : in  std_logic;
--        ADC_SCLK : out std_logic;

        -- Audio
--        AUD_ADCDAT  : in    std_logic;
--        AUD_ADCLRCK : inout std_logic;
--        AUD_BCLK    : inout std_logic;
--        AUD_DACDAT  : out   std_logic;
--        AUD_DACLRCK : inout std_logic;
--        AUD_XCK     : out   std_logic;

        -- CLOCK
        CLOCK_50  : in std_logic;
--        CLOCK2_50 : in std_logic;
--        CLOCK3_50 : in std_logic;
--        CLOCK4_50 : in std_logic;

        -- SDRAM
        DRAM_ADDR  : out   std_logic_vector(12 downto 0);
        DRAM_BA    : out   std_logic_vector(1 downto 0);
        DRAM_CAS_N : out   std_logic;
        DRAM_CKE   : out   std_logic;
        DRAM_CLK   : out   std_logic;
        DRAM_CS_N  : out   std_logic;
        DRAM_DQ    : inout std_logic_vector(15 downto 0);
        DRAM_LDQM  : out   std_logic;
        DRAM_RAS_N : out   std_logic;
        DRAM_UDQM  : out   std_logic;
        DRAM_WE_N  : out   std_logic;

        -- I2C for Audio and Video-In
--        FPGA_I2C_SCLK : out   std_logic;
--        FPGA_I2C_SDAT : inout std_logic;

        -- SEG7
        HEX0_N : out std_logic_vector(6 downto 0);
        HEX1_N : out std_logic_vector(6 downto 0);
        HEX2_N : out std_logic_vector(6 downto 0);
        HEX3_N : out std_logic_vector(6 downto 0);
        HEX4_N : out std_logic_vector(6 downto 0);
        HEX5_N : out std_logic_vector(6 downto 0);

        -- IR
--        IRDA_RXD : in  std_logic;
--        IRDA_TXD : out std_logic;

        -- KEY_N
        KEY_N : in std_logic_vector(3 downto 0);

        -- LED
        LEDR : out std_logic_vector(9 downto 0);

        -- PS2
--        PS2_CLK  : inout std_logic;
--        PS2_CLK2 : inout std_logic;
--        PS2_DAT  : inout std_logic;
--        PS2_DAT2 : inout std_logic;

        -- SW
        SW : in std_logic_vector(9 downto 0);

        -- Video-In
--        TD_CLK27   : inout std_logic;
--        TD_DATA    : out   std_logic_vector(7 downto 0);
--        TD_HS      : out   std_logic;
--        TD_RESET_N : out   std_logic;
--        TD_VS      : out   std_logic;

        -- VGA
--        VGA_B       : out std_logic_vector(7 downto 0);
--        VGA_BLANK_N : out std_logic;
--        VGA_CLK     : out std_logic;
--        VGA_G       : out std_logic_vector(7 downto 0);
--        VGA_HS      : out std_logic;
--        VGA_R       : out std_logic_vector(7 downto 0);
--        VGA_SYNC_N  : out std_logic;
--        VGA_VS      : out std_logic;

        -- GPIO_0
        GPIO_0 : inout std_logic_vector(35 downto 0);

        -- GPIO_1
        GPIO_1 : inout std_logic_vector(35 downto 0);

        -- HPS
--        HPS_CONV_USB_N   : inout std_logic;
        HPS_DDR3_ADDR    : out   std_logic_vector(14 downto 0);
        HPS_DDR3_BA      : out   std_logic_vector(2 downto 0);
        HPS_DDR3_CAS_N   : out   std_logic;
        HPS_DDR3_CK_N    : out   std_logic;
        HPS_DDR3_CK_P    : out   std_logic;
        HPS_DDR3_CKE     : out   std_logic;
        HPS_DDR3_CS_N    : out   std_logic;
        HPS_DDR3_DM      : out   std_logic_vector(3 downto 0);
        HPS_DDR3_DQ      : inout std_logic_vector(31 downto 0);
        HPS_DDR3_DQS_N   : inout std_logic_vector(3 downto 0);
        HPS_DDR3_DQS_P   : inout std_logic_vector(3 downto 0);
        HPS_DDR3_ODT     : out   std_logic;
        HPS_DDR3_RAS_N   : out   std_logic;
        HPS_DDR3_RESET_N : out   std_logic;
        HPS_DDR3_RZQ     : in    std_logic;
        HPS_DDR3_WE_N    : out   std_logic;
--        HPS_ENET_GTX_CLK : out   std_logic;
--        HPS_ENET_INT_N   : inout std_logic;
--        HPS_ENET_MDC     : out   std_logic;
--        HPS_ENET_MDIO    : inout std_logic;
--        HPS_ENET_RX_CLK  : in    std_logic;
--        HPS_ENET_RX_DATA : in    std_logic_vector(3 downto 0);
--        HPS_ENET_RX_DV   : in    std_logic;
--        HPS_ENET_TX_DATA : out   std_logic_vector(3 downto 0);
--        HPS_ENET_TX_EN   : out   std_logic;
--        HPS_FLASH_DATA   : inout std_logic_vector(3 downto 0);
--        HPS_FLASH_DCLK   : out   std_logic;
--        HPS_FLASH_NCSO   : out   std_logic;
--        HPS_GSENSOR_INT  : inout std_logic;
--        HPS_I2C_CONTROL  : inout std_logic;
        HPS_I2C1_SCLK    : inout std_logic;
        HPS_I2C1_SDAT    : inout std_logic;
--        HPS_I2C2_SCLK    : inout std_logic;
--        HPS_I2C2_SDAT    : inout std_logic;
--        HPS_KEY_N        : inout std_logic;
--        HPS_LED          : inout std_logic;
--        HPS_LTC_GPIO     : inout std_logic;
        HPS_SD_CLK       : out   std_logic;
        HPS_SD_CMD       : inout std_logic;
        HPS_SD_DATA      : inout std_logic_vector(3 downto 0);
--        HPS_SPIM_CLK     : out   std_logic;
--        HPS_SPIM_MISO    : in    std_logic;
--        HPS_SPIM_MOSI    : out   std_logic;
--        HPS_SPIM_SS      : inout std_logic;
        HPS_UART_RX      : inout    std_logic;
        HPS_UART_TX      : inout   std_logic
--        HPS_USB_CLKOUT   : in    std_logic;
--        HPS_USB_DATA     : inout std_logic_vector(7 downto 0);
--        HPS_USB_DIR      : in    std_logic;
--        HPS_USB_NXT      : in    std_logic;
--        HPS_USB_STP      : out   std_logic
    );
end entity uartsw;

architecture rtl of uartsw is

		component nios_hps_system is
		port (
			clk_clk                            : in    std_logic                     := 'X';             -- clk
			hps_0_ddr_mem_a                    : out   std_logic_vector(14 downto 0);                    -- mem_a
			hps_0_ddr_mem_ba                   : out   std_logic_vector(2 downto 0);                     -- mem_ba
			hps_0_ddr_mem_ck                   : out   std_logic;                                        -- mem_ck
			hps_0_ddr_mem_ck_n                 : out   std_logic;                                        -- mem_ck_n
			hps_0_ddr_mem_cke                  : out   std_logic;                                        -- mem_cke
			hps_0_ddr_mem_cs_n                 : out   std_logic;                                        -- mem_cs_n
			hps_0_ddr_mem_ras_n                : out   std_logic;                                        -- mem_ras_n
			hps_0_ddr_mem_cas_n                : out   std_logic;                                        -- mem_cas_n
			hps_0_ddr_mem_we_n                 : out   std_logic;                                        -- mem_we_n
			hps_0_ddr_mem_reset_n              : out   std_logic;                                        -- mem_reset_n
			hps_0_ddr_mem_dq                   : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			hps_0_ddr_mem_dqs                  : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			hps_0_ddr_mem_dqs_n                : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			hps_0_ddr_mem_odt                  : out   std_logic;                                        -- mem_odt
			hps_0_ddr_mem_dm                   : out   std_logic_vector(3 downto 0);                     -- mem_dm
			hps_0_ddr_oct_rzqin                : in    std_logic                     := 'X';             -- oct_rzqin
			hps_0_h2f_loan_io_in               : out   std_logic_vector(66 downto 0);                    -- in
			hps_0_h2f_loan_io_out              : in    std_logic_vector(66 downto 0) := (others => 'X'); -- out
			hps_0_h2f_loan_io_oe               : in    std_logic_vector(66 downto 0) := (others => 'X'); -- oe
			hps_0_io_hps_io_sdio_inst_CMD      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
			hps_0_io_hps_io_sdio_inst_D0       : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
			hps_0_io_hps_io_sdio_inst_D1       : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
			hps_0_io_hps_io_sdio_inst_CLK      : out   std_logic;                                        -- hps_io_sdio_inst_CLK
			hps_0_io_hps_io_sdio_inst_D2       : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
			hps_0_io_hps_io_sdio_inst_D3       : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
			hps_0_io_hps_io_gpio_inst_LOANIO49 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO49
			hps_0_io_hps_io_gpio_inst_LOANIO50 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO50
			hps_0_io_hps_io_gpio_inst_LOANIO55 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO55
			hps_0_io_hps_io_gpio_inst_LOANIO56 : inout std_logic                     := 'X';             -- hps_io_gpio_inst_LOANIO56
			nios_7seg_export                   : out   std_logic_vector(23 downto 0);                    -- export
			nios_buttons_export                : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			nios_i2cclk_export                 : out   std_logic;                                        -- export
			nios_i2cdat_in_port                : in    std_logic                     := 'X';             -- in_port
			nios_i2cdat_out_port               : out   std_logic;                                        -- out_port
			nios_i2crw_export                  : out   std_logic;                                        -- export
			nios_leds_export                   : out   std_logic_vector(9 downto 0);                     -- export
			nios_switches_export               : in    std_logic_vector(9 downto 0)  := (others => 'X'); -- export
			nios_uartrx_export                 : in    std_logic                     := 'X';             -- export
			nios_uarttx_export                 : out   std_logic;                                        -- export
			pll_0_sdram_clk                    : out   std_logic;                                        -- clk
			reset_reset_n                      : in    std_logic                     := 'X';             -- reset_n
			sdram_controller_0_wire_addr       : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_controller_0_wire_ba         : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_controller_0_wire_cas_n      : out   std_logic;                                        -- cas_n
			sdram_controller_0_wire_cke        : out   std_logic;                                        -- cke
			sdram_controller_0_wire_cs_n       : out   std_logic;                                        -- cs_n
			sdram_controller_0_wire_dq         : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_controller_0_wire_dqm        : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_controller_0_wire_ras_n      : out   std_logic;                                        -- ras_n
			sdram_controller_0_wire_we_n       : out   std_logic;                                        -- we_n
			nios_header_conn_in_port           : in    std_logic_vector(31 downto 0) := (others => 'X'); -- in_port
			nios_header_conn_out_port          : out   std_logic_vector(31 downto 0);                    -- out_port
			uart_peripheral_rxd                : in    std_logic                     := 'X';             -- rxd
			uart_peripheral_txd                : out   std_logic;                                        -- txd
			i2c_peripheral_sda_in              : in    std_logic                     := 'X';             -- sda_in
			i2c_peripheral_scl_in              : in    std_logic                     := 'X';             -- scl_in
			i2c_peripheral_sda_oe              : out   std_logic;                                        -- sda_oe
			i2c_peripheral_scl_oe              : out   std_logic;                                        -- scl_oe
			spi_peripheral_MISO                : in    std_logic                     := 'X';             -- MISO
			spi_peripheral_MOSI                : out   std_logic;                                        -- MOSI
			spi_peripheral_SCLK                : out   std_logic;                                        -- SCLK
			spi_peripheral_SS_n                : out   std_logic                                         -- SS_n
		);
	end component nios_hps_system;

	component hexdisp7seg is
		port (
			datain: in std_logic_vector(3 downto 0);
			seg7:  out std_logic_vector(6 downto 0)
		);
	end component hexdisp7seg;

	signal loanio_in : std_logic_vector(66 downto 0);
	signal loanio_out: std_logic_vector(66 downto 0);
	signal loanio_oe : std_logic_vector(66 downto 0);
	
	signal i2crw, i2cclk, i2cdatin, i2cdatout: std_logic;
	signal uarttx, uartrx: std_logic;
	signal hexdisp: std_logic_vector(23 downto 0);
	signal gpio1_in: std_logic_vector(35 downto 0);
	signal gpio1_out: std_logic_vector(35 downto 0);
	
	signal uartper_rx, uartper_tx: std_logic;
	signal i2cper_sclin, i2cper_sdain, i2cper_scloe, i2cper_sdaoe: std_logic;
	signal spiper_clk, spiper_mosi, spiper_miso, spiper_ssn: std_logic;


begin

	u0 : component nios_hps_system
		port map (
			clk_clk                            => CLOCK_50,               --                     clk.clk
			hps_0_ddr_mem_a                    => HPS_DDR3_ADDR,          --               hps_0_ddr.mem_a
			hps_0_ddr_mem_ba                   => HPS_DDR3_BA,            --                        .mem_ba
			hps_0_ddr_mem_ck                   => HPS_DDR3_CK_P,          --                        .mem_ck
			hps_0_ddr_mem_ck_n                 => HPS_DDR3_CK_N,          --                        .mem_ck_n
			hps_0_ddr_mem_cke                  => HPS_DDR3_CKE,           --                        .mem_cke
			hps_0_ddr_mem_cs_n                 => HPS_DDR3_CS_N,          --                        .mem_cs_n
			hps_0_ddr_mem_ras_n                => HPS_DDR3_RAS_N,         --                        .mem_ras_n
			hps_0_ddr_mem_cas_n                => HPS_DDR3_CAS_N,         --                        .mem_cas_n
			hps_0_ddr_mem_we_n                 => HPS_DDR3_WE_N,          --                        .mem_we_n
			hps_0_ddr_mem_reset_n              => HPS_DDR3_RESET_N,       --                        .mem_reset_n
			hps_0_ddr_mem_dq                   => HPS_DDR3_DQ,            --                        .mem_dq
			hps_0_ddr_mem_dqs                  => HPS_DDR3_DQS_P,         --                        .mem_dqs
			hps_0_ddr_mem_dqs_n                => HPS_DDR3_DQS_N,         --                        .mem_dqs_n
			hps_0_ddr_mem_odt                  => HPS_DDR3_ODT,           --                        .mem_odt
			hps_0_ddr_mem_dm                   => HPS_DDR3_DM,            --                        .mem_dm
			hps_0_ddr_oct_rzqin                => HPS_DDR3_RZQ,           --                        .oct_rzqin
			hps_0_h2f_loan_io_in               => loanio_in,              --       hps_0_h2f_loan_io.in
			hps_0_h2f_loan_io_out              => loanio_out,             --                        .out
			hps_0_h2f_loan_io_oe               => loanio_oe,              --                        .oe
			hps_0_io_hps_io_sdio_inst_CMD      => HPS_SD_CMD,             --                hps_0_io.hps_io_sdio_inst_CMD
			hps_0_io_hps_io_sdio_inst_D0       => HPS_SD_DATA(0),         --                        .hps_io_sdio_inst_D0
			hps_0_io_hps_io_sdio_inst_D1       => HPS_SD_DATA(1),         --                        .hps_io_sdio_inst_D1
			hps_0_io_hps_io_sdio_inst_CLK      => HPS_SD_CLK,             --                        .hps_io_sdio_inst_CLK
			hps_0_io_hps_io_sdio_inst_D2       => HPS_SD_DATA(2),         --                        .hps_io_sdio_inst_D2
			hps_0_io_hps_io_sdio_inst_D3       => HPS_SD_DATA(3),         --                        .hps_io_sdio_inst_D3
			hps_0_io_hps_io_gpio_inst_LOANIO49 => HPS_UART_RX,            --                        .hps_io_gpio_inst_LOANIO49
			hps_0_io_hps_io_gpio_inst_LOANIO50 => HPS_UART_TX,            --                        .hps_io_gpio_inst_LOANIO50
			hps_0_io_hps_io_gpio_inst_LOANIO55 => HPS_I2C1_SDAT,          --                        .hps_io_gpio_inst_LOANIO55
			hps_0_io_hps_io_gpio_inst_LOANIO56 => HPS_I2C1_SCLK,          --                        .hps_io_gpio_inst_LOANIO56
			nios_7seg_export                   => hexdisp,                --               nios_7seg.export
			nios_buttons_export                => KEY_N,                  --            nios_buttons.export
			nios_i2cclk_export                 => i2cclk,                 --             nios_i2cclk.export
			nios_i2cdat_in_port                => i2cdatin,               --             nios_i2cdat.in_port
			nios_i2cdat_out_port               => i2cdatout,              --                        .out_port
			nios_i2crw_export                  => i2crw,                  --              nios_i2crw.export
			nios_leds_export                   => LEDR,                   --               nios_leds.export
			nios_switches_export               => SW,                     --           nios_switches.export
			nios_uartrx_export                 => uartrx,                 --             nios_uartrx.export
			nios_uarttx_export                 => uarttx,                 --             nios_uarttx.export
			pll_0_sdram_clk                    => DRAM_CLK,               --             pll_0_sdram.clk
			reset_reset_n                      => KEY_N(0),               --                   reset.reset_n
			sdram_controller_0_wire_addr       => DRAM_ADDR,              -- sdram_controller_0_wire.addr
			sdram_controller_0_wire_ba         => DRAM_BA,                --                        .ba
			sdram_controller_0_wire_cas_n      => DRAM_CAS_N,             --                        .cas_n
			sdram_controller_0_wire_cke        => DRAM_CKE,               --                        .cke
			sdram_controller_0_wire_cs_n       => DRAM_CS_N,              --                        .cs_n
			sdram_controller_0_wire_dq         => DRAM_DQ,                --                        .dq
			sdram_controller_0_wire_dqm(1)     => DRAM_UDQM,              --                        .dqm
			sdram_controller_0_wire_dqm(0)     => DRAM_LDQM,              --                        .dqm
			sdram_controller_0_wire_ras_n      => DRAM_RAS_N,             --                        .ras_n
			sdram_controller_0_wire_we_n       => DRAM_WE_N,              --                        .we_n
			nios_header_conn_in_port           => gpio1_in(31 downto 0),  --        nios_header_conn.in_port
			nios_header_conn_out_port          => gpio1_out(31 downto 0), --                        .out_port
			uart_peripheral_rxd                => uartper_rx,             --         uart_peripheral.rxd
			uart_peripheral_txd                => uartper_tx,             --                        .txd
			i2c_peripheral_sda_in              => i2cper_sdain,           --          i2c_peripheral.sda_in
			i2c_peripheral_scl_in              => i2cper_sclin,           --                        .scl_in
			i2c_peripheral_sda_oe              => i2cper_sdaoe,           --                        .sda_oe
			i2c_peripheral_scl_oe              => i2cper_scloe,           --                        .scl_oe
			spi_peripheral_MISO                => spiper_miso,            --          spi_peripheral.MISO
			spi_peripheral_MOSI                => spiper_mosi,            --                        .MOSI
			spi_peripheral_SCLK                => spiper_clk,             --                        .SCLK
			spi_peripheral_SS_n                => spiper_ssn              --                        .SS_n
		);
		
	loanio_oe <= (50|56 => '1', 55 => i2crw, others => '0');
		
	loanio_out(50) <= uarttx;
	uartrx <= loanio_in(49);
	
	-- loanio_out(50) <= uartper_tx;
	-- uartper_rx <= loanio_in(49);
		
	GPIO_0(0) <= uarttx;
	GPIO_0(1) <= uartrx;
	GPIO_0(2) <= i2crw;
	GPIO_0(3) <= i2cclk;
	GPIO_0(4) <= i2cdatin;
	GPIO_0(5) <= i2cdatout;
	GPIO_0(6) <= uartper_rx;
	GPIO_0(7) <= uartper_tx;
	
	GPIO_1(31 downto 0) <= gpio1_out(31 downto 0);
	gpio1_in(31 downto 0) <= GPIO_1(31 downto 0);
		
	loanio_out(56) <= i2cclk;
	loanio_out(55) <= i2cdatout;
	i2cdatin <= loanio_in(55);
		
	hd0: hexdisp7seg port map (hexdisp( 3 downto  0), HEX0_N);
	hd1: hexdisp7seg port map (hexdisp( 7 downto  4), HEX1_N);
	hd2: hexdisp7seg port map (hexdisp(11 downto  8), HEX2_N);
	hd3: hexdisp7seg port map (hexdisp(15 downto 12), HEX3_N);
	hd4: hexdisp7seg port map (hexdisp(19 downto 16), HEX4_N);
	hd5: hexdisp7seg port map (hexdisp(23 downto 20), HEX5_N);

end architecture rtl;
