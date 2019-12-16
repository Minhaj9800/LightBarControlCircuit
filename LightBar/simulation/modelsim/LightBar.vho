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

-- DATE "03/28/2019 18:21:34"

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

ENTITY 	LightBar IS
    PORT (
	clock : IN std_logic;
	switch : IN std_logic;
	iButton : IN std_logic;
	redLED : OUT std_logic_vector(0 TO 7);
	greenLED : OUT std_logic_vector(0 TO 7);
	segment7 : OUT std_logic_vector(0 TO 6);
	timer : OUT std_logic;
	debug : OUT std_logic
	);
END LightBar;

-- Design Ports Information
-- redLED[7]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- redLED[6]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- redLED[5]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- redLED[4]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- redLED[3]	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- redLED[2]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- redLED[1]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- redLED[0]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- greenLED[7]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- greenLED[6]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- greenLED[5]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- greenLED[4]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- greenLED[3]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- greenLED[2]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- greenLED[1]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- greenLED[0]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment7[6]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment7[5]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment7[4]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment7[3]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment7[2]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment7[1]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment7[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- timer	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- switch	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iButton	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF LightBar IS
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
SIGNAL ww_switch : std_logic;
SIGNAL ww_iButton : std_logic;
SIGNAL ww_redLED : std_logic_vector(0 TO 7);
SIGNAL ww_greenLED : std_logic_vector(0 TO 7);
SIGNAL ww_segment7 : std_logic_vector(0 TO 6);
SIGNAL ww_timer : std_logic;
SIGNAL ww_debug : std_logic;
SIGNAL \p2|comb~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p0|comb~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controler|comb~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|comb~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p0|clk|out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p3|comb~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p1|clk|out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p2|clk|out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p3|clk|out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controler|clk|Add0~6_combout\ : std_logic;
SIGNAL \controler|clk|Add0~10_combout\ : std_logic;
SIGNAL \controler|clk|Add0~12_combout\ : std_logic;
SIGNAL \controler|clk|Add0~16_combout\ : std_logic;
SIGNAL \p1|clk|Add0~0_combout\ : std_logic;
SIGNAL \p1|clk|Add0~1\ : std_logic;
SIGNAL \p1|clk|Add0~2_combout\ : std_logic;
SIGNAL \p1|clk|Add0~3\ : std_logic;
SIGNAL \p1|clk|Add0~4_combout\ : std_logic;
SIGNAL \p1|clk|Add0~5\ : std_logic;
SIGNAL \p1|clk|Add0~6_combout\ : std_logic;
SIGNAL \p1|clk|Add0~7\ : std_logic;
SIGNAL \p1|clk|Add0~8_combout\ : std_logic;
SIGNAL \p1|clk|Add0~9\ : std_logic;
SIGNAL \p1|clk|Add0~10_combout\ : std_logic;
SIGNAL \p1|clk|Add0~11\ : std_logic;
SIGNAL \p1|clk|Add0~12_combout\ : std_logic;
SIGNAL \p1|clk|Add0~13\ : std_logic;
SIGNAL \p1|clk|Add0~14_combout\ : std_logic;
SIGNAL \p1|clk|Add0~15\ : std_logic;
SIGNAL \p1|clk|Add0~16_combout\ : std_logic;
SIGNAL \p1|clk|Add0~17\ : std_logic;
SIGNAL \p1|clk|Add0~18_combout\ : std_logic;
SIGNAL \p1|clk|Add0~19\ : std_logic;
SIGNAL \p1|clk|Add0~20_combout\ : std_logic;
SIGNAL \p1|clk|Add0~21\ : std_logic;
SIGNAL \p1|clk|Add0~22_combout\ : std_logic;
SIGNAL \p1|clk|Add0~23\ : std_logic;
SIGNAL \p1|clk|Add0~24_combout\ : std_logic;
SIGNAL \p1|clk|Add0~25\ : std_logic;
SIGNAL \p1|clk|Add0~26_combout\ : std_logic;
SIGNAL \p1|clk|Add0~27\ : std_logic;
SIGNAL \p1|clk|Add0~28_combout\ : std_logic;
SIGNAL \p1|clk|Add0~29\ : std_logic;
SIGNAL \p1|clk|Add0~30_combout\ : std_logic;
SIGNAL \p1|clk|Add0~31\ : std_logic;
SIGNAL \p1|clk|Add0~32_combout\ : std_logic;
SIGNAL \p1|clk|Add0~33\ : std_logic;
SIGNAL \p1|clk|Add0~34_combout\ : std_logic;
SIGNAL \p1|clk|Add0~35\ : std_logic;
SIGNAL \p1|clk|Add0~36_combout\ : std_logic;
SIGNAL \p1|clk|Add0~37\ : std_logic;
SIGNAL \p1|clk|Add0~38_combout\ : std_logic;
SIGNAL \p1|clk|Add0~39\ : std_logic;
SIGNAL \p1|clk|Add0~40_combout\ : std_logic;
SIGNAL \p1|clk|Add0~41\ : std_logic;
SIGNAL \p1|clk|Add0~42_combout\ : std_logic;
SIGNAL \p1|clk|Add0~43\ : std_logic;
SIGNAL \p1|clk|Add0~44_combout\ : std_logic;
SIGNAL \p1|clk|Add0~45\ : std_logic;
SIGNAL \p1|clk|Add0~46_combout\ : std_logic;
SIGNAL \p1|clk|Add0~47\ : std_logic;
SIGNAL \p1|clk|Add0~48_combout\ : std_logic;
SIGNAL \p1|clk|Add0~49\ : std_logic;
SIGNAL \p1|clk|Add0~50_combout\ : std_logic;
SIGNAL \p1|clk|Add0~51\ : std_logic;
SIGNAL \p1|clk|Add0~52_combout\ : std_logic;
SIGNAL \p1|clk|Add0~53\ : std_logic;
SIGNAL \p1|clk|Add0~54_combout\ : std_logic;
SIGNAL \p1|clk|Add0~55\ : std_logic;
SIGNAL \p1|clk|Add0~56_combout\ : std_logic;
SIGNAL \p1|clk|Add0~57\ : std_logic;
SIGNAL \p1|clk|Add0~58_combout\ : std_logic;
SIGNAL \p1|clk|Add0~59\ : std_logic;
SIGNAL \p1|clk|Add0~60_combout\ : std_logic;
SIGNAL \p1|clk|Add0~61\ : std_logic;
SIGNAL \p1|clk|Add0~62_combout\ : std_logic;
SIGNAL \p3|clk|Add0~0_combout\ : std_logic;
SIGNAL \p3|clk|Add0~1\ : std_logic;
SIGNAL \p3|clk|Add0~2_combout\ : std_logic;
SIGNAL \p3|clk|Add0~3\ : std_logic;
SIGNAL \p3|clk|Add0~4_combout\ : std_logic;
SIGNAL \p3|clk|Add0~5\ : std_logic;
SIGNAL \p3|clk|Add0~6_combout\ : std_logic;
SIGNAL \p3|clk|Add0~7\ : std_logic;
SIGNAL \p3|clk|Add0~8_combout\ : std_logic;
SIGNAL \p3|clk|Add0~9\ : std_logic;
SIGNAL \p3|clk|Add0~10_combout\ : std_logic;
SIGNAL \p3|clk|Add0~11\ : std_logic;
SIGNAL \p3|clk|Add0~12_combout\ : std_logic;
SIGNAL \p3|clk|Add0~13\ : std_logic;
SIGNAL \p3|clk|Add0~14_combout\ : std_logic;
SIGNAL \p3|clk|Add0~15\ : std_logic;
SIGNAL \p3|clk|Add0~16_combout\ : std_logic;
SIGNAL \p3|clk|Add0~17\ : std_logic;
SIGNAL \p3|clk|Add0~18_combout\ : std_logic;
SIGNAL \p3|clk|Add0~19\ : std_logic;
SIGNAL \p3|clk|Add0~20_combout\ : std_logic;
SIGNAL \p3|clk|Add0~21\ : std_logic;
SIGNAL \p3|clk|Add0~22_combout\ : std_logic;
SIGNAL \p3|clk|Add0~23\ : std_logic;
SIGNAL \p3|clk|Add0~24_combout\ : std_logic;
SIGNAL \p3|clk|Add0~25\ : std_logic;
SIGNAL \p3|clk|Add0~26_combout\ : std_logic;
SIGNAL \p3|clk|Add0~27\ : std_logic;
SIGNAL \p3|clk|Add0~28_combout\ : std_logic;
SIGNAL \p3|clk|Add0~29\ : std_logic;
SIGNAL \p3|clk|Add0~30_combout\ : std_logic;
SIGNAL \p3|clk|Add0~31\ : std_logic;
SIGNAL \p3|clk|Add0~32_combout\ : std_logic;
SIGNAL \p3|clk|Add0~33\ : std_logic;
SIGNAL \p3|clk|Add0~34_combout\ : std_logic;
SIGNAL \p3|clk|Add0~35\ : std_logic;
SIGNAL \p3|clk|Add0~36_combout\ : std_logic;
SIGNAL \p3|clk|Add0~37\ : std_logic;
SIGNAL \p3|clk|Add0~38_combout\ : std_logic;
SIGNAL \p3|clk|Add0~39\ : std_logic;
SIGNAL \p3|clk|Add0~40_combout\ : std_logic;
SIGNAL \p3|clk|Add0~41\ : std_logic;
SIGNAL \p3|clk|Add0~42_combout\ : std_logic;
SIGNAL \p3|clk|Add0~43\ : std_logic;
SIGNAL \p3|clk|Add0~44_combout\ : std_logic;
SIGNAL \p3|clk|Add0~45\ : std_logic;
SIGNAL \p3|clk|Add0~46_combout\ : std_logic;
SIGNAL \p3|clk|Add0~47\ : std_logic;
SIGNAL \p3|clk|Add0~48_combout\ : std_logic;
SIGNAL \p3|clk|Add0~49\ : std_logic;
SIGNAL \p3|clk|Add0~50_combout\ : std_logic;
SIGNAL \p3|clk|Add0~51\ : std_logic;
SIGNAL \p3|clk|Add0~52_combout\ : std_logic;
SIGNAL \p3|clk|Add0~53\ : std_logic;
SIGNAL \p3|clk|Add0~54_combout\ : std_logic;
SIGNAL \p3|clk|Add0~55\ : std_logic;
SIGNAL \p3|clk|Add0~56_combout\ : std_logic;
SIGNAL \p3|clk|Add0~57\ : std_logic;
SIGNAL \p3|clk|Add0~58_combout\ : std_logic;
SIGNAL \p3|clk|Add0~59\ : std_logic;
SIGNAL \p3|clk|Add0~60_combout\ : std_logic;
SIGNAL \p3|clk|Add0~61\ : std_logic;
SIGNAL \p3|clk|Add0~62_combout\ : std_logic;
SIGNAL \p0|clk|Add0~0_combout\ : std_logic;
SIGNAL \p0|clk|Add0~1\ : std_logic;
SIGNAL \p0|clk|Add0~2_combout\ : std_logic;
SIGNAL \p0|clk|Add0~3\ : std_logic;
SIGNAL \p0|clk|Add0~4_combout\ : std_logic;
SIGNAL \p0|clk|Add0~5\ : std_logic;
SIGNAL \p0|clk|Add0~6_combout\ : std_logic;
SIGNAL \p0|clk|Add0~7\ : std_logic;
SIGNAL \p0|clk|Add0~8_combout\ : std_logic;
SIGNAL \p0|clk|Add0~9\ : std_logic;
SIGNAL \p0|clk|Add0~10_combout\ : std_logic;
SIGNAL \p0|clk|Add0~11\ : std_logic;
SIGNAL \p0|clk|Add0~12_combout\ : std_logic;
SIGNAL \p0|clk|Add0~13\ : std_logic;
SIGNAL \p0|clk|Add0~14_combout\ : std_logic;
SIGNAL \p0|clk|Add0~15\ : std_logic;
SIGNAL \p0|clk|Add0~16_combout\ : std_logic;
SIGNAL \p0|clk|Add0~17\ : std_logic;
SIGNAL \p0|clk|Add0~18_combout\ : std_logic;
SIGNAL \p0|clk|Add0~19\ : std_logic;
SIGNAL \p0|clk|Add0~20_combout\ : std_logic;
SIGNAL \p0|clk|Add0~21\ : std_logic;
SIGNAL \p0|clk|Add0~22_combout\ : std_logic;
SIGNAL \p0|clk|Add0~23\ : std_logic;
SIGNAL \p0|clk|Add0~24_combout\ : std_logic;
SIGNAL \p0|clk|Add0~25\ : std_logic;
SIGNAL \p0|clk|Add0~26_combout\ : std_logic;
SIGNAL \p0|clk|Add0~27\ : std_logic;
SIGNAL \p0|clk|Add0~28_combout\ : std_logic;
SIGNAL \p0|clk|Add0~29\ : std_logic;
SIGNAL \p0|clk|Add0~30_combout\ : std_logic;
SIGNAL \p0|clk|Add0~31\ : std_logic;
SIGNAL \p0|clk|Add0~32_combout\ : std_logic;
SIGNAL \p0|clk|Add0~33\ : std_logic;
SIGNAL \p0|clk|Add0~34_combout\ : std_logic;
SIGNAL \p0|clk|Add0~35\ : std_logic;
SIGNAL \p0|clk|Add0~36_combout\ : std_logic;
SIGNAL \p0|clk|Add0~37\ : std_logic;
SIGNAL \p0|clk|Add0~38_combout\ : std_logic;
SIGNAL \p0|clk|Add0~39\ : std_logic;
SIGNAL \p0|clk|Add0~40_combout\ : std_logic;
SIGNAL \p0|clk|Add0~41\ : std_logic;
SIGNAL \p0|clk|Add0~42_combout\ : std_logic;
SIGNAL \p0|clk|Add0~43\ : std_logic;
SIGNAL \p0|clk|Add0~44_combout\ : std_logic;
SIGNAL \p0|clk|Add0~45\ : std_logic;
SIGNAL \p0|clk|Add0~46_combout\ : std_logic;
SIGNAL \p0|clk|Add0~47\ : std_logic;
SIGNAL \p0|clk|Add0~48_combout\ : std_logic;
SIGNAL \p0|clk|Add0~49\ : std_logic;
SIGNAL \p0|clk|Add0~50_combout\ : std_logic;
SIGNAL \p0|clk|Add0~51\ : std_logic;
SIGNAL \p0|clk|Add0~52_combout\ : std_logic;
SIGNAL \p0|clk|Add0~53\ : std_logic;
SIGNAL \p0|clk|Add0~54_combout\ : std_logic;
SIGNAL \p0|clk|Add0~55\ : std_logic;
SIGNAL \p0|clk|Add0~56_combout\ : std_logic;
SIGNAL \p0|clk|Add0~57\ : std_logic;
SIGNAL \p0|clk|Add0~58_combout\ : std_logic;
SIGNAL \p0|clk|Add0~59\ : std_logic;
SIGNAL \p0|clk|Add0~60_combout\ : std_logic;
SIGNAL \p0|clk|Add0~61\ : std_logic;
SIGNAL \p0|clk|Add0~62_combout\ : std_logic;
SIGNAL \p2|clk|Add0~0_combout\ : std_logic;
SIGNAL \p2|clk|Add0~1\ : std_logic;
SIGNAL \p2|clk|Add0~2_combout\ : std_logic;
SIGNAL \p2|clk|Add0~3\ : std_logic;
SIGNAL \p2|clk|Add0~4_combout\ : std_logic;
SIGNAL \p2|clk|Add0~5\ : std_logic;
SIGNAL \p2|clk|Add0~6_combout\ : std_logic;
SIGNAL \p2|clk|Add0~7\ : std_logic;
SIGNAL \p2|clk|Add0~8_combout\ : std_logic;
SIGNAL \p2|clk|Add0~9\ : std_logic;
SIGNAL \p2|clk|Add0~10_combout\ : std_logic;
SIGNAL \p2|clk|Add0~11\ : std_logic;
SIGNAL \p2|clk|Add0~12_combout\ : std_logic;
SIGNAL \p2|clk|Add0~13\ : std_logic;
SIGNAL \p2|clk|Add0~14_combout\ : std_logic;
SIGNAL \p2|clk|Add0~15\ : std_logic;
SIGNAL \p2|clk|Add0~16_combout\ : std_logic;
SIGNAL \p2|clk|Add0~17\ : std_logic;
SIGNAL \p2|clk|Add0~18_combout\ : std_logic;
SIGNAL \p2|clk|Add0~19\ : std_logic;
SIGNAL \p2|clk|Add0~20_combout\ : std_logic;
SIGNAL \p2|clk|Add0~21\ : std_logic;
SIGNAL \p2|clk|Add0~22_combout\ : std_logic;
SIGNAL \p2|clk|Add0~23\ : std_logic;
SIGNAL \p2|clk|Add0~24_combout\ : std_logic;
SIGNAL \p2|clk|Add0~25\ : std_logic;
SIGNAL \p2|clk|Add0~26_combout\ : std_logic;
SIGNAL \p2|clk|Add0~27\ : std_logic;
SIGNAL \p2|clk|Add0~28_combout\ : std_logic;
SIGNAL \p2|clk|Add0~29\ : std_logic;
SIGNAL \p2|clk|Add0~30_combout\ : std_logic;
SIGNAL \p2|clk|Add0~31\ : std_logic;
SIGNAL \p2|clk|Add0~32_combout\ : std_logic;
SIGNAL \p2|clk|Add0~33\ : std_logic;
SIGNAL \p2|clk|Add0~34_combout\ : std_logic;
SIGNAL \p2|clk|Add0~35\ : std_logic;
SIGNAL \p2|clk|Add0~36_combout\ : std_logic;
SIGNAL \p2|clk|Add0~37\ : std_logic;
SIGNAL \p2|clk|Add0~38_combout\ : std_logic;
SIGNAL \p2|clk|Add0~39\ : std_logic;
SIGNAL \p2|clk|Add0~40_combout\ : std_logic;
SIGNAL \p2|clk|Add0~41\ : std_logic;
SIGNAL \p2|clk|Add0~42_combout\ : std_logic;
SIGNAL \p2|clk|Add0~43\ : std_logic;
SIGNAL \p2|clk|Add0~44_combout\ : std_logic;
SIGNAL \p2|clk|Add0~45\ : std_logic;
SIGNAL \p2|clk|Add0~46_combout\ : std_logic;
SIGNAL \p2|clk|Add0~47\ : std_logic;
SIGNAL \p2|clk|Add0~48_combout\ : std_logic;
SIGNAL \p2|clk|Add0~49\ : std_logic;
SIGNAL \p2|clk|Add0~50_combout\ : std_logic;
SIGNAL \p2|clk|Add0~51\ : std_logic;
SIGNAL \p2|clk|Add0~52_combout\ : std_logic;
SIGNAL \p2|clk|Add0~53\ : std_logic;
SIGNAL \p2|clk|Add0~54_combout\ : std_logic;
SIGNAL \p2|clk|Add0~55\ : std_logic;
SIGNAL \p2|clk|Add0~56_combout\ : std_logic;
SIGNAL \p2|clk|Add0~57\ : std_logic;
SIGNAL \p2|clk|Add0~58_combout\ : std_logic;
SIGNAL \p2|clk|Add0~59\ : std_logic;
SIGNAL \p2|clk|Add0~60_combout\ : std_logic;
SIGNAL \p2|clk|Add0~61\ : std_logic;
SIGNAL \p2|clk|Add0~62_combout\ : std_logic;
SIGNAL \controler|state[0]~_emulated_regout\ : std_logic;
SIGNAL \p1|clk|out~regout\ : std_logic;
SIGNAL \p3|clk|out~regout\ : std_logic;
SIGNAL \p0|clk|out~regout\ : std_logic;
SIGNAL \p2|clk|out~regout\ : std_logic;
SIGNAL \controler|clk|Equal0~3_combout\ : std_logic;
SIGNAL \p1|clk|Equal0~0_combout\ : std_logic;
SIGNAL \p1|clk|Equal0~1_combout\ : std_logic;
SIGNAL \p1|clk|Equal0~2_combout\ : std_logic;
SIGNAL \p1|clk|Equal0~3_combout\ : std_logic;
SIGNAL \p1|clk|Equal0~4_combout\ : std_logic;
SIGNAL \p1|clk|Equal0~5_combout\ : std_logic;
SIGNAL \p1|clk|Equal0~6_combout\ : std_logic;
SIGNAL \p1|clk|Equal0~7_combout\ : std_logic;
SIGNAL \p1|clk|Equal0~8_combout\ : std_logic;
SIGNAL \p1|clk|out~0_combout\ : std_logic;
SIGNAL \p1|clk|out~1_combout\ : std_logic;
SIGNAL \p3|clk|Equal0~0_combout\ : std_logic;
SIGNAL \p3|clk|Equal0~1_combout\ : std_logic;
SIGNAL \p3|clk|Equal0~2_combout\ : std_logic;
SIGNAL \p3|clk|Equal0~3_combout\ : std_logic;
SIGNAL \p3|clk|Equal0~4_combout\ : std_logic;
SIGNAL \p3|clk|Equal0~5_combout\ : std_logic;
SIGNAL \p3|clk|Equal0~6_combout\ : std_logic;
SIGNAL \p3|clk|Equal0~7_combout\ : std_logic;
SIGNAL \p3|clk|Equal0~8_combout\ : std_logic;
SIGNAL \p3|clk|out~0_combout\ : std_logic;
SIGNAL \p3|clk|out~1_combout\ : std_logic;
SIGNAL \p0|clk|Equal0~0_combout\ : std_logic;
SIGNAL \p0|clk|Equal0~1_combout\ : std_logic;
SIGNAL \p0|clk|Equal0~2_combout\ : std_logic;
SIGNAL \p0|clk|Equal0~3_combout\ : std_logic;
SIGNAL \p0|clk|Equal0~4_combout\ : std_logic;
SIGNAL \p0|clk|Equal0~5_combout\ : std_logic;
SIGNAL \p0|clk|Equal0~6_combout\ : std_logic;
SIGNAL \p0|clk|Equal0~7_combout\ : std_logic;
SIGNAL \p0|clk|Equal0~8_combout\ : std_logic;
SIGNAL \p0|clk|out~0_combout\ : std_logic;
SIGNAL \p0|clk|out~1_combout\ : std_logic;
SIGNAL \p0|reset~regout\ : std_logic;
SIGNAL \p0|comb~0_combout\ : std_logic;
SIGNAL \p2|clk|Equal0~0_combout\ : std_logic;
SIGNAL \p2|clk|Equal0~1_combout\ : std_logic;
SIGNAL \p2|clk|Equal0~2_combout\ : std_logic;
SIGNAL \p2|clk|Equal0~3_combout\ : std_logic;
SIGNAL \p2|clk|Equal0~4_combout\ : std_logic;
SIGNAL \p2|clk|Equal0~5_combout\ : std_logic;
SIGNAL \p2|clk|Equal0~6_combout\ : std_logic;
SIGNAL \p2|clk|Equal0~7_combout\ : std_logic;
SIGNAL \p2|clk|Equal0~8_combout\ : std_logic;
SIGNAL \p2|clk|out~0_combout\ : std_logic;
SIGNAL \p2|clk|out~1_combout\ : std_logic;
SIGNAL \p1|clk|count~0_combout\ : std_logic;
SIGNAL \p1|comb~combout\ : std_logic;
SIGNAL \p3|clk|count~0_combout\ : std_logic;
SIGNAL \p3|comb~combout\ : std_logic;
SIGNAL \p0|clk|count~0_combout\ : std_logic;
SIGNAL \p0|comb~combout\ : std_logic;
SIGNAL \p2|clk|count~0_combout\ : std_logic;
SIGNAL \p2|comb~combout\ : std_logic;
SIGNAL \controler|state[0]~3_combout\ : std_logic;
SIGNAL \p2|comb~clkctrl_outclk\ : std_logic;
SIGNAL \p0|comb~clkctrl_outclk\ : std_logic;
SIGNAL \p1|comb~clkctrl_outclk\ : std_logic;
SIGNAL \p0|clk|out~clkctrl_outclk\ : std_logic;
SIGNAL \p3|comb~clkctrl_outclk\ : std_logic;
SIGNAL \p1|clk|out~clkctrl_outclk\ : std_logic;
SIGNAL \p2|clk|out~clkctrl_outclk\ : std_logic;
SIGNAL \p3|clk|out~clkctrl_outclk\ : std_logic;
SIGNAL \p0|reset~feeder_combout\ : std_logic;
SIGNAL \p3|pattern[0]~0_combout\ : std_logic;
SIGNAL \switch~combout\ : std_logic;
SIGNAL \controler|state~16_combout\ : std_logic;
SIGNAL \iButton~combout\ : std_logic;
SIGNAL \controler|state[0]~1_combout\ : std_logic;
SIGNAL \controler|state[0]~2_combout\ : std_logic;
SIGNAL \controler|state[1]~7_combout\ : std_logic;
SIGNAL \controler|state[1]~_emulated_regout\ : std_logic;
SIGNAL \controler|state~17_combout\ : std_logic;
SIGNAL \controler|state[1]~5_combout\ : std_logic;
SIGNAL \controler|state[1]~6_combout\ : std_logic;
SIGNAL \controler|Equal2~1_combout\ : std_logic;
SIGNAL \p3|greenLight~0_combout\ : std_logic;
SIGNAL \p3|redLight[7]~0_combout\ : std_logic;
SIGNAL \p1|pattern[0]~0_combout\ : std_logic;
SIGNAL \controler|Equal2~0_combout\ : std_logic;
SIGNAL \p1|redLight[7]~feeder_combout\ : std_logic;
SIGNAL \redLED~0_combout\ : std_logic;
SIGNAL \redLED~1_combout\ : std_logic;
SIGNAL \p0|redLight[0]~0_combout\ : std_logic;
SIGNAL \redLED~2_combout\ : std_logic;
SIGNAL \redLED~3_combout\ : std_logic;
SIGNAL \redLED~4_combout\ : std_logic;
SIGNAL \redLED~5_combout\ : std_logic;
SIGNAL \controler|Equal2~2_combout\ : std_logic;
SIGNAL \redLED~6_combout\ : std_logic;
SIGNAL \p2|pattern[0]~0_combout\ : std_logic;
SIGNAL \controler|Equal2~3_combout\ : std_logic;
SIGNAL \redLED~7_combout\ : std_logic;
SIGNAL \p1|greenLight~0_combout\ : std_logic;
SIGNAL \redLED~8_combout\ : std_logic;
SIGNAL \redLED~9_combout\ : std_logic;
SIGNAL \redLED~10_combout\ : std_logic;
SIGNAL \p2|greenLight~0_combout\ : std_logic;
SIGNAL \redLED~11_combout\ : std_logic;
SIGNAL \p3|Decoder0~0_combout\ : std_logic;
SIGNAL \p3|redLight[1]~1_combout\ : std_logic;
SIGNAL \redLED~12_combout\ : std_logic;
SIGNAL \redLED~13_combout\ : std_logic;
SIGNAL \redLED~14_combout\ : std_logic;
SIGNAL \redLED~15_combout\ : std_logic;
SIGNAL \redLED~16_combout\ : std_logic;
SIGNAL \redLED~17_combout\ : std_logic;
SIGNAL \redLED~18_combout\ : std_logic;
SIGNAL \greenLED~0_combout\ : std_logic;
SIGNAL \greenLED~1_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \controler|comb~combout\ : std_logic;
SIGNAL \controler|comb~clkctrl_outclk\ : std_logic;
SIGNAL \controler|clk|Add0~0_combout\ : std_logic;
SIGNAL \controler|clk|Add0~1\ : std_logic;
SIGNAL \controler|clk|Add0~2_combout\ : std_logic;
SIGNAL \controler|clk|Add0~3\ : std_logic;
SIGNAL \controler|clk|Add0~5\ : std_logic;
SIGNAL \controler|clk|Add0~7\ : std_logic;
SIGNAL \controler|clk|Add0~8_combout\ : std_logic;
SIGNAL \controler|clk|Add0~9\ : std_logic;
SIGNAL \controler|clk|Add0~11\ : std_logic;
SIGNAL \controler|clk|Add0~13\ : std_logic;
SIGNAL \controler|clk|Add0~14_combout\ : std_logic;
SIGNAL \controler|clk|Add0~15\ : std_logic;
SIGNAL \controler|clk|Add0~17\ : std_logic;
SIGNAL \controler|clk|Add0~18_combout\ : std_logic;
SIGNAL \controler|clk|Add0~19\ : std_logic;
SIGNAL \controler|clk|Add0~21\ : std_logic;
SIGNAL \controler|clk|Add0~22_combout\ : std_logic;
SIGNAL \controler|clk|Add0~23\ : std_logic;
SIGNAL \controler|clk|Add0~25\ : std_logic;
SIGNAL \controler|clk|Add0~26_combout\ : std_logic;
SIGNAL \controler|clk|Add0~27\ : std_logic;
SIGNAL \controler|clk|Add0~28_combout\ : std_logic;
SIGNAL \controler|clk|Add0~29\ : std_logic;
SIGNAL \controler|clk|Add0~30_combout\ : std_logic;
SIGNAL \controler|clk|Add0~31\ : std_logic;
SIGNAL \controler|clk|Add0~32_combout\ : std_logic;
SIGNAL \controler|clk|Add0~33\ : std_logic;
SIGNAL \controler|clk|Add0~34_combout\ : std_logic;
SIGNAL \controler|clk|Add0~35\ : std_logic;
SIGNAL \controler|clk|Add0~36_combout\ : std_logic;
SIGNAL \controler|clk|Add0~37\ : std_logic;
SIGNAL \controler|clk|Add0~39\ : std_logic;
SIGNAL \controler|clk|Add0~40_combout\ : std_logic;
SIGNAL \controler|clk|Add0~41\ : std_logic;
SIGNAL \controler|clk|Add0~43\ : std_logic;
SIGNAL \controler|clk|Add0~45\ : std_logic;
SIGNAL \controler|clk|Add0~46_combout\ : std_logic;
SIGNAL \controler|clk|Add0~47\ : std_logic;
SIGNAL \controler|clk|Add0~49\ : std_logic;
SIGNAL \controler|clk|Add0~50_combout\ : std_logic;
SIGNAL \controler|clk|Add0~48_combout\ : std_logic;
SIGNAL \controler|clk|Add0~51\ : std_logic;
SIGNAL \controler|clk|Add0~52_combout\ : std_logic;
SIGNAL \controler|clk|Equal0~0_combout\ : std_logic;
SIGNAL \controler|clk|Add0~53\ : std_logic;
SIGNAL \controler|clk|Add0~54_combout\ : std_logic;
SIGNAL \controler|clk|Add0~55\ : std_logic;
SIGNAL \controler|clk|Add0~56_combout\ : std_logic;
SIGNAL \controler|clk|Add0~57\ : std_logic;
SIGNAL \controler|clk|Add0~58_combout\ : std_logic;
SIGNAL \controler|clk|Add0~59\ : std_logic;
SIGNAL \controler|clk|Add0~60_combout\ : std_logic;
SIGNAL \controler|clk|Add0~61\ : std_logic;
SIGNAL \controler|clk|Add0~62_combout\ : std_logic;
SIGNAL \controler|clk|Equal0~1_combout\ : std_logic;
SIGNAL \controler|clk|count~0_combout\ : std_logic;
SIGNAL \controler|clk|Add0~4_combout\ : std_logic;
SIGNAL \controler|clk|Equal0~2_combout\ : std_logic;
SIGNAL \controler|clk|Add0~24_combout\ : std_logic;
SIGNAL \controler|clk|Equal0~5_combout\ : std_logic;
SIGNAL \controler|clk|Add0~20_combout\ : std_logic;
SIGNAL \controler|clk|Equal0~4_combout\ : std_logic;
SIGNAL \controler|clk|Equal0~6_combout\ : std_logic;
SIGNAL \controler|clk|Add0~38_combout\ : std_logic;
SIGNAL \controler|clk|Equal0~7_combout\ : std_logic;
SIGNAL \controler|clk|Add0~44_combout\ : std_logic;
SIGNAL \controler|clk|Add0~42_combout\ : std_logic;
SIGNAL \controler|clk|Equal0~8_combout\ : std_logic;
SIGNAL \controler|clk|out~0_combout\ : std_logic;
SIGNAL \controler|clk|out~1_combout\ : std_logic;
SIGNAL \controler|clk|out~regout\ : std_logic;
SIGNAL \p3|clk|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \controler|enables\ : std_logic_vector(0 TO 3);
SIGNAL \controler|clk|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \p2|pattern\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \p2|redLight\ : std_logic_vector(0 TO 7);
SIGNAL \p3|greenLight\ : std_logic_vector(0 TO 7);
SIGNAL \p2|clk|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \p0|redLight\ : std_logic_vector(0 TO 7);
SIGNAL \p1|clk|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \p1|redLight\ : std_logic_vector(0 TO 7);
SIGNAL \p1|pattern\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \p0|clk|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \p3|redLight\ : std_logic_vector(0 TO 7);
SIGNAL \p3|pattern\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_iButton~combout\ : std_logic;
SIGNAL \controler|ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \controler|ALT_INV_enables\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \controler|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \controler|ALT_INV_Equal2~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_switch <= switch;
ww_iButton <= iButton;
redLED <= ww_redLED;
greenLED <= ww_greenLED;
segment7 <= ww_segment7;
timer <= ww_timer;
debug <= ww_debug;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\p2|comb~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \p2|comb~combout\);

