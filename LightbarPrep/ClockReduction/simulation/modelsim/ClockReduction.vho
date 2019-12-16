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

-- DATE "03/23/2016 17:17:07"

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

ENTITY 	ClockReduction IS
    PORT (
	CLK_IN : IN std_logic;
	LED_OUT : OUT std_logic
	);
END ClockReduction;

-- Design Ports Information
-- LED_OUT	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK_IN	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ClockReduction IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_IN : std_logic;
SIGNAL ww_LED_OUT : std_logic;
SIGNAL \CLK_IN~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \f1s|Add0~0_combout\ : std_logic;
SIGNAL \f1s|Add0~14_combout\ : std_logic;
SIGNAL \f1s|Add0~16_combout\ : std_logic;
SIGNAL \f1s|Add0~18_combout\ : std_logic;
SIGNAL \f1s|Add0~24_combout\ : std_logic;
SIGNAL \f1s|Add0~42_combout\ : std_logic;
SIGNAL \f1s|Add0~48_combout\ : std_logic;
SIGNAL \f1s|LessThan0~5_combout\ : std_logic;
SIGNAL \f1s|counter~6_combout\ : std_logic;
SIGNAL \f1s|counter~7_combout\ : std_logic;
SIGNAL \f1s|counter~14_combout\ : std_logic;
SIGNAL \f1s|counter~15_combout\ : std_logic;
SIGNAL \f1s|counter~16_combout\ : std_logic;
SIGNAL \f1s|counter~21_combout\ : std_logic;
SIGNAL \f1s|counter~23_combout\ : std_logic;
SIGNAL \f1s|counter~24_combout\ : std_logic;
SIGNAL \f1s|counter~26_combout\ : std_logic;
SIGNAL \f1s|counter~27_combout\ : std_logic;
SIGNAL \f1s|counter~29_combout\ : std_logic;
SIGNAL \f1s|counter~30_combout\ : std_logic;
SIGNAL \f1s|counter~31_combout\ : std_logic;
SIGNAL \f1s|counter~38_combout\ : std_logic;
SIGNAL \f1s|counter~39_combout\ : std_logic;
SIGNAL \CLK_IN~combout\ : std_logic;
SIGNAL \CLK_IN~clkctrl_outclk\ : std_logic;
SIGNAL \f1s|counter~33_combout\ : std_logic;
SIGNAL \f1s|counter~32_combout\ : std_logic;
SIGNAL \f1s|Add0~47\ : std_logic;
SIGNAL \f1s|Add0~49\ : std_logic;
SIGNAL \f1s|Add0~51\ : std_logic;
SIGNAL \f1s|Add0~53\ : std_logic;
SIGNAL \f1s|Add0~54_combout\ : std_logic;
SIGNAL \f1s|counter~37_combout\ : std_logic;
SIGNAL \f1s|Add0~55\ : std_logic;
SIGNAL \f1s|Add0~56_combout\ : std_logic;
SIGNAL \f1s|counter~36_combout\ : std_logic;
SIGNAL \f1s|Add0~57\ : std_logic;
SIGNAL \f1s|Add0~58_combout\ : std_logic;
SIGNAL \f1s|counter~35_combout\ : std_logic;
SIGNAL \f1s|Add0~59\ : std_logic;
SIGNAL \f1s|Add0~60_combout\ : std_logic;
SIGNAL \f1s|counter~34_combout\ : std_logic;
SIGNAL \f1s|Add0~61\ : std_logic;
SIGNAL \f1s|Add0~62_combout\ : std_logic;
SIGNAL \f1s|LessThan0~9_combout\ : std_logic;
SIGNAL \f1s|counter~25_combout\ : std_logic;
SIGNAL \f1s|counter~8_combout\ : std_logic;
SIGNAL \f1s|counter~9_combout\ : std_logic;
SIGNAL \f1s|counter~19_combout\ : std_logic;
SIGNAL \f1s|counter~22_combout\ : std_logic;
SIGNAL \f1s|Add0~1\ : std_logic;
SIGNAL \f1s|Add0~3\ : std_logic;
SIGNAL \f1s|Add0~5\ : std_logic;
SIGNAL \f1s|Add0~6_combout\ : std_logic;
SIGNAL \f1s|counter~20_combout\ : std_logic;
SIGNAL \f1s|Add0~7\ : std_logic;
SIGNAL \f1s|Add0~9\ : std_logic;
SIGNAL \f1s|Add0~10_combout\ : std_logic;
SIGNAL \f1s|counter~18_combout\ : std_logic;
SIGNAL \f1s|Add0~11\ : std_logic;
SIGNAL \f1s|Add0~13\ : std_logic;
SIGNAL \f1s|Add0~15\ : std_logic;
SIGNAL \f1s|Add0~17\ : std_logic;
SIGNAL \f1s|Add0~19\ : std_logic;
SIGNAL \f1s|Add0~20_combout\ : std_logic;
SIGNAL \f1s|counter~12_combout\ : std_logic;
SIGNAL \f1s|counter~13_combout\ : std_logic;
SIGNAL \f1s|Add0~21\ : std_logic;
SIGNAL \f1s|Add0~22_combout\ : std_logic;
SIGNAL \f1s|counter~10_combout\ : std_logic;
SIGNAL \f1s|counter~11_combout\ : std_logic;
SIGNAL \f1s|Add0~23\ : std_logic;
SIGNAL \f1s|Add0~25\ : std_logic;
SIGNAL \f1s|Add0~27\ : std_logic;
SIGNAL \f1s|Add0~28_combout\ : std_logic;
SIGNAL \f1s|counter~4_combout\ : std_logic;
SIGNAL \f1s|counter~5_combout\ : std_logic;
SIGNAL \f1s|Add0~29\ : std_logic;
SIGNAL \f1s|Add0~30_combout\ : std_logic;
SIGNAL \f1s|counter~2_combout\ : std_logic;
SIGNAL \f1s|counter~3_combout\ : std_logic;
SIGNAL \f1s|Add0~31\ : std_logic;
SIGNAL \f1s|Add0~32_combout\ : std_logic;
SIGNAL \f1s|counter~0_combout\ : std_logic;
SIGNAL \f1s|counter~1_combout\ : std_logic;
SIGNAL \f1s|Add0~33\ : std_logic;
SIGNAL \f1s|Add0~35\ : std_logic;
SIGNAL \f1s|Add0~37\ : std_logic;
SIGNAL \f1s|Add0~39\ : std_logic;
SIGNAL \f1s|Add0~40_combout\ : std_logic;
SIGNAL \f1s|counter~28_combout\ : std_logic;
SIGNAL \f1s|Add0~41\ : std_logic;
SIGNAL \f1s|Add0~43\ : std_logic;
SIGNAL \f1s|Add0~45\ : std_logic;
SIGNAL \f1s|Add0~46_combout\ : std_logic;
SIGNAL \f1s|Add0~50_combout\ : std_logic;
SIGNAL \f1s|Add0~52_combout\ : std_logic;
SIGNAL \f1s|LessThan0~8_combout\ : std_logic;
SIGNAL \f1s|LessThan0~10_combout\ : std_logic;
SIGNAL \f1s|counter~17_combout\ : std_logic;
SIGNAL \f1s|Add0~12_combout\ : std_logic;
SIGNAL \f1s|Add0~4_combout\ : std_logic;
SIGNAL \f1s|Add0~2_combout\ : std_logic;
SIGNAL \f1s|LessThan0~3_combout\ : std_logic;
SIGNAL \f1s|Add0~8_combout\ : std_logic;
SIGNAL \f1s|LessThan0~4_combout\ : std_logic;
SIGNAL \f1s|Add0~26_combout\ : std_logic;
SIGNAL \f1s|LessThan0~2_combout\ : std_logic;
SIGNAL \f1s|LessThan0~6_combout\ : std_logic;
SIGNAL \f1s|Add0~34_combout\ : std_logic;
SIGNAL \f1s|Add0~44_combout\ : std_logic;
SIGNAL \f1s|Add0~36_combout\ : std_logic;
SIGNAL \f1s|Add0~38_combout\ : std_logic;
SIGNAL \f1s|LessThan0~0_combout\ : std_logic;
SIGNAL \f1s|LessThan0~1_combout\ : std_logic;
SIGNAL \f1s|LessThan0~7_combout\ : std_logic;
SIGNAL \f1s|L~0_combout\ : std_logic;
SIGNAL \f1s|L~1_combout\ : std_logic;
SIGNAL \f1s|L~regout\ : std_logic;
SIGNAL \f1s|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_CLK_IN~clkctrl_outclk\ : std_logic;

