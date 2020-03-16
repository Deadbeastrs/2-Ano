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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/11/2019 10:11:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PCupdate
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PCupdate_vhd_vec_tst IS
END PCupdate_vhd_vec_tst;
ARCHITECTURE PCupdate_arch OF PCupdate_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL branch : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL jAddr : STD_LOGIC_VECTOR(25 DOWNTO 0);
SIGNAL jump : STD_LOGIC;
SIGNAL offset : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pc : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL zero : STD_LOGIC;
COMPONENT PCupdate
	PORT (
	branch : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	jAddr : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
	jump : IN STD_LOGIC;
	offset : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	pc : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	reset : IN STD_LOGIC;
	zero : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PCupdate
	PORT MAP (
-- list connections between master ports and signals
	branch => branch,
	clk => clk,
	jAddr => jAddr,
	jump => jump,
	offset => offset,
	pc => pc,
	reset => reset,
	zero => zero
	);

-- branch
t_prcs_branch: PROCESS
BEGIN
	branch <= '0';
WAIT;
END PROCESS t_prcs_branch;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- jAddr[25]
t_prcs_jAddr_25: PROCESS
BEGIN
	jAddr(25) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_25;
-- jAddr[24]
t_prcs_jAddr_24: PROCESS
BEGIN
	jAddr(24) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_24;
-- jAddr[23]
t_prcs_jAddr_23: PROCESS
BEGIN
	jAddr(23) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_23;
-- jAddr[22]
t_prcs_jAddr_22: PROCESS
BEGIN
	jAddr(22) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_22;
-- jAddr[21]
t_prcs_jAddr_21: PROCESS
BEGIN
	jAddr(21) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_21;
-- jAddr[20]
t_prcs_jAddr_20: PROCESS
BEGIN
	jAddr(20) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_20;
-- jAddr[19]
t_prcs_jAddr_19: PROCESS
BEGIN
	jAddr(19) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_19;
-- jAddr[18]
t_prcs_jAddr_18: PROCESS
BEGIN
	jAddr(18) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_18;
-- jAddr[17]
t_prcs_jAddr_17: PROCESS
BEGIN
	jAddr(17) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_17;
-- jAddr[16]
t_prcs_jAddr_16: PROCESS
BEGIN
	jAddr(16) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_16;
-- jAddr[15]
t_prcs_jAddr_15: PROCESS
BEGIN
	jAddr(15) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_15;
-- jAddr[14]
t_prcs_jAddr_14: PROCESS
BEGIN
	jAddr(14) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_14;
-- jAddr[13]
t_prcs_jAddr_13: PROCESS
BEGIN
	jAddr(13) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_13;
-- jAddr[12]
t_prcs_jAddr_12: PROCESS
BEGIN
	jAddr(12) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_12;
-- jAddr[11]
t_prcs_jAddr_11: PROCESS
BEGIN
	jAddr(11) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_11;
-- jAddr[10]
t_prcs_jAddr_10: PROCESS
BEGIN
	jAddr(10) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_10;
-- jAddr[9]
t_prcs_jAddr_9: PROCESS
BEGIN
	jAddr(9) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_9;
-- jAddr[8]
t_prcs_jAddr_8: PROCESS
BEGIN
	jAddr(8) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_8;
-- jAddr[7]
t_prcs_jAddr_7: PROCESS
BEGIN
	jAddr(7) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_7;
-- jAddr[6]
t_prcs_jAddr_6: PROCESS
BEGIN
	jAddr(6) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_6;
-- jAddr[5]
t_prcs_jAddr_5: PROCESS
BEGIN
	jAddr(5) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_5;
-- jAddr[4]
t_prcs_jAddr_4: PROCESS
BEGIN
	jAddr(4) <= '0';
	WAIT FOR 200000 ps;
	jAddr(4) <= '1';
	WAIT FOR 80000 ps;
	jAddr(4) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_4;
-- jAddr[3]
t_prcs_jAddr_3: PROCESS
BEGIN
	jAddr(3) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_3;
-- jAddr[2]
t_prcs_jAddr_2: PROCESS
BEGIN
	jAddr(2) <= '0';
	WAIT FOR 200000 ps;
	jAddr(2) <= '1';
	WAIT FOR 80000 ps;
	jAddr(2) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_2;
-- jAddr[1]
t_prcs_jAddr_1: PROCESS
BEGIN
	jAddr(1) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_1;
-- jAddr[0]
t_prcs_jAddr_0: PROCESS
BEGIN
	jAddr(0) <= '0';
WAIT;
END PROCESS t_prcs_jAddr_0;

-- jump
t_prcs_jump: PROCESS
BEGIN
	jump <= '0';
	WAIT FOR 220000 ps;
	jump <= '1';
	WAIT FOR 20000 ps;
	jump <= '0';
WAIT;
END PROCESS t_prcs_jump;
-- offset[31]
t_prcs_offset_31: PROCESS
BEGIN
	offset(31) <= '0';
WAIT;
END PROCESS t_prcs_offset_31;
-- offset[30]
t_prcs_offset_30: PROCESS
BEGIN
	offset(30) <= '0';
WAIT;
END PROCESS t_prcs_offset_30;
-- offset[29]
t_prcs_offset_29: PROCESS
BEGIN
	offset(29) <= '0';
WAIT;
END PROCESS t_prcs_offset_29;
-- offset[28]
t_prcs_offset_28: PROCESS
BEGIN
	offset(28) <= '0';
WAIT;
END PROCESS t_prcs_offset_28;
-- offset[27]
t_prcs_offset_27: PROCESS
BEGIN
	offset(27) <= '0';
WAIT;
END PROCESS t_prcs_offset_27;
-- offset[26]
t_prcs_offset_26: PROCESS
BEGIN
	offset(26) <= '0';
WAIT;
END PROCESS t_prcs_offset_26;
-- offset[25]
t_prcs_offset_25: PROCESS
BEGIN
	offset(25) <= '0';
WAIT;
END PROCESS t_prcs_offset_25;
-- offset[24]
t_prcs_offset_24: PROCESS
BEGIN
	offset(24) <= '0';
WAIT;
END PROCESS t_prcs_offset_24;
-- offset[23]
t_prcs_offset_23: PROCESS
BEGIN
	offset(23) <= '0';
WAIT;
END PROCESS t_prcs_offset_23;
-- offset[22]
t_prcs_offset_22: PROCESS
BEGIN
	offset(22) <= '0';
WAIT;
END PROCESS t_prcs_offset_22;
-- offset[21]
t_prcs_offset_21: PROCESS
BEGIN
	offset(21) <= '0';
WAIT;
END PROCESS t_prcs_offset_21;
-- offset[20]
t_prcs_offset_20: PROCESS
BEGIN
	offset(20) <= '0';
WAIT;
END PROCESS t_prcs_offset_20;
-- offset[19]
t_prcs_offset_19: PROCESS
BEGIN
	offset(19) <= '0';
WAIT;
END PROCESS t_prcs_offset_19;
-- offset[18]
t_prcs_offset_18: PROCESS
BEGIN
	offset(18) <= '0';
WAIT;
END PROCESS t_prcs_offset_18;
-- offset[17]
t_prcs_offset_17: PROCESS
BEGIN
	offset(17) <= '0';
WAIT;
END PROCESS t_prcs_offset_17;
-- offset[16]
t_prcs_offset_16: PROCESS
BEGIN
	offset(16) <= '0';
WAIT;
END PROCESS t_prcs_offset_16;
-- offset[15]
t_prcs_offset_15: PROCESS
BEGIN
	offset(15) <= '0';
WAIT;
END PROCESS t_prcs_offset_15;
-- offset[14]
t_prcs_offset_14: PROCESS
BEGIN
	offset(14) <= '0';
WAIT;
END PROCESS t_prcs_offset_14;
-- offset[13]
t_prcs_offset_13: PROCESS
BEGIN
	offset(13) <= '0';
WAIT;
END PROCESS t_prcs_offset_13;
-- offset[12]
t_prcs_offset_12: PROCESS
BEGIN
	offset(12) <= '0';
WAIT;
END PROCESS t_prcs_offset_12;
-- offset[11]
t_prcs_offset_11: PROCESS
BEGIN
	offset(11) <= '0';
WAIT;
END PROCESS t_prcs_offset_11;
-- offset[10]
t_prcs_offset_10: PROCESS
BEGIN
	offset(10) <= '0';
WAIT;
END PROCESS t_prcs_offset_10;
-- offset[9]
t_prcs_offset_9: PROCESS
BEGIN
	offset(9) <= '0';
WAIT;
END PROCESS t_prcs_offset_9;
-- offset[8]
t_prcs_offset_8: PROCESS
BEGIN
	offset(8) <= '0';
WAIT;
END PROCESS t_prcs_offset_8;
-- offset[7]
t_prcs_offset_7: PROCESS
BEGIN
	offset(7) <= '0';
WAIT;
END PROCESS t_prcs_offset_7;
-- offset[6]
t_prcs_offset_6: PROCESS
BEGIN
	offset(6) <= '0';
WAIT;
END PROCESS t_prcs_offset_6;
-- offset[5]
t_prcs_offset_5: PROCESS
BEGIN
	offset(5) <= '0';
WAIT;
END PROCESS t_prcs_offset_5;
-- offset[4]
t_prcs_offset_4: PROCESS
BEGIN
	offset(4) <= '0';
WAIT;
END PROCESS t_prcs_offset_4;
-- offset[3]
t_prcs_offset_3: PROCESS
BEGIN
	offset(3) <= '0';
WAIT;
END PROCESS t_prcs_offset_3;
-- offset[2]
t_prcs_offset_2: PROCESS
BEGIN
	offset(2) <= '0';
WAIT;
END PROCESS t_prcs_offset_2;
-- offset[1]
t_prcs_offset_1: PROCESS
BEGIN
	offset(1) <= '0';
WAIT;
END PROCESS t_prcs_offset_1;
-- offset[0]
t_prcs_offset_0: PROCESS
BEGIN
	offset(0) <= '0';
WAIT;
END PROCESS t_prcs_offset_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- zero
t_prcs_zero: PROCESS
BEGIN
	zero <= '0';
WAIT;
END PROCESS t_prcs_zero;
END PCupdate_arch;