\p0|comb~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \p0|comb~combout\);

\controler|comb~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \controler|comb~combout\);

\p1|comb~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \p1|comb~combout\);

\p0|clk|out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \p0|clk|out~regout\);

\p3|comb~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \p3|comb~combout\);

\p1|clk|out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \p1|clk|out~regout\);

\p2|clk|out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \p2|clk|out~regout\);

\p3|clk|out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \p3|clk|out~regout\);
\ALT_INV_iButton~combout\ <= NOT \iButton~combout\;
\controler|ALT_INV_Equal2~3_combout\ <= NOT \controler|Equal2~3_combout\;
\controler|ALT_INV_enables\(0) <= NOT \controler|enables\(0);
\controler|ALT_INV_Equal2~1_combout\ <= NOT \controler|Equal2~1_combout\;
\controler|ALT_INV_Equal2~0_combout\ <= NOT \controler|Equal2~0_combout\;

-- Location: LCCOMB_X30_Y7_N6
\controler|clk|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~6_combout\ = (\controler|clk|count\(3) & (!\controler|clk|Add0~5\)) # (!\controler|clk|count\(3) & ((\controler|clk|Add0~5\) # (GND)))
-- \controler|clk|Add0~7\ = CARRY((!\controler|clk|Add0~5\) # (!\controler|clk|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|count\(3),
	datad => VCC,
	cin => \controler|clk|Add0~5\,
	combout => \controler|clk|Add0~6_combout\,
	cout => \controler|clk|Add0~7\);

-- Location: LCCOMB_X30_Y7_N10
\controler|clk|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~10_combout\ = (\controler|clk|count\(5) & (!\controler|clk|Add0~9\)) # (!\controler|clk|count\(5) & ((\controler|clk|Add0~9\) # (GND)))
-- \controler|clk|Add0~11\ = CARRY((!\controler|clk|Add0~9\) # (!\controler|clk|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|count\(5),
	datad => VCC,
	cin => \controler|clk|Add0~9\,
	combout => \controler|clk|Add0~10_combout\,
	cout => \controler|clk|Add0~11\);

