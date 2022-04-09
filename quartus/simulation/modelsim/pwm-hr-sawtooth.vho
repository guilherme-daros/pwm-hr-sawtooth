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

-- DATE "04/09/2022 14:12:45"

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
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hrpwm IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	m : IN std_logic_vector(9 DOWNTO 0);
	s : OUT std_logic;
	cnt : OUT IEEE.NUMERIC_STD.unsigned(6 DOWNTO 0)
	);
END hrpwm;

-- Design Ports Information
-- s	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[0]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[2]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[3]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cnt[6]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[4]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[3]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[6]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[5]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[8]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[7]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hrpwm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_m : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_s : std_logic;
SIGNAL ww_cnt : std_logic_vector(6 DOWNTO 0);
SIGNAL \pll|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \m[1]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \cntr_0|cnt[0]~7_combout\ : std_logic;
SIGNAL \cntr_0|cnt[4]~16\ : std_logic;
SIGNAL \cntr_0|cnt[5]~17_combout\ : std_logic;
SIGNAL \cntr_0|LessThan0~0_combout\ : std_logic;
SIGNAL \cntr_0|cnt[5]~18\ : std_logic;
SIGNAL \cntr_0|cnt[6]~19_combout\ : std_logic;
SIGNAL \cntr_0|LessThan0~1_combout\ : std_logic;
SIGNAL \cntr_0|cnt[0]~8\ : std_logic;
SIGNAL \cntr_0|cnt[1]~9_combout\ : std_logic;
SIGNAL \cntr_0|cnt[1]~10\ : std_logic;
SIGNAL \cntr_0|cnt[2]~11_combout\ : std_logic;
SIGNAL \cntr_0|cnt[2]~12\ : std_logic;
SIGNAL \cntr_0|cnt[3]~13_combout\ : std_logic;
SIGNAL \cntr_0|cnt[3]~14\ : std_logic;
SIGNAL \cntr_0|cnt[4]~15_combout\ : std_logic;
SIGNAL \m[7]~input_o\ : std_logic;
SIGNAL \m[8]~input_o\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \m[9]~input_o\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \m[5]~input_o\ : std_logic;
SIGNAL \m[6]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \m[3]~input_o\ : std_logic;
SIGNAL \m[4]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \CLR0~q\ : std_logic;
SIGNAL \CLR2~feeder_combout\ : std_logic;
SIGNAL \CLR2~q\ : std_logic;
SIGNAL \CLR6~q\ : std_logic;
SIGNAL \m[2]~input_o\ : std_logic;
SIGNAL \CLR4~q\ : std_logic;
SIGNAL \RST~2_combout\ : std_logic;
SIGNAL \RST~3_combout\ : std_logic;
SIGNAL \m[0]~input_o\ : std_logic;
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \CLR5~feeder_combout\ : std_logic;
SIGNAL \CLR5~q\ : std_logic;
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_outclk\ : std_logic;
SIGNAL \CLR7~q\ : std_logic;
SIGNAL \CLR1~q\ : std_logic;
SIGNAL \CLR3~feeder_combout\ : std_logic;
SIGNAL \CLR3~q\ : std_logic;
SIGNAL \RST~0_combout\ : std_logic;
SIGNAL \RST~1_combout\ : std_logic;
SIGNAL \RST~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \SET~q\ : std_logic;
SIGNAL \OUT_PWM~combout\ : std_logic;
SIGNAL \cntr_0|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[3]~clkctrl_outclk\ : std_logic;
SIGNAL \pll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \pll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \pll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_m <= m;
s <= ww_s;
cnt <= IEEE.NUMERIC_STD.UNSIGNED(ww_cnt);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pll|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clock~input_o\);

\pll|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\pll|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll|altpll_component|auto_generated|wire_pll1_clk\(1));

\pll|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll|altpll_component|auto_generated|wire_pll1_clk\(2));

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll|altpll_component|auto_generated|wire_pll1_clk\(0));

\pll|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll|altpll_component|auto_generated|wire_pll1_clk\(3));
\pll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[3]~clkctrl_outclk\ <= NOT \pll|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_outclk\;
\pll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\pll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[2]~clkctrl_outclk\ <= NOT \pll|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\;
\pll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\ <= NOT \pll|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\;

