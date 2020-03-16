-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "11/18/2019 10:53:18"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU32 IS
    PORT (
	a : IN std_logic_vector(31 DOWNTO 0);
	b : IN std_logic_vector(31 DOWNTO 0);
	oper : IN std_logic_vector(2 DOWNTO 0);
	res : OUT std_logic_vector(31 DOWNTO 0);
	zero : OUT std_logic;
	ovf : OUT std_logic
	);
END ALU32;

ARCHITECTURE structure OF ALU32 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_oper : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_res : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL ww_ovf : std_logic;
SIGNAL \res[0]~output_o\ : std_logic;
SIGNAL \res[1]~output_o\ : std_logic;
SIGNAL \res[2]~output_o\ : std_logic;
SIGNAL \res[3]~output_o\ : std_logic;
SIGNAL \res[4]~output_o\ : std_logic;
SIGNAL \res[5]~output_o\ : std_logic;
SIGNAL \res[6]~output_o\ : std_logic;
SIGNAL \res[7]~output_o\ : std_logic;
SIGNAL \res[8]~output_o\ : std_logic;
SIGNAL \res[9]~output_o\ : std_logic;
SIGNAL \res[10]~output_o\ : std_logic;
SIGNAL \res[11]~output_o\ : std_logic;
SIGNAL \res[12]~output_o\ : std_logic;
SIGNAL \res[13]~output_o\ : std_logic;
SIGNAL \res[14]~output_o\ : std_logic;
SIGNAL \res[15]~output_o\ : std_logic;
SIGNAL \res[16]~output_o\ : std_logic;
SIGNAL \res[17]~output_o\ : std_logic;
SIGNAL \res[18]~output_o\ : std_logic;
SIGNAL \res[19]~output_o\ : std_logic;
SIGNAL \res[20]~output_o\ : std_logic;
SIGNAL \res[21]~output_o\ : std_logic;
SIGNAL \res[22]~output_o\ : std_logic;
SIGNAL \res[23]~output_o\ : std_logic;
SIGNAL \res[24]~output_o\ : std_logic;
SIGNAL \res[25]~output_o\ : std_logic;
SIGNAL \res[26]~output_o\ : std_logic;
SIGNAL \res[27]~output_o\ : std_logic;
SIGNAL \res[28]~output_o\ : std_logic;
SIGNAL \res[29]~output_o\ : std_logic;
SIGNAL \res[30]~output_o\ : std_logic;
SIGNAL \res[31]~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \ovf~output_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \oper[0]~input_o\ : std_logic;
SIGNAL \oper[2]~input_o\ : std_logic;
SIGNAL \oper[1]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \b[31]~input_o\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \b[30]~input_o\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \b[29]~input_o\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \b[28]~input_o\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \b[27]~input_o\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \b[26]~input_o\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \b[25]~input_o\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \b[24]~input_o\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \b[23]~input_o\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \b[22]~input_o\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \b[21]~input_o\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \b[20]~input_o\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \b[19]~input_o\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \b[18]~input_o\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \b[17]~input_o\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \b[16]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Add0~36\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Add0~44\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Add0~48\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Add0~56\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Add0~60\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \ovf~0_combout\ : std_logic;
SIGNAL \ALT_INV_ovf~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_oper <= oper;
res <= ww_res;
zero <= ww_zero;
ovf <= ww_ovf;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ovf~0_combout\ <= NOT \ovf~0_combout\;

\res[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~1_combout\,
	devoe => ww_devoe,
	o => \res[0]~output_o\);

\res[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~1_combout\,
	devoe => ww_devoe,
	o => \res[1]~output_o\);

\res[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~1_combout\,
	devoe => ww_devoe,
	o => \res[2]~output_o\);

\res[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~1_combout\,
	devoe => ww_devoe,
	o => \res[3]~output_o\);

\res[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~1_combout\,
	devoe => ww_devoe,
	o => \res[4]~output_o\);

\res[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~1_combout\,
	devoe => ww_devoe,
	o => \res[5]~output_o\);

\res[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~1_combout\,
	devoe => ww_devoe,
	o => \res[6]~output_o\);

\res[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~1_combout\,
	devoe => ww_devoe,
	o => \res[7]~output_o\);

\res[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~1_combout\,
	devoe => ww_devoe,
	o => \res[8]~output_o\);

\res[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~1_combout\,
	devoe => ww_devoe,
	o => \res[9]~output_o\);

\res[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~1_combout\,
	devoe => ww_devoe,
	o => \res[10]~output_o\);

\res[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~1_combout\,
	devoe => ww_devoe,
	o => \res[11]~output_o\);

\res[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~1_combout\,
	devoe => ww_devoe,
	o => \res[12]~output_o\);

\res[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~1_combout\,
	devoe => ww_devoe,
	o => \res[13]~output_o\);

\res[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~1_combout\,
	devoe => ww_devoe,
	o => \res[14]~output_o\);

\res[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~1_combout\,
	devoe => ww_devoe,
	o => \res[15]~output_o\);

\res[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~1_combout\,
	devoe => ww_devoe,
	o => \res[16]~output_o\);

\res[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~1_combout\,
	devoe => ww_devoe,
	o => \res[17]~output_o\);

\res[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~1_combout\,
	devoe => ww_devoe,
	o => \res[18]~output_o\);

\res[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~1_combout\,
	devoe => ww_devoe,
	o => \res[19]~output_o\);

\res[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~1_combout\,
	devoe => ww_devoe,
	o => \res[20]~output_o\);

\res[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => \res[21]~output_o\);

\res[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~1_combout\,
	devoe => ww_devoe,
	o => \res[22]~output_o\);

\res[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \res[23]~output_o\);

\res[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \res[24]~output_o\);

\res[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \res[25]~output_o\);

\res[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \res[26]~output_o\);

\res[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \res[27]~output_o\);

\res[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \res[28]~output_o\);

\res[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \res[29]~output_o\);

\res[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \res[30]~output_o\);

\res[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \res[31]~output_o\);

\zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~10_combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

\ovf~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ovf~0_combout\,
	devoe => ww_devoe,
	o => \ovf~output_o\);

\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

\oper[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oper(0),
	o => \oper[0]~input_o\);

\oper[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oper(2),
	o => \oper[2]~input_o\);