-- Location: LCCOMB_X30_Y7_N12
\controler|clk|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~12_combout\ = (\controler|clk|count\(6) & (\controler|clk|Add0~11\ $ (GND))) # (!\controler|clk|count\(6) & (!\controler|clk|Add0~11\ & VCC))
-- \controler|clk|Add0~13\ = CARRY((\controler|clk|count\(6) & !\controler|clk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|count\(6),
	datad => VCC,
	cin => \controler|clk|Add0~11\,
	combout => \controler|clk|Add0~12_combout\,
	cout => \controler|clk|Add0~13\);

-- Location: LCCOMB_X30_Y7_N16
\controler|clk|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~16_combout\ = (\controler|clk|count\(8) & (\controler|clk|Add0~15\ $ (GND))) # (!\controler|clk|count\(8) & (!\controler|clk|Add0~15\ & VCC))
-- \controler|clk|Add0~17\ = CARRY((\controler|clk|count\(8) & !\controler|clk|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|count\(8),
	datad => VCC,
	cin => \controler|clk|Add0~15\,
	combout => \controler|clk|Add0~16_combout\,
	cout => \controler|clk|Add0~17\);

-- Location: LCCOMB_X9_Y17_N0
\p1|clk|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~0_combout\ = \p1|clk|count\(0) $ (VCC)
-- \p1|clk|Add0~1\ = CARRY(\p1|clk|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(0),
	datad => VCC,
	combout => \p1|clk|Add0~0_combout\,
	cout => \p1|clk|Add0~1\);

-- Location: LCCOMB_X9_Y17_N2
\p1|clk|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~2_combout\ = (\p1|clk|count\(1) & (!\p1|clk|Add0~1\)) # (!\p1|clk|count\(1) & ((\p1|clk|Add0~1\) # (GND)))
-- \p1|clk|Add0~3\ = CARRY((!\p1|clk|Add0~1\) # (!\p1|clk|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(1),
	datad => VCC,
	cin => \p1|clk|Add0~1\,
	combout => \p1|clk|Add0~2_combout\,
	cout => \p1|clk|Add0~3\);

-- Location: LCCOMB_X9_Y17_N4
\p1|clk|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~4_combout\ = (\p1|clk|count\(2) & (\p1|clk|Add0~3\ $ (GND))) # (!\p1|clk|count\(2) & (!\p1|clk|Add0~3\ & VCC))
-- \p1|clk|Add0~5\ = CARRY((\p1|clk|count\(2) & !\p1|clk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(2),
	datad => VCC,
	cin => \p1|clk|Add0~3\,
	combout => \p1|clk|Add0~4_combout\,
	cout => \p1|clk|Add0~5\);

-- Location: LCCOMB_X9_Y17_N6
\p1|clk|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~6_combout\ = (\p1|clk|count\(3) & (!\p1|clk|Add0~5\)) # (!\p1|clk|count\(3) & ((\p1|clk|Add0~5\) # (GND)))
-- \p1|clk|Add0~7\ = CARRY((!\p1|clk|Add0~5\) # (!\p1|clk|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|count\(3),
	datad => VCC,
	cin => \p1|clk|Add0~5\,
	combout => \p1|clk|Add0~6_combout\,
	cout => \p1|clk|Add0~7\);

-- Location: LCCOMB_X9_Y17_N8
\p1|clk|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~8_combout\ = (\p1|clk|count\(4) & (\p1|clk|Add0~7\ $ (GND))) # (!\p1|clk|count\(4) & (!\p1|clk|Add0~7\ & VCC))
-- \p1|clk|Add0~9\ = CARRY((\p1|clk|count\(4) & !\p1|clk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(4),
	datad => VCC,
	cin => \p1|clk|Add0~7\,
	combout => \p1|clk|Add0~8_combout\,
	cout => \p1|clk|Add0~9\);

-- Location: LCCOMB_X9_Y17_N10
\p1|clk|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~10_combout\ = (\p1|clk|count\(5) & (!\p1|clk|Add0~9\)) # (!\p1|clk|count\(5) & ((\p1|clk|Add0~9\) # (GND)))
-- \p1|clk|Add0~11\ = CARRY((!\p1|clk|Add0~9\) # (!\p1|clk|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|count\(5),
	datad => VCC,
	cin => \p1|clk|Add0~9\,
	combout => \p1|clk|Add0~10_combout\,
	cout => \p1|clk|Add0~11\);

-- Location: LCCOMB_X9_Y17_N12
\p1|clk|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~12_combout\ = (\p1|clk|count\(6) & (\p1|clk|Add0~11\ $ (GND))) # (!\p1|clk|count\(6) & (!\p1|clk|Add0~11\ & VCC))
-- \p1|clk|Add0~13\ = CARRY((\p1|clk|count\(6) & !\p1|clk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|count\(6),
	datad => VCC,
	cin => \p1|clk|Add0~11\,
	combout => \p1|clk|Add0~12_combout\,
	cout => \p1|clk|Add0~13\);

-- Location: LCCOMB_X9_Y17_N14
\p1|clk|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~14_combout\ = (\p1|clk|count\(7) & (!\p1|clk|Add0~13\)) # (!\p1|clk|count\(7) & ((\p1|clk|Add0~13\) # (GND)))
-- \p1|clk|Add0~15\ = CARRY((!\p1|clk|Add0~13\) # (!\p1|clk|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(7),
	datad => VCC,
	cin => \p1|clk|Add0~13\,
	combout => \p1|clk|Add0~14_combout\,
	cout => \p1|clk|Add0~15\);

-- Location: LCCOMB_X9_Y17_N16
\p1|clk|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~16_combout\ = (\p1|clk|count\(8) & (\p1|clk|Add0~15\ $ (GND))) # (!\p1|clk|count\(8) & (!\p1|clk|Add0~15\ & VCC))
-- \p1|clk|Add0~17\ = CARRY((\p1|clk|count\(8) & !\p1|clk|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|count\(8),
	datad => VCC,
	cin => \p1|clk|Add0~15\,
	combout => \p1|clk|Add0~16_combout\,
	cout => \p1|clk|Add0~17\);

-- Location: LCCOMB_X9_Y17_N18
\p1|clk|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~18_combout\ = (\p1|clk|count\(9) & (!\p1|clk|Add0~17\)) # (!\p1|clk|count\(9) & ((\p1|clk|Add0~17\) # (GND)))
-- \p1|clk|Add0~19\ = CARRY((!\p1|clk|Add0~17\) # (!\p1|clk|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(9),
	datad => VCC,
	cin => \p1|clk|Add0~17\,
	combout => \p1|clk|Add0~18_combout\,
	cout => \p1|clk|Add0~19\);

-- Location: LCCOMB_X9_Y17_N20
\p1|clk|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~20_combout\ = (\p1|clk|count\(10) & (\p1|clk|Add0~19\ $ (GND))) # (!\p1|clk|count\(10) & (!\p1|clk|Add0~19\ & VCC))
-- \p1|clk|Add0~21\ = CARRY((\p1|clk|count\(10) & !\p1|clk|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|count\(10),
	datad => VCC,
	cin => \p1|clk|Add0~19\,
	combout => \p1|clk|Add0~20_combout\,
	cout => \p1|clk|Add0~21\);

-- Location: LCCOMB_X9_Y17_N22
\p1|clk|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~22_combout\ = (\p1|clk|count\(11) & (!\p1|clk|Add0~21\)) # (!\p1|clk|count\(11) & ((\p1|clk|Add0~21\) # (GND)))
-- \p1|clk|Add0~23\ = CARRY((!\p1|clk|Add0~21\) # (!\p1|clk|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(11),
	datad => VCC,
	cin => \p1|clk|Add0~21\,
	combout => \p1|clk|Add0~22_combout\,
	cout => \p1|clk|Add0~23\);

-- Location: LCCOMB_X9_Y17_N24
\p1|clk|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~24_combout\ = (\p1|clk|count\(12) & (\p1|clk|Add0~23\ $ (GND))) # (!\p1|clk|count\(12) & (!\p1|clk|Add0~23\ & VCC))
-- \p1|clk|Add0~25\ = CARRY((\p1|clk|count\(12) & !\p1|clk|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|count\(12),
	datad => VCC,
	cin => \p1|clk|Add0~23\,
	combout => \p1|clk|Add0~24_combout\,
	cout => \p1|clk|Add0~25\);

-- Location: LCCOMB_X9_Y17_N26
\p1|clk|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~26_combout\ = (\p1|clk|count\(13) & (!\p1|clk|Add0~25\)) # (!\p1|clk|count\(13) & ((\p1|clk|Add0~25\) # (GND)))
-- \p1|clk|Add0~27\ = CARRY((!\p1|clk|Add0~25\) # (!\p1|clk|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(13),
	datad => VCC,
	cin => \p1|clk|Add0~25\,
	combout => \p1|clk|Add0~26_combout\,
	cout => \p1|clk|Add0~27\);

-- Location: LCCOMB_X9_Y17_N28
\p1|clk|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~28_combout\ = (\p1|clk|count\(14) & (\p1|clk|Add0~27\ $ (GND))) # (!\p1|clk|count\(14) & (!\p1|clk|Add0~27\ & VCC))
-- \p1|clk|Add0~29\ = CARRY((\p1|clk|count\(14) & !\p1|clk|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(14),
	datad => VCC,
	cin => \p1|clk|Add0~27\,
	combout => \p1|clk|Add0~28_combout\,
	cout => \p1|clk|Add0~29\);

-- Location: LCCOMB_X9_Y17_N30
\p1|clk|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~30_combout\ = (\p1|clk|count\(15) & (!\p1|clk|Add0~29\)) # (!\p1|clk|count\(15) & ((\p1|clk|Add0~29\) # (GND)))
-- \p1|clk|Add0~31\ = CARRY((!\p1|clk|Add0~29\) # (!\p1|clk|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(15),
	datad => VCC,
	cin => \p1|clk|Add0~29\,
	combout => \p1|clk|Add0~30_combout\,
	cout => \p1|clk|Add0~31\);

-- Location: LCCOMB_X9_Y16_N0
\p1|clk|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~32_combout\ = (\p1|clk|count\(16) & (\p1|clk|Add0~31\ $ (GND))) # (!\p1|clk|count\(16) & (!\p1|clk|Add0~31\ & VCC))
-- \p1|clk|Add0~33\ = CARRY((\p1|clk|count\(16) & !\p1|clk|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(16),
	datad => VCC,
	cin => \p1|clk|Add0~31\,
	combout => \p1|clk|Add0~32_combout\,
	cout => \p1|clk|Add0~33\);

-- Location: LCCOMB_X9_Y16_N2
\p1|clk|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~34_combout\ = (\p1|clk|count\(17) & (!\p1|clk|Add0~33\)) # (!\p1|clk|count\(17) & ((\p1|clk|Add0~33\) # (GND)))
-- \p1|clk|Add0~35\ = CARRY((!\p1|clk|Add0~33\) # (!\p1|clk|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(17),
	datad => VCC,
	cin => \p1|clk|Add0~33\,
	combout => \p1|clk|Add0~34_combout\,
	cout => \p1|clk|Add0~35\);

-- Location: LCCOMB_X9_Y16_N4
\p1|clk|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~36_combout\ = (\p1|clk|count\(18) & (\p1|clk|Add0~35\ $ (GND))) # (!\p1|clk|count\(18) & (!\p1|clk|Add0~35\ & VCC))
-- \p1|clk|Add0~37\ = CARRY((\p1|clk|count\(18) & !\p1|clk|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(18),
	datad => VCC,
	cin => \p1|clk|Add0~35\,
	combout => \p1|clk|Add0~36_combout\,
	cout => \p1|clk|Add0~37\);

-- Location: LCCOMB_X9_Y16_N6
\p1|clk|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~38_combout\ = (\p1|clk|count\(19) & (!\p1|clk|Add0~37\)) # (!\p1|clk|count\(19) & ((\p1|clk|Add0~37\) # (GND)))
-- \p1|clk|Add0~39\ = CARRY((!\p1|clk|Add0~37\) # (!\p1|clk|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|count\(19),
	datad => VCC,
	cin => \p1|clk|Add0~37\,
	combout => \p1|clk|Add0~38_combout\,
	cout => \p1|clk|Add0~39\);

-- Location: LCCOMB_X9_Y16_N8
\p1|clk|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~40_combout\ = (\p1|clk|count\(20) & (\p1|clk|Add0~39\ $ (GND))) # (!\p1|clk|count\(20) & (!\p1|clk|Add0~39\ & VCC))
-- \p1|clk|Add0~41\ = CARRY((\p1|clk|count\(20) & !\p1|clk|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(20),
	datad => VCC,
	cin => \p1|clk|Add0~39\,
	combout => \p1|clk|Add0~40_combout\,
	cout => \p1|clk|Add0~41\);

-- Location: LCCOMB_X9_Y16_N10
\p1|clk|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~42_combout\ = (\p1|clk|count\(21) & (!\p1|clk|Add0~41\)) # (!\p1|clk|count\(21) & ((\p1|clk|Add0~41\) # (GND)))
-- \p1|clk|Add0~43\ = CARRY((!\p1|clk|Add0~41\) # (!\p1|clk|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|count\(21),
	datad => VCC,
	cin => \p1|clk|Add0~41\,
	combout => \p1|clk|Add0~42_combout\,
	cout => \p1|clk|Add0~43\);

-- Location: LCCOMB_X9_Y16_N12
\p1|clk|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~44_combout\ = (\p1|clk|count\(22) & (\p1|clk|Add0~43\ $ (GND))) # (!\p1|clk|count\(22) & (!\p1|clk|Add0~43\ & VCC))
-- \p1|clk|Add0~45\ = CARRY((\p1|clk|count\(22) & !\p1|clk|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|count\(22),
	datad => VCC,
	cin => \p1|clk|Add0~43\,
	combout => \p1|clk|Add0~44_combout\,
	cout => \p1|clk|Add0~45\);

-- Location: LCCOMB_X9_Y16_N14
\p1|clk|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~46_combout\ = (\p1|clk|count\(23) & (!\p1|clk|Add0~45\)) # (!\p1|clk|count\(23) & ((\p1|clk|Add0~45\) # (GND)))
-- \p1|clk|Add0~47\ = CARRY((!\p1|clk|Add0~45\) # (!\p1|clk|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(23),
	datad => VCC,
	cin => \p1|clk|Add0~45\,
	combout => \p1|clk|Add0~46_combout\,
	cout => \p1|clk|Add0~47\);

-- Location: LCCOMB_X9_Y16_N16
\p1|clk|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~48_combout\ = (\p1|clk|count\(24) & (\p1|clk|Add0~47\ $ (GND))) # (!\p1|clk|count\(24) & (!\p1|clk|Add0~47\ & VCC))
-- \p1|clk|Add0~49\ = CARRY((\p1|clk|count\(24) & !\p1|clk|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|count\(24),
	datad => VCC,
	cin => \p1|clk|Add0~47\,
	combout => \p1|clk|Add0~48_combout\,
	cout => \p1|clk|Add0~49\);

-- Location: LCCOMB_X9_Y16_N18
\p1|clk|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~50_combout\ = (\p1|clk|count\(25) & (!\p1|clk|Add0~49\)) # (!\p1|clk|count\(25) & ((\p1|clk|Add0~49\) # (GND)))
-- \p1|clk|Add0~51\ = CARRY((!\p1|clk|Add0~49\) # (!\p1|clk|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(25),
	datad => VCC,
	cin => \p1|clk|Add0~49\,
	combout => \p1|clk|Add0~50_combout\,
	cout => \p1|clk|Add0~51\);

-- Location: LCCOMB_X9_Y16_N20
\p1|clk|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~52_combout\ = (\p1|clk|count\(26) & (\p1|clk|Add0~51\ $ (GND))) # (!\p1|clk|count\(26) & (!\p1|clk|Add0~51\ & VCC))
-- \p1|clk|Add0~53\ = CARRY((\p1|clk|count\(26) & !\p1|clk|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|count\(26),
	datad => VCC,
	cin => \p1|clk|Add0~51\,
	combout => \p1|clk|Add0~52_combout\,
	cout => \p1|clk|Add0~53\);

-- Location: LCCOMB_X9_Y16_N22
\p1|clk|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~54_combout\ = (\p1|clk|count\(27) & (!\p1|clk|Add0~53\)) # (!\p1|clk|count\(27) & ((\p1|clk|Add0~53\) # (GND)))
-- \p1|clk|Add0~55\ = CARRY((!\p1|clk|Add0~53\) # (!\p1|clk|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(27),
	datad => VCC,
	cin => \p1|clk|Add0~53\,
	combout => \p1|clk|Add0~54_combout\,
	cout => \p1|clk|Add0~55\);

-- Location: LCCOMB_X9_Y16_N24
\p1|clk|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~56_combout\ = (\p1|clk|count\(28) & (\p1|clk|Add0~55\ $ (GND))) # (!\p1|clk|count\(28) & (!\p1|clk|Add0~55\ & VCC))
-- \p1|clk|Add0~57\ = CARRY((\p1|clk|count\(28) & !\p1|clk|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|count\(28),
	datad => VCC,
	cin => \p1|clk|Add0~55\,
	combout => \p1|clk|Add0~56_combout\,
	cout => \p1|clk|Add0~57\);

-- Location: LCCOMB_X9_Y16_N26
\p1|clk|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~58_combout\ = (\p1|clk|count\(29) & (!\p1|clk|Add0~57\)) # (!\p1|clk|count\(29) & ((\p1|clk|Add0~57\) # (GND)))
-- \p1|clk|Add0~59\ = CARRY((!\p1|clk|Add0~57\) # (!\p1|clk|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(29),
	datad => VCC,
	cin => \p1|clk|Add0~57\,
	combout => \p1|clk|Add0~58_combout\,
	cout => \p1|clk|Add0~59\);

-- Location: LCCOMB_X9_Y16_N28
\p1|clk|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~60_combout\ = (\p1|clk|count\(30) & (\p1|clk|Add0~59\ $ (GND))) # (!\p1|clk|count\(30) & (!\p1|clk|Add0~59\ & VCC))
-- \p1|clk|Add0~61\ = CARRY((\p1|clk|count\(30) & !\p1|clk|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|count\(30),
	datad => VCC,
	cin => \p1|clk|Add0~59\,
	combout => \p1|clk|Add0~60_combout\,
	cout => \p1|clk|Add0~61\);

-- Location: LCCOMB_X9_Y16_N30
\p1|clk|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Add0~62_combout\ = \p1|clk|Add0~61\ $ (\p1|clk|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \p1|clk|count\(31),
	cin => \p1|clk|Add0~61\,
	combout => \p1|clk|Add0~62_combout\);

-- Location: LCCOMB_X12_Y14_N0
\p3|clk|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~0_combout\ = \p3|clk|count\(0) $ (VCC)
-- \p3|clk|Add0~1\ = CARRY(\p3|clk|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(0),
	datad => VCC,
	combout => \p3|clk|Add0~0_combout\,
	cout => \p3|clk|Add0~1\);

-- Location: LCCOMB_X12_Y14_N2
\p3|clk|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~2_combout\ = (\p3|clk|count\(1) & (!\p3|clk|Add0~1\)) # (!\p3|clk|count\(1) & ((\p3|clk|Add0~1\) # (GND)))
-- \p3|clk|Add0~3\ = CARRY((!\p3|clk|Add0~1\) # (!\p3|clk|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(1),
	datad => VCC,
	cin => \p3|clk|Add0~1\,
	combout => \p3|clk|Add0~2_combout\,
	cout => \p3|clk|Add0~3\);

-- Location: LCCOMB_X12_Y14_N4
\p3|clk|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~4_combout\ = (\p3|clk|count\(2) & (\p3|clk|Add0~3\ $ (GND))) # (!\p3|clk|count\(2) & (!\p3|clk|Add0~3\ & VCC))
-- \p3|clk|Add0~5\ = CARRY((\p3|clk|count\(2) & !\p3|clk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(2),
	datad => VCC,
	cin => \p3|clk|Add0~3\,
	combout => \p3|clk|Add0~4_combout\,
	cout => \p3|clk|Add0~5\);

-- Location: LCCOMB_X12_Y14_N6
\p3|clk|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~6_combout\ = (\p3|clk|count\(3) & (!\p3|clk|Add0~5\)) # (!\p3|clk|count\(3) & ((\p3|clk|Add0~5\) # (GND)))
-- \p3|clk|Add0~7\ = CARRY((!\p3|clk|Add0~5\) # (!\p3|clk|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|count\(3),
	datad => VCC,
	cin => \p3|clk|Add0~5\,
	combout => \p3|clk|Add0~6_combout\,
	cout => \p3|clk|Add0~7\);

-- Location: LCCOMB_X12_Y14_N8
\p3|clk|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~8_combout\ = (\p3|clk|count\(4) & (\p3|clk|Add0~7\ $ (GND))) # (!\p3|clk|count\(4) & (!\p3|clk|Add0~7\ & VCC))
-- \p3|clk|Add0~9\ = CARRY((\p3|clk|count\(4) & !\p3|clk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(4),
	datad => VCC,
	cin => \p3|clk|Add0~7\,
	combout => \p3|clk|Add0~8_combout\,
	cout => \p3|clk|Add0~9\);

-- Location: LCCOMB_X12_Y14_N10
\p3|clk|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~10_combout\ = (\p3|clk|count\(5) & (!\p3|clk|Add0~9\)) # (!\p3|clk|count\(5) & ((\p3|clk|Add0~9\) # (GND)))
-- \p3|clk|Add0~11\ = CARRY((!\p3|clk|Add0~9\) # (!\p3|clk|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|count\(5),
	datad => VCC,
	cin => \p3|clk|Add0~9\,
	combout => \p3|clk|Add0~10_combout\,
	cout => \p3|clk|Add0~11\);

-- Location: LCCOMB_X12_Y14_N12
\p3|clk|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~12_combout\ = (\p3|clk|count\(6) & (\p3|clk|Add0~11\ $ (GND))) # (!\p3|clk|count\(6) & (!\p3|clk|Add0~11\ & VCC))
-- \p3|clk|Add0~13\ = CARRY((\p3|clk|count\(6) & !\p3|clk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|count\(6),
	datad => VCC,
	cin => \p3|clk|Add0~11\,
	combout => \p3|clk|Add0~12_combout\,
	cout => \p3|clk|Add0~13\);

-- Location: LCCOMB_X12_Y14_N14
\p3|clk|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~14_combout\ = (\p3|clk|count\(7) & (!\p3|clk|Add0~13\)) # (!\p3|clk|count\(7) & ((\p3|clk|Add0~13\) # (GND)))
-- \p3|clk|Add0~15\ = CARRY((!\p3|clk|Add0~13\) # (!\p3|clk|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(7),
	datad => VCC,
	cin => \p3|clk|Add0~13\,
	combout => \p3|clk|Add0~14_combout\,
	cout => \p3|clk|Add0~15\);

-- Location: LCCOMB_X12_Y14_N16
\p3|clk|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~16_combout\ = (\p3|clk|count\(8) & (\p3|clk|Add0~15\ $ (GND))) # (!\p3|clk|count\(8) & (!\p3|clk|Add0~15\ & VCC))
-- \p3|clk|Add0~17\ = CARRY((\p3|clk|count\(8) & !\p3|clk|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|count\(8),
	datad => VCC,
	cin => \p3|clk|Add0~15\,
	combout => \p3|clk|Add0~16_combout\,
	cout => \p3|clk|Add0~17\);

-- Location: LCCOMB_X12_Y14_N18
\p3|clk|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~18_combout\ = (\p3|clk|count\(9) & (!\p3|clk|Add0~17\)) # (!\p3|clk|count\(9) & ((\p3|clk|Add0~17\) # (GND)))
-- \p3|clk|Add0~19\ = CARRY((!\p3|clk|Add0~17\) # (!\p3|clk|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(9),
	datad => VCC,
	cin => \p3|clk|Add0~17\,
	combout => \p3|clk|Add0~18_combout\,
	cout => \p3|clk|Add0~19\);

-- Location: LCCOMB_X12_Y14_N20
\p3|clk|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~20_combout\ = (\p3|clk|count\(10) & (\p3|clk|Add0~19\ $ (GND))) # (!\p3|clk|count\(10) & (!\p3|clk|Add0~19\ & VCC))
-- \p3|clk|Add0~21\ = CARRY((\p3|clk|count\(10) & !\p3|clk|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|count\(10),
	datad => VCC,
	cin => \p3|clk|Add0~19\,
	combout => \p3|clk|Add0~20_combout\,
	cout => \p3|clk|Add0~21\);

-- Location: LCCOMB_X12_Y14_N22
\p3|clk|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~22_combout\ = (\p3|clk|count\(11) & (!\p3|clk|Add0~21\)) # (!\p3|clk|count\(11) & ((\p3|clk|Add0~21\) # (GND)))
-- \p3|clk|Add0~23\ = CARRY((!\p3|clk|Add0~21\) # (!\p3|clk|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(11),
	datad => VCC,
	cin => \p3|clk|Add0~21\,
	combout => \p3|clk|Add0~22_combout\,
	cout => \p3|clk|Add0~23\);

-- Location: LCCOMB_X12_Y14_N24
\p3|clk|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~24_combout\ = (\p3|clk|count\(12) & (\p3|clk|Add0~23\ $ (GND))) # (!\p3|clk|count\(12) & (!\p3|clk|Add0~23\ & VCC))
-- \p3|clk|Add0~25\ = CARRY((\p3|clk|count\(12) & !\p3|clk|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|count\(12),
	datad => VCC,
	cin => \p3|clk|Add0~23\,
	combout => \p3|clk|Add0~24_combout\,
	cout => \p3|clk|Add0~25\);

-- Location: LCCOMB_X12_Y14_N26
\p3|clk|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~26_combout\ = (\p3|clk|count\(13) & (!\p3|clk|Add0~25\)) # (!\p3|clk|count\(13) & ((\p3|clk|Add0~25\) # (GND)))
-- \p3|clk|Add0~27\ = CARRY((!\p3|clk|Add0~25\) # (!\p3|clk|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(13),
	datad => VCC,
	cin => \p3|clk|Add0~25\,
	combout => \p3|clk|Add0~26_combout\,
	cout => \p3|clk|Add0~27\);

-- Location: LCCOMB_X12_Y14_N28
\p3|clk|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~28_combout\ = (\p3|clk|count\(14) & (\p3|clk|Add0~27\ $ (GND))) # (!\p3|clk|count\(14) & (!\p3|clk|Add0~27\ & VCC))
-- \p3|clk|Add0~29\ = CARRY((\p3|clk|count\(14) & !\p3|clk|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(14),
	datad => VCC,
	cin => \p3|clk|Add0~27\,
	combout => \p3|clk|Add0~28_combout\,
	cout => \p3|clk|Add0~29\);

-- Location: LCCOMB_X12_Y14_N30
\p3|clk|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~30_combout\ = (\p3|clk|count\(15) & (!\p3|clk|Add0~29\)) # (!\p3|clk|count\(15) & ((\p3|clk|Add0~29\) # (GND)))
-- \p3|clk|Add0~31\ = CARRY((!\p3|clk|Add0~29\) # (!\p3|clk|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(15),
	datad => VCC,
	cin => \p3|clk|Add0~29\,
	combout => \p3|clk|Add0~30_combout\,
	cout => \p3|clk|Add0~31\);

-- Location: LCCOMB_X12_Y13_N0
\p3|clk|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~32_combout\ = (\p3|clk|count\(16) & (\p3|clk|Add0~31\ $ (GND))) # (!\p3|clk|count\(16) & (!\p3|clk|Add0~31\ & VCC))
-- \p3|clk|Add0~33\ = CARRY((\p3|clk|count\(16) & !\p3|clk|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(16),
	datad => VCC,
	cin => \p3|clk|Add0~31\,
	combout => \p3|clk|Add0~32_combout\,
	cout => \p3|clk|Add0~33\);

-- Location: LCCOMB_X12_Y13_N2
\p3|clk|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~34_combout\ = (\p3|clk|count\(17) & (!\p3|clk|Add0~33\)) # (!\p3|clk|count\(17) & ((\p3|clk|Add0~33\) # (GND)))
-- \p3|clk|Add0~35\ = CARRY((!\p3|clk|Add0~33\) # (!\p3|clk|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(17),
	datad => VCC,
	cin => \p3|clk|Add0~33\,
	combout => \p3|clk|Add0~34_combout\,
	cout => \p3|clk|Add0~35\);

-- Location: LCCOMB_X12_Y13_N4
\p3|clk|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~36_combout\ = (\p3|clk|count\(18) & (\p3|clk|Add0~35\ $ (GND))) # (!\p3|clk|count\(18) & (!\p3|clk|Add0~35\ & VCC))
-- \p3|clk|Add0~37\ = CARRY((\p3|clk|count\(18) & !\p3|clk|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(18),
	datad => VCC,
	cin => \p3|clk|Add0~35\,
	combout => \p3|clk|Add0~36_combout\,
	cout => \p3|clk|Add0~37\);

-- Location: LCCOMB_X12_Y13_N6
\p3|clk|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~38_combout\ = (\p3|clk|count\(19) & (!\p3|clk|Add0~37\)) # (!\p3|clk|count\(19) & ((\p3|clk|Add0~37\) # (GND)))
-- \p3|clk|Add0~39\ = CARRY((!\p3|clk|Add0~37\) # (!\p3|clk|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|count\(19),
	datad => VCC,
	cin => \p3|clk|Add0~37\,
	combout => \p3|clk|Add0~38_combout\,
	cout => \p3|clk|Add0~39\);

-- Location: LCCOMB_X12_Y13_N8
\p3|clk|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~40_combout\ = (\p3|clk|count\(20) & (\p3|clk|Add0~39\ $ (GND))) # (!\p3|clk|count\(20) & (!\p3|clk|Add0~39\ & VCC))
-- \p3|clk|Add0~41\ = CARRY((\p3|clk|count\(20) & !\p3|clk|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(20),
	datad => VCC,
	cin => \p3|clk|Add0~39\,
	combout => \p3|clk|Add0~40_combout\,
	cout => \p3|clk|Add0~41\);

-- Location: LCCOMB_X12_Y13_N10
\p3|clk|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~42_combout\ = (\p3|clk|count\(21) & (!\p3|clk|Add0~41\)) # (!\p3|clk|count\(21) & ((\p3|clk|Add0~41\) # (GND)))
-- \p3|clk|Add0~43\ = CARRY((!\p3|clk|Add0~41\) # (!\p3|clk|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|count\(21),
	datad => VCC,
	cin => \p3|clk|Add0~41\,
	combout => \p3|clk|Add0~42_combout\,
	cout => \p3|clk|Add0~43\);

-- Location: LCCOMB_X12_Y13_N12
\p3|clk|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~44_combout\ = (\p3|clk|count\(22) & (\p3|clk|Add0~43\ $ (GND))) # (!\p3|clk|count\(22) & (!\p3|clk|Add0~43\ & VCC))
-- \p3|clk|Add0~45\ = CARRY((\p3|clk|count\(22) & !\p3|clk|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|count\(22),
	datad => VCC,
	cin => \p3|clk|Add0~43\,
	combout => \p3|clk|Add0~44_combout\,
	cout => \p3|clk|Add0~45\);

-- Location: LCCOMB_X12_Y13_N14
\p3|clk|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~46_combout\ = (\p3|clk|count\(23) & (!\p3|clk|Add0~45\)) # (!\p3|clk|count\(23) & ((\p3|clk|Add0~45\) # (GND)))
-- \p3|clk|Add0~47\ = CARRY((!\p3|clk|Add0~45\) # (!\p3|clk|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(23),
	datad => VCC,
	cin => \p3|clk|Add0~45\,
	combout => \p3|clk|Add0~46_combout\,
	cout => \p3|clk|Add0~47\);

-- Location: LCCOMB_X12_Y13_N16
\p3|clk|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~48_combout\ = (\p3|clk|count\(24) & (\p3|clk|Add0~47\ $ (GND))) # (!\p3|clk|count\(24) & (!\p3|clk|Add0~47\ & VCC))
-- \p3|clk|Add0~49\ = CARRY((\p3|clk|count\(24) & !\p3|clk|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|count\(24),
	datad => VCC,
	cin => \p3|clk|Add0~47\,
	combout => \p3|clk|Add0~48_combout\,
	cout => \p3|clk|Add0~49\);

-- Location: LCCOMB_X12_Y13_N18
\p3|clk|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~50_combout\ = (\p3|clk|count\(25) & (!\p3|clk|Add0~49\)) # (!\p3|clk|count\(25) & ((\p3|clk|Add0~49\) # (GND)))
-- \p3|clk|Add0~51\ = CARRY((!\p3|clk|Add0~49\) # (!\p3|clk|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(25),
	datad => VCC,
	cin => \p3|clk|Add0~49\,
	combout => \p3|clk|Add0~50_combout\,
	cout => \p3|clk|Add0~51\);

-- Location: LCCOMB_X12_Y13_N20
\p3|clk|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~52_combout\ = (\p3|clk|count\(26) & (\p3|clk|Add0~51\ $ (GND))) # (!\p3|clk|count\(26) & (!\p3|clk|Add0~51\ & VCC))
-- \p3|clk|Add0~53\ = CARRY((\p3|clk|count\(26) & !\p3|clk|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|count\(26),
	datad => VCC,
	cin => \p3|clk|Add0~51\,
	combout => \p3|clk|Add0~52_combout\,
	cout => \p3|clk|Add0~53\);

-- Location: LCCOMB_X12_Y13_N22
\p3|clk|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~54_combout\ = (\p3|clk|count\(27) & (!\p3|clk|Add0~53\)) # (!\p3|clk|count\(27) & ((\p3|clk|Add0~53\) # (GND)))
-- \p3|clk|Add0~55\ = CARRY((!\p3|clk|Add0~53\) # (!\p3|clk|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(27),
	datad => VCC,
	cin => \p3|clk|Add0~53\,
	combout => \p3|clk|Add0~54_combout\,
	cout => \p3|clk|Add0~55\);

-- Location: LCCOMB_X12_Y13_N24
\p3|clk|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~56_combout\ = (\p3|clk|count\(28) & (\p3|clk|Add0~55\ $ (GND))) # (!\p3|clk|count\(28) & (!\p3|clk|Add0~55\ & VCC))
-- \p3|clk|Add0~57\ = CARRY((\p3|clk|count\(28) & !\p3|clk|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|count\(28),
	datad => VCC,
	cin => \p3|clk|Add0~55\,
	combout => \p3|clk|Add0~56_combout\,
	cout => \p3|clk|Add0~57\);

-- Location: LCCOMB_X12_Y13_N26
\p3|clk|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~58_combout\ = (\p3|clk|count\(29) & (!\p3|clk|Add0~57\)) # (!\p3|clk|count\(29) & ((\p3|clk|Add0~57\) # (GND)))
-- \p3|clk|Add0~59\ = CARRY((!\p3|clk|Add0~57\) # (!\p3|clk|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(29),
	datad => VCC,
	cin => \p3|clk|Add0~57\,
	combout => \p3|clk|Add0~58_combout\,
	cout => \p3|clk|Add0~59\);

-- Location: LCCOMB_X12_Y13_N28
\p3|clk|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~60_combout\ = (\p3|clk|count\(30) & (\p3|clk|Add0~59\ $ (GND))) # (!\p3|clk|count\(30) & (!\p3|clk|Add0~59\ & VCC))
-- \p3|clk|Add0~61\ = CARRY((\p3|clk|count\(30) & !\p3|clk|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|count\(30),
	datad => VCC,
	cin => \p3|clk|Add0~59\,
	combout => \p3|clk|Add0~60_combout\,
	cout => \p3|clk|Add0~61\);

-- Location: LCCOMB_X12_Y13_N30
\p3|clk|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Add0~62_combout\ = \p3|clk|Add0~61\ $ (\p3|clk|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \p3|clk|count\(31),
	cin => \p3|clk|Add0~61\,
	combout => \p3|clk|Add0~62_combout\);

-- Location: LCCOMB_X11_Y16_N0
\p0|clk|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~0_combout\ = \p0|clk|count\(0) $ (VCC)
-- \p0|clk|Add0~1\ = CARRY(\p0|clk|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(0),
	datad => VCC,
	combout => \p0|clk|Add0~0_combout\,
	cout => \p0|clk|Add0~1\);

-- Location: LCCOMB_X11_Y16_N2
\p0|clk|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~2_combout\ = (\p0|clk|count\(1) & (!\p0|clk|Add0~1\)) # (!\p0|clk|count\(1) & ((\p0|clk|Add0~1\) # (GND)))
-- \p0|clk|Add0~3\ = CARRY((!\p0|clk|Add0~1\) # (!\p0|clk|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(1),
	datad => VCC,
	cin => \p0|clk|Add0~1\,
	combout => \p0|clk|Add0~2_combout\,
	cout => \p0|clk|Add0~3\);

-- Location: LCCOMB_X11_Y16_N4
\p0|clk|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~4_combout\ = (\p0|clk|count\(2) & (\p0|clk|Add0~3\ $ (GND))) # (!\p0|clk|count\(2) & (!\p0|clk|Add0~3\ & VCC))
-- \p0|clk|Add0~5\ = CARRY((\p0|clk|count\(2) & !\p0|clk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(2),
	datad => VCC,
	cin => \p0|clk|Add0~3\,
	combout => \p0|clk|Add0~4_combout\,
	cout => \p0|clk|Add0~5\);

-- Location: LCCOMB_X11_Y16_N6
\p0|clk|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~6_combout\ = (\p0|clk|count\(3) & (!\p0|clk|Add0~5\)) # (!\p0|clk|count\(3) & ((\p0|clk|Add0~5\) # (GND)))
-- \p0|clk|Add0~7\ = CARRY((!\p0|clk|Add0~5\) # (!\p0|clk|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|count\(3),
	datad => VCC,
	cin => \p0|clk|Add0~5\,
	combout => \p0|clk|Add0~6_combout\,
	cout => \p0|clk|Add0~7\);

-- Location: LCCOMB_X11_Y16_N8
\p0|clk|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~8_combout\ = (\p0|clk|count\(4) & (\p0|clk|Add0~7\ $ (GND))) # (!\p0|clk|count\(4) & (!\p0|clk|Add0~7\ & VCC))
-- \p0|clk|Add0~9\ = CARRY((\p0|clk|count\(4) & !\p0|clk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(4),
	datad => VCC,
	cin => \p0|clk|Add0~7\,
	combout => \p0|clk|Add0~8_combout\,
	cout => \p0|clk|Add0~9\);

-- Location: LCCOMB_X11_Y16_N10
\p0|clk|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~10_combout\ = (\p0|clk|count\(5) & (!\p0|clk|Add0~9\)) # (!\p0|clk|count\(5) & ((\p0|clk|Add0~9\) # (GND)))
-- \p0|clk|Add0~11\ = CARRY((!\p0|clk|Add0~9\) # (!\p0|clk|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|count\(5),
	datad => VCC,
	cin => \p0|clk|Add0~9\,
	combout => \p0|clk|Add0~10_combout\,
	cout => \p0|clk|Add0~11\);

-- Location: LCCOMB_X11_Y16_N12
\p0|clk|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~12_combout\ = (\p0|clk|count\(6) & (\p0|clk|Add0~11\ $ (GND))) # (!\p0|clk|count\(6) & (!\p0|clk|Add0~11\ & VCC))
-- \p0|clk|Add0~13\ = CARRY((\p0|clk|count\(6) & !\p0|clk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|count\(6),
	datad => VCC,
	cin => \p0|clk|Add0~11\,
	combout => \p0|clk|Add0~12_combout\,
	cout => \p0|clk|Add0~13\);

-- Location: LCCOMB_X11_Y16_N14
\p0|clk|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~14_combout\ = (\p0|clk|count\(7) & (!\p0|clk|Add0~13\)) # (!\p0|clk|count\(7) & ((\p0|clk|Add0~13\) # (GND)))
-- \p0|clk|Add0~15\ = CARRY((!\p0|clk|Add0~13\) # (!\p0|clk|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(7),
	datad => VCC,
	cin => \p0|clk|Add0~13\,
	combout => \p0|clk|Add0~14_combout\,
	cout => \p0|clk|Add0~15\);

-- Location: LCCOMB_X11_Y16_N16
\p0|clk|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~16_combout\ = (\p0|clk|count\(8) & (\p0|clk|Add0~15\ $ (GND))) # (!\p0|clk|count\(8) & (!\p0|clk|Add0~15\ & VCC))
-- \p0|clk|Add0~17\ = CARRY((\p0|clk|count\(8) & !\p0|clk|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|count\(8),
	datad => VCC,
	cin => \p0|clk|Add0~15\,
	combout => \p0|clk|Add0~16_combout\,
	cout => \p0|clk|Add0~17\);

-- Location: LCCOMB_X11_Y16_N18
\p0|clk|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~18_combout\ = (\p0|clk|count\(9) & (!\p0|clk|Add0~17\)) # (!\p0|clk|count\(9) & ((\p0|clk|Add0~17\) # (GND)))
-- \p0|clk|Add0~19\ = CARRY((!\p0|clk|Add0~17\) # (!\p0|clk|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(9),
	datad => VCC,
	cin => \p0|clk|Add0~17\,
	combout => \p0|clk|Add0~18_combout\,
	cout => \p0|clk|Add0~19\);

-- Location: LCCOMB_X11_Y16_N20
\p0|clk|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~20_combout\ = (\p0|clk|count\(10) & (\p0|clk|Add0~19\ $ (GND))) # (!\p0|clk|count\(10) & (!\p0|clk|Add0~19\ & VCC))
-- \p0|clk|Add0~21\ = CARRY((\p0|clk|count\(10) & !\p0|clk|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|count\(10),
	datad => VCC,
	cin => \p0|clk|Add0~19\,
	combout => \p0|clk|Add0~20_combout\,
	cout => \p0|clk|Add0~21\);

-- Location: LCCOMB_X11_Y16_N22
\p0|clk|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~22_combout\ = (\p0|clk|count\(11) & (!\p0|clk|Add0~21\)) # (!\p0|clk|count\(11) & ((\p0|clk|Add0~21\) # (GND)))
-- \p0|clk|Add0~23\ = CARRY((!\p0|clk|Add0~21\) # (!\p0|clk|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(11),
	datad => VCC,
	cin => \p0|clk|Add0~21\,
	combout => \p0|clk|Add0~22_combout\,
	cout => \p0|clk|Add0~23\);

-- Location: LCCOMB_X11_Y16_N24
\p0|clk|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~24_combout\ = (\p0|clk|count\(12) & (\p0|clk|Add0~23\ $ (GND))) # (!\p0|clk|count\(12) & (!\p0|clk|Add0~23\ & VCC))
-- \p0|clk|Add0~25\ = CARRY((\p0|clk|count\(12) & !\p0|clk|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|count\(12),
	datad => VCC,
	cin => \p0|clk|Add0~23\,
	combout => \p0|clk|Add0~24_combout\,
	cout => \p0|clk|Add0~25\);

-- Location: LCCOMB_X11_Y16_N26
\p0|clk|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~26_combout\ = (\p0|clk|count\(13) & (!\p0|clk|Add0~25\)) # (!\p0|clk|count\(13) & ((\p0|clk|Add0~25\) # (GND)))
-- \p0|clk|Add0~27\ = CARRY((!\p0|clk|Add0~25\) # (!\p0|clk|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(13),
	datad => VCC,
	cin => \p0|clk|Add0~25\,
	combout => \p0|clk|Add0~26_combout\,
	cout => \p0|clk|Add0~27\);

-- Location: LCCOMB_X11_Y16_N28
\p0|clk|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~28_combout\ = (\p0|clk|count\(14) & (\p0|clk|Add0~27\ $ (GND))) # (!\p0|clk|count\(14) & (!\p0|clk|Add0~27\ & VCC))
-- \p0|clk|Add0~29\ = CARRY((\p0|clk|count\(14) & !\p0|clk|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(14),
	datad => VCC,
	cin => \p0|clk|Add0~27\,
	combout => \p0|clk|Add0~28_combout\,
	cout => \p0|clk|Add0~29\);

-- Location: LCCOMB_X11_Y16_N30
\p0|clk|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~30_combout\ = (\p0|clk|count\(15) & (!\p0|clk|Add0~29\)) # (!\p0|clk|count\(15) & ((\p0|clk|Add0~29\) # (GND)))
-- \p0|clk|Add0~31\ = CARRY((!\p0|clk|Add0~29\) # (!\p0|clk|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(15),
	datad => VCC,
	cin => \p0|clk|Add0~29\,
	combout => \p0|clk|Add0~30_combout\,
	cout => \p0|clk|Add0~31\);

-- Location: LCCOMB_X11_Y15_N0
\p0|clk|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~32_combout\ = (\p0|clk|count\(16) & (\p0|clk|Add0~31\ $ (GND))) # (!\p0|clk|count\(16) & (!\p0|clk|Add0~31\ & VCC))
-- \p0|clk|Add0~33\ = CARRY((\p0|clk|count\(16) & !\p0|clk|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(16),
	datad => VCC,
	cin => \p0|clk|Add0~31\,
	combout => \p0|clk|Add0~32_combout\,
	cout => \p0|clk|Add0~33\);

-- Location: LCCOMB_X11_Y15_N2
\p0|clk|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~34_combout\ = (\p0|clk|count\(17) & (!\p0|clk|Add0~33\)) # (!\p0|clk|count\(17) & ((\p0|clk|Add0~33\) # (GND)))
-- \p0|clk|Add0~35\ = CARRY((!\p0|clk|Add0~33\) # (!\p0|clk|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(17),
	datad => VCC,
	cin => \p0|clk|Add0~33\,
	combout => \p0|clk|Add0~34_combout\,
	cout => \p0|clk|Add0~35\);

-- Location: LCCOMB_X11_Y15_N4
\p0|clk|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~36_combout\ = (\p0|clk|count\(18) & (\p0|clk|Add0~35\ $ (GND))) # (!\p0|clk|count\(18) & (!\p0|clk|Add0~35\ & VCC))
-- \p0|clk|Add0~37\ = CARRY((\p0|clk|count\(18) & !\p0|clk|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(18),
	datad => VCC,
	cin => \p0|clk|Add0~35\,
	combout => \p0|clk|Add0~36_combout\,
	cout => \p0|clk|Add0~37\);

-- Location: LCCOMB_X11_Y15_N6
\p0|clk|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~38_combout\ = (\p0|clk|count\(19) & (!\p0|clk|Add0~37\)) # (!\p0|clk|count\(19) & ((\p0|clk|Add0~37\) # (GND)))
-- \p0|clk|Add0~39\ = CARRY((!\p0|clk|Add0~37\) # (!\p0|clk|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|count\(19),
	datad => VCC,
	cin => \p0|clk|Add0~37\,
	combout => \p0|clk|Add0~38_combout\,
	cout => \p0|clk|Add0~39\);

-- Location: LCCOMB_X11_Y15_N8
\p0|clk|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~40_combout\ = (\p0|clk|count\(20) & (\p0|clk|Add0~39\ $ (GND))) # (!\p0|clk|count\(20) & (!\p0|clk|Add0~39\ & VCC))
-- \p0|clk|Add0~41\ = CARRY((\p0|clk|count\(20) & !\p0|clk|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(20),
	datad => VCC,
	cin => \p0|clk|Add0~39\,
	combout => \p0|clk|Add0~40_combout\,
	cout => \p0|clk|Add0~41\);

-- Location: LCCOMB_X11_Y15_N10
\p0|clk|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~42_combout\ = (\p0|clk|count\(21) & (!\p0|clk|Add0~41\)) # (!\p0|clk|count\(21) & ((\p0|clk|Add0~41\) # (GND)))
-- \p0|clk|Add0~43\ = CARRY((!\p0|clk|Add0~41\) # (!\p0|clk|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|count\(21),
	datad => VCC,
	cin => \p0|clk|Add0~41\,
	combout => \p0|clk|Add0~42_combout\,
	cout => \p0|clk|Add0~43\);

-- Location: LCCOMB_X11_Y15_N12
\p0|clk|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~44_combout\ = (\p0|clk|count\(22) & (\p0|clk|Add0~43\ $ (GND))) # (!\p0|clk|count\(22) & (!\p0|clk|Add0~43\ & VCC))
-- \p0|clk|Add0~45\ = CARRY((\p0|clk|count\(22) & !\p0|clk|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|count\(22),
	datad => VCC,
	cin => \p0|clk|Add0~43\,
	combout => \p0|clk|Add0~44_combout\,
	cout => \p0|clk|Add0~45\);

-- Location: LCCOMB_X11_Y15_N14
\p0|clk|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~46_combout\ = (\p0|clk|count\(23) & (!\p0|clk|Add0~45\)) # (!\p0|clk|count\(23) & ((\p0|clk|Add0~45\) # (GND)))
-- \p0|clk|Add0~47\ = CARRY((!\p0|clk|Add0~45\) # (!\p0|clk|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(23),
	datad => VCC,
	cin => \p0|clk|Add0~45\,
	combout => \p0|clk|Add0~46_combout\,
	cout => \p0|clk|Add0~47\);

-- Location: LCCOMB_X11_Y15_N16
\p0|clk|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~48_combout\ = (\p0|clk|count\(24) & (\p0|clk|Add0~47\ $ (GND))) # (!\p0|clk|count\(24) & (!\p0|clk|Add0~47\ & VCC))
-- \p0|clk|Add0~49\ = CARRY((\p0|clk|count\(24) & !\p0|clk|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|count\(24),
	datad => VCC,
	cin => \p0|clk|Add0~47\,
	combout => \p0|clk|Add0~48_combout\,
	cout => \p0|clk|Add0~49\);

-- Location: LCCOMB_X11_Y15_N18
\p0|clk|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~50_combout\ = (\p0|clk|count\(25) & (!\p0|clk|Add0~49\)) # (!\p0|clk|count\(25) & ((\p0|clk|Add0~49\) # (GND)))
-- \p0|clk|Add0~51\ = CARRY((!\p0|clk|Add0~49\) # (!\p0|clk|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(25),
	datad => VCC,
	cin => \p0|clk|Add0~49\,
	combout => \p0|clk|Add0~50_combout\,
	cout => \p0|clk|Add0~51\);

-- Location: LCCOMB_X11_Y15_N20
\p0|clk|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~52_combout\ = (\p0|clk|count\(26) & (\p0|clk|Add0~51\ $ (GND))) # (!\p0|clk|count\(26) & (!\p0|clk|Add0~51\ & VCC))
-- \p0|clk|Add0~53\ = CARRY((\p0|clk|count\(26) & !\p0|clk|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|count\(26),
	datad => VCC,
	cin => \p0|clk|Add0~51\,
	combout => \p0|clk|Add0~52_combout\,
	cout => \p0|clk|Add0~53\);

-- Location: LCCOMB_X11_Y15_N22
\p0|clk|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~54_combout\ = (\p0|clk|count\(27) & (!\p0|clk|Add0~53\)) # (!\p0|clk|count\(27) & ((\p0|clk|Add0~53\) # (GND)))
-- \p0|clk|Add0~55\ = CARRY((!\p0|clk|Add0~53\) # (!\p0|clk|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(27),
	datad => VCC,
	cin => \p0|clk|Add0~53\,
	combout => \p0|clk|Add0~54_combout\,
	cout => \p0|clk|Add0~55\);

-- Location: LCCOMB_X11_Y15_N24
\p0|clk|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~56_combout\ = (\p0|clk|count\(28) & (\p0|clk|Add0~55\ $ (GND))) # (!\p0|clk|count\(28) & (!\p0|clk|Add0~55\ & VCC))
-- \p0|clk|Add0~57\ = CARRY((\p0|clk|count\(28) & !\p0|clk|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|count\(28),
	datad => VCC,
	cin => \p0|clk|Add0~55\,
	combout => \p0|clk|Add0~56_combout\,
	cout => \p0|clk|Add0~57\);

-- Location: LCCOMB_X11_Y15_N26
\p0|clk|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~58_combout\ = (\p0|clk|count\(29) & (!\p0|clk|Add0~57\)) # (!\p0|clk|count\(29) & ((\p0|clk|Add0~57\) # (GND)))
-- \p0|clk|Add0~59\ = CARRY((!\p0|clk|Add0~57\) # (!\p0|clk|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(29),
	datad => VCC,
	cin => \p0|clk|Add0~57\,
	combout => \p0|clk|Add0~58_combout\,
	cout => \p0|clk|Add0~59\);

-- Location: LCCOMB_X11_Y15_N28
\p0|clk|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~60_combout\ = (\p0|clk|count\(30) & (\p0|clk|Add0~59\ $ (GND))) # (!\p0|clk|count\(30) & (!\p0|clk|Add0~59\ & VCC))
-- \p0|clk|Add0~61\ = CARRY((\p0|clk|count\(30) & !\p0|clk|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|count\(30),
	datad => VCC,
	cin => \p0|clk|Add0~59\,
	combout => \p0|clk|Add0~60_combout\,
	cout => \p0|clk|Add0~61\);

-- Location: LCCOMB_X11_Y15_N30
\p0|clk|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Add0~62_combout\ = \p0|clk|Add0~61\ $ (\p0|clk|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \p0|clk|count\(31),
	cin => \p0|clk|Add0~61\,
	combout => \p0|clk|Add0~62_combout\);

-- Location: LCCOMB_X29_Y5_N0
\p2|clk|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~0_combout\ = \p2|clk|count\(0) $ (VCC)
-- \p2|clk|Add0~1\ = CARRY(\p2|clk|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(0),
	datad => VCC,
	combout => \p2|clk|Add0~0_combout\,
	cout => \p2|clk|Add0~1\);

-- Location: LCCOMB_X29_Y5_N2
\p2|clk|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~2_combout\ = (\p2|clk|count\(1) & (!\p2|clk|Add0~1\)) # (!\p2|clk|count\(1) & ((\p2|clk|Add0~1\) # (GND)))
-- \p2|clk|Add0~3\ = CARRY((!\p2|clk|Add0~1\) # (!\p2|clk|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(1),
	datad => VCC,
	cin => \p2|clk|Add0~1\,
	combout => \p2|clk|Add0~2_combout\,
	cout => \p2|clk|Add0~3\);

-- Location: LCCOMB_X29_Y5_N4
\p2|clk|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~4_combout\ = (\p2|clk|count\(2) & (\p2|clk|Add0~3\ $ (GND))) # (!\p2|clk|count\(2) & (!\p2|clk|Add0~3\ & VCC))
-- \p2|clk|Add0~5\ = CARRY((\p2|clk|count\(2) & !\p2|clk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(2),
	datad => VCC,
	cin => \p2|clk|Add0~3\,
	combout => \p2|clk|Add0~4_combout\,
	cout => \p2|clk|Add0~5\);

-- Location: LCCOMB_X29_Y5_N6
\p2|clk|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~6_combout\ = (\p2|clk|count\(3) & (!\p2|clk|Add0~5\)) # (!\p2|clk|count\(3) & ((\p2|clk|Add0~5\) # (GND)))
-- \p2|clk|Add0~7\ = CARRY((!\p2|clk|Add0~5\) # (!\p2|clk|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|count\(3),
	datad => VCC,
	cin => \p2|clk|Add0~5\,
	combout => \p2|clk|Add0~6_combout\,
	cout => \p2|clk|Add0~7\);

-- Location: LCCOMB_X29_Y5_N8
\p2|clk|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~8_combout\ = (\p2|clk|count\(4) & (\p2|clk|Add0~7\ $ (GND))) # (!\p2|clk|count\(4) & (!\p2|clk|Add0~7\ & VCC))
-- \p2|clk|Add0~9\ = CARRY((\p2|clk|count\(4) & !\p2|clk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(4),
	datad => VCC,
	cin => \p2|clk|Add0~7\,
	combout => \p2|clk|Add0~8_combout\,
	cout => \p2|clk|Add0~9\);

-- Location: LCCOMB_X29_Y5_N10
\p2|clk|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~10_combout\ = (\p2|clk|count\(5) & (!\p2|clk|Add0~9\)) # (!\p2|clk|count\(5) & ((\p2|clk|Add0~9\) # (GND)))
-- \p2|clk|Add0~11\ = CARRY((!\p2|clk|Add0~9\) # (!\p2|clk|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|count\(5),
	datad => VCC,
	cin => \p2|clk|Add0~9\,
	combout => \p2|clk|Add0~10_combout\,
	cout => \p2|clk|Add0~11\);

-- Location: LCCOMB_X29_Y5_N12
\p2|clk|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~12_combout\ = (\p2|clk|count\(6) & (\p2|clk|Add0~11\ $ (GND))) # (!\p2|clk|count\(6) & (!\p2|clk|Add0~11\ & VCC))
-- \p2|clk|Add0~13\ = CARRY((\p2|clk|count\(6) & !\p2|clk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|count\(6),
	datad => VCC,
	cin => \p2|clk|Add0~11\,
	combout => \p2|clk|Add0~12_combout\,
	cout => \p2|clk|Add0~13\);

-- Location: LCCOMB_X29_Y5_N14
\p2|clk|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~14_combout\ = (\p2|clk|count\(7) & (!\p2|clk|Add0~13\)) # (!\p2|clk|count\(7) & ((\p2|clk|Add0~13\) # (GND)))
-- \p2|clk|Add0~15\ = CARRY((!\p2|clk|Add0~13\) # (!\p2|clk|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(7),
	datad => VCC,
	cin => \p2|clk|Add0~13\,
	combout => \p2|clk|Add0~14_combout\,
	cout => \p2|clk|Add0~15\);

-- Location: LCCOMB_X29_Y5_N16
\p2|clk|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~16_combout\ = (\p2|clk|count\(8) & (\p2|clk|Add0~15\ $ (GND))) # (!\p2|clk|count\(8) & (!\p2|clk|Add0~15\ & VCC))
-- \p2|clk|Add0~17\ = CARRY((\p2|clk|count\(8) & !\p2|clk|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|count\(8),
	datad => VCC,
	cin => \p2|clk|Add0~15\,
	combout => \p2|clk|Add0~16_combout\,
	cout => \p2|clk|Add0~17\);

-- Location: LCCOMB_X29_Y5_N18
\p2|clk|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~18_combout\ = (\p2|clk|count\(9) & (!\p2|clk|Add0~17\)) # (!\p2|clk|count\(9) & ((\p2|clk|Add0~17\) # (GND)))
-- \p2|clk|Add0~19\ = CARRY((!\p2|clk|Add0~17\) # (!\p2|clk|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(9),
	datad => VCC,
	cin => \p2|clk|Add0~17\,
	combout => \p2|clk|Add0~18_combout\,
	cout => \p2|clk|Add0~19\);

-- Location: LCCOMB_X29_Y5_N20
\p2|clk|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~20_combout\ = (\p2|clk|count\(10) & (\p2|clk|Add0~19\ $ (GND))) # (!\p2|clk|count\(10) & (!\p2|clk|Add0~19\ & VCC))
-- \p2|clk|Add0~21\ = CARRY((\p2|clk|count\(10) & !\p2|clk|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|count\(10),
	datad => VCC,
	cin => \p2|clk|Add0~19\,
	combout => \p2|clk|Add0~20_combout\,
	cout => \p2|clk|Add0~21\);

-- Location: LCCOMB_X29_Y5_N22
\p2|clk|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~22_combout\ = (\p2|clk|count\(11) & (!\p2|clk|Add0~21\)) # (!\p2|clk|count\(11) & ((\p2|clk|Add0~21\) # (GND)))
-- \p2|clk|Add0~23\ = CARRY((!\p2|clk|Add0~21\) # (!\p2|clk|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(11),
	datad => VCC,
	cin => \p2|clk|Add0~21\,
	combout => \p2|clk|Add0~22_combout\,
	cout => \p2|clk|Add0~23\);

-- Location: LCCOMB_X29_Y5_N24
\p2|clk|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~24_combout\ = (\p2|clk|count\(12) & (\p2|clk|Add0~23\ $ (GND))) # (!\p2|clk|count\(12) & (!\p2|clk|Add0~23\ & VCC))
-- \p2|clk|Add0~25\ = CARRY((\p2|clk|count\(12) & !\p2|clk|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|count\(12),
	datad => VCC,
	cin => \p2|clk|Add0~23\,
	combout => \p2|clk|Add0~24_combout\,
	cout => \p2|clk|Add0~25\);

-- Location: LCCOMB_X29_Y5_N26
\p2|clk|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~26_combout\ = (\p2|clk|count\(13) & (!\p2|clk|Add0~25\)) # (!\p2|clk|count\(13) & ((\p2|clk|Add0~25\) # (GND)))
-- \p2|clk|Add0~27\ = CARRY((!\p2|clk|Add0~25\) # (!\p2|clk|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(13),
	datad => VCC,
	cin => \p2|clk|Add0~25\,
	combout => \p2|clk|Add0~26_combout\,
	cout => \p2|clk|Add0~27\);

-- Location: LCCOMB_X29_Y5_N28
\p2|clk|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~28_combout\ = (\p2|clk|count\(14) & (\p2|clk|Add0~27\ $ (GND))) # (!\p2|clk|count\(14) & (!\p2|clk|Add0~27\ & VCC))
-- \p2|clk|Add0~29\ = CARRY((\p2|clk|count\(14) & !\p2|clk|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(14),
	datad => VCC,
	cin => \p2|clk|Add0~27\,
	combout => \p2|clk|Add0~28_combout\,
	cout => \p2|clk|Add0~29\);

-- Location: LCCOMB_X29_Y5_N30
\p2|clk|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~30_combout\ = (\p2|clk|count\(15) & (!\p2|clk|Add0~29\)) # (!\p2|clk|count\(15) & ((\p2|clk|Add0~29\) # (GND)))
-- \p2|clk|Add0~31\ = CARRY((!\p2|clk|Add0~29\) # (!\p2|clk|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(15),
	datad => VCC,
	cin => \p2|clk|Add0~29\,
	combout => \p2|clk|Add0~30_combout\,
	cout => \p2|clk|Add0~31\);

-- Location: LCCOMB_X29_Y4_N0
\p2|clk|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~32_combout\ = (\p2|clk|count\(16) & (\p2|clk|Add0~31\ $ (GND))) # (!\p2|clk|count\(16) & (!\p2|clk|Add0~31\ & VCC))
-- \p2|clk|Add0~33\ = CARRY((\p2|clk|count\(16) & !\p2|clk|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(16),
	datad => VCC,
	cin => \p2|clk|Add0~31\,
	combout => \p2|clk|Add0~32_combout\,
	cout => \p2|clk|Add0~33\);

-- Location: LCCOMB_X29_Y4_N2
\p2|clk|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~34_combout\ = (\p2|clk|count\(17) & (!\p2|clk|Add0~33\)) # (!\p2|clk|count\(17) & ((\p2|clk|Add0~33\) # (GND)))
-- \p2|clk|Add0~35\ = CARRY((!\p2|clk|Add0~33\) # (!\p2|clk|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(17),
	datad => VCC,
	cin => \p2|clk|Add0~33\,
	combout => \p2|clk|Add0~34_combout\,
	cout => \p2|clk|Add0~35\);

-- Location: LCCOMB_X29_Y4_N4
\p2|clk|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~36_combout\ = (\p2|clk|count\(18) & (\p2|clk|Add0~35\ $ (GND))) # (!\p2|clk|count\(18) & (!\p2|clk|Add0~35\ & VCC))
-- \p2|clk|Add0~37\ = CARRY((\p2|clk|count\(18) & !\p2|clk|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(18),
	datad => VCC,
	cin => \p2|clk|Add0~35\,
	combout => \p2|clk|Add0~36_combout\,
	cout => \p2|clk|Add0~37\);

-- Location: LCCOMB_X29_Y4_N6
\p2|clk|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~38_combout\ = (\p2|clk|count\(19) & (!\p2|clk|Add0~37\)) # (!\p2|clk|count\(19) & ((\p2|clk|Add0~37\) # (GND)))
-- \p2|clk|Add0~39\ = CARRY((!\p2|clk|Add0~37\) # (!\p2|clk|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|count\(19),
	datad => VCC,
	cin => \p2|clk|Add0~37\,
	combout => \p2|clk|Add0~38_combout\,
	cout => \p2|clk|Add0~39\);

-- Location: LCCOMB_X29_Y4_N8
\p2|clk|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~40_combout\ = (\p2|clk|count\(20) & (\p2|clk|Add0~39\ $ (GND))) # (!\p2|clk|count\(20) & (!\p2|clk|Add0~39\ & VCC))
-- \p2|clk|Add0~41\ = CARRY((\p2|clk|count\(20) & !\p2|clk|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(20),
	datad => VCC,
	cin => \p2|clk|Add0~39\,
	combout => \p2|clk|Add0~40_combout\,
	cout => \p2|clk|Add0~41\);

-- Location: LCCOMB_X29_Y4_N10
\p2|clk|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~42_combout\ = (\p2|clk|count\(21) & (!\p2|clk|Add0~41\)) # (!\p2|clk|count\(21) & ((\p2|clk|Add0~41\) # (GND)))
-- \p2|clk|Add0~43\ = CARRY((!\p2|clk|Add0~41\) # (!\p2|clk|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|count\(21),
	datad => VCC,
	cin => \p2|clk|Add0~41\,
	combout => \p2|clk|Add0~42_combout\,
	cout => \p2|clk|Add0~43\);

-- Location: LCCOMB_X29_Y4_N12
\p2|clk|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~44_combout\ = (\p2|clk|count\(22) & (\p2|clk|Add0~43\ $ (GND))) # (!\p2|clk|count\(22) & (!\p2|clk|Add0~43\ & VCC))
-- \p2|clk|Add0~45\ = CARRY((\p2|clk|count\(22) & !\p2|clk|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|count\(22),
	datad => VCC,
	cin => \p2|clk|Add0~43\,
	combout => \p2|clk|Add0~44_combout\,
	cout => \p2|clk|Add0~45\);

-- Location: LCCOMB_X29_Y4_N14
\p2|clk|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~46_combout\ = (\p2|clk|count\(23) & (!\p2|clk|Add0~45\)) # (!\p2|clk|count\(23) & ((\p2|clk|Add0~45\) # (GND)))
-- \p2|clk|Add0~47\ = CARRY((!\p2|clk|Add0~45\) # (!\p2|clk|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(23),
	datad => VCC,
	cin => \p2|clk|Add0~45\,
	combout => \p2|clk|Add0~46_combout\,
	cout => \p2|clk|Add0~47\);

-- Location: LCCOMB_X29_Y4_N16
\p2|clk|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~48_combout\ = (\p2|clk|count\(24) & (\p2|clk|Add0~47\ $ (GND))) # (!\p2|clk|count\(24) & (!\p2|clk|Add0~47\ & VCC))
-- \p2|clk|Add0~49\ = CARRY((\p2|clk|count\(24) & !\p2|clk|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|count\(24),
	datad => VCC,
	cin => \p2|clk|Add0~47\,
	combout => \p2|clk|Add0~48_combout\,
	cout => \p2|clk|Add0~49\);

-- Location: LCCOMB_X29_Y4_N18
\p2|clk|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~50_combout\ = (\p2|clk|count\(25) & (!\p2|clk|Add0~49\)) # (!\p2|clk|count\(25) & ((\p2|clk|Add0~49\) # (GND)))
-- \p2|clk|Add0~51\ = CARRY((!\p2|clk|Add0~49\) # (!\p2|clk|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(25),
	datad => VCC,
	cin => \p2|clk|Add0~49\,
	combout => \p2|clk|Add0~50_combout\,
	cout => \p2|clk|Add0~51\);

-- Location: LCCOMB_X29_Y4_N20
\p2|clk|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~52_combout\ = (\p2|clk|count\(26) & (\p2|clk|Add0~51\ $ (GND))) # (!\p2|clk|count\(26) & (!\p2|clk|Add0~51\ & VCC))
-- \p2|clk|Add0~53\ = CARRY((\p2|clk|count\(26) & !\p2|clk|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|count\(26),
	datad => VCC,
	cin => \p2|clk|Add0~51\,
	combout => \p2|clk|Add0~52_combout\,
	cout => \p2|clk|Add0~53\);

-- Location: LCCOMB_X29_Y4_N22
\p2|clk|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~54_combout\ = (\p2|clk|count\(27) & (!\p2|clk|Add0~53\)) # (!\p2|clk|count\(27) & ((\p2|clk|Add0~53\) # (GND)))
-- \p2|clk|Add0~55\ = CARRY((!\p2|clk|Add0~53\) # (!\p2|clk|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(27),
	datad => VCC,
	cin => \p2|clk|Add0~53\,
	combout => \p2|clk|Add0~54_combout\,
	cout => \p2|clk|Add0~55\);

-- Location: LCCOMB_X29_Y4_N24
\p2|clk|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~56_combout\ = (\p2|clk|count\(28) & (\p2|clk|Add0~55\ $ (GND))) # (!\p2|clk|count\(28) & (!\p2|clk|Add0~55\ & VCC))
-- \p2|clk|Add0~57\ = CARRY((\p2|clk|count\(28) & !\p2|clk|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|count\(28),
	datad => VCC,
	cin => \p2|clk|Add0~55\,
	combout => \p2|clk|Add0~56_combout\,
	cout => \p2|clk|Add0~57\);

-- Location: LCCOMB_X29_Y4_N26
\p2|clk|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~58_combout\ = (\p2|clk|count\(29) & (!\p2|clk|Add0~57\)) # (!\p2|clk|count\(29) & ((\p2|clk|Add0~57\) # (GND)))
-- \p2|clk|Add0~59\ = CARRY((!\p2|clk|Add0~57\) # (!\p2|clk|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(29),
	datad => VCC,
	cin => \p2|clk|Add0~57\,
	combout => \p2|clk|Add0~58_combout\,
	cout => \p2|clk|Add0~59\);

-- Location: LCCOMB_X29_Y4_N28
\p2|clk|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~60_combout\ = (\p2|clk|count\(30) & (\p2|clk|Add0~59\ $ (GND))) # (!\p2|clk|count\(30) & (!\p2|clk|Add0~59\ & VCC))
-- \p2|clk|Add0~61\ = CARRY((\p2|clk|count\(30) & !\p2|clk|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|count\(30),
	datad => VCC,
	cin => \p2|clk|Add0~59\,
	combout => \p2|clk|Add0~60_combout\,
	cout => \p2|clk|Add0~61\);

-- Location: LCCOMB_X29_Y4_N30
\p2|clk|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Add0~62_combout\ = \p2|clk|Add0~61\ $ (\p2|clk|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \p2|clk|count\(31),
	cin => \p2|clk|Add0~61\,
	combout => \p2|clk|Add0~62_combout\);

-- Location: LCFF_X10_Y13_N21
\controler|state[0]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|clk|out~regout\,
	datain => \controler|state[0]~3_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|state[0]~_emulated_regout\);

-- Location: LCFF_X10_Y17_N7
\p1|clk|out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|out~1_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|out~regout\);

-- Location: LCFF_X13_Y14_N29
\p3|clk|out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|out~1_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|out~regout\);

-- Location: LCFF_X10_Y15_N31
\p0|clk|out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|out~1_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|out~regout\);

-- Location: LCFF_X30_Y5_N17
\p2|clk|out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|out~regout\);

-- Location: LCFF_X30_Y6_N17
\controler|clk|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~48_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(24));

-- Location: LCFF_X30_Y6_N13
\controler|clk|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~44_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(22));

-- Location: LCFF_X30_Y6_N11
\controler|clk|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~42_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(21));

-- Location: LCFF_X30_Y6_N7
\controler|clk|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~38_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(19));

-- Location: LCFF_X30_Y7_N25
\controler|clk|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~24_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(12));

-- Location: LCFF_X30_Y7_N21
\controler|clk|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~20_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(10));

-- Location: LCFF_X30_Y7_N17
\controler|clk|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~16_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(8));

-- Location: LCFF_X30_Y7_N13
\controler|clk|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~12_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(6));

-- Location: LCFF_X30_Y7_N11
\controler|clk|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~10_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(5));

-- Location: LCFF_X30_Y7_N7
\controler|clk|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~6_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(3));

-- Location: LCFF_X30_Y6_N21
\controler|clk|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~52_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(26));

-- Location: LCFF_X30_Y6_N25
\controler|clk|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~56_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(28));

-- Location: LCCOMB_X29_Y7_N24
\controler|clk|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Equal0~3_combout\ = (!\controler|clk|Add0~14_combout\ & (!\controler|clk|Add0~10_combout\ & (!\controler|clk|Add0~8_combout\ & !\controler|clk|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|Add0~14_combout\,
	datab => \controler|clk|Add0~10_combout\,
	datac => \controler|clk|Add0~8_combout\,
	datad => \controler|clk|Add0~12_combout\,
	combout => \controler|clk|Equal0~3_combout\);

-- Location: LCFF_X9_Y16_N17
\p1|clk|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~48_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(24));

-- Location: LCFF_X9_Y16_N15
\p1|clk|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~46_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(23));

-- Location: LCFF_X9_Y16_N13
\p1|clk|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~44_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(22));

-- Location: LCFF_X9_Y16_N11
\p1|clk|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~42_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(21));

-- Location: LCFF_X9_Y16_N9
\p1|clk|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~40_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(20));

-- Location: LCFF_X9_Y16_N7
\p1|clk|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~38_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(19));

-- Location: LCFF_X9_Y16_N5
\p1|clk|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~36_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(18));

-- Location: LCFF_X9_Y16_N3
\p1|clk|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~34_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(17));

-- Location: LCFF_X9_Y16_N1
\p1|clk|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~32_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(16));

-- Location: LCFF_X9_Y17_N31
\p1|clk|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~30_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(15));

-- Location: LCFF_X9_Y17_N29
\p1|clk|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~28_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(14));

-- Location: LCFF_X9_Y17_N27
\p1|clk|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~26_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(13));

-- Location: LCFF_X9_Y17_N25
\p1|clk|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~24_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(12));

-- Location: LCFF_X9_Y17_N23
\p1|clk|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~22_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(11));

-- Location: LCFF_X9_Y17_N21
\p1|clk|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~20_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(10));

-- Location: LCFF_X9_Y17_N19
\p1|clk|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~18_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(9));

-- Location: LCFF_X9_Y17_N17
\p1|clk|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~16_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(8));

-- Location: LCFF_X9_Y17_N15
\p1|clk|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~14_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(7));

-- Location: LCFF_X9_Y17_N13
\p1|clk|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~12_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(6));

-- Location: LCFF_X9_Y17_N11
\p1|clk|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~10_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(5));

-- Location: LCFF_X9_Y17_N9
\p1|clk|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~8_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(4));

-- Location: LCFF_X9_Y17_N7
\p1|clk|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~6_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(3));

-- Location: LCFF_X9_Y17_N5
\p1|clk|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~4_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(2));

-- Location: LCFF_X9_Y17_N3
\p1|clk|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~2_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(1));

-- Location: LCFF_X10_Y17_N15
\p1|clk|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|count~0_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(0));

-- Location: LCFF_X9_Y16_N19
\p1|clk|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~50_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(25));

-- Location: LCFF_X9_Y16_N21
\p1|clk|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~52_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(26));

-- Location: LCFF_X9_Y16_N23
\p1|clk|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~54_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(27));

-- Location: LCCOMB_X10_Y16_N0
\p1|clk|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Equal0~0_combout\ = (!\p1|clk|Add0~52_combout\ & (!\p1|clk|Add0~50_combout\ & (!\p1|clk|Add0~54_combout\ & !\p1|clk|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|Add0~52_combout\,
	datab => \p1|clk|Add0~50_combout\,
	datac => \p1|clk|Add0~54_combout\,
	datad => \p1|clk|Add0~48_combout\,
	combout => \p1|clk|Equal0~0_combout\);

-- Location: LCFF_X9_Y16_N25
\p1|clk|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~56_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(28));

-- Location: LCFF_X9_Y16_N27
\p1|clk|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~58_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(29));

-- Location: LCFF_X9_Y16_N29
\p1|clk|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~60_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(30));

-- Location: LCFF_X9_Y16_N31
\p1|clk|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|comb~clkctrl_outclk\,
	datain => \p1|clk|Add0~62_combout\,
	aclr => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|clk|count\(31));

-- Location: LCCOMB_X10_Y17_N18
\p1|clk|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Equal0~1_combout\ = (!\p1|clk|Add0~56_combout\ & (!\p1|clk|Add0~60_combout\ & (!\p1|clk|Add0~58_combout\ & !\p1|clk|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|Add0~56_combout\,
	datab => \p1|clk|Add0~60_combout\,
	datac => \p1|clk|Add0~58_combout\,
	datad => \p1|clk|Add0~62_combout\,
	combout => \p1|clk|Equal0~1_combout\);

-- Location: LCCOMB_X10_Y17_N24
\p1|clk|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Equal0~2_combout\ = (\p1|clk|Add0~0_combout\ & (!\p1|clk|Add0~4_combout\ & (!\p1|clk|Add0~6_combout\ & !\p1|clk|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|Add0~0_combout\,
	datab => \p1|clk|Add0~4_combout\,
	datac => \p1|clk|Add0~6_combout\,
	datad => \p1|clk|Add0~2_combout\,
	combout => \p1|clk|Equal0~2_combout\);

-- Location: LCCOMB_X10_Y17_N16
\p1|clk|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Equal0~3_combout\ = (!\p1|clk|Add0~12_combout\ & (!\p1|clk|Add0~14_combout\ & (!\p1|clk|Add0~10_combout\ & !\p1|clk|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|Add0~12_combout\,
	datab => \p1|clk|Add0~14_combout\,
	datac => \p1|clk|Add0~10_combout\,
	datad => \p1|clk|Add0~8_combout\,
	combout => \p1|clk|Equal0~3_combout\);

-- Location: LCCOMB_X10_Y17_N22
\p1|clk|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Equal0~4_combout\ = (!\p1|clk|Add0~20_combout\ & (!\p1|clk|Add0~16_combout\ & (!\p1|clk|Add0~18_combout\ & !\p1|clk|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|Add0~20_combout\,
	datab => \p1|clk|Add0~16_combout\,
	datac => \p1|clk|Add0~18_combout\,
	datad => \p1|clk|Add0~22_combout\,
	combout => \p1|clk|Equal0~4_combout\);

-- Location: LCCOMB_X10_Y17_N26
\p1|clk|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Equal0~5_combout\ = (!\p1|clk|Add0~30_combout\ & (!\p1|clk|Add0~24_combout\ & (!\p1|clk|Add0~26_combout\ & !\p1|clk|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|Add0~30_combout\,
	datab => \p1|clk|Add0~24_combout\,
	datac => \p1|clk|Add0~26_combout\,
	datad => \p1|clk|Add0~28_combout\,
	combout => \p1|clk|Equal0~5_combout\);

-- Location: LCCOMB_X10_Y17_N28
\p1|clk|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Equal0~6_combout\ = (\p1|clk|Equal0~2_combout\ & (\p1|clk|Equal0~4_combout\ & (\p1|clk|Equal0~3_combout\ & \p1|clk|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|Equal0~2_combout\,
	datab => \p1|clk|Equal0~4_combout\,
	datac => \p1|clk|Equal0~3_combout\,
	datad => \p1|clk|Equal0~5_combout\,
	combout => \p1|clk|Equal0~6_combout\);

-- Location: LCCOMB_X10_Y16_N22
\p1|clk|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Equal0~7_combout\ = (!\p1|clk|Add0~32_combout\ & (!\p1|clk|Add0~36_combout\ & (!\p1|clk|Add0~38_combout\ & !\p1|clk|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|Add0~32_combout\,
	datab => \p1|clk|Add0~36_combout\,
	datac => \p1|clk|Add0~38_combout\,
	datad => \p1|clk|Add0~34_combout\,
	combout => \p1|clk|Equal0~7_combout\);

-- Location: LCCOMB_X10_Y17_N30
\p1|clk|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|Equal0~8_combout\ = (!\p1|clk|Add0~42_combout\ & (!\p1|clk|Add0~40_combout\ & (!\p1|clk|Add0~44_combout\ & !\p1|clk|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|Add0~42_combout\,
	datab => \p1|clk|Add0~40_combout\,
	datac => \p1|clk|Add0~44_combout\,
	datad => \p1|clk|Add0~46_combout\,
	combout => \p1|clk|Equal0~8_combout\);

-- Location: LCCOMB_X10_Y17_N20
\p1|clk|out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|out~0_combout\ = ((!\p1|clk|Equal0~8_combout\) # (!\p1|clk|Equal0~7_combout\)) # (!\p1|clk|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p1|clk|Equal0~6_combout\,
	datac => \p1|clk|Equal0~7_combout\,
	datad => \p1|clk|Equal0~8_combout\,
	combout => \p1|clk|out~0_combout\);

-- Location: LCCOMB_X10_Y17_N6
\p1|clk|out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|out~1_combout\ = \p1|clk|out~regout\ $ (((!\p1|clk|out~0_combout\ & (\p1|clk|Equal0~0_combout\ & \p1|clk|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|out~0_combout\,
	datab => \p1|clk|Equal0~0_combout\,
	datac => \p1|clk|out~regout\,
	datad => \p1|clk|Equal0~1_combout\,
	combout => \p1|clk|out~1_combout\);

-- Location: LCFF_X12_Y13_N17
\p3|clk|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~48_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(24));

-- Location: LCFF_X12_Y13_N15
\p3|clk|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~46_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(23));

-- Location: LCFF_X12_Y13_N13
\p3|clk|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~44_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(22));

-- Location: LCFF_X12_Y13_N11
\p3|clk|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~42_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(21));

-- Location: LCFF_X12_Y13_N9
\p3|clk|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~40_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(20));

-- Location: LCFF_X12_Y13_N7
\p3|clk|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~38_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(19));

-- Location: LCFF_X12_Y13_N5
\p3|clk|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~36_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(18));

-- Location: LCFF_X12_Y13_N3
\p3|clk|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~34_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(17));

-- Location: LCFF_X12_Y13_N1
\p3|clk|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~32_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(16));

-- Location: LCFF_X12_Y14_N31
\p3|clk|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~30_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(15));

-- Location: LCFF_X12_Y14_N29
\p3|clk|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~28_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(14));

-- Location: LCFF_X12_Y14_N27
\p3|clk|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~26_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(13));

-- Location: LCFF_X12_Y14_N25
\p3|clk|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~24_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(12));

-- Location: LCFF_X12_Y14_N23
\p3|clk|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~22_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(11));

-- Location: LCFF_X12_Y14_N21
\p3|clk|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~20_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(10));

-- Location: LCFF_X12_Y14_N19
\p3|clk|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~18_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(9));

-- Location: LCFF_X12_Y14_N17
\p3|clk|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~16_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(8));

-- Location: LCFF_X12_Y14_N15
\p3|clk|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~14_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(7));

-- Location: LCFF_X12_Y14_N13
\p3|clk|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~12_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(6));

-- Location: LCFF_X12_Y14_N11
\p3|clk|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~10_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(5));

-- Location: LCFF_X12_Y14_N9
\p3|clk|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~8_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(4));

-- Location: LCFF_X12_Y14_N7
\p3|clk|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~6_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(3));

-- Location: LCFF_X12_Y14_N5
\p3|clk|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~4_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(2));

-- Location: LCFF_X12_Y14_N3
\p3|clk|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~2_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(1));

-- Location: LCFF_X13_Y14_N15
\p3|clk|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|count~0_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(0));

-- Location: LCFF_X12_Y13_N19
\p3|clk|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~50_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(25));

-- Location: LCFF_X12_Y13_N21
\p3|clk|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~52_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(26));

-- Location: LCFF_X12_Y13_N23
\p3|clk|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~54_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(27));

-- Location: LCCOMB_X13_Y13_N12
\p3|clk|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Equal0~0_combout\ = (!\p3|clk|Add0~48_combout\ & (!\p3|clk|Add0~50_combout\ & (!\p3|clk|Add0~52_combout\ & !\p3|clk|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|Add0~48_combout\,
	datab => \p3|clk|Add0~50_combout\,
	datac => \p3|clk|Add0~52_combout\,
	datad => \p3|clk|Add0~54_combout\,
	combout => \p3|clk|Equal0~0_combout\);

-- Location: LCFF_X12_Y13_N25
\p3|clk|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~56_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(28));

-- Location: LCFF_X12_Y13_N27
\p3|clk|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~58_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(29));

-- Location: LCFF_X12_Y13_N29
\p3|clk|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~60_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(30));

-- Location: LCFF_X12_Y13_N31
\p3|clk|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|comb~clkctrl_outclk\,
	datain => \p3|clk|Add0~62_combout\,
	aclr => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|clk|count\(31));

-- Location: LCCOMB_X13_Y14_N30
\p3|clk|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Equal0~1_combout\ = (!\p3|clk|Add0~58_combout\ & (!\p3|clk|Add0~56_combout\ & (!\p3|clk|Add0~60_combout\ & !\p3|clk|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|Add0~58_combout\,
	datab => \p3|clk|Add0~56_combout\,
	datac => \p3|clk|Add0~60_combout\,
	datad => \p3|clk|Add0~62_combout\,
	combout => \p3|clk|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y14_N24
\p3|clk|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Equal0~2_combout\ = (\p3|clk|Add0~0_combout\ & (!\p3|clk|Add0~6_combout\ & (!\p3|clk|Add0~4_combout\ & !\p3|clk|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|Add0~0_combout\,
	datab => \p3|clk|Add0~6_combout\,
	datac => \p3|clk|Add0~4_combout\,
	datad => \p3|clk|Add0~2_combout\,
	combout => \p3|clk|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y14_N22
\p3|clk|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Equal0~3_combout\ = (!\p3|clk|Add0~14_combout\ & (!\p3|clk|Add0~8_combout\ & (!\p3|clk|Add0~10_combout\ & !\p3|clk|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|Add0~14_combout\,
	datab => \p3|clk|Add0~8_combout\,
	datac => \p3|clk|Add0~10_combout\,
	datad => \p3|clk|Add0~12_combout\,
	combout => \p3|clk|Equal0~3_combout\);

-- Location: LCCOMB_X13_Y14_N12
\p3|clk|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Equal0~4_combout\ = (!\p3|clk|Add0~16_combout\ & (!\p3|clk|Add0~18_combout\ & (!\p3|clk|Add0~20_combout\ & !\p3|clk|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|Add0~16_combout\,
	datab => \p3|clk|Add0~18_combout\,
	datac => \p3|clk|Add0~20_combout\,
	datad => \p3|clk|Add0~22_combout\,
	combout => \p3|clk|Equal0~4_combout\);

-- Location: LCCOMB_X13_Y14_N26
\p3|clk|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Equal0~5_combout\ = (!\p3|clk|Add0~30_combout\ & (!\p3|clk|Add0~24_combout\ & (!\p3|clk|Add0~28_combout\ & !\p3|clk|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|Add0~30_combout\,
	datab => \p3|clk|Add0~24_combout\,
	datac => \p3|clk|Add0~28_combout\,
	datad => \p3|clk|Add0~26_combout\,
	combout => \p3|clk|Equal0~5_combout\);

-- Location: LCCOMB_X13_Y14_N18
\p3|clk|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Equal0~6_combout\ = (\p3|clk|Equal0~4_combout\ & (\p3|clk|Equal0~3_combout\ & (\p3|clk|Equal0~2_combout\ & \p3|clk|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|Equal0~4_combout\,
	datab => \p3|clk|Equal0~3_combout\,
	datac => \p3|clk|Equal0~2_combout\,
	datad => \p3|clk|Equal0~5_combout\,
	combout => \p3|clk|Equal0~6_combout\);

-- Location: LCCOMB_X13_Y13_N30
\p3|clk|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Equal0~7_combout\ = (!\p3|clk|Add0~32_combout\ & (!\p3|clk|Add0~36_combout\ & (!\p3|clk|Add0~38_combout\ & !\p3|clk|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|Add0~32_combout\,
	datab => \p3|clk|Add0~36_combout\,
	datac => \p3|clk|Add0~38_combout\,
	datad => \p3|clk|Add0~34_combout\,
	combout => \p3|clk|Equal0~7_combout\);

-- Location: LCCOMB_X13_Y14_N16
\p3|clk|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|Equal0~8_combout\ = (!\p3|clk|Add0~42_combout\ & (!\p3|clk|Add0~44_combout\ & (!\p3|clk|Add0~40_combout\ & !\p3|clk|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|Add0~42_combout\,
	datab => \p3|clk|Add0~44_combout\,
	datac => \p3|clk|Add0~40_combout\,
	datad => \p3|clk|Add0~46_combout\,
	combout => \p3|clk|Equal0~8_combout\);

-- Location: LCCOMB_X13_Y14_N10
\p3|clk|out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|out~0_combout\ = ((!\p3|clk|Equal0~7_combout\) # (!\p3|clk|Equal0~8_combout\)) # (!\p3|clk|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p3|clk|Equal0~6_combout\,
	datac => \p3|clk|Equal0~8_combout\,
	datad => \p3|clk|Equal0~7_combout\,
	combout => \p3|clk|out~0_combout\);

-- Location: LCCOMB_X13_Y14_N28
\p3|clk|out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|out~1_combout\ = \p3|clk|out~regout\ $ (((!\p3|clk|out~0_combout\ & (\p3|clk|Equal0~0_combout\ & \p3|clk|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|out~0_combout\,
	datab => \p3|clk|Equal0~0_combout\,
	datac => \p3|clk|out~regout\,
	datad => \p3|clk|Equal0~1_combout\,
	combout => \p3|clk|out~1_combout\);

-- Location: LCFF_X11_Y15_N17
\p0|clk|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~48_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(24));

-- Location: LCFF_X11_Y15_N15
\p0|clk|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~46_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(23));

-- Location: LCFF_X11_Y15_N13
\p0|clk|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~44_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(22));

-- Location: LCFF_X11_Y15_N11
\p0|clk|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~42_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(21));

-- Location: LCFF_X11_Y15_N9
\p0|clk|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~40_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(20));

-- Location: LCFF_X11_Y15_N7
\p0|clk|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~38_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(19));

-- Location: LCFF_X11_Y15_N5
\p0|clk|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~36_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(18));

-- Location: LCFF_X11_Y15_N3
\p0|clk|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~34_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(17));

-- Location: LCFF_X11_Y15_N1
\p0|clk|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~32_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(16));

-- Location: LCFF_X11_Y16_N31
\p0|clk|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~30_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(15));

-- Location: LCFF_X11_Y16_N29
\p0|clk|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~28_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(14));

-- Location: LCFF_X11_Y16_N27
\p0|clk|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~26_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(13));

-- Location: LCFF_X11_Y16_N25
\p0|clk|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~24_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(12));

-- Location: LCFF_X11_Y16_N23
\p0|clk|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~22_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(11));

-- Location: LCFF_X11_Y16_N21
\p0|clk|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~20_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(10));

-- Location: LCFF_X11_Y16_N19
\p0|clk|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~18_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(9));

-- Location: LCFF_X11_Y16_N17
\p0|clk|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~16_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(8));

-- Location: LCFF_X11_Y16_N15
\p0|clk|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~14_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(7));

-- Location: LCFF_X11_Y16_N13
\p0|clk|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~12_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(6));

-- Location: LCFF_X11_Y16_N11
\p0|clk|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~10_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(5));

-- Location: LCFF_X11_Y16_N9
\p0|clk|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~8_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(4));

-- Location: LCFF_X11_Y16_N7
\p0|clk|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~6_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(3));

-- Location: LCFF_X11_Y16_N5
\p0|clk|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~4_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(2));

-- Location: LCFF_X11_Y16_N3
\p0|clk|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~2_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(1));

-- Location: LCFF_X10_Y15_N1
\p0|clk|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|count~0_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(0));

-- Location: LCFF_X11_Y15_N19
\p0|clk|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~50_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(25));

-- Location: LCFF_X11_Y15_N21
\p0|clk|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~52_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(26));