-- Location: LCCOMB_X11_Y20_N16
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

-- Location: IOOBUF_X3_Y10_N2
\s~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OUT_PWM~combout\,
	devoe => ww_devoe,
	o => ww_s);

-- Location: IOOBUF_X10_Y15_N9
\cnt[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cntr_0|cnt\(0),
	devoe => ww_devoe,
	o => ww_cnt(0));

-- Location: IOOBUF_X10_Y18_N23
\cnt[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cntr_0|cnt\(1),
	devoe => ww_devoe,
	o => ww_cnt(1));

-- Location: IOOBUF_X10_Y19_N2
\cnt[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cntr_0|cnt\(2),
	devoe => ww_devoe,
	o => ww_cnt(2));

-- Location: IOOBUF_X10_Y17_N2
\cnt[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cntr_0|cnt\(3),
	devoe => ww_devoe,
	o => ww_cnt(3));

-- Location: IOOBUF_X10_Y17_N9
\cnt[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cntr_0|cnt\(4),
	devoe => ww_devoe,
	o => ww_cnt(4));

-- Location: IOOBUF_X10_Y15_N16
\cnt[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cntr_0|cnt\(5),
	devoe => ww_devoe,
	o => ww_cnt(5));

-- Location: IOOBUF_X10_Y15_N23
\cnt[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cntr_0|cnt\(6),
	devoe => ww_devoe,
	o => ww_cnt(6));

-- Location: IOIBUF_X6_Y10_N8
\m[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(1),
	o => \m[1]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G0
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y6_N15
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: PLL_1
\pll|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
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
	c1_initial => 2,
	c1_low => 6,
	c1_mode => "even",
	c1_ph => 4,
	c1_use_casc_in => "off",
	c2_high => 6,
	c2_initial => 4,
	c2_low => 6,
	c2_mode => "even",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 6,
	c3_initial => 5,
	c3_low => 6,
	c3_mode => "even",
	c3_ph => 4,
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
	clk1_counter => "c1",
	clk1_divide_by => 1,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 1,
	clk1_phase_shift => "2500",
	clk2_counter => "c2",
	clk2_divide_by => 1,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 1,
	clk2_phase_shift => "5000",
	clk3_counter => "c3",
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
	pll_compensation_delay => 3227,
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
	areset => \reset~inputclkctrl_outclk\,
	fbin => \pll|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \pll|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \pll|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pll|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G2
\pll|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\);

