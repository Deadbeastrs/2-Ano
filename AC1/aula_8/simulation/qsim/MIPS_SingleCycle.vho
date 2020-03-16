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

-- DATE "11/11/2019 10:52:09"

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

ENTITY 	InstructionMemory IS
    PORT (
	address : IN std_logic_vector(5 DOWNTO 0);
	readData : OUT std_logic_vector(31 DOWNTO 0)
	);
END InstructionMemory;

ARCHITECTURE structure OF InstructionMemory IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_address : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_readData : std_logic_vector(31 DOWNTO 0);
SIGNAL \readData[0]~output_o\ : std_logic;
SIGNAL \readData[1]~output_o\ : std_logic;
SIGNAL \readData[2]~output_o\ : std_logic;
SIGNAL \readData[3]~output_o\ : std_logic;
SIGNAL \readData[4]~output_o\ : std_logic;
SIGNAL \readData[5]~output_o\ : std_logic;
SIGNAL \readData[6]~output_o\ : std_logic;
SIGNAL \readData[7]~output_o\ : std_logic;
SIGNAL \readData[8]~output_o\ : std_logic;
SIGNAL \readData[9]~output_o\ : std_logic;
SIGNAL \readData[10]~output_o\ : std_logic;
SIGNAL \readData[11]~output_o\ : std_logic;
SIGNAL \readData[12]~output_o\ : std_logic;
SIGNAL \readData[13]~output_o\ : std_logic;
SIGNAL \readData[14]~output_o\ : std_logic;
SIGNAL \readData[15]~output_o\ : std_logic;
SIGNAL \readData[16]~output_o\ : std_logic;
SIGNAL \readData[17]~output_o\ : std_logic;
SIGNAL \readData[18]~output_o\ : std_logic;
SIGNAL \readData[19]~output_o\ : std_logic;
SIGNAL \readData[20]~output_o\ : std_logic;
SIGNAL \readData[21]~output_o\ : std_logic;
SIGNAL \readData[22]~output_o\ : std_logic;
SIGNAL \readData[23]~output_o\ : std_logic;
SIGNAL \readData[24]~output_o\ : std_logic;
SIGNAL \readData[25]~output_o\ : std_logic;
SIGNAL \readData[26]~output_o\ : std_logic;
SIGNAL \readData[27]~output_o\ : std_logic;
SIGNAL \readData[28]~output_o\ : std_logic;
SIGNAL \readData[29]~output_o\ : std_logic;
SIGNAL \readData[30]~output_o\ : std_logic;
SIGNAL \readData[31]~output_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;

BEGIN

ww_address <= address;
readData <= ww_readData;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\readData[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[0]~output_o\);

\readData[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[1]~output_o\);

\readData[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \readData[2]~output_o\);

\readData[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[3]~output_o\);

\readData[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[4]~output_o\);

\readData[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[5]~output_o\);

\readData[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[6]~output_o\);

\readData[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[7]~output_o\);

\readData[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[8]~output_o\);

\readData[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[9]~output_o\);

\readData[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[10]~output_o\);

\readData[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[11]~output_o\);

\readData[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[12]~output_o\);

\readData[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[13]~output_o\);

\readData[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[14]~output_o\);

\readData[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[15]~output_o\);

\readData[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~2_combout\,
	devoe => ww_devoe,
	o => \readData[16]~output_o\);

\readData[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[17]~output_o\);

\readData[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[18]~output_o\);

\readData[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[19]~output_o\);

\readData[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[20]~output_o\);

\readData[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \readData[21]~output_o\);

\readData[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[22]~output_o\);

\readData[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[23]~output_o\);

\readData[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[24]~output_o\);

\readData[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[25]~output_o\);

\readData[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \readData[26]~output_o\);

\readData[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \readData[27]~output_o\);

\readData[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[28]~output_o\);

\readData[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \readData[29]~output_o\);

\readData[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readData[30]~output_o\);

\readData[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \readData[31]~output_o\);

\address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

\address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

\address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

\address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

\address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\address[1]~input_o\ & (!\address[2]~input_o\ & (!\address[3]~input_o\ & !\address[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \address[2]~input_o\,
	datac => \address[3]~input_o\,
	datad => \address[4]~input_o\,
	combout => \Mux6~0_combout\);

\address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\address[0]~input_o\ & (\Mux6~0_combout\ & !\address[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \Mux6~0_combout\,
	datad => \address[5]~input_o\,
	combout => \Mux6~1_combout\);

\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~0_combout\ & !\address[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datad => \address[5]~input_o\,
	combout => \Mux6~2_combout\);

\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux6~0_combout\ & (!\address[0]~input_o\ & !\address[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datac => \address[0]~input_o\,
	datad => \address[5]~input_o\,
	combout => \Mux3~0_combout\);

ww_readData(0) <= \readData[0]~output_o\;

ww_readData(1) <= \readData[1]~output_o\;

ww_readData(2) <= \readData[2]~output_o\;

ww_readData(3) <= \readData[3]~output_o\;

ww_readData(4) <= \readData[4]~output_o\;

ww_readData(5) <= \readData[5]~output_o\;

ww_readData(6) <= \readData[6]~output_o\;

ww_readData(7) <= \readData[7]~output_o\;

ww_readData(8) <= \readData[8]~output_o\;

ww_readData(9) <= \readData[9]~output_o\;

ww_readData(10) <= \readData[10]~output_o\;

ww_readData(11) <= \readData[11]~output_o\;

ww_readData(12) <= \readData[12]~output_o\;

ww_readData(13) <= \readData[13]~output_o\;

ww_readData(14) <= \readData[14]~output_o\;

ww_readData(15) <= \readData[15]~output_o\;

ww_readData(16) <= \readData[16]~output_o\;

ww_readData(17) <= \readData[17]~output_o\;

ww_readData(18) <= \readData[18]~output_o\;

ww_readData(19) <= \readData[19]~output_o\;

ww_readData(20) <= \readData[20]~output_o\;

ww_readData(21) <= \readData[21]~output_o\;

ww_readData(22) <= \readData[22]~output_o\;

ww_readData(23) <= \readData[23]~output_o\;

ww_readData(24) <= \readData[24]~output_o\;

ww_readData(25) <= \readData[25]~output_o\;

ww_readData(26) <= \readData[26]~output_o\;

ww_readData(27) <= \readData[27]~output_o\;

ww_readData(28) <= \readData[28]~output_o\;

ww_readData(29) <= \readData[29]~output_o\;

ww_readData(30) <= \readData[30]~output_o\;

ww_readData(31) <= \readData[31]~output_o\;
END structure;