BEGIN

ww_CLK_IN <= CLK_IN;
LED_OUT <= ww_LED_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_IN~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK_IN~combout\);
\ALT_INV_CLK_IN~clkctrl_outclk\ <= NOT \CLK_IN~clkctrl_outclk\;

-- Location: LCCOMB_X9_Y10_N0
\f1s|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~0_combout\ = \f1s|counter\(0) $ (VCC)
-- \f1s|Add0~1\ = CARRY(\f1s|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|counter\(0),
	datad => VCC,
	combout => \f1s|Add0~0_combout\,
	cout => \f1s|Add0~1\);

-- Location: LCCOMB_X9_Y10_N14
\f1s|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~14_combout\ = (\f1s|counter\(7) & (!\f1s|Add0~13\)) # (!\f1s|counter\(7) & ((\f1s|Add0~13\) # (GND)))
-- \f1s|Add0~15\ = CARRY((!\f1s|Add0~13\) # (!\f1s|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|counter\(7),
	datad => VCC,
	cin => \f1s|Add0~13\,
	combout => \f1s|Add0~14_combout\,
	cout => \f1s|Add0~15\);

-- Location: LCCOMB_X9_Y10_N16
\f1s|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~16_combout\ = (\f1s|counter\(8) & (\f1s|Add0~15\ $ (GND))) # (!\f1s|counter\(8) & (!\f1s|Add0~15\ & VCC))
-- \f1s|Add0~17\ = CARRY((\f1s|counter\(8) & !\f1s|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|counter\(8),
	datad => VCC,
	cin => \f1s|Add0~15\,
	combout => \f1s|Add0~16_combout\,
	cout => \f1s|Add0~17\);

-- Location: LCCOMB_X9_Y10_N18
\f1s|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~18_combout\ = (\f1s|counter\(9) & (!\f1s|Add0~17\)) # (!\f1s|counter\(9) & ((\f1s|Add0~17\) # (GND)))
-- \f1s|Add0~19\ = CARRY((!\f1s|Add0~17\) # (!\f1s|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|counter\(9),
	datad => VCC,
	cin => \f1s|Add0~17\,
	combout => \f1s|Add0~18_combout\,
	cout => \f1s|Add0~19\);

-- Location: LCCOMB_X9_Y10_N24
\f1s|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~24_combout\ = (\f1s|counter\(12) & (\f1s|Add0~23\ $ (GND))) # (!\f1s|counter\(12) & (!\f1s|Add0~23\ & VCC))
-- \f1s|Add0~25\ = CARRY((\f1s|counter\(12) & !\f1s|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(12),
	datad => VCC,
	cin => \f1s|Add0~23\,
	combout => \f1s|Add0~24_combout\,
	cout => \f1s|Add0~25\);

-- Location: LCCOMB_X9_Y9_N10
\f1s|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~42_combout\ = (\f1s|counter\(21) & (!\f1s|Add0~41\)) # (!\f1s|counter\(21) & ((\f1s|Add0~41\) # (GND)))
-- \f1s|Add0~43\ = CARRY((!\f1s|Add0~41\) # (!\f1s|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|counter\(21),
	datad => VCC,
	cin => \f1s|Add0~41\,
	combout => \f1s|Add0~42_combout\,
	cout => \f1s|Add0~43\);

-- Location: LCCOMB_X9_Y9_N16
\f1s|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~48_combout\ = (\f1s|counter\(24) & (\f1s|Add0~47\ $ (GND))) # (!\f1s|counter\(24) & (!\f1s|Add0~47\ & VCC))
-- \f1s|Add0~49\ = CARRY((\f1s|counter\(24) & !\f1s|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(24),
	datad => VCC,
	cin => \f1s|Add0~47\,
	combout => \f1s|Add0~48_combout\,
	cout => \f1s|Add0~49\);

-- Location: LCFF_X11_Y10_N9
\f1s|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(13));

-- Location: LCFF_X8_Y10_N9
\f1s|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(9));

-- Location: LCFF_X8_Y10_N11
\f1s|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(8));