-- Location: CLKCTRL_G3
\pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X12_Y14_N10
\cntr_0|cnt[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cntr_0|cnt[0]~7_combout\ = \cntr_0|cnt\(0) $ (VCC)
-- \cntr_0|cnt[0]~8\ = CARRY(\cntr_0|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr_0|cnt\(0),
	datad => VCC,
	combout => \cntr_0|cnt[0]~7_combout\,
	cout => \cntr_0|cnt[0]~8\);

-- Location: LCCOMB_X12_Y14_N18
\cntr_0|cnt[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cntr_0|cnt[4]~15_combout\ = (\cntr_0|cnt\(4) & (\cntr_0|cnt[3]~14\ $ (GND))) # (!\cntr_0|cnt\(4) & (!\cntr_0|cnt[3]~14\ & VCC))
-- \cntr_0|cnt[4]~16\ = CARRY((\cntr_0|cnt\(4) & !\cntr_0|cnt[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntr_0|cnt\(4),
	datad => VCC,
	cin => \cntr_0|cnt[3]~14\,
	combout => \cntr_0|cnt[4]~15_combout\,
	cout => \cntr_0|cnt[4]~16\);

-- Location: LCCOMB_X12_Y14_N20
\cntr_0|cnt[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cntr_0|cnt[5]~17_combout\ = (\cntr_0|cnt\(5) & (!\cntr_0|cnt[4]~16\)) # (!\cntr_0|cnt\(5) & ((\cntr_0|cnt[4]~16\) # (GND)))
-- \cntr_0|cnt[5]~18\ = CARRY((!\cntr_0|cnt[4]~16\) # (!\cntr_0|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntr_0|cnt\(5),
	datad => VCC,
	cin => \cntr_0|cnt[4]~16\,
	combout => \cntr_0|cnt[5]~17_combout\,
	cout => \cntr_0|cnt[5]~18\);

-- Location: FF_X12_Y14_N21
\cntr_0|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cntr_0|cnt[5]~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \cntr_0|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntr_0|cnt\(5));

-- Location: LCCOMB_X12_Y14_N4
\cntr_0|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cntr_0|LessThan0~0_combout\ = ((!\cntr_0|cnt\(4) & (!\cntr_0|cnt\(2) & !\cntr_0|cnt\(3)))) # (!\cntr_0|cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr_0|cnt\(4),
	datab => \cntr_0|cnt\(5),
	datac => \cntr_0|cnt\(2),
	datad => \cntr_0|cnt\(3),
	combout => \cntr_0|LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y14_N22
\cntr_0|cnt[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cntr_0|cnt[6]~19_combout\ = \cntr_0|cnt\(6) $ (!\cntr_0|cnt[5]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntr_0|cnt\(6),
	cin => \cntr_0|cnt[5]~18\,
	combout => \cntr_0|cnt[6]~19_combout\);

-- Location: FF_X12_Y14_N23
\cntr_0|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cntr_0|cnt[6]~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \cntr_0|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntr_0|cnt\(6));

-- Location: LCCOMB_X12_Y14_N30
\cntr_0|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cntr_0|LessThan0~1_combout\ = (!\cntr_0|LessThan0~0_combout\ & \cntr_0|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cntr_0|LessThan0~0_combout\,
	datac => \cntr_0|cnt\(6),
	combout => \cntr_0|LessThan0~1_combout\);

-- Location: FF_X12_Y14_N11
\cntr_0|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cntr_0|cnt[0]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \cntr_0|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntr_0|cnt\(0));

-- Location: LCCOMB_X12_Y14_N12
\cntr_0|cnt[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cntr_0|cnt[1]~9_combout\ = (\cntr_0|cnt\(1) & (!\cntr_0|cnt[0]~8\)) # (!\cntr_0|cnt\(1) & ((\cntr_0|cnt[0]~8\) # (GND)))
-- \cntr_0|cnt[1]~10\ = CARRY((!\cntr_0|cnt[0]~8\) # (!\cntr_0|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntr_0|cnt\(1),
	datad => VCC,
	cin => \cntr_0|cnt[0]~8\,
	combout => \cntr_0|cnt[1]~9_combout\,
	cout => \cntr_0|cnt[1]~10\);

-- Location: FF_X12_Y14_N13
\cntr_0|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cntr_0|cnt[1]~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \cntr_0|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntr_0|cnt\(1));

-- Location: LCCOMB_X12_Y14_N14
\cntr_0|cnt[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cntr_0|cnt[2]~11_combout\ = (\cntr_0|cnt\(2) & (\cntr_0|cnt[1]~10\ $ (GND))) # (!\cntr_0|cnt\(2) & (!\cntr_0|cnt[1]~10\ & VCC))
-- \cntr_0|cnt[2]~12\ = CARRY((\cntr_0|cnt\(2) & !\cntr_0|cnt[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntr_0|cnt\(2),
	datad => VCC,
	cin => \cntr_0|cnt[1]~10\,
	combout => \cntr_0|cnt[2]~11_combout\,
	cout => \cntr_0|cnt[2]~12\);

-- Location: FF_X12_Y14_N15
\cntr_0|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cntr_0|cnt[2]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \cntr_0|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntr_0|cnt\(2));

-- Location: LCCOMB_X12_Y14_N16
\cntr_0|cnt[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cntr_0|cnt[3]~13_combout\ = (\cntr_0|cnt\(3) & (!\cntr_0|cnt[2]~12\)) # (!\cntr_0|cnt\(3) & ((\cntr_0|cnt[2]~12\) # (GND)))
-- \cntr_0|cnt[3]~14\ = CARRY((!\cntr_0|cnt[2]~12\) # (!\cntr_0|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntr_0|cnt\(3),
	datad => VCC,
	cin => \cntr_0|cnt[2]~12\,
	combout => \cntr_0|cnt[3]~13_combout\,
	cout => \cntr_0|cnt[3]~14\);

-- Location: FF_X12_Y14_N17
\cntr_0|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cntr_0|cnt[3]~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \cntr_0|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntr_0|cnt\(3));

-- Location: FF_X12_Y14_N19
\cntr_0|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \cntr_0|cnt[4]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \cntr_0|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntr_0|cnt\(4));

-- Location: IOIBUF_X10_Y16_N8
\m[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(7),
	o => \m[7]~input_o\);

-- Location: IOIBUF_X10_Y18_N15
\m[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(8),
	o => \m[8]~input_o\);

-- Location: LCCOMB_X12_Y14_N26
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\cntr_0|cnt\(4) & (\m[7]~input_o\ & (\m[8]~input_o\ $ (!\cntr_0|cnt\(5))))) # (!\cntr_0|cnt\(4) & (!\m[7]~input_o\ & (\m[8]~input_o\ $ (!\cntr_0|cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr_0|cnt\(4),
	datab => \m[7]~input_o\,
	datac => \m[8]~input_o\,
	datad => \cntr_0|cnt\(5),
	combout => \Equal1~2_combout\);

-- Location: IOIBUF_X10_Y18_N8
\m[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(9),
	o => \m[9]~input_o\);

-- Location: LCCOMB_X12_Y14_N28
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = \m[9]~input_o\ $ (\cntr_0|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m[9]~input_o\,
	datac => \cntr_0|cnt\(6),
	combout => \Equal1~3_combout\);

-- Location: IOIBUF_X6_Y10_N29
\m[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(5),
	o => \m[5]~input_o\);

-- Location: IOIBUF_X6_Y0_N29
\m[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(6),
	o => \m[6]~input_o\);

-- Location: LCCOMB_X12_Y14_N8
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\m[5]~input_o\ & (\cntr_0|cnt\(2) & (\m[6]~input_o\ $ (!\cntr_0|cnt\(3))))) # (!\m[5]~input_o\ & (!\cntr_0|cnt\(2) & (\m[6]~input_o\ $ (!\cntr_0|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[5]~input_o\,
	datab => \m[6]~input_o\,
	datac => \cntr_0|cnt\(2),
	datad => \cntr_0|cnt\(3),
	combout => \Equal1~1_combout\);