-- Location: LCFF_X11_Y15_N23
\p0|clk|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~54_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(27));

-- Location: LCCOMB_X10_Y15_N16
\p0|clk|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Equal0~0_combout\ = (!\p0|clk|Add0~48_combout\ & (!\p0|clk|Add0~50_combout\ & (!\p0|clk|Add0~52_combout\ & !\p0|clk|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|Add0~48_combout\,
	datab => \p0|clk|Add0~50_combout\,
	datac => \p0|clk|Add0~52_combout\,
	datad => \p0|clk|Add0~54_combout\,
	combout => \p0|clk|Equal0~0_combout\);

-- Location: LCFF_X11_Y15_N25
\p0|clk|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~56_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(28));

-- Location: LCFF_X11_Y15_N27
\p0|clk|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~58_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(29));

-- Location: LCFF_X11_Y15_N29
\p0|clk|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~60_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(30));

-- Location: LCFF_X11_Y15_N31
\p0|clk|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|comb~clkctrl_outclk\,
	datain => \p0|clk|Add0~62_combout\,
	aclr => \p0|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|clk|count\(31));

-- Location: LCCOMB_X10_Y15_N14
\p0|clk|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Equal0~1_combout\ = (!\p0|clk|Add0~58_combout\ & (!\p0|clk|Add0~56_combout\ & (!\p0|clk|Add0~60_combout\ & !\p0|clk|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|Add0~58_combout\,
	datab => \p0|clk|Add0~56_combout\,
	datac => \p0|clk|Add0~60_combout\,
	datad => \p0|clk|Add0~62_combout\,
	combout => \p0|clk|Equal0~1_combout\);

-- Location: LCCOMB_X10_Y16_N8
\p0|clk|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Equal0~2_combout\ = (!\p0|clk|Add0~2_combout\ & (\p0|clk|Add0~0_combout\ & (!\p0|clk|Add0~6_combout\ & !\p0|clk|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|Add0~2_combout\,
	datab => \p0|clk|Add0~0_combout\,
	datac => \p0|clk|Add0~6_combout\,
	datad => \p0|clk|Add0~4_combout\,
	combout => \p0|clk|Equal0~2_combout\);

-- Location: LCCOMB_X10_Y16_N18
\p0|clk|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Equal0~3_combout\ = (!\p0|clk|Add0~8_combout\ & (!\p0|clk|Add0~14_combout\ & (!\p0|clk|Add0~12_combout\ & !\p0|clk|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|Add0~8_combout\,
	datab => \p0|clk|Add0~14_combout\,
	datac => \p0|clk|Add0~12_combout\,
	datad => \p0|clk|Add0~10_combout\,
	combout => \p0|clk|Equal0~3_combout\);

-- Location: LCCOMB_X10_Y16_N16
\p0|clk|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Equal0~4_combout\ = (!\p0|clk|Add0~16_combout\ & (!\p0|clk|Add0~18_combout\ & (!\p0|clk|Add0~20_combout\ & !\p0|clk|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|Add0~16_combout\,
	datab => \p0|clk|Add0~18_combout\,
	datac => \p0|clk|Add0~20_combout\,
	datad => \p0|clk|Add0~22_combout\,
	combout => \p0|clk|Equal0~4_combout\);

-- Location: LCCOMB_X10_Y15_N28
\p0|clk|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Equal0~5_combout\ = (!\p0|clk|Add0~28_combout\ & (!\p0|clk|Add0~24_combout\ & (!\p0|clk|Add0~26_combout\ & !\p0|clk|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|Add0~28_combout\,
	datab => \p0|clk|Add0~24_combout\,
	datac => \p0|clk|Add0~26_combout\,
	datad => \p0|clk|Add0~30_combout\,
	combout => \p0|clk|Equal0~5_combout\);

-- Location: LCCOMB_X10_Y15_N6
\p0|clk|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Equal0~6_combout\ = (\p0|clk|Equal0~4_combout\ & (\p0|clk|Equal0~2_combout\ & (\p0|clk|Equal0~3_combout\ & \p0|clk|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|Equal0~4_combout\,
	datab => \p0|clk|Equal0~2_combout\,
	datac => \p0|clk|Equal0~3_combout\,
	datad => \p0|clk|Equal0~5_combout\,
	combout => \p0|clk|Equal0~6_combout\);

-- Location: LCCOMB_X10_Y15_N22
\p0|clk|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Equal0~7_combout\ = (!\p0|clk|Add0~34_combout\ & (!\p0|clk|Add0~32_combout\ & (!\p0|clk|Add0~36_combout\ & !\p0|clk|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|Add0~34_combout\,
	datab => \p0|clk|Add0~32_combout\,
	datac => \p0|clk|Add0~36_combout\,
	datad => \p0|clk|Add0~38_combout\,
	combout => \p0|clk|Equal0~7_combout\);

-- Location: LCCOMB_X10_Y15_N20
\p0|clk|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|Equal0~8_combout\ = (!\p0|clk|Add0~40_combout\ & (!\p0|clk|Add0~42_combout\ & (!\p0|clk|Add0~46_combout\ & !\p0|clk|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|Add0~40_combout\,
	datab => \p0|clk|Add0~42_combout\,
	datac => \p0|clk|Add0~46_combout\,
	datad => \p0|clk|Add0~44_combout\,
	combout => \p0|clk|Equal0~8_combout\);

-- Location: LCCOMB_X10_Y15_N26
\p0|clk|out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|out~0_combout\ = ((!\p0|clk|Equal0~6_combout\) # (!\p0|clk|Equal0~8_combout\)) # (!\p0|clk|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p0|clk|Equal0~7_combout\,
	datac => \p0|clk|Equal0~8_combout\,
	datad => \p0|clk|Equal0~6_combout\,
	combout => \p0|clk|out~0_combout\);

-- Location: LCCOMB_X10_Y15_N30
\p0|clk|out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|out~1_combout\ = \p0|clk|out~regout\ $ (((\p0|clk|Equal0~0_combout\ & (\p0|clk|Equal0~1_combout\ & !\p0|clk|out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|Equal0~0_combout\,
	datab => \p0|clk|Equal0~1_combout\,
	datac => \p0|clk|out~regout\,
	datad => \p0|clk|out~0_combout\,
	combout => \p0|clk|out~1_combout\);

-- Location: LCFF_X10_Y13_N29
\p0|reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|clk|out~clkctrl_outclk\,
	datain => \p0|reset~feeder_combout\,
	aclr => \controler|enables\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|reset~regout\);

-- Location: LCCOMB_X10_Y13_N10
\p0|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|comb~0_combout\ = (\switch~combout\ & (!\controler|state[0]~2_combout\ & (!\controler|state[1]~6_combout\ & \p0|reset~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\,
	datab => \controler|state[0]~2_combout\,
	datac => \controler|state[1]~6_combout\,
	datad => \p0|reset~regout\,
	combout => \p0|comb~0_combout\);

-- Location: LCFF_X29_Y4_N17
\p2|clk|count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(24));

-- Location: LCFF_X29_Y4_N15
\p2|clk|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(23));

-- Location: LCFF_X29_Y4_N13
\p2|clk|count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(22));

-- Location: LCFF_X29_Y4_N11
\p2|clk|count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(21));

-- Location: LCFF_X29_Y4_N9
\p2|clk|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(20));

-- Location: LCFF_X29_Y4_N7
\p2|clk|count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(19));

-- Location: LCFF_X29_Y4_N5
\p2|clk|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(18));

-- Location: LCFF_X29_Y4_N3
\p2|clk|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(17));

-- Location: LCFF_X29_Y4_N1
\p2|clk|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(16));

-- Location: LCFF_X29_Y5_N31
\p2|clk|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(15));

-- Location: LCFF_X29_Y5_N29
\p2|clk|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(14));

-- Location: LCFF_X29_Y5_N27
\p2|clk|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(13));

-- Location: LCFF_X29_Y5_N25
\p2|clk|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(12));

-- Location: LCFF_X29_Y5_N23
\p2|clk|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(11));

-- Location: LCFF_X29_Y5_N21
\p2|clk|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(10));

-- Location: LCFF_X29_Y5_N19
\p2|clk|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(9));

-- Location: LCFF_X29_Y5_N17
\p2|clk|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(8));

-- Location: LCFF_X29_Y5_N15
\p2|clk|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(7));

-- Location: LCFF_X29_Y5_N13
\p2|clk|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(6));

-- Location: LCFF_X29_Y5_N11
\p2|clk|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(5));