-- Location: LCFF_X8_Y10_N1
\f1s|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(7));

-- Location: LCFF_X8_Y10_N15
\f1s|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(2));

-- Location: LCFF_X8_Y10_N31
\f1s|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(0));

-- Location: LCFF_X8_Y9_N21
\f1s|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(22));

-- Location: LCFF_X8_Y9_N11
\f1s|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(21));

-- Location: LCFF_X8_Y9_N15
\f1s|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(19));

-- Location: LCFF_X8_Y10_N21
\f1s|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(18));

-- Location: LCCOMB_X10_Y10_N20
\f1s|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|LessThan0~5_combout\ = (\f1s|Add0~14_combout\) # ((\f1s|Add0~18_combout\) # ((\f1s|Add0~20_combout\) # (\f1s|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|Add0~14_combout\,
	datab => \f1s|Add0~18_combout\,
	datac => \f1s|Add0~20_combout\,
	datad => \f1s|Add0~16_combout\,
	combout => \f1s|LessThan0~5_combout\);

-- Location: LCFF_X8_Y9_N13
\f1s|counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(26));

-- Location: LCFF_X8_Y9_N31
\f1s|counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(25));

-- Location: LCCOMB_X11_Y10_N24
\f1s|counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~6_combout\ = (\f1s|Add0~26_combout\ & ((\f1s|Add0~62_combout\) # (!\f1s|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1s|Add0~26_combout\,
	datac => \f1s|LessThan0~8_combout\,
	datad => \f1s|Add0~62_combout\,
	combout => \f1s|counter~6_combout\);

-- Location: LCCOMB_X11_Y10_N8
\f1s|counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~7_combout\ = (\f1s|counter~6_combout\ & ((\f1s|Add0~62_combout\) # ((!\f1s|LessThan0~9_combout\ & !\f1s|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|LessThan0~9_combout\,
	datab => \f1s|Add0~62_combout\,
	datac => \f1s|counter~6_combout\,
	datad => \f1s|LessThan0~7_combout\,
	combout => \f1s|counter~7_combout\);

-- Location: LCCOMB_X8_Y10_N8
\f1s|counter~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~14_combout\ = (\f1s|Add0~18_combout\ & !\f1s|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1s|Add0~18_combout\,
	datad => \f1s|LessThan0~10_combout\,
	combout => \f1s|counter~14_combout\);

-- Location: LCCOMB_X8_Y10_N10
\f1s|counter~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~15_combout\ = (\f1s|Add0~16_combout\ & !\f1s|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1s|Add0~16_combout\,
	datad => \f1s|LessThan0~10_combout\,
	combout => \f1s|counter~15_combout\);

-- Location: LCCOMB_X8_Y10_N0
\f1s|counter~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~16_combout\ = (\f1s|Add0~14_combout\ & !\f1s|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1s|Add0~14_combout\,
	datad => \f1s|LessThan0~10_combout\,
	combout => \f1s|counter~16_combout\);

-- Location: LCCOMB_X8_Y10_N14
\f1s|counter~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~21_combout\ = (\f1s|Add0~4_combout\ & !\f1s|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|Add0~4_combout\,
	datad => \f1s|LessThan0~10_combout\,
	combout => \f1s|counter~21_combout\);

-- Location: LCCOMB_X8_Y10_N30
\f1s|counter~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~23_combout\ = (\f1s|Add0~0_combout\ & !\f1s|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1s|Add0~0_combout\,
	datad => \f1s|LessThan0~10_combout\,
	combout => \f1s|counter~23_combout\);

-- Location: LCCOMB_X11_Y10_N6
\f1s|counter~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~24_combout\ = (\f1s|Add0~34_combout\ & ((\f1s|Add0~62_combout\) # (!\f1s|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1s|Add0~34_combout\,
	datac => \f1s|LessThan0~8_combout\,
	datad => \f1s|Add0~62_combout\,
	combout => \f1s|counter~24_combout\);

-- Location: LCCOMB_X8_Y9_N20
\f1s|counter~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~26_combout\ = (\f1s|Add0~44_combout\ & !\f1s|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1s|Add0~44_combout\,
	datad => \f1s|LessThan0~10_combout\,
	combout => \f1s|counter~26_combout\);

-- Location: LCCOMB_X8_Y9_N10
\f1s|counter~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~27_combout\ = (\f1s|Add0~42_combout\ & !\f1s|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1s|Add0~42_combout\,
	datad => \f1s|LessThan0~10_combout\,
	combout => \f1s|counter~27_combout\);

-- Location: LCCOMB_X8_Y9_N14
\f1s|counter~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~29_combout\ = (\f1s|Add0~38_combout\ & !\f1s|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1s|Add0~38_combout\,
	datad => \f1s|LessThan0~10_combout\,
	combout => \f1s|counter~29_combout\);

-- Location: LCCOMB_X7_Y10_N16
\f1s|counter~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~30_combout\ = (\f1s|Add0~36_combout\ & ((\f1s|Add0~62_combout\) # (!\f1s|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1s|Add0~36_combout\,
	datac => \f1s|Add0~62_combout\,
	datad => \f1s|LessThan0~8_combout\,
	combout => \f1s|counter~30_combout\);

-- Location: LCCOMB_X8_Y10_N20
\f1s|counter~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~31_combout\ = (\f1s|counter~30_combout\ & ((\f1s|Add0~62_combout\) # ((!\f1s|LessThan0~9_combout\ & !\f1s|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|LessThan0~9_combout\,
	datab => \f1s|LessThan0~7_combout\,
	datac => \f1s|Add0~62_combout\,
	datad => \f1s|counter~30_combout\,
	combout => \f1s|counter~31_combout\);

-- Location: LCCOMB_X8_Y9_N12
\f1s|counter~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~38_combout\ = (\f1s|Add0~52_combout\ & \f1s|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1s|Add0~52_combout\,
	datad => \f1s|Add0~62_combout\,
	combout => \f1s|counter~38_combout\);

-- Location: LCCOMB_X8_Y9_N30
\f1s|counter~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~39_combout\ = (\f1s|Add0~50_combout\ & \f1s|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1s|Add0~50_combout\,
	datad => \f1s|Add0~62_combout\,
	combout => \f1s|counter~39_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK_IN~I\ : cycloneii_io
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
	padio => ww_CLK_IN,
	combout => \CLK_IN~combout\);

-- Location: CLKCTRL_G2
\CLK_IN~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_IN~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_IN~clkctrl_outclk\);

-- Location: LCCOMB_X8_Y10_N16
\f1s|counter~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~33_combout\ = (\f1s|Add0~46_combout\ & !\f1s|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1s|Add0~46_combout\,
	datad => \f1s|LessThan0~10_combout\,
	combout => \f1s|counter~33_combout\);

-- Location: LCFF_X8_Y10_N17
\f1s|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(23));

-- Location: LCFF_X9_Y9_N31
\f1s|counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(31));

-- Location: LCCOMB_X8_Y10_N18
\f1s|counter~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~32_combout\ = (\f1s|Add0~48_combout\ & !\f1s|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|Add0~48_combout\,
	datad => \f1s|LessThan0~10_combout\,
	combout => \f1s|counter~32_combout\);

-- Location: LCFF_X8_Y10_N19
\f1s|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(24));

-- Location: LCCOMB_X9_Y9_N14
\f1s|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~46_combout\ = (\f1s|counter\(23) & (!\f1s|Add0~45\)) # (!\f1s|counter\(23) & ((\f1s|Add0~45\) # (GND)))
-- \f1s|Add0~47\ = CARRY((!\f1s|Add0~45\) # (!\f1s|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(23),
	datad => VCC,
	cin => \f1s|Add0~45\,
	combout => \f1s|Add0~46_combout\,
	cout => \f1s|Add0~47\);

-- Location: LCCOMB_X9_Y9_N18
\f1s|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~50_combout\ = (\f1s|counter\(25) & (!\f1s|Add0~49\)) # (!\f1s|counter\(25) & ((\f1s|Add0~49\) # (GND)))
-- \f1s|Add0~51\ = CARRY((!\f1s|Add0~49\) # (!\f1s|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|counter\(25),
	datad => VCC,
	cin => \f1s|Add0~49\,
	combout => \f1s|Add0~50_combout\,
	cout => \f1s|Add0~51\);

-- Location: LCCOMB_X9_Y9_N20
\f1s|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~52_combout\ = (\f1s|counter\(26) & (\f1s|Add0~51\ $ (GND))) # (!\f1s|counter\(26) & (!\f1s|Add0~51\ & VCC))
-- \f1s|Add0~53\ = CARRY((\f1s|counter\(26) & !\f1s|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|counter\(26),
	datad => VCC,
	cin => \f1s|Add0~51\,
	combout => \f1s|Add0~52_combout\,
	cout => \f1s|Add0~53\);

-- Location: LCCOMB_X9_Y9_N22
\f1s|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~54_combout\ = (\f1s|counter\(27) & (!\f1s|Add0~53\)) # (!\f1s|counter\(27) & ((\f1s|Add0~53\) # (GND)))
-- \f1s|Add0~55\ = CARRY((!\f1s|Add0~53\) # (!\f1s|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(27),
	datad => VCC,
	cin => \f1s|Add0~53\,
	combout => \f1s|Add0~54_combout\,
	cout => \f1s|Add0~55\);

-- Location: LCCOMB_X8_Y9_N26
\f1s|counter~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~37_combout\ = (\f1s|Add0~54_combout\ & \f1s|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1s|Add0~54_combout\,
	datad => \f1s|Add0~62_combout\,
	combout => \f1s|counter~37_combout\);

-- Location: LCFF_X8_Y9_N27
\f1s|counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(27));

-- Location: LCCOMB_X9_Y9_N24
\f1s|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~56_combout\ = (\f1s|counter\(28) & (\f1s|Add0~55\ $ (GND))) # (!\f1s|counter\(28) & (!\f1s|Add0~55\ & VCC))
-- \f1s|Add0~57\ = CARRY((\f1s|counter\(28) & !\f1s|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(28),
	datad => VCC,
	cin => \f1s|Add0~55\,
	combout => \f1s|Add0~56_combout\,
	cout => \f1s|Add0~57\);

-- Location: LCCOMB_X8_Y9_N4
\f1s|counter~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~36_combout\ = (\f1s|Add0~56_combout\ & \f1s|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1s|Add0~56_combout\,
	datad => \f1s|Add0~62_combout\,
	combout => \f1s|counter~36_combout\);

-- Location: LCFF_X8_Y9_N5
\f1s|counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(28));

-- Location: LCCOMB_X9_Y9_N26
\f1s|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~58_combout\ = (\f1s|counter\(29) & (!\f1s|Add0~57\)) # (!\f1s|counter\(29) & ((\f1s|Add0~57\) # (GND)))
-- \f1s|Add0~59\ = CARRY((!\f1s|Add0~57\) # (!\f1s|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(29),
	datad => VCC,
	cin => \f1s|Add0~57\,
	combout => \f1s|Add0~58_combout\,
	cout => \f1s|Add0~59\);

-- Location: LCCOMB_X8_Y9_N22
\f1s|counter~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~35_combout\ = (\f1s|Add0~58_combout\ & \f1s|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1s|Add0~58_combout\,
	datad => \f1s|Add0~62_combout\,
	combout => \f1s|counter~35_combout\);

-- Location: LCFF_X8_Y9_N23
\f1s|counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(29));