-- Location: IOIBUF_X3_Y10_N29
\m[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(3),
	o => \m[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\m[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(4),
	o => \m[4]~input_o\);

-- Location: LCCOMB_X12_Y14_N24
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\cntr_0|cnt\(1) & (\m[4]~input_o\ & (\m[3]~input_o\ $ (!\cntr_0|cnt\(0))))) # (!\cntr_0|cnt\(1) & (!\m[4]~input_o\ & (\m[3]~input_o\ $ (!\cntr_0|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr_0|cnt\(1),
	datab => \m[3]~input_o\,
	datac => \m[4]~input_o\,
	datad => \cntr_0|cnt\(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X12_Y14_N0
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~2_combout\ & (!\Equal1~3_combout\ & (\Equal1~1_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~3_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~4_combout\);

-- Location: FF_X12_Y14_N1
CLR0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLR0~q\);

-- Location: LCCOMB_X12_Y12_N24
\CLR2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLR2~feeder_combout\ = \CLR0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLR0~q\,
	combout => \CLR2~feeder_combout\);

-- Location: FF_X12_Y12_N25
CLR2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \CLR2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLR2~q\);

-- Location: FF_X12_Y12_N11
CLR6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[2]~clkctrl_outclk\,
	asdata => \CLR0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLR6~q\);

-- Location: IOIBUF_X1_Y10_N29
\m[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(2),
	o => \m[2]~input_o\);

-- Location: FF_X13_Y13_N9
CLR4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \CLR0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLR4~q\);

