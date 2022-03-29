-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "03/24/2022 03:13:47"

-- 
-- Device: Altera 10M08DAF484C8GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	modulador_pwm IS
    PORT (
	SYS_CLK : IN std_logic;
	PB : IN std_logic_vector(4 DOWNTO 1);
	USER_LED : OUT std_logic_vector(8 DOWNTO 1)
	);
END modulador_pwm;

-- Design Ports Information
-- PB[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[4]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- USER_LED[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- USER_LED[2]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- USER_LED[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- USER_LED[4]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- USER_LED[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- USER_LED[6]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- USER_LED[7]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- USER_LED[8]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[2]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SYS_CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF modulador_pwm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SYS_CLK : std_logic;
SIGNAL ww_PB : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_USER_LED : std_logic_vector(8 DOWNTO 1);
SIGNAL \pwm0|pll|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pwm0|pll|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PB[1]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PB[3]~input_o\ : std_logic;
SIGNAL \PB[4]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \PB[1]~input_o\ : std_logic;
SIGNAL \PB[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \SYS_CLK~input_o\ : std_logic;
SIGNAL \pwm0|pll|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \pwm0|cntr_0|cnt[0]~7_combout\ : std_logic;
SIGNAL \pwm0|cntr_0|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm0|cntr_0|LessThan0~1_combout\ : std_logic;
SIGNAL \pwm0|cntr_0|cnt[0]~8\ : std_logic;
SIGNAL \pwm0|cntr_0|cnt[1]~9_combout\ : std_logic;
SIGNAL \pwm0|cntr_0|cnt[1]~10\ : std_logic;
SIGNAL \pwm0|cntr_0|cnt[2]~11_combout\ : std_logic;
SIGNAL \pwm0|cntr_0|cnt[2]~12\ : std_logic;
SIGNAL \pwm0|cntr_0|cnt[3]~13_combout\ : std_logic;
SIGNAL \pwm0|cntr_0|cnt[3]~14\ : std_logic;
SIGNAL \pwm0|cntr_0|cnt[4]~15_combout\ : std_logic;
SIGNAL \pwm0|cntr_0|cnt[4]~16\ : std_logic;
SIGNAL \pwm0|cntr_0|cnt[5]~17_combout\ : std_logic;
SIGNAL \pwm0|cntr_0|cnt[5]~18\ : std_logic;
SIGNAL \pwm0|cntr_0|cnt[6]~19_combout\ : std_logic;
SIGNAL \PB[2]~input_o\ : std_logic;
SIGNAL \pwm0|Equal1~1_combout\ : std_logic;
SIGNAL \pwm0|Equal1~0_combout\ : std_logic;
SIGNAL \pwm0|Equal1~2_combout\ : std_logic;
SIGNAL \pwm0|CLR0~q\ : std_logic;
SIGNAL \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_outclk\ : std_logic;
SIGNAL \pwm0|CLR7~q\ : std_logic;
SIGNAL \pwm0|RST~0_combout\ : std_logic;
SIGNAL \pwm0|Equal0~0_combout\ : std_logic;
SIGNAL \pwm0|Equal0~1_combout\ : std_logic;
SIGNAL \pwm0|SET~q\ : std_logic;
SIGNAL \pwm0|OUT_PWM~combout\ : std_logic;
SIGNAL \pwm0|cntr_0|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_PB[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \pwm0|pll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[3]~clkctrl_outclk\ : std_logic;

BEGIN

ww_SYS_CLK <= SYS_CLK;
ww_PB <= PB;
USER_LED <= ww_USER_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pwm0|pll|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \SYS_CLK~input_o\);

\pwm0|pll|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pwm0|pll|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pwm0|pll|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pwm0|pll|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pwm0|pll|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pwm0|pll|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pwm0|pll|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pwm0|pll|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pwm0|pll|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pwm0|pll|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk\(3));

\pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk\(0));

\PB[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PB[1]~input_o\);
\ALT_INV_PB[1]~inputclkctrl_outclk\ <= NOT \PB[1]~inputclkctrl_outclk\;
\pwm0|pll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[3]~clkctrl_outclk\ <= NOT \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_outclk\;

-- Location: LCCOMB_X11_Y16_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X15_Y25_N16
\USER_LED[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm0|OUT_PWM~combout\,
	devoe => ww_devoe,
	o => ww_USER_LED(1));

-- Location: IOOBUF_X10_Y21_N23
\USER_LED[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_USER_LED(2));

-- Location: IOOBUF_X24_Y25_N23
\USER_LED[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_USER_LED(3));

-- Location: IOOBUF_X19_Y0_N16
\USER_LED[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_USER_LED(4));

-- Location: IOOBUF_X22_Y0_N30
\USER_LED[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_USER_LED(5));

-- Location: IOOBUF_X10_Y16_N2
\USER_LED[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_USER_LED(6));

-- Location: IOOBUF_X31_Y3_N16
\USER_LED[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_USER_LED(7));

-- Location: IOOBUF_X13_Y0_N2
\USER_LED[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_USER_LED(8));

-- Location: IOIBUF_X0_Y6_N22
\PB[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(1),
	o => \PB[1]~input_o\);

-- Location: CLKCTRL_G1
\PB[1]~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PB[1]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PB[1]~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y6_N15
\SYS_CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SYS_CLK,
	o => \SYS_CLK~input_o\);

-- Location: PLL_1
\pwm0|pll|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 6,
	c0_initial => 1,
	c0_low => 6,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 6,
	c1_initial => 5,
	c1_low => 6,
	c1_mode => "even",
	c1_ph => 4,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "c1",
	clk3_divide_by => 1,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 1,
	clk3_phase_shift => "7500",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3252,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \PB[1]~inputclkctrl_outclk\,
	fbin => \pwm0|pll|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \pwm0|pll|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \pwm0|pll|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pwm0|pll|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y24_N0
\pwm0|cntr_0|cnt[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm0|cntr_0|cnt[0]~7_combout\ = \pwm0|cntr_0|cnt\(0) $ (VCC)
-- \pwm0|cntr_0|cnt[0]~8\ = CARRY(\pwm0|cntr_0|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm0|cntr_0|cnt\(0),
	datad => VCC,
	combout => \pwm0|cntr_0|cnt[0]~7_combout\,
	cout => \pwm0|cntr_0|cnt[0]~8\);

-- Location: LCCOMB_X17_Y24_N24
\pwm0|cntr_0|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm0|cntr_0|LessThan0~0_combout\ = ((!\pwm0|cntr_0|cnt\(3) & (!\pwm0|cntr_0|cnt\(4) & !\pwm0|cntr_0|cnt\(2)))) # (!\pwm0|cntr_0|cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm0|cntr_0|cnt\(3),
	datab => \pwm0|cntr_0|cnt\(4),
	datac => \pwm0|cntr_0|cnt\(2),
	datad => \pwm0|cntr_0|cnt\(5),
	combout => \pwm0|cntr_0|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y24_N18
\pwm0|cntr_0|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm0|cntr_0|LessThan0~1_combout\ = (!\pwm0|cntr_0|LessThan0~0_combout\ & \pwm0|cntr_0|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm0|cntr_0|LessThan0~0_combout\,
	datad => \pwm0|cntr_0|cnt\(6),
	combout => \pwm0|cntr_0|LessThan0~1_combout\);

-- Location: FF_X17_Y24_N1
\pwm0|cntr_0|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \pwm0|cntr_0|cnt[0]~7_combout\,
	clrn => \ALT_INV_PB[1]~inputclkctrl_outclk\,
	sclr => \pwm0|cntr_0|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm0|cntr_0|cnt\(0));

-- Location: LCCOMB_X17_Y24_N2
\pwm0|cntr_0|cnt[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm0|cntr_0|cnt[1]~9_combout\ = (\pwm0|cntr_0|cnt\(1) & (!\pwm0|cntr_0|cnt[0]~8\)) # (!\pwm0|cntr_0|cnt\(1) & ((\pwm0|cntr_0|cnt[0]~8\) # (GND)))
-- \pwm0|cntr_0|cnt[1]~10\ = CARRY((!\pwm0|cntr_0|cnt[0]~8\) # (!\pwm0|cntr_0|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm0|cntr_0|cnt\(1),
	datad => VCC,
	cin => \pwm0|cntr_0|cnt[0]~8\,
	combout => \pwm0|cntr_0|cnt[1]~9_combout\,
	cout => \pwm0|cntr_0|cnt[1]~10\);

-- Location: FF_X17_Y24_N3
\pwm0|cntr_0|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \pwm0|cntr_0|cnt[1]~9_combout\,
	clrn => \ALT_INV_PB[1]~inputclkctrl_outclk\,
	sclr => \pwm0|cntr_0|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm0|cntr_0|cnt\(1));

-- Location: LCCOMB_X17_Y24_N4
\pwm0|cntr_0|cnt[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm0|cntr_0|cnt[2]~11_combout\ = (\pwm0|cntr_0|cnt\(2) & (\pwm0|cntr_0|cnt[1]~10\ $ (GND))) # (!\pwm0|cntr_0|cnt\(2) & (!\pwm0|cntr_0|cnt[1]~10\ & VCC))
-- \pwm0|cntr_0|cnt[2]~12\ = CARRY((\pwm0|cntr_0|cnt\(2) & !\pwm0|cntr_0|cnt[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm0|cntr_0|cnt\(2),
	datad => VCC,
	cin => \pwm0|cntr_0|cnt[1]~10\,
	combout => \pwm0|cntr_0|cnt[2]~11_combout\,
	cout => \pwm0|cntr_0|cnt[2]~12\);

-- Location: FF_X17_Y24_N5
\pwm0|cntr_0|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \pwm0|cntr_0|cnt[2]~11_combout\,
	clrn => \ALT_INV_PB[1]~inputclkctrl_outclk\,
	sclr => \pwm0|cntr_0|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm0|cntr_0|cnt\(2));

-- Location: LCCOMB_X17_Y24_N6
\pwm0|cntr_0|cnt[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm0|cntr_0|cnt[3]~13_combout\ = (\pwm0|cntr_0|cnt\(3) & (!\pwm0|cntr_0|cnt[2]~12\)) # (!\pwm0|cntr_0|cnt\(3) & ((\pwm0|cntr_0|cnt[2]~12\) # (GND)))
-- \pwm0|cntr_0|cnt[3]~14\ = CARRY((!\pwm0|cntr_0|cnt[2]~12\) # (!\pwm0|cntr_0|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm0|cntr_0|cnt\(3),
	datad => VCC,
	cin => \pwm0|cntr_0|cnt[2]~12\,
	combout => \pwm0|cntr_0|cnt[3]~13_combout\,
	cout => \pwm0|cntr_0|cnt[3]~14\);

-- Location: FF_X17_Y24_N7
\pwm0|cntr_0|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \pwm0|cntr_0|cnt[3]~13_combout\,
	clrn => \ALT_INV_PB[1]~inputclkctrl_outclk\,
	sclr => \pwm0|cntr_0|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm0|cntr_0|cnt\(3));

-- Location: LCCOMB_X17_Y24_N8
\pwm0|cntr_0|cnt[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm0|cntr_0|cnt[4]~15_combout\ = (\pwm0|cntr_0|cnt\(4) & (\pwm0|cntr_0|cnt[3]~14\ $ (GND))) # (!\pwm0|cntr_0|cnt\(4) & (!\pwm0|cntr_0|cnt[3]~14\ & VCC))
-- \pwm0|cntr_0|cnt[4]~16\ = CARRY((\pwm0|cntr_0|cnt\(4) & !\pwm0|cntr_0|cnt[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm0|cntr_0|cnt\(4),
	datad => VCC,
	cin => \pwm0|cntr_0|cnt[3]~14\,
	combout => \pwm0|cntr_0|cnt[4]~15_combout\,
	cout => \pwm0|cntr_0|cnt[4]~16\);

-- Location: FF_X17_Y24_N9
\pwm0|cntr_0|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \pwm0|cntr_0|cnt[4]~15_combout\,
	clrn => \ALT_INV_PB[1]~inputclkctrl_outclk\,
	sclr => \pwm0|cntr_0|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm0|cntr_0|cnt\(4));

-- Location: LCCOMB_X17_Y24_N10
\pwm0|cntr_0|cnt[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm0|cntr_0|cnt[5]~17_combout\ = (\pwm0|cntr_0|cnt\(5) & (!\pwm0|cntr_0|cnt[4]~16\)) # (!\pwm0|cntr_0|cnt\(5) & ((\pwm0|cntr_0|cnt[4]~16\) # (GND)))
-- \pwm0|cntr_0|cnt[5]~18\ = CARRY((!\pwm0|cntr_0|cnt[4]~16\) # (!\pwm0|cntr_0|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm0|cntr_0|cnt\(5),
	datad => VCC,
	cin => \pwm0|cntr_0|cnt[4]~16\,
	combout => \pwm0|cntr_0|cnt[5]~17_combout\,
	cout => \pwm0|cntr_0|cnt[5]~18\);

-- Location: FF_X17_Y24_N11
\pwm0|cntr_0|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \pwm0|cntr_0|cnt[5]~17_combout\,
	clrn => \ALT_INV_PB[1]~inputclkctrl_outclk\,
	sclr => \pwm0|cntr_0|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm0|cntr_0|cnt\(5));

-- Location: LCCOMB_X17_Y24_N12
\pwm0|cntr_0|cnt[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm0|cntr_0|cnt[6]~19_combout\ = \pwm0|cntr_0|cnt[5]~18\ $ (!\pwm0|cntr_0|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pwm0|cntr_0|cnt\(6),
	cin => \pwm0|cntr_0|cnt[5]~18\,
	combout => \pwm0|cntr_0|cnt[6]~19_combout\);

-- Location: FF_X17_Y24_N13
\pwm0|cntr_0|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \pwm0|cntr_0|cnt[6]~19_combout\,
	clrn => \ALT_INV_PB[1]~inputclkctrl_outclk\,
	sclr => \pwm0|cntr_0|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm0|cntr_0|cnt\(6));

-- Location: IOIBUF_X17_Y25_N22
\PB[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(2),
	o => \PB[2]~input_o\);

-- Location: LCCOMB_X17_Y24_N20
\pwm0|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm0|Equal1~1_combout\ = (\pwm0|cntr_0|cnt\(3) & (\pwm0|cntr_0|cnt\(4) & !\PB[2]~input_o\)) # (!\pwm0|cntr_0|cnt\(3) & (!\pwm0|cntr_0|cnt\(4) & \PB[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm0|cntr_0|cnt\(3),
	datab => \pwm0|cntr_0|cnt\(4),
	datac => \PB[2]~input_o\,
	combout => \pwm0|Equal1~1_combout\);

-- Location: LCCOMB_X17_Y24_N26
\pwm0|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm0|Equal1~0_combout\ = (\PB[2]~input_o\ & (!\pwm0|cntr_0|cnt\(1) & (!\pwm0|cntr_0|cnt\(2) & \pwm0|cntr_0|cnt\(0)))) # (!\PB[2]~input_o\ & (\pwm0|cntr_0|cnt\(1) & (\pwm0|cntr_0|cnt\(2) & !\pwm0|cntr_0|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB[2]~input_o\,
	datab => \pwm0|cntr_0|cnt\(1),
	datac => \pwm0|cntr_0|cnt\(2),
	datad => \pwm0|cntr_0|cnt\(0),
	combout => \pwm0|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y24_N30
\pwm0|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm0|Equal1~2_combout\ = (!\pwm0|cntr_0|cnt\(6) & (\pwm0|Equal1~1_combout\ & (\pwm0|Equal1~0_combout\ & !\pwm0|cntr_0|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm0|cntr_0|cnt\(6),
	datab => \pwm0|Equal1~1_combout\,
	datac => \pwm0|Equal1~0_combout\,
	datad => \pwm0|cntr_0|cnt\(5),
	combout => \pwm0|Equal1~2_combout\);

-- Location: FF_X17_Y24_N31
\pwm0|CLR0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \pwm0|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm0|CLR0~q\);

-- Location: CLKCTRL_G4
\pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_outclk\);

-- Location: FF_X16_Y24_N9
\pwm0|CLR7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm0|pll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[3]~clkctrl_outclk\,
	asdata => \pwm0|CLR0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm0|CLR7~q\);

-- Location: LCCOMB_X16_Y24_N8
\pwm0|RST~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm0|RST~0_combout\ = (\PB[2]~input_o\ & (\pwm0|CLR0~q\)) # (!\PB[2]~input_o\ & ((\pwm0|CLR7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm0|CLR0~q\,
	datac => \pwm0|CLR7~q\,
	datad => \PB[2]~input_o\,
	combout => \pwm0|RST~0_combout\);

-- Location: LCCOMB_X17_Y24_N22
\pwm0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm0|Equal0~0_combout\ = (!\pwm0|cntr_0|cnt\(3) & (!\pwm0|cntr_0|cnt\(4) & (!\pwm0|cntr_0|cnt\(2) & !\pwm0|cntr_0|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm0|cntr_0|cnt\(3),
	datab => \pwm0|cntr_0|cnt\(4),
	datac => \pwm0|cntr_0|cnt\(2),
	datad => \pwm0|cntr_0|cnt\(0),
	combout => \pwm0|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y24_N16
\pwm0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm0|Equal0~1_combout\ = (!\pwm0|cntr_0|cnt\(6) & (!\pwm0|cntr_0|cnt\(1) & (\pwm0|Equal0~0_combout\ & !\pwm0|cntr_0|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm0|cntr_0|cnt\(6),
	datab => \pwm0|cntr_0|cnt\(1),
	datac => \pwm0|Equal0~0_combout\,
	datad => \pwm0|cntr_0|cnt\(5),
	combout => \pwm0|Equal0~1_combout\);

-- Location: FF_X17_Y24_N17
\pwm0|SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm0|pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \pwm0|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm0|SET~q\);

-- Location: LCCOMB_X17_Y24_N28
\pwm0|OUT_PWM\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pwm0|OUT_PWM~combout\ = (!\pwm0|RST~0_combout\ & ((\pwm0|SET~q\) # (\pwm0|OUT_PWM~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm0|RST~0_combout\,
	datab => \pwm0|SET~q\,
	datad => \pwm0|OUT_PWM~combout\,
	combout => \pwm0|OUT_PWM~combout\);

-- Location: IOIBUF_X15_Y0_N15
\PB[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(3),
	o => \PB[3]~input_o\);

-- Location: IOIBUF_X6_Y10_N15
\PB[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(4),
	o => \PB[4]~input_o\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 0,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);
END structure;