-- Location: LCCOMB_X9_Y9_N28
\f1s|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~60_combout\ = (\f1s|counter\(30) & (\f1s|Add0~59\ $ (GND))) # (!\f1s|counter\(30) & (!\f1s|Add0~59\ & VCC))
-- \f1s|Add0~61\ = CARRY((\f1s|counter\(30) & !\f1s|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(30),
	datad => VCC,
	cin => \f1s|Add0~59\,
	combout => \f1s|Add0~60_combout\,
	cout => \f1s|Add0~61\);

-- Location: LCCOMB_X8_Y9_N24
\f1s|counter~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~34_combout\ = (\f1s|Add0~60_combout\ & \f1s|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1s|Add0~60_combout\,
	datad => \f1s|Add0~62_combout\,
	combout => \f1s|counter~34_combout\);

-- Location: LCFF_X8_Y9_N25
\f1s|counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(30));

-- Location: LCCOMB_X9_Y9_N30
\f1s|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~62_combout\ = \f1s|Add0~61\ $ (\f1s|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \f1s|counter\(31),
	cin => \f1s|Add0~61\,
	combout => \f1s|Add0~62_combout\);

-- Location: LCCOMB_X8_Y10_N12
\f1s|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|LessThan0~9_combout\ = (\f1s|Add0~58_combout\) # ((\f1s|Add0~56_combout\) # ((\f1s|Add0~54_combout\) # (\f1s|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|Add0~58_combout\,
	datab => \f1s|Add0~56_combout\,
	datac => \f1s|Add0~54_combout\,
	datad => \f1s|Add0~60_combout\,
	combout => \f1s|LessThan0~9_combout\);