-- Location: LCCOMB_X13_Y13_N8
\RST~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RST~2_combout\ = (\m[2]~input_o\ & (((\CLR4~q\) # (\m[1]~input_o\)))) # (!\m[2]~input_o\ & (\CLR0~q\ & ((!\m[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR0~q\,
	datab => \m[2]~input_o\,
	datac => \CLR4~q\,
	datad => \m[1]~input_o\,
	combout => \RST~2_combout\);

-- Location: LCCOMB_X12_Y12_N10
\RST~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RST~3_combout\ = (\m[1]~input_o\ & ((\RST~2_combout\ & ((\CLR6~q\))) # (!\RST~2_combout\ & (\CLR2~q\)))) # (!\m[1]~input_o\ & (((\RST~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[1]~input_o\,
	datab => \CLR2~q\,
	datac => \CLR6~q\,
	datad => \RST~2_combout\,
	combout => \RST~3_combout\);

-- Location: IOIBUF_X10_Y16_N1
\m[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(0),
	o => \m[0]~input_o\);

-- Location: CLKCTRL_G4
\pll|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y14_N24
\CLR5~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLR5~feeder_combout\ = \CLR0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLR0~q\,
	combout => \CLR5~feeder_combout\);

-- Location: FF_X14_Y14_N25
CLR5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[1]~clkctrl_outclk\,
	d => \CLR5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLR5~q\);

-- Location: CLKCTRL_G1
\pll|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_outclk\);

-- Location: FF_X14_Y14_N3
CLR7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[3]~clkctrl_outclk\,
	asdata => \CLR0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLR7~q\);

-- Location: FF_X13_Y14_N3
CLR1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \CLR0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLR1~q\);

-- Location: LCCOMB_X13_Y14_N24
\CLR3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLR3~feeder_combout\ = \CLR0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLR0~q\,
	combout => \CLR3~feeder_combout\);

-- Location: FF_X13_Y14_N25
CLR3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk[3]~clkctrl_outclk\,
	d => \CLR3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLR3~q\);

-- Location: LCCOMB_X13_Y14_N2
\RST~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RST~0_combout\ = (\m[1]~input_o\ & ((\m[2]~input_o\) # ((\CLR3~q\)))) # (!\m[1]~input_o\ & (!\m[2]~input_o\ & (\CLR1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[1]~input_o\,
	datab => \m[2]~input_o\,
	datac => \CLR1~q\,
	datad => \CLR3~q\,
	combout => \RST~0_combout\);

-- Location: LCCOMB_X14_Y14_N2
\RST~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RST~1_combout\ = (\m[2]~input_o\ & ((\RST~0_combout\ & ((\CLR7~q\))) # (!\RST~0_combout\ & (\CLR5~q\)))) # (!\m[2]~input_o\ & (((\RST~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[2]~input_o\,
	datab => \CLR5~q\,
	datac => \CLR7~q\,
	datad => \RST~0_combout\,
	combout => \RST~1_combout\);

-- Location: LCCOMB_X12_Y12_N12
\RST~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RST~4_combout\ = (\m[0]~input_o\ & ((\RST~1_combout\))) # (!\m[0]~input_o\ & (\RST~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~3_combout\,
	datac => \m[0]~input_o\,
	datad => \RST~1_combout\,
	combout => \RST~4_combout\);

-- Location: LCCOMB_X12_Y14_N6
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\cntr_0|cnt\(4) & (!\cntr_0|cnt\(3) & (!\cntr_0|cnt\(2) & !\cntr_0|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntr_0|cnt\(4),
	datab => \cntr_0|cnt\(3),
	datac => \cntr_0|cnt\(2),
	datad => \cntr_0|cnt\(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X12_Y14_N2
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (!\cntr_0|cnt\(5) & (!\cntr_0|cnt\(6) & !\cntr_0|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \cntr_0|cnt\(5),
	datac => \cntr_0|cnt\(6),
	datad => \cntr_0|cnt\(1),
	combout => \Equal0~1_combout\);

-- Location: FF_X12_Y14_N3
SET : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SET~q\);

-- Location: LCCOMB_X12_Y12_N6
OUT_PWM : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OUT_PWM~combout\ = (!\RST~4_combout\ & ((\SET~q\) # (\OUT_PWM~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~4_combout\,
	datab => \SET~q\,
	datad => \OUT_PWM~combout\,
	combout => \OUT_PWM~combout\);

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