-- Location: LCFF_X29_Y5_N9
\p2|clk|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(4));

-- Location: LCFF_X29_Y5_N7
\p2|clk|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(3));

-- Location: LCFF_X29_Y5_N5
\p2|clk|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(2));

-- Location: LCFF_X29_Y5_N3
\p2|clk|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(1));

-- Location: LCFF_X30_Y5_N15
\p2|clk|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(0));

-- Location: LCFF_X29_Y4_N19
\p2|clk|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(25));

-- Location: LCFF_X29_Y4_N21
\p2|clk|count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(26));

-- Location: LCFF_X29_Y4_N23
\p2|clk|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(27));

-- Location: LCCOMB_X30_Y4_N0
\p2|clk|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Equal0~0_combout\ = (!\p2|clk|Add0~50_combout\ & (!\p2|clk|Add0~54_combout\ & (!\p2|clk|Add0~52_combout\ & !\p2|clk|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|Add0~50_combout\,
	datab => \p2|clk|Add0~54_combout\,
	datac => \p2|clk|Add0~52_combout\,
	datad => \p2|clk|Add0~48_combout\,
	combout => \p2|clk|Equal0~0_combout\);

-- Location: LCFF_X29_Y4_N25
\p2|clk|count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(28));

-- Location: LCFF_X29_Y4_N27
\p2|clk|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(29));