\oper[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oper(1),
	o => \oper[1]~input_o\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \b[0]~input_o\ $ (((!\oper[0]~input_o\ & (\oper[2]~input_o\ & \oper[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \oper[0]~input_o\,
	datac => \oper[2]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Add0~0_combout\);

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\oper[2]~input_o\ & (\oper[1]~input_o\ & !\oper[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[2]~input_o\,
	datab => \oper[1]~input_o\,
	datad => \oper[0]~input_o\,
	combout => \Equal0~0_combout\);

\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\Add0~0_combout\ & (\Equal0~0_combout\ $ (VCC))) # (!\Add0~0_combout\ & (\Equal0~0_combout\ & VCC))
-- \Add0~2\ = CARRY((\Add0~0_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	combout => \Add0~1_combout\,
	cout => \Add0~2\);

\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Add0~1_combout\ & (\a[0]~input_o\ $ (VCC))) # (!\Add0~1_combout\ & (\a[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((\Add0~1_combout\ & \a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \a[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\b[0]~input_o\ & ((\oper[0]~input_o\) # ((\a[0]~input_o\ & !\oper[1]~input_o\)))) # (!\b[0]~input_o\ & (\oper[0]~input_o\ & ((\a[0]~input_o\) # (\oper[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \oper[0]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux31~0_combout\);

\b[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(31),
	o => \b[31]~input_o\);

\a[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

\a[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

\b[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(30),
	o => \b[30]~input_o\);

\a[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

\b[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(29),
	o => \b[29]~input_o\);

\a[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

\b[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(28),
	o => \b[28]~input_o\);

\a[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

\b[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(27),
	o => \b[27]~input_o\);

\a[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

\b[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(26),
	o => \b[26]~input_o\);

\a[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

\b[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(25),
	o => \b[25]~input_o\);

\a[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

\b[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(24),
	o => \b[24]~input_o\);

\a[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

\b[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(23),
	o => \b[23]~input_o\);

\a[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

\b[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(22),
	o => \b[22]~input_o\);

\a[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

\b[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(21),
	o => \b[21]~input_o\);

\a[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

\b[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(20),
	o => \b[20]~input_o\);

\a[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

\b[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(19),
	o => \b[19]~input_o\);

\a[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

\b[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(18),
	o => \b[18]~input_o\);

\a[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

\b[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(17),
	o => \b[17]~input_o\);

\a[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

\b[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(16),
	o => \b[16]~input_o\);

\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

\b[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

\b[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

\b[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

\b[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

\b[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

\b[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

\b[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

\b[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\a[0]~input_o\ & \b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\a[1]~input_o\ & ((!\LessThan0~1_cout\) # (!\b[1]~input_o\))) # (!\a[1]~input_o\ & (!\b[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\a[2]~input_o\ & (\b[2]~input_o\ & !\LessThan0~3_cout\)) # (!\a[2]~input_o\ & ((\b[2]~input_o\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\a[3]~input_o\ & ((!\LessThan0~5_cout\) # (!\b[3]~input_o\))) # (!\a[3]~input_o\ & (!\b[3]~input_o\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\a[4]~input_o\ & (\b[4]~input_o\ & !\LessThan0~7_cout\)) # (!\a[4]~input_o\ & ((\b[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\a[5]~input_o\ & ((!\LessThan0~9_cout\) # (!\b[5]~input_o\))) # (!\a[5]~input_o\ & (!\b[5]~input_o\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\a[6]~input_o\ & (\b[6]~input_o\ & !\LessThan0~11_cout\)) # (!\a[6]~input_o\ & ((\b[6]~input_o\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \b[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

\LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\a[7]~input_o\ & ((!\LessThan0~13_cout\) # (!\b[7]~input_o\))) # (!\a[7]~input_o\ & (!\b[7]~input_o\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \b[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

\LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\a[8]~input_o\ & (\b[8]~input_o\ & !\LessThan0~15_cout\)) # (!\a[8]~input_o\ & ((\b[8]~input_o\) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \b[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

\LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\a[9]~input_o\ & ((!\LessThan0~17_cout\) # (!\b[9]~input_o\))) # (!\a[9]~input_o\ & (!\b[9]~input_o\ & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[9]~input_o\,
	datab => \b[9]~input_o\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

\LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\a[10]~input_o\ & (\b[10]~input_o\ & !\LessThan0~19_cout\)) # (!\a[10]~input_o\ & ((\b[10]~input_o\) # (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[10]~input_o\,
	datab => \b[10]~input_o\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

\LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\a[11]~input_o\ & ((!\LessThan0~21_cout\) # (!\b[11]~input_o\))) # (!\a[11]~input_o\ & (!\b[11]~input_o\ & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[11]~input_o\,
	datab => \b[11]~input_o\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

\LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\a[12]~input_o\ & (\b[12]~input_o\ & !\LessThan0~23_cout\)) # (!\a[12]~input_o\ & ((\b[12]~input_o\) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[12]~input_o\,
	datab => \b[12]~input_o\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

\LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\a[13]~input_o\ & ((!\LessThan0~25_cout\) # (!\b[13]~input_o\))) # (!\a[13]~input_o\ & (!\b[13]~input_o\ & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[13]~input_o\,
	datab => \b[13]~input_o\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

\LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\a[14]~input_o\ & (\b[14]~input_o\ & !\LessThan0~27_cout\)) # (!\a[14]~input_o\ & ((\b[14]~input_o\) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datab => \b[14]~input_o\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

\LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\a[15]~input_o\ & ((!\LessThan0~29_cout\) # (!\b[15]~input_o\))) # (!\a[15]~input_o\ & (!\b[15]~input_o\ & !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[15]~input_o\,
	datab => \b[15]~input_o\,
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

\LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\a[16]~input_o\ & (\b[16]~input_o\ & !\LessThan0~31_cout\)) # (!\a[16]~input_o\ & ((\b[16]~input_o\) # (!\LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[16]~input_o\,
	datab => \b[16]~input_o\,
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

\LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\a[17]~input_o\ & ((!\LessThan0~33_cout\) # (!\b[17]~input_o\))) # (!\a[17]~input_o\ & (!\b[17]~input_o\ & !\LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[17]~input_o\,
	datab => \b[17]~input_o\,
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

\LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\a[18]~input_o\ & (\b[18]~input_o\ & !\LessThan0~35_cout\)) # (!\a[18]~input_o\ & ((\b[18]~input_o\) # (!\LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[18]~input_o\,
	datab => \b[18]~input_o\,
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

\LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\a[19]~input_o\ & ((!\LessThan0~37_cout\) # (!\b[19]~input_o\))) # (!\a[19]~input_o\ & (!\b[19]~input_o\ & !\LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[19]~input_o\,
	datab => \b[19]~input_o\,
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

\LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\a[20]~input_o\ & (\b[20]~input_o\ & !\LessThan0~39_cout\)) # (!\a[20]~input_o\ & ((\b[20]~input_o\) # (!\LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[20]~input_o\,
	datab => \b[20]~input_o\,
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

\LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\a[21]~input_o\ & ((!\LessThan0~41_cout\) # (!\b[21]~input_o\))) # (!\a[21]~input_o\ & (!\b[21]~input_o\ & !\LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[21]~input_o\,
	datab => \b[21]~input_o\,
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

\LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\a[22]~input_o\ & (\b[22]~input_o\ & !\LessThan0~43_cout\)) # (!\a[22]~input_o\ & ((\b[22]~input_o\) # (!\LessThan0~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[22]~input_o\,
	datab => \b[22]~input_o\,
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

\LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\a[23]~input_o\ & ((!\LessThan0~45_cout\) # (!\b[23]~input_o\))) # (!\a[23]~input_o\ & (!\b[23]~input_o\ & !\LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[23]~input_o\,
	datab => \b[23]~input_o\,
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

\LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\a[24]~input_o\ & (\b[24]~input_o\ & !\LessThan0~47_cout\)) # (!\a[24]~input_o\ & ((\b[24]~input_o\) # (!\LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[24]~input_o\,
	datab => \b[24]~input_o\,
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

\LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\a[25]~input_o\ & ((!\LessThan0~49_cout\) # (!\b[25]~input_o\))) # (!\a[25]~input_o\ & (!\b[25]~input_o\ & !\LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[25]~input_o\,
	datab => \b[25]~input_o\,
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

\LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\a[26]~input_o\ & (\b[26]~input_o\ & !\LessThan0~51_cout\)) # (!\a[26]~input_o\ & ((\b[26]~input_o\) # (!\LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[26]~input_o\,
	datab => \b[26]~input_o\,
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

\LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\a[27]~input_o\ & ((!\LessThan0~53_cout\) # (!\b[27]~input_o\))) # (!\a[27]~input_o\ & (!\b[27]~input_o\ & !\LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[27]~input_o\,
	datab => \b[27]~input_o\,
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

\LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\a[28]~input_o\ & (\b[28]~input_o\ & !\LessThan0~55_cout\)) # (!\a[28]~input_o\ & ((\b[28]~input_o\) # (!\LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[28]~input_o\,
	datab => \b[28]~input_o\,
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

\LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\a[29]~input_o\ & ((!\LessThan0~57_cout\) # (!\b[29]~input_o\))) # (!\a[29]~input_o\ & (!\b[29]~input_o\ & !\LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[29]~input_o\,
	datab => \b[29]~input_o\,
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

\LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\a[30]~input_o\ & (\b[30]~input_o\ & !\LessThan0~59_cout\)) # (!\a[30]~input_o\ & ((\b[30]~input_o\) # (!\LessThan0~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[30]~input_o\,
	datab => \b[30]~input_o\,
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

\LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\b[31]~input_o\ & (\a[31]~input_o\ & \LessThan0~61_cout\)) # (!\b[31]~input_o\ & ((\a[31]~input_o\) # (\LessThan0~61_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[31]~input_o\,
	datab => \a[31]~input_o\,
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\oper[1]~input_o\ & ((\Mux31~0_combout\ & ((\LessThan0~62_combout\))) # (!\Mux31~0_combout\ & (\Add1~0_combout\)))) # (!\oper[1]~input_o\ & (((\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Mux31~0_combout\,
	datad => \LessThan0~62_combout\,
	combout => \Mux31~1_combout\);

\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[1]~input_o\) # (\b[1]~input_o\))) # (!\oper[0]~input_o\ & (\a[1]~input_o\ & \b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux30~0_combout\);

\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~2\ & (\b[1]~input_o\ $ ((!\Equal0~0_combout\)))) # (!\Add0~2\ & ((\b[1]~input_o\ $ (\Equal0~0_combout\)) # (GND)))
-- \Add0~4\ = CARRY((\b[1]~input_o\ $ (!\Equal0~0_combout\)) # (!\Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~2\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add0~3_combout\ & ((\a[1]~input_o\ & (\Add1~1\ & VCC)) # (!\a[1]~input_o\ & (!\Add1~1\)))) # (!\Add0~3_combout\ & ((\a[1]~input_o\ & (!\Add1~1\)) # (!\a[1]~input_o\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\Add0~3_combout\ & (!\a[1]~input_o\ & !\Add1~1\)) # (!\Add0~3_combout\ & ((!\Add1~1\) # (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux30~0_combout\) # ((\oper[1]~input_o\ & (\Add1~2_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~2_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux30~1_combout\);

\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[2]~input_o\) # (\b[2]~input_o\))) # (!\oper[0]~input_o\ & (\a[2]~input_o\ & \b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux29~0_combout\);

\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~4\ & ((\b[2]~input_o\ $ (\Equal0~0_combout\)))) # (!\Add0~4\ & (\b[2]~input_o\ $ (\Equal0~0_combout\ $ (VCC))))
-- \Add0~6\ = CARRY((!\Add0~4\ & (\b[2]~input_o\ $ (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Add0~5_combout\ $ (\a[2]~input_o\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Add0~5_combout\ & ((\a[2]~input_o\) # (!\Add1~3\))) # (!\Add0~5_combout\ & (\a[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

\Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux29~0_combout\) # ((\oper[1]~input_o\ & (\Add1~4_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~4_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux29~1_combout\);

\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[3]~input_o\) # (\b[3]~input_o\))) # (!\oper[0]~input_o\ & (\a[3]~input_o\ & \b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[3]~input_o\,
	datac => \b[3]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux28~0_combout\);

\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\Add0~6\ & (\b[3]~input_o\ $ ((!\Equal0~0_combout\)))) # (!\Add0~6\ & ((\b[3]~input_o\ $ (\Equal0~0_combout\)) # (GND)))
-- \Add0~8\ = CARRY((\b[3]~input_o\ $ (!\Equal0~0_combout\)) # (!\Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add0~7_combout\ & ((\a[3]~input_o\ & (\Add1~5\ & VCC)) # (!\a[3]~input_o\ & (!\Add1~5\)))) # (!\Add0~7_combout\ & ((\a[3]~input_o\ & (!\Add1~5\)) # (!\a[3]~input_o\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\Add0~7_combout\ & (!\a[3]~input_o\ & !\Add1~5\)) # (!\Add0~7_combout\ & ((!\Add1~5\) # (!\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \a[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

\Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux28~0_combout\) # ((\oper[1]~input_o\ & (\Add1~6_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~6_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux28~1_combout\);

\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[4]~input_o\) # (\b[4]~input_o\))) # (!\oper[0]~input_o\ & (\a[4]~input_o\ & \b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[4]~input_o\,
	datac => \b[4]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux27~0_combout\);

\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8\ & ((\b[4]~input_o\ $ (\Equal0~0_combout\)))) # (!\Add0~8\ & (\b[4]~input_o\ $ (\Equal0~0_combout\ $ (VCC))))
-- \Add0~10\ = CARRY((!\Add0~8\ & (\b[4]~input_o\ $ (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\Add0~9_combout\ $ (\a[4]~input_o\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\Add0~9_combout\ & ((\a[4]~input_o\) # (!\Add1~7\))) # (!\Add0~9_combout\ & (\a[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \a[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

\Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux27~0_combout\) # ((\oper[1]~input_o\ & (\Add1~8_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~8_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux27~1_combout\);

\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[5]~input_o\) # (\b[5]~input_o\))) # (!\oper[0]~input_o\ & (\a[5]~input_o\ & \b[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[5]~input_o\,
	datac => \b[5]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux26~0_combout\);

\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~10\ & (\b[5]~input_o\ $ ((!\Equal0~0_combout\)))) # (!\Add0~10\ & ((\b[5]~input_o\ $ (\Equal0~0_combout\)) # (GND)))
-- \Add0~12\ = CARRY((\b[5]~input_o\ $ (!\Equal0~0_combout\)) # (!\Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add0~11_combout\ & ((\a[5]~input_o\ & (\Add1~9\ & VCC)) # (!\a[5]~input_o\ & (!\Add1~9\)))) # (!\Add0~11_combout\ & ((\a[5]~input_o\ & (!\Add1~9\)) # (!\a[5]~input_o\ & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\Add0~11_combout\ & (!\a[5]~input_o\ & !\Add1~9\)) # (!\Add0~11_combout\ & ((!\Add1~9\) # (!\a[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \a[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

\Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux26~0_combout\) # ((\oper[1]~input_o\ & (\Add1~10_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~10_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux26~1_combout\);

\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[6]~input_o\) # (\b[6]~input_o\))) # (!\oper[0]~input_o\ & (\a[6]~input_o\ & \b[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[6]~input_o\,
	datac => \b[6]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux25~0_combout\);

\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Add0~12\ & ((\b[6]~input_o\ $ (\Equal0~0_combout\)))) # (!\Add0~12\ & (\b[6]~input_o\ $ (\Equal0~0_combout\ $ (VCC))))
-- \Add0~14\ = CARRY((!\Add0~12\ & (\b[6]~input_o\ $ (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Add0~13_combout\ $ (\a[6]~input_o\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\Add0~13_combout\ & ((\a[6]~input_o\) # (!\Add1~11\))) # (!\Add0~13_combout\ & (\a[6]~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~13_combout\,
	datab => \a[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

\Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux25~0_combout\) # ((\oper[1]~input_o\ & (\Add1~12_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~12_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux25~1_combout\);

\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[7]~input_o\) # (\b[7]~input_o\))) # (!\oper[0]~input_o\ & (\a[7]~input_o\ & \b[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[7]~input_o\,
	datac => \b[7]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux24~0_combout\);

\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~14\ & (\b[7]~input_o\ $ ((!\Equal0~0_combout\)))) # (!\Add0~14\ & ((\b[7]~input_o\ $ (\Equal0~0_combout\)) # (GND)))
-- \Add0~16\ = CARRY((\b[7]~input_o\ $ (!\Equal0~0_combout\)) # (!\Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Add0~15_combout\ & ((\a[7]~input_o\ & (\Add1~13\ & VCC)) # (!\a[7]~input_o\ & (!\Add1~13\)))) # (!\Add0~15_combout\ & ((\a[7]~input_o\ & (!\Add1~13\)) # (!\a[7]~input_o\ & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\Add0~15_combout\ & (!\a[7]~input_o\ & !\Add1~13\)) # (!\Add0~15_combout\ & ((!\Add1~13\) # (!\a[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \a[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux24~0_combout\) # ((\oper[1]~input_o\ & (\Add1~14_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~14_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux24~1_combout\);

\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[8]~input_o\) # (\b[8]~input_o\))) # (!\oper[0]~input_o\ & (\a[8]~input_o\ & \b[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[8]~input_o\,
	datac => \b[8]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux23~0_combout\);

\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add0~16\ & ((\b[8]~input_o\ $ (\Equal0~0_combout\)))) # (!\Add0~16\ & (\b[8]~input_o\ $ (\Equal0~0_combout\ $ (VCC))))
-- \Add0~18\ = CARRY((!\Add0~16\ & (\b[8]~input_o\ $ (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[8]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~17_combout\,
	cout => \Add0~18\);

\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((\Add0~17_combout\ $ (\a[8]~input_o\ $ (!\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((\Add0~17_combout\ & ((\a[8]~input_o\) # (!\Add1~15\))) # (!\Add0~17_combout\ & (\a[8]~input_o\ & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \a[8]~input_o\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\) # ((\oper[1]~input_o\ & (\Add1~16_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~16_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux23~1_combout\);

\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[9]~input_o\) # (\b[9]~input_o\))) # (!\oper[0]~input_o\ & (\a[9]~input_o\ & \b[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[9]~input_o\,
	datac => \b[9]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux22~0_combout\);

\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\Add0~18\ & (\b[9]~input_o\ $ ((!\Equal0~0_combout\)))) # (!\Add0~18\ & ((\b[9]~input_o\ $ (\Equal0~0_combout\)) # (GND)))
-- \Add0~20\ = CARRY((\b[9]~input_o\ $ (!\Equal0~0_combout\)) # (!\Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[9]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~18\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\Add0~19_combout\ & ((\a[9]~input_o\ & (\Add1~17\ & VCC)) # (!\a[9]~input_o\ & (!\Add1~17\)))) # (!\Add0~19_combout\ & ((\a[9]~input_o\ & (!\Add1~17\)) # (!\a[9]~input_o\ & ((\Add1~17\) # (GND)))))
-- \Add1~19\ = CARRY((\Add0~19_combout\ & (!\a[9]~input_o\ & !\Add1~17\)) # (!\Add0~19_combout\ & ((!\Add1~17\) # (!\a[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~19_combout\,
	datab => \a[9]~input_o\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux22~0_combout\) # ((\oper[1]~input_o\ & (\Add1~18_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~18_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux22~1_combout\);

\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[10]~input_o\) # (\b[10]~input_o\))) # (!\oper[0]~input_o\ & (\a[10]~input_o\ & \b[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[10]~input_o\,
	datac => \b[10]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux21~0_combout\);

\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~20\ & ((\b[10]~input_o\ $ (\Equal0~0_combout\)))) # (!\Add0~20\ & (\b[10]~input_o\ $ (\Equal0~0_combout\ $ (VCC))))
-- \Add0~22\ = CARRY((!\Add0~20\ & (\b[10]~input_o\ $ (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[10]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((\Add0~21_combout\ $ (\a[10]~input_o\ $ (!\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((\Add0~21_combout\ & ((\a[10]~input_o\) # (!\Add1~19\))) # (!\Add0~21_combout\ & (\a[10]~input_o\ & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~21_combout\,
	datab => \a[10]~input_o\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux21~0_combout\) # ((\oper[1]~input_o\ & (\Add1~20_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~20_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux21~1_combout\);

\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[11]~input_o\) # (\b[11]~input_o\))) # (!\oper[0]~input_o\ & (\a[11]~input_o\ & \b[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[11]~input_o\,
	datac => \b[11]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux20~0_combout\);

\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\Add0~22\ & (\b[11]~input_o\ $ ((!\Equal0~0_combout\)))) # (!\Add0~22\ & ((\b[11]~input_o\ $ (\Equal0~0_combout\)) # (GND)))
-- \Add0~24\ = CARRY((\b[11]~input_o\ $ (!\Equal0~0_combout\)) # (!\Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[11]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~23_combout\,
	cout => \Add0~24\);

\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\Add0~23_combout\ & ((\a[11]~input_o\ & (\Add1~21\ & VCC)) # (!\a[11]~input_o\ & (!\Add1~21\)))) # (!\Add0~23_combout\ & ((\a[11]~input_o\ & (!\Add1~21\)) # (!\a[11]~input_o\ & ((\Add1~21\) # (GND)))))
-- \Add1~23\ = CARRY((\Add0~23_combout\ & (!\a[11]~input_o\ & !\Add1~21\)) # (!\Add0~23_combout\ & ((!\Add1~21\) # (!\a[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datab => \a[11]~input_o\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux20~0_combout\) # ((\oper[1]~input_o\ & (\Add1~22_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~22_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux20~1_combout\);

\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[12]~input_o\) # (\b[12]~input_o\))) # (!\oper[0]~input_o\ & (\a[12]~input_o\ & \b[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[12]~input_o\,
	datac => \b[12]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux19~0_combout\);

\Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\Add0~24\ & ((\b[12]~input_o\ $ (\Equal0~0_combout\)))) # (!\Add0~24\ & (\b[12]~input_o\ $ (\Equal0~0_combout\ $ (VCC))))
-- \Add0~26\ = CARRY((!\Add0~24\ & (\b[12]~input_o\ $ (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~24\,
	combout => \Add0~25_combout\,
	cout => \Add0~26\);

\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((\Add0~25_combout\ $ (\a[12]~input_o\ $ (!\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((\Add0~25_combout\ & ((\a[12]~input_o\) # (!\Add1~23\))) # (!\Add0~25_combout\ & (\a[12]~input_o\ & !\Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~25_combout\,
	datab => \a[12]~input_o\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux19~0_combout\) # ((\oper[1]~input_o\ & (\Add1~24_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~24_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux19~1_combout\);

\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[13]~input_o\) # (\b[13]~input_o\))) # (!\oper[0]~input_o\ & (\a[13]~input_o\ & \b[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[13]~input_o\,
	datac => \b[13]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux18~0_combout\);

\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\Add0~26\ & (\b[13]~input_o\ $ ((!\Equal0~0_combout\)))) # (!\Add0~26\ & ((\b[13]~input_o\ $ (\Equal0~0_combout\)) # (GND)))
-- \Add0~28\ = CARRY((\b[13]~input_o\ $ (!\Equal0~0_combout\)) # (!\Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[13]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~26\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\Add0~27_combout\ & ((\a[13]~input_o\ & (\Add1~25\ & VCC)) # (!\a[13]~input_o\ & (!\Add1~25\)))) # (!\Add0~27_combout\ & ((\a[13]~input_o\ & (!\Add1~25\)) # (!\a[13]~input_o\ & ((\Add1~25\) # (GND)))))
-- \Add1~27\ = CARRY((\Add0~27_combout\ & (!\a[13]~input_o\ & !\Add1~25\)) # (!\Add0~27_combout\ & ((!\Add1~25\) # (!\a[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~27_combout\,
	datab => \a[13]~input_o\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\) # ((\oper[1]~input_o\ & (\Add1~26_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~26_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux18~1_combout\);

\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[14]~input_o\) # (\b[14]~input_o\))) # (!\oper[0]~input_o\ & (\a[14]~input_o\ & \b[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[14]~input_o\,
	datac => \b[14]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux17~0_combout\);

\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\Add0~28\ & ((\b[14]~input_o\ $ (\Equal0~0_combout\)))) # (!\Add0~28\ & (\b[14]~input_o\ $ (\Equal0~0_combout\ $ (VCC))))
-- \Add0~30\ = CARRY((!\Add0~28\ & (\b[14]~input_o\ $ (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[14]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~29_combout\,
	cout => \Add0~30\);

\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((\Add0~29_combout\ $ (\a[14]~input_o\ $ (!\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((\Add0~29_combout\ & ((\a[14]~input_o\) # (!\Add1~27\))) # (!\Add0~29_combout\ & (\a[14]~input_o\ & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => \a[14]~input_o\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\) # ((\oper[1]~input_o\ & (\Add1~28_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~28_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux17~1_combout\);

\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[15]~input_o\) # (\b[15]~input_o\))) # (!\oper[0]~input_o\ & (\a[15]~input_o\ & \b[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[15]~input_o\,
	datac => \b[15]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux16~0_combout\);

\Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\Add0~30\ & (\b[15]~input_o\ $ ((!\Equal0~0_combout\)))) # (!\Add0~30\ & ((\b[15]~input_o\ $ (\Equal0~0_combout\)) # (GND)))
-- \Add0~32\ = CARRY((\b[15]~input_o\ $ (!\Equal0~0_combout\)) # (!\Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[15]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~30\,
	combout => \Add0~31_combout\,
	cout => \Add0~32\);

\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\Add0~31_combout\ & ((\a[15]~input_o\ & (\Add1~29\ & VCC)) # (!\a[15]~input_o\ & (!\Add1~29\)))) # (!\Add0~31_combout\ & ((\a[15]~input_o\ & (!\Add1~29\)) # (!\a[15]~input_o\ & ((\Add1~29\) # (GND)))))
-- \Add1~31\ = CARRY((\Add0~31_combout\ & (!\a[15]~input_o\ & !\Add1~29\)) # (!\Add0~31_combout\ & ((!\Add1~29\) # (!\a[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~31_combout\,
	datab => \a[15]~input_o\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\) # ((\oper[1]~input_o\ & (\Add1~30_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~30_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux16~1_combout\);

\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[16]~input_o\) # (\b[16]~input_o\))) # (!\oper[0]~input_o\ & (\a[16]~input_o\ & \b[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[16]~input_o\,
	datac => \b[16]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux15~0_combout\);

\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\Add0~32\ & ((\b[16]~input_o\ $ (\Equal0~0_combout\)))) # (!\Add0~32\ & (\b[16]~input_o\ $ (\Equal0~0_combout\ $ (VCC))))
-- \Add0~34\ = CARRY((!\Add0~32\ & (\b[16]~input_o\ $ (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[16]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~32\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = ((\Add0~33_combout\ $ (\a[16]~input_o\ $ (!\Add1~31\)))) # (GND)
-- \Add1~33\ = CARRY((\Add0~33_combout\ & ((\a[16]~input_o\) # (!\Add1~31\))) # (!\Add0~33_combout\ & (\a[16]~input_o\ & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~33_combout\,
	datab => \a[16]~input_o\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\) # ((\oper[1]~input_o\ & (\Add1~32_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~32_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux15~1_combout\);

\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[17]~input_o\) # (\b[17]~input_o\))) # (!\oper[0]~input_o\ & (\a[17]~input_o\ & \b[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[17]~input_o\,
	datac => \b[17]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux14~0_combout\);

\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\Add0~34\ & (\b[17]~input_o\ $ ((!\Equal0~0_combout\)))) # (!\Add0~34\ & ((\b[17]~input_o\ $ (\Equal0~0_combout\)) # (GND)))
-- \Add0~36\ = CARRY((\b[17]~input_o\ $ (!\Equal0~0_combout\)) # (!\Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[17]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~35_combout\,
	cout => \Add0~36\);

\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\Add0~35_combout\ & ((\a[17]~input_o\ & (\Add1~33\ & VCC)) # (!\a[17]~input_o\ & (!\Add1~33\)))) # (!\Add0~35_combout\ & ((\a[17]~input_o\ & (!\Add1~33\)) # (!\a[17]~input_o\ & ((\Add1~33\) # (GND)))))
-- \Add1~35\ = CARRY((\Add0~35_combout\ & (!\a[17]~input_o\ & !\Add1~33\)) # (!\Add0~35_combout\ & ((!\Add1~33\) # (!\a[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~35_combout\,
	datab => \a[17]~input_o\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\) # ((\oper[1]~input_o\ & (\Add1~34_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~34_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux14~1_combout\);

\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[18]~input_o\) # (\b[18]~input_o\))) # (!\oper[0]~input_o\ & (\a[18]~input_o\ & \b[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[18]~input_o\,
	datac => \b[18]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux13~0_combout\);

\Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (\Add0~36\ & ((\b[18]~input_o\ $ (\Equal0~0_combout\)))) # (!\Add0~36\ & (\b[18]~input_o\ $ (\Equal0~0_combout\ $ (VCC))))
-- \Add0~38\ = CARRY((!\Add0~36\ & (\b[18]~input_o\ $ (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[18]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~36\,
	combout => \Add0~37_combout\,
	cout => \Add0~38\);

\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((\Add0~37_combout\ $ (\a[18]~input_o\ $ (!\Add1~35\)))) # (GND)
-- \Add1~37\ = CARRY((\Add0~37_combout\ & ((\a[18]~input_o\) # (!\Add1~35\))) # (!\Add0~37_combout\ & (\a[18]~input_o\ & !\Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~37_combout\,
	datab => \a[18]~input_o\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\) # ((\oper[1]~input_o\ & (\Add1~36_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~36_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux13~1_combout\);

\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[19]~input_o\) # (\b[19]~input_o\))) # (!\oper[0]~input_o\ & (\a[19]~input_o\ & \b[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[19]~input_o\,
	datac => \b[19]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux12~0_combout\);

\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\Add0~38\ & (\b[19]~input_o\ $ ((!\Equal0~0_combout\)))) # (!\Add0~38\ & ((\b[19]~input_o\ $ (\Equal0~0_combout\)) # (GND)))
-- \Add0~40\ = CARRY((\b[19]~input_o\ $ (!\Equal0~0_combout\)) # (!\Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[19]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~38\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\Add0~39_combout\ & ((\a[19]~input_o\ & (\Add1~37\ & VCC)) # (!\a[19]~input_o\ & (!\Add1~37\)))) # (!\Add0~39_combout\ & ((\a[19]~input_o\ & (!\Add1~37\)) # (!\a[19]~input_o\ & ((\Add1~37\) # (GND)))))
-- \Add1~39\ = CARRY((\Add0~39_combout\ & (!\a[19]~input_o\ & !\Add1~37\)) # (!\Add0~39_combout\ & ((!\Add1~37\) # (!\a[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~39_combout\,
	datab => \a[19]~input_o\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\) # ((\oper[1]~input_o\ & (\Add1~38_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~38_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux12~1_combout\);

\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[20]~input_o\) # (\b[20]~input_o\))) # (!\oper[0]~input_o\ & (\a[20]~input_o\ & \b[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[20]~input_o\,
	datac => \b[20]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux11~0_combout\);

\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\Add0~40\ & ((\b[20]~input_o\ $ (\Equal0~0_combout\)))) # (!\Add0~40\ & (\b[20]~input_o\ $ (\Equal0~0_combout\ $ (VCC))))
-- \Add0~42\ = CARRY((!\Add0~40\ & (\b[20]~input_o\ $ (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[20]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~41_combout\,
	cout => \Add0~42\);

\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = ((\Add0~41_combout\ $ (\a[20]~input_o\ $ (!\Add1~39\)))) # (GND)
-- \Add1~41\ = CARRY((\Add0~41_combout\ & ((\a[20]~input_o\) # (!\Add1~39\))) # (!\Add0~41_combout\ & (\a[20]~input_o\ & !\Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datab => \a[20]~input_o\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\) # ((\oper[1]~input_o\ & (\Add1~40_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~40_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux11~1_combout\);

\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[21]~input_o\) # (\b[21]~input_o\))) # (!\oper[0]~input_o\ & (\a[21]~input_o\ & \b[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[21]~input_o\,
	datac => \b[21]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux10~0_combout\);

\Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (\Add0~42\ & (\b[21]~input_o\ $ ((!\Equal0~0_combout\)))) # (!\Add0~42\ & ((\b[21]~input_o\ $ (\Equal0~0_combout\)) # (GND)))
-- \Add0~44\ = CARRY((\b[21]~input_o\ $ (!\Equal0~0_combout\)) # (!\Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[21]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~42\,
	combout => \Add0~43_combout\,
	cout => \Add0~44\);

\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\Add0~43_combout\ & ((\a[21]~input_o\ & (\Add1~41\ & VCC)) # (!\a[21]~input_o\ & (!\Add1~41\)))) # (!\Add0~43_combout\ & ((\a[21]~input_o\ & (!\Add1~41\)) # (!\a[21]~input_o\ & ((\Add1~41\) # (GND)))))
-- \Add1~43\ = CARRY((\Add0~43_combout\ & (!\a[21]~input_o\ & !\Add1~41\)) # (!\Add0~43_combout\ & ((!\Add1~41\) # (!\a[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~43_combout\,
	datab => \a[21]~input_o\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\) # ((\oper[1]~input_o\ & (\Add1~42_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~42_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux10~1_combout\);

\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[22]~input_o\) # (\b[22]~input_o\))) # (!\oper[0]~input_o\ & (\a[22]~input_o\ & \b[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[22]~input_o\,
	datac => \b[22]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux9~0_combout\);

\Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\Add0~44\ & ((\b[22]~input_o\ $ (\Equal0~0_combout\)))) # (!\Add0~44\ & (\b[22]~input_o\ $ (\Equal0~0_combout\ $ (VCC))))
-- \Add0~46\ = CARRY((!\Add0~44\ & (\b[22]~input_o\ $ (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[22]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~44\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = ((\Add0~45_combout\ $ (\a[22]~input_o\ $ (!\Add1~43\)))) # (GND)
-- \Add1~45\ = CARRY((\Add0~45_combout\ & ((\a[22]~input_o\) # (!\Add1~43\))) # (!\Add0~45_combout\ & (\a[22]~input_o\ & !\Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~45_combout\,
	datab => \a[22]~input_o\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\) # ((\oper[1]~input_o\ & (\Add1~44_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~44_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux9~1_combout\);

\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[23]~input_o\) # (\b[23]~input_o\))) # (!\oper[0]~input_o\ & (\a[23]~input_o\ & \b[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[23]~input_o\,
	datac => \b[23]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux8~0_combout\);

\Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (\Add0~46\ & (\b[23]~input_o\ $ ((!\Equal0~0_combout\)))) # (!\Add0~46\ & ((\b[23]~input_o\ $ (\Equal0~0_combout\)) # (GND)))
-- \Add0~48\ = CARRY((\b[23]~input_o\ $ (!\Equal0~0_combout\)) # (!\Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[23]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~47_combout\,
	cout => \Add0~48\);

\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\Add0~47_combout\ & ((\a[23]~input_o\ & (\Add1~45\ & VCC)) # (!\a[23]~input_o\ & (!\Add1~45\)))) # (!\Add0~47_combout\ & ((\a[23]~input_o\ & (!\Add1~45\)) # (!\a[23]~input_o\ & ((\Add1~45\) # (GND)))))
-- \Add1~47\ = CARRY((\Add0~47_combout\ & (!\a[23]~input_o\ & !\Add1~45\)) # (!\Add0~47_combout\ & ((!\Add1~45\) # (!\a[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~47_combout\,
	datab => \a[23]~input_o\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\) # ((\oper[1]~input_o\ & (\Add1~46_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~46_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux8~1_combout\);

\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[24]~input_o\) # (\b[24]~input_o\))) # (!\oper[0]~input_o\ & (\a[24]~input_o\ & \b[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[24]~input_o\,
	datac => \b[24]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux7~0_combout\);

\Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (\Add0~48\ & ((\b[24]~input_o\ $ (\Equal0~0_combout\)))) # (!\Add0~48\ & (\b[24]~input_o\ $ (\Equal0~0_combout\ $ (VCC))))
-- \Add0~50\ = CARRY((!\Add0~48\ & (\b[24]~input_o\ $ (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[24]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~48\,
	combout => \Add0~49_combout\,
	cout => \Add0~50\);

\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = ((\Add0~49_combout\ $ (\a[24]~input_o\ $ (!\Add1~47\)))) # (GND)
-- \Add1~49\ = CARRY((\Add0~49_combout\ & ((\a[24]~input_o\) # (!\Add1~47\))) # (!\Add0~49_combout\ & (\a[24]~input_o\ & !\Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~49_combout\,
	datab => \a[24]~input_o\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\) # ((\oper[1]~input_o\ & (\Add1~48_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~48_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux7~1_combout\);

\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[25]~input_o\) # (\b[25]~input_o\))) # (!\oper[0]~input_o\ & (\a[25]~input_o\ & \b[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[25]~input_o\,
	datac => \b[25]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux6~0_combout\);

\Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\Add0~50\ & (\b[25]~input_o\ $ ((!\Equal0~0_combout\)))) # (!\Add0~50\ & ((\b[25]~input_o\ $ (\Equal0~0_combout\)) # (GND)))
-- \Add0~52\ = CARRY((\b[25]~input_o\ $ (!\Equal0~0_combout\)) # (!\Add0~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[25]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~50\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\Add0~51_combout\ & ((\a[25]~input_o\ & (\Add1~49\ & VCC)) # (!\a[25]~input_o\ & (!\Add1~49\)))) # (!\Add0~51_combout\ & ((\a[25]~input_o\ & (!\Add1~49\)) # (!\a[25]~input_o\ & ((\Add1~49\) # (GND)))))
-- \Add1~51\ = CARRY((\Add0~51_combout\ & (!\a[25]~input_o\ & !\Add1~49\)) # (!\Add0~51_combout\ & ((!\Add1~49\) # (!\a[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~51_combout\,
	datab => \a[25]~input_o\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\) # ((\oper[1]~input_o\ & (\Add1~50_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~50_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux6~1_combout\);

\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[26]~input_o\) # (\b[26]~input_o\))) # (!\oper[0]~input_o\ & (\a[26]~input_o\ & \b[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[26]~input_o\,
	datac => \b[26]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux5~0_combout\);

\Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (\Add0~52\ & ((\b[26]~input_o\ $ (\Equal0~0_combout\)))) # (!\Add0~52\ & (\b[26]~input_o\ $ (\Equal0~0_combout\ $ (VCC))))
-- \Add0~54\ = CARRY((!\Add0~52\ & (\b[26]~input_o\ $ (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[26]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~53_combout\,
	cout => \Add0~54\);

\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = ((\Add0~53_combout\ $ (\a[26]~input_o\ $ (!\Add1~51\)))) # (GND)
-- \Add1~53\ = CARRY((\Add0~53_combout\ & ((\a[26]~input_o\) # (!\Add1~51\))) # (!\Add0~53_combout\ & (\a[26]~input_o\ & !\Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~53_combout\,
	datab => \a[26]~input_o\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\) # ((\oper[1]~input_o\ & (\Add1~52_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~52_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux5~1_combout\);

\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[27]~input_o\) # (\b[27]~input_o\))) # (!\oper[0]~input_o\ & (\a[27]~input_o\ & \b[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[27]~input_o\,
	datac => \b[27]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux4~0_combout\);

\Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (\Add0~54\ & (\b[27]~input_o\ $ ((!\Equal0~0_combout\)))) # (!\Add0~54\ & ((\b[27]~input_o\ $ (\Equal0~0_combout\)) # (GND)))
-- \Add0~56\ = CARRY((\b[27]~input_o\ $ (!\Equal0~0_combout\)) # (!\Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[27]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~54\,
	combout => \Add0~55_combout\,
	cout => \Add0~56\);

\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\Add0~55_combout\ & ((\a[27]~input_o\ & (\Add1~53\ & VCC)) # (!\a[27]~input_o\ & (!\Add1~53\)))) # (!\Add0~55_combout\ & ((\a[27]~input_o\ & (!\Add1~53\)) # (!\a[27]~input_o\ & ((\Add1~53\) # (GND)))))
-- \Add1~55\ = CARRY((\Add0~55_combout\ & (!\a[27]~input_o\ & !\Add1~53\)) # (!\Add0~55_combout\ & ((!\Add1~53\) # (!\a[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~55_combout\,
	datab => \a[27]~input_o\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\) # ((\oper[1]~input_o\ & (\Add1~54_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~54_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux4~1_combout\);

\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[28]~input_o\) # (\b[28]~input_o\))) # (!\oper[0]~input_o\ & (\a[28]~input_o\ & \b[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[28]~input_o\,
	datac => \b[28]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux3~0_combout\);

\Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\Add0~56\ & ((\b[28]~input_o\ $ (\Equal0~0_combout\)))) # (!\Add0~56\ & (\b[28]~input_o\ $ (\Equal0~0_combout\ $ (VCC))))
-- \Add0~58\ = CARRY((!\Add0~56\ & (\b[28]~input_o\ $ (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[28]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~56\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = ((\Add0~57_combout\ $ (\a[28]~input_o\ $ (!\Add1~55\)))) # (GND)
-- \Add1~57\ = CARRY((\Add0~57_combout\ & ((\a[28]~input_o\) # (!\Add1~55\))) # (!\Add0~57_combout\ & (\a[28]~input_o\ & !\Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~57_combout\,
	datab => \a[28]~input_o\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\) # ((\oper[1]~input_o\ & (\Add1~56_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~56_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux3~1_combout\);

\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[29]~input_o\) # (\b[29]~input_o\))) # (!\oper[0]~input_o\ & (\a[29]~input_o\ & \b[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[29]~input_o\,
	datac => \b[29]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux2~0_combout\);

\Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (\Add0~58\ & (\b[29]~input_o\ $ ((!\Equal0~0_combout\)))) # (!\Add0~58\ & ((\b[29]~input_o\ $ (\Equal0~0_combout\)) # (GND)))
-- \Add0~60\ = CARRY((\b[29]~input_o\ $ (!\Equal0~0_combout\)) # (!\Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[29]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~59_combout\,
	cout => \Add0~60\);

\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\Add0~59_combout\ & ((\a[29]~input_o\ & (\Add1~57\ & VCC)) # (!\a[29]~input_o\ & (!\Add1~57\)))) # (!\Add0~59_combout\ & ((\a[29]~input_o\ & (!\Add1~57\)) # (!\a[29]~input_o\ & ((\Add1~57\) # (GND)))))
-- \Add1~59\ = CARRY((\Add0~59_combout\ & (!\a[29]~input_o\ & !\Add1~57\)) # (!\Add0~59_combout\ & ((!\Add1~57\) # (!\a[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~59_combout\,
	datab => \a[29]~input_o\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\) # ((\oper[1]~input_o\ & (\Add1~58_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~58_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux2~1_combout\);

\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\a[30]~input_o\) # (\b[30]~input_o\))) # (!\oper[0]~input_o\ & (\a[30]~input_o\ & \b[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \a[30]~input_o\,
	datac => \b[30]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux1~0_combout\);

\Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = (\Add0~60\ & ((\b[30]~input_o\ $ (\Equal0~0_combout\)))) # (!\Add0~60\ & (\b[30]~input_o\ $ (\Equal0~0_combout\ $ (VCC))))
-- \Add0~62\ = CARRY((!\Add0~60\ & (\b[30]~input_o\ $ (\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[30]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	cin => \Add0~60\,
	combout => \Add0~61_combout\,
	cout => \Add0~62\);

\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = ((\Add0~61_combout\ $ (\a[30]~input_o\ $ (!\Add1~59\)))) # (GND)
-- \Add1~61\ = CARRY((\Add0~61_combout\ & ((\a[30]~input_o\) # (!\Add1~59\))) # (!\Add0~61_combout\ & (\a[30]~input_o\ & !\Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~61_combout\,
	datab => \a[30]~input_o\,
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\) # ((\oper[1]~input_o\ & (\Add1~60_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~60_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux1~1_combout\);

\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\oper[1]~input_o\ & ((\oper[0]~input_o\ & ((\b[31]~input_o\) # (\a[31]~input_o\))) # (!\oper[0]~input_o\ & (\b[31]~input_o\ & \a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \oper[0]~input_o\,
	datab => \b[31]~input_o\,
	datac => \a[31]~input_o\,
	datad => \oper[1]~input_o\,
	combout => \Mux0~0_combout\);

\Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = \b[31]~input_o\ $ (\Equal0~0_combout\ $ (\Add0~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[31]~input_o\,
	datab => \Equal0~0_combout\,
	cin => \Add0~62\,
	combout => \Add0~63_combout\);

\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \Add0~63_combout\ $ (\a[31]~input_o\ $ (\Add1~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~63_combout\,
	datab => \a[31]~input_o\,
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\) # ((\oper[1]~input_o\ & (\Add1~62_combout\ & !\oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \oper[1]~input_o\,
	datac => \Add1~62_combout\,
	datad => \oper[0]~input_o\,
	combout => \Mux0~1_combout\);

\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\Mux30~1_combout\ & (!\Mux29~1_combout\ & (!\Mux28~1_combout\ & !\Mux27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \Mux28~1_combout\,
	datad => \Mux27~1_combout\,
	combout => \Equal1~0_combout\);

\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\Mux26~1_combout\ & (!\Mux25~1_combout\ & (!\Mux24~1_combout\ & !\Mux23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \Mux25~1_combout\,
	datac => \Mux24~1_combout\,
	datad => \Mux23~1_combout\,
	combout => \Equal1~1_combout\);

\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\Mux22~1_combout\ & (!\Mux21~1_combout\ & (!\Mux20~1_combout\ & !\Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~1_combout\,
	datab => \Mux21~1_combout\,
	datac => \Mux20~1_combout\,
	datad => \Mux19~1_combout\,
	combout => \Equal1~2_combout\);

\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\Mux18~1_combout\ & (!\Mux17~1_combout\ & (!\Mux16~1_combout\ & !\Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~1_combout\,
	datab => \Mux17~1_combout\,
	datac => \Mux16~1_combout\,
	datad => \Mux15~1_combout\,
	combout => \Equal1~3_combout\);

\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~0_combout\ & (\Equal1~1_combout\ & (\Equal1~2_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\Mux14~1_combout\ & (!\Mux13~1_combout\ & (!\Mux12~1_combout\ & !\Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux11~1_combout\,
	combout => \Equal1~5_combout\);

\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!\Mux10~1_combout\ & (!\Mux9~1_combout\ & (!\Mux8~1_combout\ & !\Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \Mux9~1_combout\,
	datac => \Mux8~1_combout\,
	datad => \Mux7~1_combout\,
	combout => \Equal1~6_combout\);

\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!\Mux6~1_combout\ & (!\Mux5~1_combout\ & (!\Mux4~1_combout\ & !\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux5~1_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux3~1_combout\,
	combout => \Equal1~7_combout\);

\Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!\Mux2~1_combout\ & !\Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux2~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Equal1~8_combout\);

\Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~7_combout\ & (\Equal1~8_combout\ & (!\Mux31~1_combout\ & !\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~7_combout\,
	datab => \Equal1~8_combout\,
	datac => \Mux31~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Equal1~9_combout\);

\Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~4_combout\ & (\Equal1~5_combout\ & (\Equal1~6_combout\ & \Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal1~5_combout\,
	datac => \Equal1~6_combout\,
	datad => \Equal1~9_combout\,
	combout => \Equal1~10_combout\);

\ovf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ovf~0_combout\ = (\Mux0~1_combout\ & ((\a[31]~input_o\) # (\Add0~63_combout\))) # (!\Mux0~1_combout\ & ((!\Add0~63_combout\) # (!\a[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datac => \a[31]~input_o\,
	datad => \Add0~63_combout\,
	combout => \ovf~0_combout\);

ww_res(0) <= \res[0]~output_o\;

ww_res(1) <= \res[1]~output_o\;

ww_res(2) <= \res[2]~output_o\;

ww_res(3) <= \res[3]~output_o\;

ww_res(4) <= \res[4]~output_o\;

ww_res(5) <= \res[5]~output_o\;

ww_res(6) <= \res[6]~output_o\;

ww_res(7) <= \res[7]~output_o\;

ww_res(8) <= \res[8]~output_o\;

ww_res(9) <= \res[9]~output_o\;

ww_res(10) <= \res[10]~output_o\;

ww_res(11) <= \res[11]~output_o\;

ww_res(12) <= \res[12]~output_o\;

ww_res(13) <= \res[13]~output_o\;

ww_res(14) <= \res[14]~output_o\;

ww_res(15) <= \res[15]~output_o\;

ww_res(16) <= \res[16]~output_o\;

ww_res(17) <= \res[17]~output_o\;

ww_res(18) <= \res[18]~output_o\;

ww_res(19) <= \res[19]~output_o\;

ww_res(20) <= \res[20]~output_o\;

ww_res(21) <= \res[21]~output_o\;

ww_res(22) <= \res[22]~output_o\;

ww_res(23) <= \res[23]~output_o\;

ww_res(24) <= \res[24]~output_o\;

ww_res(25) <= \res[25]~output_o\;

ww_res(26) <= \res[26]~output_o\;

ww_res(27) <= \res[27]~output_o\;

ww_res(28) <= \res[28]~output_o\;

ww_res(29) <= \res[29]~output_o\;

ww_res(30) <= \res[30]~output_o\;

ww_res(31) <= \res[31]~output_o\;

ww_zero <= \zero~output_o\;

ww_ovf <= \ovf~output_o\;
END structure;


