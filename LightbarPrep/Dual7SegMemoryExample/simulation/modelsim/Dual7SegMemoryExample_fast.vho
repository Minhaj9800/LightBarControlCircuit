-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/23/2016 16:25:55"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Dual7SegMemoryExample IS
    PORT (
	BCD : IN std_logic_vector(3 DOWNTO 0);
	SEL : IN std_logic;
	CLKn : IN std_logic;
	SevenSegA : OUT std_logic_vector(0 TO 6);
	SevenSegB : OUT std_logic_vector(0 TO 6)
	);
END Dual7SegMemoryExample;

-- Design Ports Information
-- SevenSegA[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SevenSegA[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SevenSegA[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SevenSegA[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SevenSegA[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SevenSegA[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SevenSegA[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SevenSegB[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SevenSegB[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SevenSegB[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SevenSegB[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SevenSegB[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SevenSegB[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SevenSegB[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCD[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCD[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCD[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLKn	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SEL	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Dual7SegMemoryExample IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BCD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SEL : std_logic;
SIGNAL ww_CLKn : std_logic;
SIGNAL ww_SevenSegA : std_logic_vector(0 TO 6);
SIGNAL ww_SevenSegB : std_logic_vector(0 TO 6);
SIGNAL \myDemux|B~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \myDemux|A~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEL~combout\ : std_logic;
SIGNAL \CLKn~combout\ : std_logic;
SIGNAL \myDemux|A~combout\ : std_logic;
SIGNAL \myDemux|A~clkctrl_outclk\ : std_logic;
SIGNAL \segA|WideOr6~0_combout\ : std_logic;
SIGNAL \segA|WideOr5~0_combout\ : std_logic;
SIGNAL \segA|WideOr4~0_combout\ : std_logic;
SIGNAL \segA|WideOr3~0_combout\ : std_logic;
SIGNAL \segA|WideOr2~0_combout\ : std_logic;
SIGNAL \segA|WideOr1~0_combout\ : std_logic;
SIGNAL \segA|WideOr0~0_combout\ : std_logic;
SIGNAL \myDemux|B~combout\ : std_logic;
SIGNAL \myDemux|B~clkctrl_outclk\ : std_logic;
SIGNAL \segB|SEGMENT[5]~feeder_combout\ : std_logic;
SIGNAL \segB|SEGMENT[3]~feeder_combout\ : std_logic;
SIGNAL \segB|SEGMENT[1]~feeder_combout\ : std_logic;
SIGNAL \segB|SEGMENT[0]~feeder_combout\ : std_logic;
SIGNAL \BCD~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \segA|SEGMENT\ : std_logic_vector(0 TO 6);
SIGNAL \segB|SEGMENT\ : std_logic_vector(0 TO 6);
SIGNAL \segB|ALT_INV_SEGMENT\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \segA|ALT_INV_SEGMENT\ : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_BCD <= BCD;
ww_SEL <= SEL;
ww_CLKn <= CLKn;
SevenSegA <= ww_SevenSegA;
SevenSegB <= ww_SevenSegB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\myDemux|B~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \myDemux|B~combout\);

\myDemux|A~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \myDemux|A~combout\);
\segB|ALT_INV_SEGMENT\(0) <= NOT \segB|SEGMENT\(0);
\segB|ALT_INV_SEGMENT\(1) <= NOT \segB|SEGMENT\(1);
\segB|ALT_INV_SEGMENT\(2) <= NOT \segB|SEGMENT\(2);
\segB|ALT_INV_SEGMENT\(3) <= NOT \segB|SEGMENT\(3);
\segB|ALT_INV_SEGMENT\(4) <= NOT \segB|SEGMENT\(4);
\segB|ALT_INV_SEGMENT\(5) <= NOT \segB|SEGMENT\(5);
\segB|ALT_INV_SEGMENT\(6) <= NOT \segB|SEGMENT\(6);
\segA|ALT_INV_SEGMENT\(0) <= NOT \segA|SEGMENT\(0);
\segA|ALT_INV_SEGMENT\(1) <= NOT \segA|SEGMENT\(1);
\segA|ALT_INV_SEGMENT\(2) <= NOT \segA|SEGMENT\(2);
\segA|ALT_INV_SEGMENT\(3) <= NOT \segA|SEGMENT\(3);
\segA|ALT_INV_SEGMENT\(4) <= NOT \segA|SEGMENT\(4);
\segA|ALT_INV_SEGMENT\(5) <= NOT \segA|SEGMENT\(5);
\segA|ALT_INV_SEGMENT\(6) <= NOT \segA|SEGMENT\(6);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BCD[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_BCD(1),
	combout => \BCD~combout\(1));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SEL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SEL,
	combout => \SEL~combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLKn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLKn,
	combout => \CLKn~combout\);

-- Location: LCCOMB_X49_Y10_N22
\myDemux|A\ : cycloneii_lcell_comb
-- Equation(s):
-- \myDemux|A~combout\ = LCELL((\SEL~combout\ & !\CLKn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL~combout\,
	datad => \CLKn~combout\,
	combout => \myDemux|A~combout\);

-- Location: CLKCTRL_G4
\myDemux|A~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \myDemux|A~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \myDemux|A~clkctrl_outclk\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BCD[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_BCD(0),
	combout => \BCD~combout\(0));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BCD[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_BCD(3),
	combout => \BCD~combout\(3));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BCD[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_BCD(2),
	combout => \BCD~combout\(2));

-- Location: LCCOMB_X1_Y20_N8
\segA|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segA|WideOr6~0_combout\ = (\BCD~combout\(1) & (!\BCD~combout\(3) & ((!\BCD~combout\(2)) # (!\BCD~combout\(0))))) # (!\BCD~combout\(1) & ((\BCD~combout\(3) $ (\BCD~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~combout\(1),
	datab => \BCD~combout\(0),
	datac => \BCD~combout\(3),
	datad => \BCD~combout\(2),
	combout => \segA|WideOr6~0_combout\);

-- Location: LCFF_X1_Y20_N9
\segA|SEGMENT[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \myDemux|A~clkctrl_outclk\,
	datain => \segA|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segA|SEGMENT\(6));

-- Location: LCCOMB_X1_Y20_N26
\segA|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segA|WideOr5~0_combout\ = (\BCD~combout\(0) & (!\BCD~combout\(1) & (\BCD~combout\(3) $ (\BCD~combout\(2))))) # (!\BCD~combout\(0) & ((\BCD~combout\(2) & ((!\BCD~combout\(3)))) # (!\BCD~combout\(2) & (!\BCD~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~combout\(1),
	datab => \BCD~combout\(0),
	datac => \BCD~combout\(3),
	datad => \BCD~combout\(2),
	combout => \segA|WideOr5~0_combout\);

-- Location: LCFF_X1_Y20_N27
\segA|SEGMENT[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \myDemux|A~clkctrl_outclk\,
	datain => \segA|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segA|SEGMENT\(5));

-- Location: LCCOMB_X1_Y20_N20
\segA|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segA|WideOr4~0_combout\ = (!\BCD~combout\(0) & ((\BCD~combout\(1) & (!\BCD~combout\(3))) # (!\BCD~combout\(1) & ((!\BCD~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~combout\(1),
	datab => \BCD~combout\(0),
	datac => \BCD~combout\(3),
	datad => \BCD~combout\(2),
	combout => \segA|WideOr4~0_combout\);

-- Location: LCFF_X1_Y20_N21
\segA|SEGMENT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \myDemux|A~clkctrl_outclk\,
	datain => \segA|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segA|SEGMENT\(4));

-- Location: LCCOMB_X1_Y20_N6
\segA|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segA|WideOr3~0_combout\ = (\BCD~combout\(1) & (!\BCD~combout\(3) & ((!\BCD~combout\(2)) # (!\BCD~combout\(0))))) # (!\BCD~combout\(1) & (\BCD~combout\(2) $ (((\BCD~combout\(3)) # (!\BCD~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~combout\(1),
	datab => \BCD~combout\(0),
	datac => \BCD~combout\(3),
	datad => \BCD~combout\(2),
	combout => \segA|WideOr3~0_combout\);

-- Location: LCFF_X1_Y20_N7
\segA|SEGMENT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \myDemux|A~clkctrl_outclk\,
	datain => \segA|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segA|SEGMENT\(3));

-- Location: LCCOMB_X1_Y20_N16
\segA|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segA|WideOr2~0_combout\ = (\BCD~combout\(2) & (((!\BCD~combout\(3))))) # (!\BCD~combout\(2) & (((\BCD~combout\(0) & !\BCD~combout\(3))) # (!\BCD~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~combout\(1),
	datab => \BCD~combout\(0),
	datac => \BCD~combout\(3),
	datad => \BCD~combout\(2),
	combout => \segA|WideOr2~0_combout\);

-- Location: LCFF_X1_Y20_N17
\segA|SEGMENT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \myDemux|A~clkctrl_outclk\,
	datain => \segA|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segA|SEGMENT\(2));

-- Location: LCCOMB_X1_Y20_N18
\segA|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segA|WideOr1~0_combout\ = (\BCD~combout\(3) & (!\BCD~combout\(1) & ((!\BCD~combout\(2))))) # (!\BCD~combout\(3) & ((\BCD~combout\(1) $ (!\BCD~combout\(0))) # (!\BCD~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~combout\(1),
	datab => \BCD~combout\(0),
	datac => \BCD~combout\(3),
	datad => \BCD~combout\(2),
	combout => \segA|WideOr1~0_combout\);

-- Location: LCFF_X1_Y20_N19
\segA|SEGMENT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \myDemux|A~clkctrl_outclk\,
	datain => \segA|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segA|SEGMENT\(1));

-- Location: LCCOMB_X1_Y20_N28
\segA|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \segA|WideOr0~0_combout\ = (\BCD~combout\(1) & (((!\BCD~combout\(3))))) # (!\BCD~combout\(1) & (\BCD~combout\(2) $ (((\BCD~combout\(3)) # (!\BCD~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~combout\(1),
	datab => \BCD~combout\(0),
	datac => \BCD~combout\(3),
	datad => \BCD~combout\(2),
	combout => \segA|WideOr0~0_combout\);

-- Location: LCFF_X1_Y20_N29
\segA|SEGMENT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \myDemux|A~clkctrl_outclk\,
	datain => \segA|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segA|SEGMENT\(0));

-- Location: LCCOMB_X49_Y10_N12
\myDemux|B\ : cycloneii_lcell_comb
-- Equation(s):
-- \myDemux|B~combout\ = LCELL((!\SEL~combout\ & !\CLKn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL~combout\,
	datad => \CLKn~combout\,
	combout => \myDemux|B~combout\);

-- Location: CLKCTRL_G14
\myDemux|B~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \myDemux|B~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \myDemux|B~clkctrl_outclk\);

-- Location: LCFF_X1_Y20_N23
\segB|SEGMENT[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \myDemux|B~clkctrl_outclk\,
	sdata => \segA|WideOr6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segB|SEGMENT\(6));

-- Location: LCCOMB_X1_Y20_N0
\segB|SEGMENT[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \segB|SEGMENT[5]~feeder_combout\ = \segA|WideOr5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \segA|WideOr5~0_combout\,
	combout => \segB|SEGMENT[5]~feeder_combout\);

-- Location: LCFF_X1_Y20_N1
\segB|SEGMENT[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \myDemux|B~clkctrl_outclk\,
	datain => \segB|SEGMENT[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segB|SEGMENT\(5));

-- Location: LCFF_X1_Y20_N3
\segB|SEGMENT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \myDemux|B~clkctrl_outclk\,
	sdata => \segA|WideOr4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segB|SEGMENT\(4));

-- Location: LCCOMB_X1_Y20_N12
\segB|SEGMENT[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \segB|SEGMENT[3]~feeder_combout\ = \segA|WideOr3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \segA|WideOr3~0_combout\,
	combout => \segB|SEGMENT[3]~feeder_combout\);

-- Location: LCFF_X1_Y20_N13
\segB|SEGMENT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \myDemux|B~clkctrl_outclk\,
	datain => \segB|SEGMENT[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segB|SEGMENT\(3));

-- Location: LCFF_X1_Y20_N31
\segB|SEGMENT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \myDemux|B~clkctrl_outclk\,
	sdata => \segA|WideOr2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segB|SEGMENT\(2));

-- Location: LCCOMB_X1_Y20_N24
\segB|SEGMENT[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \segB|SEGMENT[1]~feeder_combout\ = \segA|WideOr1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \segA|WideOr1~0_combout\,
	combout => \segB|SEGMENT[1]~feeder_combout\);

-- Location: LCFF_X1_Y20_N25
\segB|SEGMENT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \myDemux|B~clkctrl_outclk\,
	datain => \segB|SEGMENT[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segB|SEGMENT\(1));

-- Location: LCCOMB_X1_Y20_N10
\segB|SEGMENT[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \segB|SEGMENT[0]~feeder_combout\ = \segA|WideOr0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \segA|WideOr0~0_combout\,
	combout => \segB|SEGMENT[0]~feeder_combout\);

-- Location: LCFF_X1_Y20_N11
\segB|SEGMENT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \myDemux|B~clkctrl_outclk\,
	datain => \segB|SEGMENT[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \segB|SEGMENT\(0));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SevenSegA[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \segA|ALT_INV_SEGMENT\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SevenSegA(6));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SevenSegA[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \segA|ALT_INV_SEGMENT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SevenSegA(5));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SevenSegA[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \segA|ALT_INV_SEGMENT\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SevenSegA(4));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SevenSegA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \segA|ALT_INV_SEGMENT\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SevenSegA(3));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SevenSegA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \segA|ALT_INV_SEGMENT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SevenSegA(2));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SevenSegA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \segA|ALT_INV_SEGMENT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SevenSegA(1));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SevenSegA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \segA|ALT_INV_SEGMENT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SevenSegA(0));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SevenSegB[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \segB|ALT_INV_SEGMENT\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SevenSegB(6));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SevenSegB[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \segB|ALT_INV_SEGMENT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SevenSegB(5));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SevenSegB[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \segB|ALT_INV_SEGMENT\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SevenSegB(4));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SevenSegB[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \segB|ALT_INV_SEGMENT\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SevenSegB(3));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SevenSegB[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \segB|ALT_INV_SEGMENT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SevenSegB(2));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SevenSegB[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \segB|ALT_INV_SEGMENT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SevenSegB(1));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SevenSegB[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \segB|ALT_INV_SEGMENT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SevenSegB(0));
END structure;