-- Location: LCFF_X29_Y4_N29
\p2|clk|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(30));

-- Location: LCFF_X29_Y4_N31
\p2|clk|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|comb~clkctrl_outclk\,
	datain => \p2|clk|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|clk|count\(31));

-- Location: LCCOMB_X30_Y5_N10
\p2|clk|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Equal0~1_combout\ = (!\p2|clk|Add0~58_combout\ & (!\p2|clk|Add0~56_combout\ & (!\p2|clk|Add0~60_combout\ & !\p2|clk|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|Add0~58_combout\,
	datab => \p2|clk|Add0~56_combout\,
	datac => \p2|clk|Add0~60_combout\,
	datad => \p2|clk|Add0~62_combout\,
	combout => \p2|clk|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y5_N26
\p2|clk|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Equal0~2_combout\ = (\p2|clk|Add0~0_combout\ & (!\p2|clk|Add0~4_combout\ & (!\p2|clk|Add0~6_combout\ & !\p2|clk|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|Add0~0_combout\,
	datab => \p2|clk|Add0~4_combout\,
	datac => \p2|clk|Add0~6_combout\,
	datad => \p2|clk|Add0~2_combout\,
	combout => \p2|clk|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y5_N28
\p2|clk|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Equal0~3_combout\ = (!\p2|clk|Add0~14_combout\ & (!\p2|clk|Add0~8_combout\ & (!\p2|clk|Add0~12_combout\ & !\p2|clk|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|Add0~14_combout\,
	datab => \p2|clk|Add0~8_combout\,
	datac => \p2|clk|Add0~12_combout\,
	datad => \p2|clk|Add0~10_combout\,
	combout => \p2|clk|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y5_N24
\p2|clk|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Equal0~4_combout\ = (!\p2|clk|Add0~16_combout\ & (!\p2|clk|Add0~18_combout\ & (!\p2|clk|Add0~20_combout\ & !\p2|clk|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|Add0~16_combout\,
	datab => \p2|clk|Add0~18_combout\,
	datac => \p2|clk|Add0~20_combout\,
	datad => \p2|clk|Add0~22_combout\,
	combout => \p2|clk|Equal0~4_combout\);

-- Location: LCCOMB_X30_Y5_N22
\p2|clk|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Equal0~5_combout\ = (!\p2|clk|Add0~30_combout\ & (!\p2|clk|Add0~24_combout\ & (!\p2|clk|Add0~26_combout\ & !\p2|clk|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|Add0~30_combout\,
	datab => \p2|clk|Add0~24_combout\,
	datac => \p2|clk|Add0~26_combout\,
	datad => \p2|clk|Add0~28_combout\,
	combout => \p2|clk|Equal0~5_combout\);

-- Location: LCCOMB_X30_Y5_N30
\p2|clk|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Equal0~6_combout\ = (\p2|clk|Equal0~3_combout\ & (\p2|clk|Equal0~2_combout\ & (\p2|clk|Equal0~4_combout\ & \p2|clk|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|Equal0~3_combout\,
	datab => \p2|clk|Equal0~2_combout\,
	datac => \p2|clk|Equal0~4_combout\,
	datad => \p2|clk|Equal0~5_combout\,
	combout => \p2|clk|Equal0~6_combout\);

-- Location: LCCOMB_X30_Y4_N22
\p2|clk|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Equal0~7_combout\ = (!\p2|clk|Add0~32_combout\ & (!\p2|clk|Add0~36_combout\ & (!\p2|clk|Add0~38_combout\ & !\p2|clk|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|Add0~32_combout\,
	datab => \p2|clk|Add0~36_combout\,
	datac => \p2|clk|Add0~38_combout\,
	datad => \p2|clk|Add0~34_combout\,
	combout => \p2|clk|Equal0~7_combout\);

-- Location: LCCOMB_X30_Y5_N12
\p2|clk|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|Equal0~8_combout\ = (!\p2|clk|Add0~42_combout\ & (!\p2|clk|Add0~40_combout\ & (!\p2|clk|Add0~46_combout\ & !\p2|clk|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|Add0~42_combout\,
	datab => \p2|clk|Add0~40_combout\,
	datac => \p2|clk|Add0~46_combout\,
	datad => \p2|clk|Add0~44_combout\,
	combout => \p2|clk|Equal0~8_combout\);

-- Location: LCCOMB_X30_Y5_N20
\p2|clk|out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|out~0_combout\ = ((!\p2|clk|Equal0~8_combout\) # (!\p2|clk|Equal0~7_combout\)) # (!\p2|clk|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p2|clk|Equal0~6_combout\,
	datac => \p2|clk|Equal0~7_combout\,
	datad => \p2|clk|Equal0~8_combout\,
	combout => \p2|clk|out~0_combout\);

-- Location: LCCOMB_X30_Y5_N16
\p2|clk|out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|out~1_combout\ = \p2|clk|out~regout\ $ (((!\p2|clk|out~0_combout\ & (\p2|clk|Equal0~0_combout\ & \p2|clk|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|out~0_combout\,
	datab => \p2|clk|Equal0~0_combout\,
	datac => \p2|clk|out~regout\,
	datad => \p2|clk|Equal0~1_combout\,
	combout => \p2|clk|out~1_combout\);

-- Location: LCCOMB_X10_Y17_N14
\p1|clk|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|clk|count~0_combout\ = (\p1|clk|Add0~0_combout\ & (((\p1|clk|out~0_combout\) # (!\p1|clk|Equal0~1_combout\)) # (!\p1|clk|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|clk|Add0~0_combout\,
	datab => \p1|clk|Equal0~0_combout\,
	datac => \p1|clk|out~0_combout\,
	datad => \p1|clk|Equal0~1_combout\,
	combout => \p1|clk|count~0_combout\);

-- Location: LCCOMB_X1_Y13_N2
\p1|comb\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|comb~combout\ = LCELL((\clock~combout\ & (\switch~combout\ & (!\controler|state[1]~6_combout\ & \controler|state[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock~combout\,
	datab => \switch~combout\,
	datac => \controler|state[1]~6_combout\,
	datad => \controler|state[0]~2_combout\,
	combout => \p1|comb~combout\);

-- Location: LCCOMB_X13_Y14_N14
\p3|clk|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|clk|count~0_combout\ = (\p3|clk|Add0~0_combout\ & (((\p3|clk|out~0_combout\) # (!\p3|clk|Equal0~0_combout\)) # (!\p3|clk|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|clk|Add0~0_combout\,
	datab => \p3|clk|Equal0~1_combout\,
	datac => \p3|clk|Equal0~0_combout\,
	datad => \p3|clk|out~0_combout\,
	combout => \p3|clk|count~0_combout\);

-- Location: LCCOMB_X1_Y13_N24
\p3|comb\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|comb~combout\ = LCELL((\clock~combout\ & (\switch~combout\ & (\controler|state[1]~6_combout\ & \controler|state[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock~combout\,
	datab => \switch~combout\,
	datac => \controler|state[1]~6_combout\,
	datad => \controler|state[0]~2_combout\,
	combout => \p3|comb~combout\);

-- Location: LCCOMB_X10_Y15_N0
\p0|clk|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|clk|count~0_combout\ = (\p0|clk|Add0~0_combout\ & (((\p0|clk|out~0_combout\) # (!\p0|clk|Equal0~1_combout\)) # (!\p0|clk|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0|clk|Equal0~0_combout\,
	datab => \p0|clk|Add0~0_combout\,
	datac => \p0|clk|Equal0~1_combout\,
	datad => \p0|clk|out~0_combout\,
	combout => \p0|clk|count~0_combout\);

-- Location: LCCOMB_X1_Y13_N6
\p0|comb\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|comb~combout\ = LCELL((\clock~combout\ & (\switch~combout\ & (!\controler|state[1]~6_combout\ & !\controler|state[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock~combout\,
	datab => \switch~combout\,
	datac => \controler|state[1]~6_combout\,
	datad => \controler|state[0]~2_combout\,
	combout => \p0|comb~combout\);

-- Location: LCCOMB_X30_Y5_N14
\p2|clk|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|clk|count~0_combout\ = (\p2|clk|Add0~0_combout\ & (((\p2|clk|out~0_combout\) # (!\p2|clk|Equal0~1_combout\)) # (!\p2|clk|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p2|clk|Add0~0_combout\,
	datab => \p2|clk|Equal0~0_combout\,
	datac => \p2|clk|out~0_combout\,
	datad => \p2|clk|Equal0~1_combout\,
	combout => \p2|clk|count~0_combout\);

-- Location: LCCOMB_X1_Y13_N28
\p2|comb\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|comb~combout\ = LCELL((\clock~combout\ & (\switch~combout\ & (\controler|state[1]~6_combout\ & !\controler|state[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock~combout\,
	datab => \switch~combout\,
	datac => \controler|state[1]~6_combout\,
	datad => \controler|state[0]~2_combout\,
	combout => \p2|comb~combout\);

-- Location: LCCOMB_X10_Y13_N20
\controler|state[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|state[0]~3_combout\ = \controler|state[0]~1_combout\ $ (((!\controler|state[1]~6_combout\ & !\controler|state[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state[0]~1_combout\,
	datac => \controler|state[1]~6_combout\,
	datad => \controler|state[0]~2_combout\,
	combout => \controler|state[0]~3_combout\);

-- Location: CLKCTRL_G2
\p2|comb~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \p2|comb~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \p2|comb~clkctrl_outclk\);

-- Location: CLKCTRL_G11
\p0|comb~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \p0|comb~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \p0|comb~clkctrl_outclk\);

-- Location: CLKCTRL_G1
\p1|comb~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \p1|comb~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \p1|comb~clkctrl_outclk\);

-- Location: CLKCTRL_G6
\p0|clk|out~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \p0|clk|out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \p0|clk|out~clkctrl_outclk\);

-- Location: CLKCTRL_G3
\p3|comb~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \p3|comb~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \p3|comb~clkctrl_outclk\);

-- Location: CLKCTRL_G8
\p1|clk|out~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \p1|clk|out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \p1|clk|out~clkctrl_outclk\);

-- Location: CLKCTRL_G14
\p2|clk|out~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \p2|clk|out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \p2|clk|out~clkctrl_outclk\);

-- Location: CLKCTRL_G4
\p3|clk|out~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \p3|clk|out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \p3|clk|out~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y13_N28
\p0|reset~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|reset~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \p0|reset~feeder_combout\);

-- Location: LCCOMB_X11_Y13_N14
\p3|pattern[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|pattern[0]~0_combout\ = !\p3|pattern\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p3|pattern\(0),
	combout => \p3|pattern[0]~0_combout\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch~I\ : cycloneii_io
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
	padio => ww_switch,
	combout => \switch~combout\);

-- Location: LCCOMB_X10_Y13_N6
\controler|state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|state~16_combout\ = (\controler|state[0]~2_combout\) # (\switch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controler|state[0]~2_combout\,
	datad => \switch~combout\,
	combout => \controler|state~16_combout\);

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iButton~I\ : cycloneii_io
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
	padio => ww_iButton,
	combout => \iButton~combout\);

-- Location: LCCOMB_X10_Y13_N24
\controler|state[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|state[0]~1_combout\ = (\iButton~combout\ & (\controler|state[0]~1_combout\)) # (!\iButton~combout\ & ((\controler|state~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state[0]~1_combout\,
	datac => \iButton~combout\,
	datad => \controler|state~16_combout\,
	combout => \controler|state[0]~1_combout\);

-- Location: LCCOMB_X10_Y13_N30
\controler|state[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|state[0]~2_combout\ = (\iButton~combout\ & (\controler|state[0]~_emulated_regout\ $ (((\controler|state[0]~1_combout\))))) # (!\iButton~combout\ & (((\controler|state~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state[0]~_emulated_regout\,
	datab => \controler|state~16_combout\,
	datac => \controler|state[0]~1_combout\,
	datad => \iButton~combout\,
	combout => \controler|state[0]~2_combout\);

-- Location: LCCOMB_X10_Y13_N8
\controler|state[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|state[1]~7_combout\ = \controler|state[1]~5_combout\ $ (((!\controler|state[1]~6_combout\ & \controler|state[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state[1]~5_combout\,
	datac => \controler|state[1]~6_combout\,
	datad => \controler|state[0]~2_combout\,
	combout => \controler|state[1]~7_combout\);

-- Location: LCFF_X10_Y13_N9
\controler|state[1]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|clk|out~regout\,
	datain => \controler|state[1]~7_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|state[1]~_emulated_regout\);

-- Location: LCCOMB_X10_Y13_N26
\controler|state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|state~17_combout\ = (\controler|state[1]~6_combout\) # (\switch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controler|state[1]~6_combout\,
	datad => \switch~combout\,
	combout => \controler|state~17_combout\);

-- Location: LCCOMB_X10_Y13_N16
\controler|state[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|state[1]~5_combout\ = (\iButton~combout\ & (\controler|state[1]~5_combout\)) # (!\iButton~combout\ & ((\controler|state~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state[1]~5_combout\,
	datac => \iButton~combout\,
	datad => \controler|state~17_combout\,
	combout => \controler|state[1]~5_combout\);

-- Location: LCCOMB_X10_Y13_N14
\controler|state[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|state[1]~6_combout\ = (\iButton~combout\ & ((\controler|state[1]~_emulated_regout\ $ (\controler|state[1]~5_combout\)))) # (!\iButton~combout\ & (\controler|state~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state~17_combout\,
	datab => \controler|state[1]~_emulated_regout\,
	datac => \controler|state[1]~5_combout\,
	datad => \iButton~combout\,
	combout => \controler|state[1]~6_combout\);

-- Location: LCCOMB_X11_Y13_N4
\controler|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|Equal2~1_combout\ = (\switch~combout\ & (\controler|state[0]~2_combout\ & \controler|state[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\,
	datac => \controler|state[0]~2_combout\,
	datad => \controler|state[1]~6_combout\,
	combout => \controler|Equal2~1_combout\);

-- Location: LCFF_X11_Y13_N15
\p3|pattern[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|clk|out~clkctrl_outclk\,
	datain => \p3|pattern[0]~0_combout\,
	aclr => \controler|ALT_INV_Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|pattern\(0));

-- Location: LCCOMB_X11_Y13_N28
\p3|greenLight~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|greenLight~0_combout\ = \p3|pattern\(0) $ (!\p3|redLight\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p3|pattern\(0),
	datad => \p3|redLight\(7),
	combout => \p3|greenLight~0_combout\);

-- Location: LCCOMB_X11_Y13_N30
\p3|redLight[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|redLight[7]~0_combout\ = !\p3|greenLight~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p3|greenLight~0_combout\,
	combout => \p3|redLight[7]~0_combout\);

-- Location: LCFF_X11_Y13_N31
\p3|redLight[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|clk|out~clkctrl_outclk\,
	datain => \p3|redLight[7]~0_combout\,
	aclr => \controler|ALT_INV_Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|redLight\(7));

-- Location: LCCOMB_X9_Y13_N0
\p1|pattern[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|pattern[0]~0_combout\ = !\p1|pattern\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p1|pattern\(0),
	combout => \p1|pattern[0]~0_combout\);

-- Location: LCCOMB_X10_Y13_N12
\controler|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|Equal2~0_combout\ = (\switch~combout\ & (!\controler|state[1]~6_combout\ & \controler|state[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\,
	datac => \controler|state[1]~6_combout\,
	datad => \controler|state[0]~2_combout\,
	combout => \controler|Equal2~0_combout\);

-- Location: LCFF_X9_Y13_N1
\p1|pattern[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|clk|out~clkctrl_outclk\,
	datain => \p1|pattern[0]~0_combout\,
	aclr => \controler|ALT_INV_Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|pattern\(0));

-- Location: LCCOMB_X9_Y13_N26
\p1|redLight[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|redLight[7]~feeder_combout\ = \p1|pattern\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p1|pattern\(0),
	combout => \p1|redLight[7]~feeder_combout\);

-- Location: LCFF_X9_Y13_N27
\p1|redLight[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|clk|out~clkctrl_outclk\,
	datain => \p1|redLight[7]~feeder_combout\,
	aclr => \controler|ALT_INV_Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|redLight\(7));

-- Location: LCCOMB_X1_Y13_N16
\redLED~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~0_combout\ = (\controler|Equal2~0_combout\ & (!\p1|redLight\(7) & ((!\controler|Equal2~1_combout\) # (!\p3|redLight\(7))))) # (!\controler|Equal2~0_combout\ & (((!\controler|Equal2~1_combout\)) # (!\p3|redLight\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Equal2~0_combout\,
	datab => \p3|redLight\(7),
	datac => \controler|Equal2~1_combout\,
	datad => \p1|redLight\(7),
	combout => \redLED~0_combout\);

-- Location: LCCOMB_X1_Y13_N14
\redLED~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~1_combout\ = ((!\controler|state[0]~2_combout\ & !\controler|state[1]~6_combout\)) # (!\switch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~combout\,
	datac => \controler|state[0]~2_combout\,
	datad => \controler|state[1]~6_combout\,
	combout => \redLED~1_combout\);

-- Location: LCCOMB_X10_Y13_N22
\p0|redLight[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p0|redLight[0]~0_combout\ = !\p0|redLight\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p0|redLight\(0),
	combout => \p0|redLight[0]~0_combout\);

-- Location: LCCOMB_X10_Y13_N18
\controler|enables[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|enables\(0) = ((\controler|state[0]~2_combout\) # (\controler|state[1]~6_combout\)) # (!\switch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\,
	datab => \controler|state[0]~2_combout\,
	datac => \controler|state[1]~6_combout\,
	combout => \controler|enables\(0));

-- Location: LCFF_X10_Y13_N23
\p0|redLight[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p0|clk|out~clkctrl_outclk\,
	datain => \p0|redLight[0]~0_combout\,
	aclr => \controler|enables\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p0|redLight\(0));

-- Location: LCCOMB_X1_Y13_N0
\redLED~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~2_combout\ = (\redLED~0_combout\ & (((\p0|redLight\(0) & !\controler|enables\(0))) # (!\redLED~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \redLED~0_combout\,
	datab => \redLED~1_combout\,
	datac => \p0|redLight\(0),
	datad => \controler|enables\(0),
	combout => \redLED~2_combout\);

-- Location: LCCOMB_X1_Y13_N10
\redLED~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~3_combout\ = (!\controler|state[1]~6_combout\ & (\switch~combout\ & (\controler|state[0]~2_combout\ & !\p1|redLight\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state[1]~6_combout\,
	datab => \switch~combout\,
	datac => \controler|state[0]~2_combout\,
	datad => \p1|redLight\(7),
	combout => \redLED~3_combout\);

-- Location: LCCOMB_X1_Y13_N8
\redLED~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~4_combout\ = (!\controler|state[1]~6_combout\ & (\switch~combout\ & (\p0|redLight\(0) & !\controler|state[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state[1]~6_combout\,
	datab => \switch~combout\,
	datac => \p0|redLight\(0),
	datad => \controler|state[0]~2_combout\,
	combout => \redLED~4_combout\);

-- Location: LCFF_X11_Y13_N29
\p3|redLight[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|clk|out~clkctrl_outclk\,
	datain => \p3|greenLight~0_combout\,
	aclr => \controler|ALT_INV_Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|redLight\(4));

-- Location: LCCOMB_X1_Y13_N20
\redLED~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~5_combout\ = (\redLED~3_combout\) # ((\redLED~4_combout\) # ((\controler|Equal2~1_combout\ & \p3|redLight\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \redLED~3_combout\,
	datab => \redLED~4_combout\,
	datac => \controler|Equal2~1_combout\,
	datad => \p3|redLight\(4),
	combout => \redLED~5_combout\);

-- Location: LCCOMB_X9_Y13_N10
\controler|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|Equal2~2_combout\ = (\switch~combout\ & \controler|state[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch~combout\,
	datad => \controler|state[0]~2_combout\,
	combout => \controler|Equal2~2_combout\);

-- Location: LCCOMB_X9_Y13_N30
\redLED~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~6_combout\ = (\controler|state[1]~6_combout\ & \switch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controler|state[1]~6_combout\,
	datac => \switch~combout\,
	combout => \redLED~6_combout\);

-- Location: LCCOMB_X9_Y13_N24
\p2|pattern[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|pattern[0]~0_combout\ = !\p2|pattern\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p2|pattern\(0),
	combout => \p2|pattern[0]~0_combout\);

-- Location: LCCOMB_X9_Y13_N14
\controler|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|Equal2~3_combout\ = ((\controler|state[0]~2_combout\) # (!\controler|state[1]~6_combout\)) # (!\switch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\,
	datab => \controler|state[1]~6_combout\,
	datad => \controler|state[0]~2_combout\,
	combout => \controler|Equal2~3_combout\);

-- Location: LCFF_X9_Y13_N25
\p2|pattern[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|clk|out~clkctrl_outclk\,
	datain => \p2|pattern[0]~0_combout\,
	aclr => \controler|Equal2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|pattern\(0));

-- Location: LCFF_X9_Y13_N15
\p2|redLight[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|clk|out~clkctrl_outclk\,
	sdata => \p2|pattern\(0),
	aclr => \controler|Equal2~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|redLight\(4));

-- Location: LCCOMB_X9_Y13_N28
\redLED~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~7_combout\ = (\controler|Equal2~2_combout\ & (\redLED~6_combout\)) # (!\controler|Equal2~2_combout\ & ((\redLED~6_combout\ & ((\p2|redLight\(4)))) # (!\redLED~6_combout\ & (\redLED~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Equal2~2_combout\,
	datab => \redLED~6_combout\,
	datac => \redLED~4_combout\,
	datad => \p2|redLight\(4),
	combout => \redLED~7_combout\);

-- Location: LCCOMB_X9_Y13_N22
\p1|greenLight~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p1|greenLight~0_combout\ = \p1|redLight\(0) $ (\p1|pattern\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p1|redLight\(0),
	datad => \p1|pattern\(0),
	combout => \p1|greenLight~0_combout\);

-- Location: LCFF_X9_Y13_N23
\p1|redLight[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p1|clk|out~clkctrl_outclk\,
	datain => \p1|greenLight~0_combout\,
	aclr => \controler|ALT_INV_Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p1|redLight\(0));

-- Location: LCCOMB_X9_Y13_N20
\redLED~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~8_combout\ = (\controler|Equal2~2_combout\ & ((\redLED~7_combout\ & (\p3|redLight\(7))) # (!\redLED~7_combout\ & ((!\p1|redLight\(0)))))) # (!\controler|Equal2~2_combout\ & (\redLED~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Equal2~2_combout\,
	datab => \redLED~7_combout\,
	datac => \p3|redLight\(7),
	datad => \p1|redLight\(0),
	combout => \redLED~8_combout\);

-- Location: LCCOMB_X9_Y13_N6
\redLED~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~9_combout\ = (\controler|Equal2~2_combout\ & ((\redLED~6_combout\) # ((!\p1|redLight\(0))))) # (!\controler|Equal2~2_combout\ & (!\redLED~6_combout\ & (\redLED~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Equal2~2_combout\,
	datab => \redLED~6_combout\,
	datac => \redLED~4_combout\,
	datad => \p1|redLight\(0),
	combout => \redLED~9_combout\);

-- Location: LCCOMB_X8_Y13_N16
\redLED~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~10_combout\ = (\redLED~9_combout\ & (((!\p3|redLight\(4))) # (!\redLED~6_combout\))) # (!\redLED~9_combout\ & (\redLED~6_combout\ & (!\p2|redLight\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \redLED~9_combout\,
	datab => \redLED~6_combout\,
	datac => \p2|redLight\(4),
	datad => \p3|redLight\(4),
	combout => \redLED~10_combout\);

-- Location: LCCOMB_X9_Y13_N2
\p2|greenLight~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p2|greenLight~0_combout\ = \p2|redLight\(2) $ (\p2|pattern\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p2|redLight\(2),
	datad => \p2|pattern\(0),
	combout => \p2|greenLight~0_combout\);

-- Location: LCFF_X9_Y13_N3
\p2|redLight[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p2|clk|out~clkctrl_outclk\,
	datain => \p2|greenLight~0_combout\,
	aclr => \controler|Equal2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p2|redLight\(2));

-- Location: LCCOMB_X9_Y13_N8
\redLED~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~11_combout\ = (\controler|Equal2~2_combout\ & (((\redLED~6_combout\)))) # (!\controler|Equal2~2_combout\ & ((\redLED~6_combout\ & ((\p2|redLight\(2)))) # (!\redLED~6_combout\ & (\redLED~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Equal2~2_combout\,
	datab => \redLED~4_combout\,
	datac => \p2|redLight\(2),
	datad => \redLED~6_combout\,
	combout => \redLED~11_combout\);

-- Location: LCCOMB_X11_Y13_N12
\p3|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|Decoder0~0_combout\ = (\p3|pattern\(0) & !\p3|redLight\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p3|pattern\(0),
	datad => \p3|redLight\(7),
	combout => \p3|Decoder0~0_combout\);

-- Location: LCCOMB_X11_Y13_N26
\p3|redLight[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \p3|redLight[1]~1_combout\ = !\p3|Decoder0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p3|Decoder0~0_combout\,
	combout => \p3|redLight[1]~1_combout\);

-- Location: LCFF_X11_Y13_N27
\p3|redLight[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|clk|out~clkctrl_outclk\,
	datain => \p3|redLight[1]~1_combout\,
	aclr => \controler|ALT_INV_Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|redLight\(1));

-- Location: LCCOMB_X9_Y13_N16
\redLED~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~12_combout\ = (\controler|Equal2~2_combout\ & ((\redLED~11_combout\ & ((\p3|redLight\(1)))) # (!\redLED~11_combout\ & (\p1|redLight\(7))))) # (!\controler|Equal2~2_combout\ & (((\redLED~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Equal2~2_combout\,
	datab => \p1|redLight\(7),
	datac => \redLED~11_combout\,
	datad => \p3|redLight\(1),
	combout => \redLED~12_combout\);

-- Location: LCFF_X11_Y13_N13
\p3|greenLight[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \p3|clk|out~clkctrl_outclk\,
	datain => \p3|Decoder0~0_combout\,
	aclr => \controler|ALT_INV_Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p3|greenLight\(7));

-- Location: LCCOMB_X9_Y13_N18
\redLED~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~13_combout\ = (\controler|Equal2~2_combout\ & ((\redLED~6_combout\) # ((\p1|redLight\(7))))) # (!\controler|Equal2~2_combout\ & (!\redLED~6_combout\ & (\redLED~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Equal2~2_combout\,
	datab => \redLED~6_combout\,
	datac => \redLED~4_combout\,
	datad => \p1|redLight\(7),
	combout => \redLED~13_combout\);

-- Location: LCCOMB_X9_Y13_N4
\redLED~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~14_combout\ = (\redLED~13_combout\ & (((!\redLED~6_combout\)) # (!\p3|greenLight\(7)))) # (!\redLED~13_combout\ & (((!\p2|redLight\(2) & \redLED~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3|greenLight\(7),
	datab => \redLED~13_combout\,
	datac => \p2|redLight\(2),
	datad => \redLED~6_combout\,
	combout => \redLED~14_combout\);

-- Location: LCCOMB_X9_Y13_N12
\redLED~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~15_combout\ = (\controler|state[0]~2_combout\ & (\controler|state[1]~6_combout\ & (\switch~combout\ & \p3|redLight\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state[0]~2_combout\,
	datab => \controler|state[1]~6_combout\,
	datac => \switch~combout\,
	datad => \p3|redLight\(1),
	combout => \redLED~15_combout\);

-- Location: LCCOMB_X1_Y13_N22
\redLED~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~16_combout\ = (\redLED~15_combout\) # ((\redLED~4_combout\) # ((\p1|redLight\(0) & \controler|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \redLED~15_combout\,
	datab => \redLED~4_combout\,
	datac => \p1|redLight\(0),
	datad => \controler|Equal2~0_combout\,
	combout => \redLED~16_combout\);

-- Location: LCCOMB_X1_Y13_N18
\redLED~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~17_combout\ = (\p1|redLight\(0) & (((!\controler|Equal2~1_combout\)) # (!\p3|greenLight\(7)))) # (!\p1|redLight\(0) & (!\controler|Equal2~0_combout\ & ((!\controler|Equal2~1_combout\) # (!\p3|greenLight\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p1|redLight\(0),
	datab => \p3|greenLight\(7),
	datac => \controler|Equal2~1_combout\,
	datad => \controler|Equal2~0_combout\,
	combout => \redLED~17_combout\);

-- Location: LCCOMB_X1_Y13_N12
\redLED~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \redLED~18_combout\ = (\redLED~17_combout\ & (((\p0|redLight\(0) & !\controler|enables\(0))) # (!\redLED~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p0|redLight\(0),
	datab => \redLED~1_combout\,
	datac => \controler|enables\(0),
	datad => \redLED~17_combout\,
	combout => \redLED~18_combout\);

-- Location: LCCOMB_X1_Y13_N30
\greenLED~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \greenLED~0_combout\ = (\switch~combout\ & ((\controler|state[1]~6_combout\) # ((\controler|state[0]~2_combout\) # (!\p0|redLight\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|state[1]~6_combout\,
	datab => \switch~combout\,
	datac => \p0|redLight\(0),
	datad => \controler|state[0]~2_combout\,
	combout => \greenLED~0_combout\);

-- Location: LCCOMB_X1_Y13_N26
\greenLED~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \greenLED~1_combout\ = (\greenLED~0_combout\ & (!\redLED~3_combout\ & ((!\p3|greenLight\(7)) # (!\controler|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|Equal2~1_combout\,
	datab => \greenLED~0_combout\,
	datac => \p3|greenLight\(7),
	datad => \redLED~3_combout\,
	combout => \greenLED~1_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: LCCOMB_X1_Y13_N4
\controler|comb\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|comb~combout\ = LCELL((\switch~combout\ & \clock~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch~combout\,
	datad => \clock~combout\,
	combout => \controler|comb~combout\);

-- Location: CLKCTRL_G0
\controler|comb~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \controler|comb~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \controler|comb~clkctrl_outclk\);

-- Location: LCFF_X30_Y7_N3
\controler|clk|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~2_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(1));

-- Location: LCCOMB_X30_Y7_N0
\controler|clk|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~0_combout\ = \controler|clk|count\(0) $ (VCC)
-- \controler|clk|Add0~1\ = CARRY(\controler|clk|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(0),
	datad => VCC,
	combout => \controler|clk|Add0~0_combout\,
	cout => \controler|clk|Add0~1\);

-- Location: LCFF_X30_Y7_N1
\controler|clk|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~0_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(0));

-- Location: LCCOMB_X30_Y7_N2
\controler|clk|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~2_combout\ = (\controler|clk|count\(1) & (!\controler|clk|Add0~1\)) # (!\controler|clk|count\(1) & ((\controler|clk|Add0~1\) # (GND)))
-- \controler|clk|Add0~3\ = CARRY((!\controler|clk|Add0~1\) # (!\controler|clk|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(1),
	datad => VCC,
	cin => \controler|clk|Add0~1\,
	combout => \controler|clk|Add0~2_combout\,
	cout => \controler|clk|Add0~3\);

-- Location: LCFF_X30_Y6_N19
\controler|clk|count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~50_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(25));

-- Location: LCCOMB_X30_Y7_N4
\controler|clk|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~4_combout\ = (\controler|clk|count\(2) & (\controler|clk|Add0~3\ $ (GND))) # (!\controler|clk|count\(2) & (!\controler|clk|Add0~3\ & VCC))
-- \controler|clk|Add0~5\ = CARRY((\controler|clk|count\(2) & !\controler|clk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(2),
	datad => VCC,
	cin => \controler|clk|Add0~3\,
	combout => \controler|clk|Add0~4_combout\,
	cout => \controler|clk|Add0~5\);

-- Location: LCCOMB_X30_Y7_N8
\controler|clk|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~8_combout\ = (\controler|clk|count\(4) & (\controler|clk|Add0~7\ $ (GND))) # (!\controler|clk|count\(4) & (!\controler|clk|Add0~7\ & VCC))
-- \controler|clk|Add0~9\ = CARRY((\controler|clk|count\(4) & !\controler|clk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(4),
	datad => VCC,
	cin => \controler|clk|Add0~7\,
	combout => \controler|clk|Add0~8_combout\,
	cout => \controler|clk|Add0~9\);

-- Location: LCFF_X30_Y7_N9
\controler|clk|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~8_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(4));

-- Location: LCCOMB_X30_Y7_N14
\controler|clk|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~14_combout\ = (\controler|clk|count\(7) & (!\controler|clk|Add0~13\)) # (!\controler|clk|count\(7) & ((\controler|clk|Add0~13\) # (GND)))
-- \controler|clk|Add0~15\ = CARRY((!\controler|clk|Add0~13\) # (!\controler|clk|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(7),
	datad => VCC,
	cin => \controler|clk|Add0~13\,
	combout => \controler|clk|Add0~14_combout\,
	cout => \controler|clk|Add0~15\);

-- Location: LCFF_X30_Y7_N15
\controler|clk|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~14_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(7));

-- Location: LCCOMB_X30_Y7_N18
\controler|clk|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~18_combout\ = (\controler|clk|count\(9) & (!\controler|clk|Add0~17\)) # (!\controler|clk|count\(9) & ((\controler|clk|Add0~17\) # (GND)))
-- \controler|clk|Add0~19\ = CARRY((!\controler|clk|Add0~17\) # (!\controler|clk|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(9),
	datad => VCC,
	cin => \controler|clk|Add0~17\,
	combout => \controler|clk|Add0~18_combout\,
	cout => \controler|clk|Add0~19\);

-- Location: LCFF_X30_Y7_N19
\controler|clk|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~18_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(9));

-- Location: LCCOMB_X30_Y7_N20
\controler|clk|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~20_combout\ = (\controler|clk|count\(10) & (\controler|clk|Add0~19\ $ (GND))) # (!\controler|clk|count\(10) & (!\controler|clk|Add0~19\ & VCC))
-- \controler|clk|Add0~21\ = CARRY((\controler|clk|count\(10) & !\controler|clk|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|count\(10),
	datad => VCC,
	cin => \controler|clk|Add0~19\,
	combout => \controler|clk|Add0~20_combout\,
	cout => \controler|clk|Add0~21\);

-- Location: LCCOMB_X30_Y7_N22
\controler|clk|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~22_combout\ = (\controler|clk|count\(11) & (!\controler|clk|Add0~21\)) # (!\controler|clk|count\(11) & ((\controler|clk|Add0~21\) # (GND)))
-- \controler|clk|Add0~23\ = CARRY((!\controler|clk|Add0~21\) # (!\controler|clk|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(11),
	datad => VCC,
	cin => \controler|clk|Add0~21\,
	combout => \controler|clk|Add0~22_combout\,
	cout => \controler|clk|Add0~23\);

-- Location: LCFF_X30_Y7_N23
\controler|clk|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~22_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(11));

-- Location: LCCOMB_X30_Y7_N24
\controler|clk|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~24_combout\ = (\controler|clk|count\(12) & (\controler|clk|Add0~23\ $ (GND))) # (!\controler|clk|count\(12) & (!\controler|clk|Add0~23\ & VCC))
-- \controler|clk|Add0~25\ = CARRY((\controler|clk|count\(12) & !\controler|clk|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|count\(12),
	datad => VCC,
	cin => \controler|clk|Add0~23\,
	combout => \controler|clk|Add0~24_combout\,
	cout => \controler|clk|Add0~25\);

-- Location: LCCOMB_X30_Y7_N26
\controler|clk|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~26_combout\ = (\controler|clk|count\(13) & (!\controler|clk|Add0~25\)) # (!\controler|clk|count\(13) & ((\controler|clk|Add0~25\) # (GND)))
-- \controler|clk|Add0~27\ = CARRY((!\controler|clk|Add0~25\) # (!\controler|clk|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(13),
	datad => VCC,
	cin => \controler|clk|Add0~25\,
	combout => \controler|clk|Add0~26_combout\,
	cout => \controler|clk|Add0~27\);

-- Location: LCFF_X30_Y7_N27
\controler|clk|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~26_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(13));

-- Location: LCCOMB_X30_Y7_N28
\controler|clk|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~28_combout\ = (\controler|clk|count\(14) & (\controler|clk|Add0~27\ $ (GND))) # (!\controler|clk|count\(14) & (!\controler|clk|Add0~27\ & VCC))
-- \controler|clk|Add0~29\ = CARRY((\controler|clk|count\(14) & !\controler|clk|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(14),
	datad => VCC,
	cin => \controler|clk|Add0~27\,
	combout => \controler|clk|Add0~28_combout\,
	cout => \controler|clk|Add0~29\);

-- Location: LCFF_X30_Y7_N29
\controler|clk|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~28_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(14));

-- Location: LCCOMB_X30_Y7_N30
\controler|clk|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~30_combout\ = (\controler|clk|count\(15) & (!\controler|clk|Add0~29\)) # (!\controler|clk|count\(15) & ((\controler|clk|Add0~29\) # (GND)))
-- \controler|clk|Add0~31\ = CARRY((!\controler|clk|Add0~29\) # (!\controler|clk|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(15),
	datad => VCC,
	cin => \controler|clk|Add0~29\,
	combout => \controler|clk|Add0~30_combout\,
	cout => \controler|clk|Add0~31\);

-- Location: LCFF_X30_Y7_N31
\controler|clk|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~30_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(15));

-- Location: LCCOMB_X30_Y6_N0
\controler|clk|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~32_combout\ = (\controler|clk|count\(16) & (\controler|clk|Add0~31\ $ (GND))) # (!\controler|clk|count\(16) & (!\controler|clk|Add0~31\ & VCC))
-- \controler|clk|Add0~33\ = CARRY((\controler|clk|count\(16) & !\controler|clk|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(16),
	datad => VCC,
	cin => \controler|clk|Add0~31\,
	combout => \controler|clk|Add0~32_combout\,
	cout => \controler|clk|Add0~33\);

-- Location: LCFF_X30_Y6_N1
\controler|clk|count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~32_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(16));

-- Location: LCCOMB_X30_Y6_N2
\controler|clk|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~34_combout\ = (\controler|clk|count\(17) & (!\controler|clk|Add0~33\)) # (!\controler|clk|count\(17) & ((\controler|clk|Add0~33\) # (GND)))
-- \controler|clk|Add0~35\ = CARRY((!\controler|clk|Add0~33\) # (!\controler|clk|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(17),
	datad => VCC,
	cin => \controler|clk|Add0~33\,
	combout => \controler|clk|Add0~34_combout\,
	cout => \controler|clk|Add0~35\);

-- Location: LCFF_X30_Y6_N3
\controler|clk|count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~34_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(17));

-- Location: LCCOMB_X30_Y6_N4
\controler|clk|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~36_combout\ = (\controler|clk|count\(18) & (\controler|clk|Add0~35\ $ (GND))) # (!\controler|clk|count\(18) & (!\controler|clk|Add0~35\ & VCC))
-- \controler|clk|Add0~37\ = CARRY((\controler|clk|count\(18) & !\controler|clk|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(18),
	datad => VCC,
	cin => \controler|clk|Add0~35\,
	combout => \controler|clk|Add0~36_combout\,
	cout => \controler|clk|Add0~37\);

-- Location: LCFF_X30_Y6_N5
\controler|clk|count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~36_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(18));

-- Location: LCCOMB_X30_Y6_N6
\controler|clk|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~38_combout\ = (\controler|clk|count\(19) & (!\controler|clk|Add0~37\)) # (!\controler|clk|count\(19) & ((\controler|clk|Add0~37\) # (GND)))
-- \controler|clk|Add0~39\ = CARRY((!\controler|clk|Add0~37\) # (!\controler|clk|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|count\(19),
	datad => VCC,
	cin => \controler|clk|Add0~37\,
	combout => \controler|clk|Add0~38_combout\,
	cout => \controler|clk|Add0~39\);

-- Location: LCCOMB_X30_Y6_N8
\controler|clk|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~40_combout\ = (\controler|clk|count\(20) & (\controler|clk|Add0~39\ $ (GND))) # (!\controler|clk|count\(20) & (!\controler|clk|Add0~39\ & VCC))
-- \controler|clk|Add0~41\ = CARRY((\controler|clk|count\(20) & !\controler|clk|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(20),
	datad => VCC,
	cin => \controler|clk|Add0~39\,
	combout => \controler|clk|Add0~40_combout\,
	cout => \controler|clk|Add0~41\);

-- Location: LCFF_X30_Y6_N9
\controler|clk|count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~40_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(20));

-- Location: LCCOMB_X30_Y6_N10
\controler|clk|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~42_combout\ = (\controler|clk|count\(21) & (!\controler|clk|Add0~41\)) # (!\controler|clk|count\(21) & ((\controler|clk|Add0~41\) # (GND)))
-- \controler|clk|Add0~43\ = CARRY((!\controler|clk|Add0~41\) # (!\controler|clk|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|count\(21),
	datad => VCC,
	cin => \controler|clk|Add0~41\,
	combout => \controler|clk|Add0~42_combout\,
	cout => \controler|clk|Add0~43\);

-- Location: LCCOMB_X30_Y6_N12
\controler|clk|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~44_combout\ = (\controler|clk|count\(22) & (\controler|clk|Add0~43\ $ (GND))) # (!\controler|clk|count\(22) & (!\controler|clk|Add0~43\ & VCC))
-- \controler|clk|Add0~45\ = CARRY((\controler|clk|count\(22) & !\controler|clk|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|count\(22),
	datad => VCC,
	cin => \controler|clk|Add0~43\,
	combout => \controler|clk|Add0~44_combout\,
	cout => \controler|clk|Add0~45\);

-- Location: LCCOMB_X30_Y6_N14
\controler|clk|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~46_combout\ = (\controler|clk|count\(23) & (!\controler|clk|Add0~45\)) # (!\controler|clk|count\(23) & ((\controler|clk|Add0~45\) # (GND)))
-- \controler|clk|Add0~47\ = CARRY((!\controler|clk|Add0~45\) # (!\controler|clk|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(23),
	datad => VCC,
	cin => \controler|clk|Add0~45\,
	combout => \controler|clk|Add0~46_combout\,
	cout => \controler|clk|Add0~47\);

-- Location: LCFF_X30_Y6_N15
\controler|clk|count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~46_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(23));

-- Location: LCCOMB_X30_Y6_N16
\controler|clk|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~48_combout\ = (\controler|clk|count\(24) & (\controler|clk|Add0~47\ $ (GND))) # (!\controler|clk|count\(24) & (!\controler|clk|Add0~47\ & VCC))
-- \controler|clk|Add0~49\ = CARRY((\controler|clk|count\(24) & !\controler|clk|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|count\(24),
	datad => VCC,
	cin => \controler|clk|Add0~47\,
	combout => \controler|clk|Add0~48_combout\,
	cout => \controler|clk|Add0~49\);

-- Location: LCCOMB_X30_Y6_N18
\controler|clk|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~50_combout\ = (\controler|clk|count\(25) & (!\controler|clk|Add0~49\)) # (!\controler|clk|count\(25) & ((\controler|clk|Add0~49\) # (GND)))
-- \controler|clk|Add0~51\ = CARRY((!\controler|clk|Add0~49\) # (!\controler|clk|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(25),
	datad => VCC,
	cin => \controler|clk|Add0~49\,
	combout => \controler|clk|Add0~50_combout\,
	cout => \controler|clk|Add0~51\);

-- Location: LCCOMB_X30_Y6_N20
\controler|clk|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~52_combout\ = (\controler|clk|count\(26) & (\controler|clk|Add0~51\ $ (GND))) # (!\controler|clk|count\(26) & (!\controler|clk|Add0~51\ & VCC))
-- \controler|clk|Add0~53\ = CARRY((\controler|clk|count\(26) & !\controler|clk|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|count\(26),
	datad => VCC,
	cin => \controler|clk|Add0~51\,
	combout => \controler|clk|Add0~52_combout\,
	cout => \controler|clk|Add0~53\);

-- Location: LCCOMB_X29_Y6_N0
\controler|clk|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Equal0~0_combout\ = (!\controler|clk|Add0~54_combout\ & (!\controler|clk|Add0~50_combout\ & (!\controler|clk|Add0~48_combout\ & !\controler|clk|Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|Add0~54_combout\,
	datab => \controler|clk|Add0~50_combout\,
	datac => \controler|clk|Add0~48_combout\,
	datad => \controler|clk|Add0~52_combout\,
	combout => \controler|clk|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y6_N22
\controler|clk|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~54_combout\ = (\controler|clk|count\(27) & (!\controler|clk|Add0~53\)) # (!\controler|clk|count\(27) & ((\controler|clk|Add0~53\) # (GND)))
-- \controler|clk|Add0~55\ = CARRY((!\controler|clk|Add0~53\) # (!\controler|clk|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(27),
	datad => VCC,
	cin => \controler|clk|Add0~53\,
	combout => \controler|clk|Add0~54_combout\,
	cout => \controler|clk|Add0~55\);

-- Location: LCFF_X30_Y6_N23
\controler|clk|count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~54_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(27));

-- Location: LCCOMB_X30_Y6_N24
\controler|clk|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~56_combout\ = (\controler|clk|count\(28) & (\controler|clk|Add0~55\ $ (GND))) # (!\controler|clk|count\(28) & (!\controler|clk|Add0~55\ & VCC))
-- \controler|clk|Add0~57\ = CARRY((\controler|clk|count\(28) & !\controler|clk|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|count\(28),
	datad => VCC,
	cin => \controler|clk|Add0~55\,
	combout => \controler|clk|Add0~56_combout\,
	cout => \controler|clk|Add0~57\);

-- Location: LCFF_X30_Y6_N31
\controler|clk|count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~62_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(31));

-- Location: LCCOMB_X30_Y6_N26
\controler|clk|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~58_combout\ = (\controler|clk|count\(29) & (!\controler|clk|Add0~57\)) # (!\controler|clk|count\(29) & ((\controler|clk|Add0~57\) # (GND)))
-- \controler|clk|Add0~59\ = CARRY((!\controler|clk|Add0~57\) # (!\controler|clk|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(29),
	datad => VCC,
	cin => \controler|clk|Add0~57\,
	combout => \controler|clk|Add0~58_combout\,
	cout => \controler|clk|Add0~59\);

-- Location: LCFF_X30_Y6_N27
\controler|clk|count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~58_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(29));

-- Location: LCCOMB_X30_Y6_N28
\controler|clk|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~60_combout\ = (\controler|clk|count\(30) & (\controler|clk|Add0~59\ $ (GND))) # (!\controler|clk|count\(30) & (!\controler|clk|Add0~59\ & VCC))
-- \controler|clk|Add0~61\ = CARRY((\controler|clk|count\(30) & !\controler|clk|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|count\(30),
	datad => VCC,
	cin => \controler|clk|Add0~59\,
	combout => \controler|clk|Add0~60_combout\,
	cout => \controler|clk|Add0~61\);

-- Location: LCFF_X30_Y6_N29
\controler|clk|count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|Add0~60_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(30));

-- Location: LCCOMB_X30_Y6_N30
\controler|clk|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Add0~62_combout\ = \controler|clk|Add0~61\ $ (\controler|clk|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controler|clk|count\(31),
	cin => \controler|clk|Add0~61\,
	combout => \controler|clk|Add0~62_combout\);

-- Location: LCCOMB_X29_Y7_N28
\controler|clk|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Equal0~1_combout\ = (!\controler|clk|Add0~58_combout\ & (!\controler|clk|Add0~56_combout\ & (!\controler|clk|Add0~62_combout\ & !\controler|clk|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|Add0~58_combout\,
	datab => \controler|clk|Add0~56_combout\,
	datac => \controler|clk|Add0~62_combout\,
	datad => \controler|clk|Add0~60_combout\,
	combout => \controler|clk|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y7_N18
\controler|clk|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|count~0_combout\ = (\controler|clk|Add0~4_combout\ & ((\controler|clk|out~0_combout\) # ((!\controler|clk|Equal0~1_combout\) # (!\controler|clk|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|Add0~4_combout\,
	datab => \controler|clk|out~0_combout\,
	datac => \controler|clk|Equal0~0_combout\,
	datad => \controler|clk|Equal0~1_combout\,
	combout => \controler|clk|count~0_combout\);

-- Location: LCFF_X29_Y7_N19
\controler|clk|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|count~0_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|count\(2));

-- Location: LCCOMB_X29_Y7_N16
\controler|clk|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Equal0~2_combout\ = (!\controler|clk|Add0~6_combout\ & (!\controler|clk|Add0~2_combout\ & (!\controler|clk|Add0~0_combout\ & \controler|clk|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|Add0~6_combout\,
	datab => \controler|clk|Add0~2_combout\,
	datac => \controler|clk|Add0~0_combout\,
	datad => \controler|clk|Add0~4_combout\,
	combout => \controler|clk|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y7_N20
\controler|clk|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Equal0~5_combout\ = (!\controler|clk|Add0~26_combout\ & (!\controler|clk|Add0~30_combout\ & (!\controler|clk|Add0~24_combout\ & !\controler|clk|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|Add0~26_combout\,
	datab => \controler|clk|Add0~30_combout\,
	datac => \controler|clk|Add0~24_combout\,
	datad => \controler|clk|Add0~28_combout\,
	combout => \controler|clk|Equal0~5_combout\);

-- Location: LCCOMB_X29_Y7_N12
\controler|clk|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Equal0~4_combout\ = (!\controler|clk|Add0~16_combout\ & (!\controler|clk|Add0~18_combout\ & (!\controler|clk|Add0~22_combout\ & !\controler|clk|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|Add0~16_combout\,
	datab => \controler|clk|Add0~18_combout\,
	datac => \controler|clk|Add0~22_combout\,
	datad => \controler|clk|Add0~20_combout\,
	combout => \controler|clk|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y7_N30
\controler|clk|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Equal0~6_combout\ = (\controler|clk|Equal0~3_combout\ & (\controler|clk|Equal0~2_combout\ & (\controler|clk|Equal0~5_combout\ & \controler|clk|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|Equal0~3_combout\,
	datab => \controler|clk|Equal0~2_combout\,
	datac => \controler|clk|Equal0~5_combout\,
	datad => \controler|clk|Equal0~4_combout\,
	combout => \controler|clk|Equal0~6_combout\);

-- Location: LCCOMB_X29_Y6_N6
\controler|clk|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Equal0~7_combout\ = (!\controler|clk|Add0~36_combout\ & (!\controler|clk|Add0~32_combout\ & (!\controler|clk|Add0~34_combout\ & !\controler|clk|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|Add0~36_combout\,
	datab => \controler|clk|Add0~32_combout\,
	datac => \controler|clk|Add0~34_combout\,
	datad => \controler|clk|Add0~38_combout\,
	combout => \controler|clk|Equal0~7_combout\);

-- Location: LCCOMB_X29_Y7_N26
\controler|clk|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|Equal0~8_combout\ = (!\controler|clk|Add0~40_combout\ & (!\controler|clk|Add0~44_combout\ & (!\controler|clk|Add0~46_combout\ & !\controler|clk|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|Add0~40_combout\,
	datab => \controler|clk|Add0~44_combout\,
	datac => \controler|clk|Add0~46_combout\,
	datad => \controler|clk|Add0~42_combout\,
	combout => \controler|clk|Equal0~8_combout\);

-- Location: LCCOMB_X29_Y7_N14
\controler|clk|out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|out~0_combout\ = ((!\controler|clk|Equal0~8_combout\) # (!\controler|clk|Equal0~7_combout\)) # (!\controler|clk|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controler|clk|Equal0~6_combout\,
	datac => \controler|clk|Equal0~7_combout\,
	datad => \controler|clk|Equal0~8_combout\,
	combout => \controler|clk|out~0_combout\);

-- Location: LCCOMB_X29_Y7_N22
\controler|clk|out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controler|clk|out~1_combout\ = \controler|clk|out~regout\ $ (((\controler|clk|Equal0~0_combout\ & (!\controler|clk|out~0_combout\ & \controler|clk|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controler|clk|Equal0~0_combout\,
	datab => \controler|clk|out~0_combout\,
	datac => \controler|clk|out~regout\,
	datad => \controler|clk|Equal0~1_combout\,
	combout => \controler|clk|out~1_combout\);

-- Location: LCFF_X29_Y7_N23
\controler|clk|out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \controler|comb~clkctrl_outclk\,
	datain => \controler|clk|out~1_combout\,
	aclr => \ALT_INV_iButton~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controler|clk|out~regout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\redLED[7]~I\ : cycloneii_io
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
	datain => \redLED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_redLED(7));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\redLED[6]~I\ : cycloneii_io
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
	datain => \redLED~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_redLED(6));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\redLED[5]~I\ : cycloneii_io
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
	datain => \redLED~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_redLED(5));

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\redLED[4]~I\ : cycloneii_io
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
	datain => \redLED~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_redLED(4));

-- Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\redLED[3]~I\ : cycloneii_io
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
	datain => \redLED~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_redLED(3));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\redLED[2]~I\ : cycloneii_io
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
	datain => \redLED~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_redLED(2));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\redLED[1]~I\ : cycloneii_io
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
	datain => \redLED~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_redLED(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\redLED[0]~I\ : cycloneii_io
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
	datain => \redLED~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_redLED(0));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\greenLED[7]~I\ : cycloneii_io
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
	datain => \greenLED~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_greenLED(7));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\greenLED[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_greenLED(6));

-- Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\greenLED[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_greenLED(5));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\greenLED[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_greenLED(4));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\greenLED[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_greenLED(3));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\greenLED[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_greenLED(2));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\greenLED[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_greenLED(1));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\greenLED[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_greenLED(0));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment7[6]~I\ : cycloneii_io
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
	datain => \controler|state[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment7(6));

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment7[5]~I\ : cycloneii_io
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
	datain => \controler|state[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment7(5));

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment7[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment7(4));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment7[3]~I\ : cycloneii_io
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
	datain => \controler|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment7(3));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment7[2]~I\ : cycloneii_io
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
	datain => \controler|ALT_INV_Equal2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment7(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment7[1]~I\ : cycloneii_io
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
	datain => \controler|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment7(1));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment7[0]~I\ : cycloneii_io
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
	datain => \controler|ALT_INV_enables\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment7(0));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\timer~I\ : cycloneii_io
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
	datain => \controler|clk|out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_timer);

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug);
END structure;