-- Location: LCCOMB_X11_Y10_N2
\f1s|counter~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~25_combout\ = (\f1s|counter~24_combout\ & ((\f1s|Add0~62_combout\) # ((!\f1s|LessThan0~9_combout\ & !\f1s|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|counter~24_combout\,
	datab => \f1s|Add0~62_combout\,
	datac => \f1s|LessThan0~9_combout\,
	datad => \f1s|LessThan0~7_combout\,
	combout => \f1s|counter~25_combout\);

-- Location: LCFF_X11_Y10_N3
\f1s|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(17));

-- Location: LCCOMB_X10_Y10_N2
\f1s|counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~8_combout\ = (\f1s|Add0~24_combout\ & ((\f1s|Add0~62_combout\) # (!\f1s|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|Add0~24_combout\,
	datab => \f1s|Add0~62_combout\,
	datad => \f1s|LessThan0~8_combout\,
	combout => \f1s|counter~8_combout\);

-- Location: LCCOMB_X10_Y10_N12
\f1s|counter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~9_combout\ = (\f1s|counter~8_combout\ & ((\f1s|Add0~62_combout\) # ((!\f1s|LessThan0~7_combout\ & !\f1s|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|LessThan0~7_combout\,
	datab => \f1s|Add0~62_combout\,
	datac => \f1s|LessThan0~9_combout\,
	datad => \f1s|counter~8_combout\,
	combout => \f1s|counter~9_combout\);

-- Location: LCFF_X10_Y10_N13
\f1s|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(12));

-- Location: LCCOMB_X8_Y10_N26
\f1s|counter~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~19_combout\ = (\f1s|Add0~8_combout\ & !\f1s|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|Add0~8_combout\,
	datad => \f1s|LessThan0~10_combout\,
	combout => \f1s|counter~19_combout\);

-- Location: LCFF_X8_Y10_N27
\f1s|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(4));

-- Location: LCCOMB_X8_Y10_N4
\f1s|counter~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~22_combout\ = (\f1s|Add0~2_combout\ & !\f1s|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|Add0~2_combout\,
	datad => \f1s|LessThan0~10_combout\,
	combout => \f1s|counter~22_combout\);

-- Location: LCFF_X8_Y10_N5
\f1s|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(1));

-- Location: LCCOMB_X9_Y10_N2
\f1s|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~2_combout\ = (\f1s|counter\(1) & (!\f1s|Add0~1\)) # (!\f1s|counter\(1) & ((\f1s|Add0~1\) # (GND)))
-- \f1s|Add0~3\ = CARRY((!\f1s|Add0~1\) # (!\f1s|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(1),
	datad => VCC,
	cin => \f1s|Add0~1\,
	combout => \f1s|Add0~2_combout\,
	cout => \f1s|Add0~3\);

-- Location: LCCOMB_X9_Y10_N4
\f1s|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~4_combout\ = (\f1s|counter\(2) & (\f1s|Add0~3\ $ (GND))) # (!\f1s|counter\(2) & (!\f1s|Add0~3\ & VCC))
-- \f1s|Add0~5\ = CARRY((\f1s|counter\(2) & !\f1s|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|counter\(2),
	datad => VCC,
	cin => \f1s|Add0~3\,
	combout => \f1s|Add0~4_combout\,
	cout => \f1s|Add0~5\);

-- Location: LCCOMB_X9_Y10_N6
\f1s|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~6_combout\ = (\f1s|counter\(3) & (!\f1s|Add0~5\)) # (!\f1s|counter\(3) & ((\f1s|Add0~5\) # (GND)))
-- \f1s|Add0~7\ = CARRY((!\f1s|Add0~5\) # (!\f1s|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(3),
	datad => VCC,
	cin => \f1s|Add0~5\,
	combout => \f1s|Add0~6_combout\,
	cout => \f1s|Add0~7\);

-- Location: LCCOMB_X8_Y10_N28
\f1s|counter~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~20_combout\ = (\f1s|Add0~6_combout\ & !\f1s|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1s|Add0~6_combout\,
	datad => \f1s|LessThan0~10_combout\,
	combout => \f1s|counter~20_combout\);

-- Location: LCFF_X8_Y10_N29
\f1s|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(3));

-- Location: LCCOMB_X9_Y10_N8
\f1s|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~8_combout\ = (\f1s|counter\(4) & (\f1s|Add0~7\ $ (GND))) # (!\f1s|counter\(4) & (!\f1s|Add0~7\ & VCC))
-- \f1s|Add0~9\ = CARRY((\f1s|counter\(4) & !\f1s|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(4),
	datad => VCC,
	cin => \f1s|Add0~7\,
	combout => \f1s|Add0~8_combout\,
	cout => \f1s|Add0~9\);

-- Location: LCCOMB_X9_Y10_N10
\f1s|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~10_combout\ = (\f1s|counter\(5) & (!\f1s|Add0~9\)) # (!\f1s|counter\(5) & ((\f1s|Add0~9\) # (GND)))
-- \f1s|Add0~11\ = CARRY((!\f1s|Add0~9\) # (!\f1s|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(5),
	datad => VCC,
	cin => \f1s|Add0~9\,
	combout => \f1s|Add0~10_combout\,
	cout => \f1s|Add0~11\);

-- Location: LCCOMB_X8_Y10_N24
\f1s|counter~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~18_combout\ = (\f1s|Add0~10_combout\ & !\f1s|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1s|Add0~10_combout\,
	datad => \f1s|LessThan0~10_combout\,
	combout => \f1s|counter~18_combout\);

-- Location: LCFF_X8_Y10_N25
\f1s|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(5));

-- Location: LCCOMB_X9_Y10_N12
\f1s|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~12_combout\ = (\f1s|counter\(6) & (\f1s|Add0~11\ $ (GND))) # (!\f1s|counter\(6) & (!\f1s|Add0~11\ & VCC))
-- \f1s|Add0~13\ = CARRY((\f1s|counter\(6) & !\f1s|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(6),
	datad => VCC,
	cin => \f1s|Add0~11\,
	combout => \f1s|Add0~12_combout\,
	cout => \f1s|Add0~13\);

-- Location: LCCOMB_X9_Y10_N20
\f1s|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~20_combout\ = (\f1s|counter\(10) & (\f1s|Add0~19\ $ (GND))) # (!\f1s|counter\(10) & (!\f1s|Add0~19\ & VCC))
-- \f1s|Add0~21\ = CARRY((\f1s|counter\(10) & !\f1s|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(10),
	datad => VCC,
	cin => \f1s|Add0~19\,
	combout => \f1s|Add0~20_combout\,
	cout => \f1s|Add0~21\);

-- Location: LCCOMB_X11_Y10_N4
\f1s|counter~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~12_combout\ = (\f1s|Add0~20_combout\ & ((\f1s|Add0~62_combout\) # (!\f1s|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1s|Add0~20_combout\,
	datac => \f1s|LessThan0~8_combout\,
	datad => \f1s|Add0~62_combout\,
	combout => \f1s|counter~12_combout\);

-- Location: LCCOMB_X10_Y10_N24
\f1s|counter~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~13_combout\ = (\f1s|counter~12_combout\ & ((\f1s|Add0~62_combout\) # ((!\f1s|LessThan0~7_combout\ & !\f1s|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|LessThan0~7_combout\,
	datab => \f1s|Add0~62_combout\,
	datac => \f1s|LessThan0~9_combout\,
	datad => \f1s|counter~12_combout\,
	combout => \f1s|counter~13_combout\);

-- Location: LCFF_X10_Y10_N25
\f1s|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(10));

-- Location: LCCOMB_X9_Y10_N22
\f1s|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~22_combout\ = (\f1s|counter\(11) & (!\f1s|Add0~21\)) # (!\f1s|counter\(11) & ((\f1s|Add0~21\) # (GND)))
-- \f1s|Add0~23\ = CARRY((!\f1s|Add0~21\) # (!\f1s|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(11),
	datad => VCC,
	cin => \f1s|Add0~21\,
	combout => \f1s|Add0~22_combout\,
	cout => \f1s|Add0~23\);

-- Location: LCCOMB_X11_Y10_N30
\f1s|counter~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~10_combout\ = (\f1s|Add0~22_combout\ & ((\f1s|Add0~62_combout\) # (!\f1s|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1s|Add0~22_combout\,
	datac => \f1s|LessThan0~8_combout\,
	datad => \f1s|Add0~62_combout\,
	combout => \f1s|counter~10_combout\);

-- Location: LCCOMB_X10_Y10_N22
\f1s|counter~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~11_combout\ = (\f1s|counter~10_combout\ & ((\f1s|Add0~62_combout\) # ((!\f1s|LessThan0~7_combout\ & !\f1s|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|LessThan0~7_combout\,
	datab => \f1s|Add0~62_combout\,
	datac => \f1s|LessThan0~9_combout\,
	datad => \f1s|counter~10_combout\,
	combout => \f1s|counter~11_combout\);

-- Location: LCFF_X10_Y10_N23
\f1s|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(11));

-- Location: LCCOMB_X9_Y10_N26
\f1s|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~26_combout\ = (\f1s|counter\(13) & (!\f1s|Add0~25\)) # (!\f1s|counter\(13) & ((\f1s|Add0~25\) # (GND)))
-- \f1s|Add0~27\ = CARRY((!\f1s|Add0~25\) # (!\f1s|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|counter\(13),
	datad => VCC,
	cin => \f1s|Add0~25\,
	combout => \f1s|Add0~26_combout\,
	cout => \f1s|Add0~27\);

-- Location: LCCOMB_X9_Y10_N28
\f1s|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~28_combout\ = (\f1s|counter\(14) & (\f1s|Add0~27\ $ (GND))) # (!\f1s|counter\(14) & (!\f1s|Add0~27\ & VCC))
-- \f1s|Add0~29\ = CARRY((\f1s|counter\(14) & !\f1s|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(14),
	datad => VCC,
	cin => \f1s|Add0~27\,
	combout => \f1s|Add0~28_combout\,
	cout => \f1s|Add0~29\);

-- Location: LCCOMB_X10_Y10_N28
\f1s|counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~4_combout\ = (\f1s|Add0~28_combout\ & ((\f1s|Add0~62_combout\) # (!\f1s|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1s|LessThan0~8_combout\,
	datac => \f1s|Add0~28_combout\,
	datad => \f1s|Add0~62_combout\,
	combout => \f1s|counter~4_combout\);

-- Location: LCCOMB_X10_Y10_N14
\f1s|counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~5_combout\ = (\f1s|counter~4_combout\ & ((\f1s|Add0~62_combout\) # ((!\f1s|LessThan0~7_combout\ & !\f1s|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|LessThan0~7_combout\,
	datab => \f1s|Add0~62_combout\,
	datac => \f1s|LessThan0~9_combout\,
	datad => \f1s|counter~4_combout\,
	combout => \f1s|counter~5_combout\);

-- Location: LCFF_X10_Y10_N15
\f1s|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(14));

-- Location: LCCOMB_X9_Y10_N30
\f1s|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~30_combout\ = (\f1s|counter\(15) & (!\f1s|Add0~29\)) # (!\f1s|counter\(15) & ((\f1s|Add0~29\) # (GND)))
-- \f1s|Add0~31\ = CARRY((!\f1s|Add0~29\) # (!\f1s|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(15),
	datad => VCC,
	cin => \f1s|Add0~29\,
	combout => \f1s|Add0~30_combout\,
	cout => \f1s|Add0~31\);

-- Location: LCCOMB_X10_Y10_N18
\f1s|counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~2_combout\ = (\f1s|Add0~30_combout\ & ((\f1s|Add0~62_combout\) # (!\f1s|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1s|Add0~62_combout\,
	datac => \f1s|Add0~30_combout\,
	datad => \f1s|LessThan0~8_combout\,
	combout => \f1s|counter~2_combout\);

-- Location: LCCOMB_X10_Y10_N8
\f1s|counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~3_combout\ = (\f1s|counter~2_combout\ & ((\f1s|Add0~62_combout\) # ((!\f1s|LessThan0~7_combout\ & !\f1s|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|LessThan0~7_combout\,
	datab => \f1s|Add0~62_combout\,
	datac => \f1s|LessThan0~9_combout\,
	datad => \f1s|counter~2_combout\,
	combout => \f1s|counter~3_combout\);

-- Location: LCFF_X10_Y10_N9
\f1s|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(15));

-- Location: LCCOMB_X9_Y9_N0
\f1s|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~32_combout\ = (\f1s|counter\(16) & (\f1s|Add0~31\ $ (GND))) # (!\f1s|counter\(16) & (!\f1s|Add0~31\ & VCC))
-- \f1s|Add0~33\ = CARRY((\f1s|counter\(16) & !\f1s|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(16),
	datad => VCC,
	cin => \f1s|Add0~31\,
	combout => \f1s|Add0~32_combout\,
	cout => \f1s|Add0~33\);

-- Location: LCCOMB_X11_Y10_N14
\f1s|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~0_combout\ = (\f1s|Add0~32_combout\ & ((\f1s|Add0~62_combout\) # (!\f1s|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1s|Add0~32_combout\,
	datac => \f1s|LessThan0~8_combout\,
	datad => \f1s|Add0~62_combout\,
	combout => \f1s|counter~0_combout\);

-- Location: LCCOMB_X11_Y10_N26
\f1s|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~1_combout\ = (\f1s|counter~0_combout\ & ((\f1s|Add0~62_combout\) # ((!\f1s|LessThan0~9_combout\ & !\f1s|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|LessThan0~9_combout\,
	datab => \f1s|Add0~62_combout\,
	datac => \f1s|counter~0_combout\,
	datad => \f1s|LessThan0~7_combout\,
	combout => \f1s|counter~1_combout\);

-- Location: LCFF_X11_Y10_N27
\f1s|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(16));

-- Location: LCCOMB_X9_Y9_N2
\f1s|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~34_combout\ = (\f1s|counter\(17) & (!\f1s|Add0~33\)) # (!\f1s|counter\(17) & ((\f1s|Add0~33\) # (GND)))
-- \f1s|Add0~35\ = CARRY((!\f1s|Add0~33\) # (!\f1s|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(17),
	datad => VCC,
	cin => \f1s|Add0~33\,
	combout => \f1s|Add0~34_combout\,
	cout => \f1s|Add0~35\);

-- Location: LCCOMB_X9_Y9_N4
\f1s|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~36_combout\ = (\f1s|counter\(18) & (\f1s|Add0~35\ $ (GND))) # (!\f1s|counter\(18) & (!\f1s|Add0~35\ & VCC))
-- \f1s|Add0~37\ = CARRY((\f1s|counter\(18) & !\f1s|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|counter\(18),
	datad => VCC,
	cin => \f1s|Add0~35\,
	combout => \f1s|Add0~36_combout\,
	cout => \f1s|Add0~37\);

-- Location: LCCOMB_X9_Y9_N6
\f1s|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~38_combout\ = (\f1s|counter\(19) & (!\f1s|Add0~37\)) # (!\f1s|counter\(19) & ((\f1s|Add0~37\) # (GND)))
-- \f1s|Add0~39\ = CARRY((!\f1s|Add0~37\) # (!\f1s|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|counter\(19),
	datad => VCC,
	cin => \f1s|Add0~37\,
	combout => \f1s|Add0~38_combout\,
	cout => \f1s|Add0~39\);

-- Location: LCCOMB_X9_Y9_N8
\f1s|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~40_combout\ = (\f1s|counter\(20) & (\f1s|Add0~39\ $ (GND))) # (!\f1s|counter\(20) & (!\f1s|Add0~39\ & VCC))
-- \f1s|Add0~41\ = CARRY((\f1s|counter\(20) & !\f1s|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1s|counter\(20),
	datad => VCC,
	cin => \f1s|Add0~39\,
	combout => \f1s|Add0~40_combout\,
	cout => \f1s|Add0~41\);

-- Location: LCCOMB_X8_Y9_N16
\f1s|counter~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~28_combout\ = (\f1s|Add0~40_combout\ & !\f1s|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1s|Add0~40_combout\,
	datad => \f1s|LessThan0~10_combout\,
	combout => \f1s|counter~28_combout\);

-- Location: LCFF_X8_Y9_N17
\f1s|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(20));

-- Location: LCCOMB_X9_Y9_N12
\f1s|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|Add0~44_combout\ = (\f1s|counter\(22) & (\f1s|Add0~43\ $ (GND))) # (!\f1s|counter\(22) & (!\f1s|Add0~43\ & VCC))
-- \f1s|Add0~45\ = CARRY((\f1s|counter\(22) & !\f1s|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|counter\(22),
	datad => VCC,
	cin => \f1s|Add0~43\,
	combout => \f1s|Add0~44_combout\,
	cout => \f1s|Add0~45\);

-- Location: LCCOMB_X8_Y10_N22
\f1s|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|LessThan0~8_combout\ = (\f1s|Add0~50_combout\) # ((\f1s|Add0~52_combout\) # ((\f1s|Add0~48_combout\ & \f1s|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|Add0~48_combout\,
	datab => \f1s|Add0~46_combout\,
	datac => \f1s|Add0~50_combout\,
	datad => \f1s|Add0~52_combout\,
	combout => \f1s|LessThan0~8_combout\);

-- Location: LCCOMB_X8_Y10_N2
\f1s|LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|LessThan0~10_combout\ = (!\f1s|Add0~62_combout\ & ((\f1s|LessThan0~9_combout\) # ((\f1s|LessThan0~8_combout\) # (\f1s|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|LessThan0~9_combout\,
	datab => \f1s|LessThan0~8_combout\,
	datac => \f1s|Add0~62_combout\,
	datad => \f1s|LessThan0~7_combout\,
	combout => \f1s|LessThan0~10_combout\);

-- Location: LCCOMB_X8_Y10_N6
\f1s|counter~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|counter~17_combout\ = (\f1s|Add0~12_combout\ & !\f1s|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1s|Add0~12_combout\,
	datad => \f1s|LessThan0~10_combout\,
	combout => \f1s|counter~17_combout\);

-- Location: LCFF_X8_Y10_N7
\f1s|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|counter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|counter\(6));

-- Location: LCCOMB_X10_Y10_N4
\f1s|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|LessThan0~3_combout\ = (\f1s|Add0~0_combout\) # ((\f1s|Add0~6_combout\) # ((\f1s|Add0~4_combout\) # (\f1s|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|Add0~0_combout\,
	datab => \f1s|Add0~6_combout\,
	datac => \f1s|Add0~4_combout\,
	datad => \f1s|Add0~2_combout\,
	combout => \f1s|LessThan0~3_combout\);

-- Location: LCCOMB_X10_Y10_N30
\f1s|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|LessThan0~4_combout\ = (\f1s|Add0~12_combout\ & ((\f1s|Add0~10_combout\) # ((\f1s|LessThan0~3_combout\) # (\f1s|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|Add0~10_combout\,
	datab => \f1s|Add0~12_combout\,
	datac => \f1s|LessThan0~3_combout\,
	datad => \f1s|Add0~8_combout\,
	combout => \f1s|LessThan0~4_combout\);

-- Location: LCCOMB_X10_Y10_N10
\f1s|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|LessThan0~2_combout\ = (\f1s|Add0~24_combout\ & (\f1s|Add0~22_combout\ & (\f1s|Add0~28_combout\ & \f1s|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|Add0~24_combout\,
	datab => \f1s|Add0~22_combout\,
	datac => \f1s|Add0~28_combout\,
	datad => \f1s|Add0~26_combout\,
	combout => \f1s|LessThan0~2_combout\);

-- Location: LCCOMB_X10_Y10_N26
\f1s|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|LessThan0~6_combout\ = (\f1s|Add0~30_combout\) # ((\f1s|LessThan0~2_combout\ & ((\f1s|LessThan0~5_combout\) # (\f1s|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|LessThan0~5_combout\,
	datab => \f1s|LessThan0~4_combout\,
	datac => \f1s|Add0~30_combout\,
	datad => \f1s|LessThan0~2_combout\,
	combout => \f1s|LessThan0~6_combout\);

-- Location: LCCOMB_X10_Y10_N6
\f1s|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|LessThan0~0_combout\ = (\f1s|Add0~42_combout\ & (\f1s|Add0~36_combout\ & (\f1s|Add0~38_combout\ & \f1s|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|Add0~42_combout\,
	datab => \f1s|Add0~36_combout\,
	datac => \f1s|Add0~38_combout\,
	datad => \f1s|Add0~40_combout\,
	combout => \f1s|LessThan0~0_combout\);

-- Location: LCCOMB_X10_Y10_N0
\f1s|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|LessThan0~1_combout\ = (\f1s|Add0~48_combout\ & (\f1s|Add0~44_combout\ & \f1s|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|Add0~48_combout\,
	datac => \f1s|Add0~44_combout\,
	datad => \f1s|LessThan0~0_combout\,
	combout => \f1s|LessThan0~1_combout\);

-- Location: LCCOMB_X10_Y10_N16
\f1s|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|LessThan0~7_combout\ = (\f1s|LessThan0~1_combout\ & ((\f1s|Add0~34_combout\) # ((\f1s|Add0~32_combout\ & \f1s|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|Add0~32_combout\,
	datab => \f1s|LessThan0~6_combout\,
	datac => \f1s|Add0~34_combout\,
	datad => \f1s|LessThan0~1_combout\,
	combout => \f1s|LessThan0~7_combout\);

-- Location: LCCOMB_X11_Y10_N0
\f1s|L~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|L~0_combout\ = (!\f1s|LessThan0~8_combout\ & !\f1s|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1s|LessThan0~8_combout\,
	datad => \f1s|LessThan0~9_combout\,
	combout => \f1s|L~0_combout\);

-- Location: LCCOMB_X11_Y10_N12
\f1s|L~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \f1s|L~1_combout\ = \f1s|L~regout\ $ (((!\f1s|Add0~62_combout\ & ((\f1s|LessThan0~7_combout\) # (!\f1s|L~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1s|Add0~62_combout\,
	datab => \f1s|LessThan0~7_combout\,
	datac => \f1s|L~regout\,
	datad => \f1s|L~0_combout\,
	combout => \f1s|L~1_combout\);

-- Location: LCFF_X11_Y10_N13
\f1s|L\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK_IN~clkctrl_outclk\,
	datain => \f1s|L~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \f1s|L~regout\);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_OUT~I\ : cycloneii_io
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
	datain => \f1s|L~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_OUT);
END structure;


