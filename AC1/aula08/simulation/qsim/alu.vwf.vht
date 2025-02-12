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
-- Generated on "11/18/2019 10:53:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU32
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU32_vhd_vec_tst IS
END ALU32_vhd_vec_tst;
ARCHITECTURE ALU32_arch OF ALU32_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL oper : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ovf : STD_LOGIC;
SIGNAL res : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL zero : STD_LOGIC;
COMPONENT ALU32
	PORT (
	a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	oper : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	ovf : OUT STD_LOGIC;
	res : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	zero : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ALU32
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	oper => oper,
	ovf => ovf,
	res => res,
	zero => zero
	);
-- a[31]
t_prcs_a_31: PROCESS
BEGIN
	a(31) <= '0';
	WAIT FOR 420000 ps;
	a(31) <= '1';
	WAIT FOR 280000 ps;
	a(31) <= '0';
WAIT;
END PROCESS t_prcs_a_31;
-- a[30]
t_prcs_a_30: PROCESS
BEGIN
	a(30) <= '0';
	WAIT FOR 420000 ps;
	a(30) <= '1';
	WAIT FOR 280000 ps;
	a(30) <= '0';
WAIT;
END PROCESS t_prcs_a_30;
-- a[29]
t_prcs_a_29: PROCESS
BEGIN
	a(29) <= '0';
	WAIT FOR 420000 ps;
	a(29) <= '1';
	WAIT FOR 280000 ps;
	a(29) <= '0';
WAIT;
END PROCESS t_prcs_a_29;
-- a[28]
t_prcs_a_28: PROCESS
BEGIN
	a(28) <= '1';
	WAIT FOR 700000 ps;
	a(28) <= '0';
WAIT;
END PROCESS t_prcs_a_28;
-- a[27]
t_prcs_a_27: PROCESS
BEGIN
	a(27) <= '0';
WAIT;
END PROCESS t_prcs_a_27;
-- a[26]
t_prcs_a_26: PROCESS
BEGIN
	a(26) <= '0';
WAIT;
END PROCESS t_prcs_a_26;
-- a[25]
t_prcs_a_25: PROCESS
BEGIN
	a(25) <= '1';
	WAIT FOR 700000 ps;
	a(25) <= '0';
WAIT;
END PROCESS t_prcs_a_25;
-- a[24]
t_prcs_a_24: PROCESS
BEGIN
	a(24) <= '0';
	WAIT FOR 420000 ps;
	a(24) <= '1';
	WAIT FOR 280000 ps;
	a(24) <= '0';
WAIT;
END PROCESS t_prcs_a_24;
-- a[23]
t_prcs_a_23: PROCESS
BEGIN
	a(23) <= '1';
	WAIT FOR 420000 ps;
	a(23) <= '0';
WAIT;
END PROCESS t_prcs_a_23;
-- a[22]
t_prcs_a_22: PROCESS
BEGIN
	a(22) <= '0';
	WAIT FOR 420000 ps;
	a(22) <= '1';
	WAIT FOR 280000 ps;
	a(22) <= '0';
WAIT;
END PROCESS t_prcs_a_22;
-- a[21]
t_prcs_a_21: PROCESS
BEGIN
	a(21) <= '1';
	WAIT FOR 420000 ps;
	a(21) <= '0';
WAIT;
END PROCESS t_prcs_a_21;
-- a[20]
t_prcs_a_20: PROCESS
BEGIN
	a(20) <= '0';
WAIT;
END PROCESS t_prcs_a_20;
-- a[19]
t_prcs_a_19: PROCESS
BEGIN
	a(19) <= '1';
	WAIT FOR 420000 ps;
	a(19) <= '0';
WAIT;
END PROCESS t_prcs_a_19;
-- a[18]
t_prcs_a_18: PROCESS
BEGIN
	a(18) <= '0';
	WAIT FOR 420000 ps;
	a(18) <= '1';
	WAIT FOR 280000 ps;
	a(18) <= '0';
WAIT;
END PROCESS t_prcs_a_18;
-- a[17]
t_prcs_a_17: PROCESS
BEGIN
	a(17) <= '1';
	WAIT FOR 700000 ps;
	a(17) <= '0';
WAIT;
END PROCESS t_prcs_a_17;
-- a[16]
t_prcs_a_16: PROCESS
BEGIN
	a(16) <= '1';
	WAIT FOR 700000 ps;
	a(16) <= '0';
WAIT;
END PROCESS t_prcs_a_16;
-- a[15]
t_prcs_a_15: PROCESS
BEGIN
	a(15) <= '0';
	WAIT FOR 420000 ps;
	a(15) <= '1';
	WAIT FOR 280000 ps;
	a(15) <= '0';
WAIT;
END PROCESS t_prcs_a_15;
-- a[14]
t_prcs_a_14: PROCESS
BEGIN
	a(14) <= '0';
	WAIT FOR 420000 ps;
	a(14) <= '1';
	WAIT FOR 280000 ps;
	a(14) <= '0';
WAIT;
END PROCESS t_prcs_a_14;
-- a[13]
t_prcs_a_13: PROCESS
BEGIN
	a(13) <= '0';
WAIT;
END PROCESS t_prcs_a_13;
-- a[12]
t_prcs_a_12: PROCESS
BEGIN
	a(12) <= '0';
WAIT;
END PROCESS t_prcs_a_12;
-- a[11]
t_prcs_a_11: PROCESS
BEGIN
	a(11) <= '0';
WAIT;
END PROCESS t_prcs_a_11;
-- a[10]
t_prcs_a_10: PROCESS
BEGIN
	a(10) <= '0';
WAIT;
END PROCESS t_prcs_a_10;
-- a[9]
t_prcs_a_9: PROCESS
BEGIN
	a(9) <= '0';
	WAIT FOR 420000 ps;
	a(9) <= '1';
	WAIT FOR 280000 ps;
	a(9) <= '0';
WAIT;
END PROCESS t_prcs_a_9;
-- a[8]
t_prcs_a_8: PROCESS
BEGIN
	a(8) <= '1';
	WAIT FOR 420000 ps;
	a(8) <= '0';
WAIT;
END PROCESS t_prcs_a_8;
-- a[7]
t_prcs_a_7: PROCESS
BEGIN
	a(7) <= '0';
WAIT;
END PROCESS t_prcs_a_7;
-- a[6]
t_prcs_a_6: PROCESS
BEGIN
	a(6) <= '0';
WAIT;
END PROCESS t_prcs_a_6;
-- a[5]
t_prcs_a_5: PROCESS
BEGIN
	a(5) <= '1';
	WAIT FOR 420000 ps;
	a(5) <= '0';
WAIT;
END PROCESS t_prcs_a_5;
-- a[4]
t_prcs_a_4: PROCESS
BEGIN
	a(4) <= '1';
	WAIT FOR 700000 ps;
	a(4) <= '0';
WAIT;
END PROCESS t_prcs_a_4;
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '0';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= '1';
	WAIT FOR 420000 ps;
	a(2) <= '0';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= '0';
WAIT;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
	a(0) <= '0';
	WAIT FOR 700000 ps;
	a(0) <= '1';
WAIT;
END PROCESS t_prcs_a_0;
-- b[31]
t_prcs_b_31: PROCESS
BEGIN
	b(31) <= '0';
WAIT;
END PROCESS t_prcs_b_31;
-- b[30]
t_prcs_b_30: PROCESS
BEGIN
	b(30) <= '0';
WAIT;
END PROCESS t_prcs_b_30;
-- b[29]
t_prcs_b_29: PROCESS
BEGIN
	b(29) <= '1';
	WAIT FOR 420000 ps;
	b(29) <= '0';
WAIT;
END PROCESS t_prcs_b_29;
-- b[28]
t_prcs_b_28: PROCESS
BEGIN
	b(28) <= '0';
WAIT;
END PROCESS t_prcs_b_28;
-- b[27]
t_prcs_b_27: PROCESS
BEGIN
	b(27) <= '1';
	WAIT FOR 420000 ps;
	b(27) <= '0';
WAIT;
END PROCESS t_prcs_b_27;
-- b[26]
t_prcs_b_26: PROCESS
BEGIN
	b(26) <= '1';
	WAIT FOR 420000 ps;
	b(26) <= '0';
WAIT;
END PROCESS t_prcs_b_26;
-- b[25]
t_prcs_b_25: PROCESS
BEGIN
	b(25) <= '0';
WAIT;
END PROCESS t_prcs_b_25;
-- b[24]
t_prcs_b_24: PROCESS
BEGIN
	b(24) <= '0';
	WAIT FOR 420000 ps;
	b(24) <= '1';
	WAIT FOR 280000 ps;
	b(24) <= '0';
WAIT;
END PROCESS t_prcs_b_24;
-- b[23]
t_prcs_b_23: PROCESS
BEGIN
	b(23) <= '0';
	WAIT FOR 420000 ps;
	b(23) <= '1';
	WAIT FOR 280000 ps;
	b(23) <= '0';
WAIT;
END PROCESS t_prcs_b_23;
-- b[22]
t_prcs_b_22: PROCESS
BEGIN
	b(22) <= '0';
	WAIT FOR 420000 ps;
	b(22) <= '1';
	WAIT FOR 280000 ps;
	b(22) <= '0';
WAIT;
END PROCESS t_prcs_b_22;
-- b[21]
t_prcs_b_21: PROCESS
BEGIN
	b(21) <= '1';
	WAIT FOR 420000 ps;
	b(21) <= '0';
WAIT;
END PROCESS t_prcs_b_21;
-- b[20]
t_prcs_b_20: PROCESS
BEGIN
	b(20) <= '1';
	WAIT FOR 700000 ps;
	b(20) <= '0';
WAIT;
END PROCESS t_prcs_b_20;
-- b[19]
t_prcs_b_19: PROCESS
BEGIN
	b(19) <= '0';
WAIT;
END PROCESS t_prcs_b_19;
-- b[18]
t_prcs_b_18: PROCESS
BEGIN
	b(18) <= '0';
WAIT;
END PROCESS t_prcs_b_18;
-- b[17]
t_prcs_b_17: PROCESS
BEGIN
	b(17) <= '0';
	WAIT FOR 420000 ps;
	b(17) <= '1';
	WAIT FOR 280000 ps;
	b(17) <= '0';
WAIT;
END PROCESS t_prcs_b_17;
-- b[16]
t_prcs_b_16: PROCESS
BEGIN
	b(16) <= '1';
	WAIT FOR 700000 ps;
	b(16) <= '0';
WAIT;
END PROCESS t_prcs_b_16;
-- b[15]
t_prcs_b_15: PROCESS
BEGIN
	b(15) <= '0';
	WAIT FOR 420000 ps;
	b(15) <= '1';
	WAIT FOR 280000 ps;
	b(15) <= '0';
WAIT;
END PROCESS t_prcs_b_15;
-- b[14]
t_prcs_b_14: PROCESS
BEGIN
	b(14) <= '1';
	WAIT FOR 700000 ps;
	b(14) <= '0';
WAIT;
END PROCESS t_prcs_b_14;
-- b[13]
t_prcs_b_13: PROCESS
BEGIN
	b(13) <= '0';
	WAIT FOR 420000 ps;
	b(13) <= '1';
	WAIT FOR 280000 ps;
	b(13) <= '0';
WAIT;
END PROCESS t_prcs_b_13;
-- b[12]
t_prcs_b_12: PROCESS
BEGIN
	b(12) <= '1';
	WAIT FOR 420000 ps;
	b(12) <= '0';
WAIT;
END PROCESS t_prcs_b_12;
-- b[11]
t_prcs_b_11: PROCESS
BEGIN
	b(11) <= '0';
WAIT;
END PROCESS t_prcs_b_11;
-- b[10]
t_prcs_b_10: PROCESS
BEGIN
	b(10) <= '1';
	WAIT FOR 700000 ps;
	b(10) <= '0';
WAIT;
END PROCESS t_prcs_b_10;
-- b[9]
t_prcs_b_9: PROCESS
BEGIN
	b(9) <= '0';
WAIT;
END PROCESS t_prcs_b_9;
-- b[8]
t_prcs_b_8: PROCESS
BEGIN
	b(8) <= '0';
WAIT;
END PROCESS t_prcs_b_8;
-- b[7]
t_prcs_b_7: PROCESS
BEGIN
	b(7) <= '1';
	WAIT FOR 420000 ps;
	b(7) <= '0';
WAIT;
END PROCESS t_prcs_b_7;
-- b[6]
t_prcs_b_6: PROCESS
BEGIN
	b(6) <= '1';
	WAIT FOR 420000 ps;
	b(6) <= '0';
WAIT;
END PROCESS t_prcs_b_6;
-- b[5]
t_prcs_b_5: PROCESS
BEGIN
	b(5) <= '1';
	WAIT FOR 700000 ps;
	b(5) <= '0';
WAIT;
END PROCESS t_prcs_b_5;
-- b[4]
t_prcs_b_4: PROCESS
BEGIN
	b(4) <= '1';
	WAIT FOR 420000 ps;
	b(4) <= '0';
WAIT;
END PROCESS t_prcs_b_4;
-- b[3]
t_prcs_b_3: PROCESS
BEGIN
	b(3) <= '0';
WAIT;
END PROCESS t_prcs_b_3;
-- b[2]
t_prcs_b_2: PROCESS
BEGIN
	b(2) <= '0';
	WAIT FOR 420000 ps;
	b(2) <= '1';
	WAIT FOR 280000 ps;
	b(2) <= '0';
WAIT;
END PROCESS t_prcs_b_2;
-- b[1]
t_prcs_b_1: PROCESS
BEGIN
	b(1) <= '0';
WAIT;
END PROCESS t_prcs_b_1;
-- b[0]
t_prcs_b_0: PROCESS
BEGIN
	b(0) <= '0';
	WAIT FOR 420000 ps;
	b(0) <= '1';
WAIT;
END PROCESS t_prcs_b_0;
-- oper[2]
t_prcs_oper_2: PROCESS
BEGIN
	oper(2) <= '0';
	WAIT FOR 240000 ps;
	oper(2) <= '1';
	WAIT FOR 180000 ps;
	oper(2) <= '0';
	WAIT FOR 160000 ps;
	oper(2) <= '1';
	WAIT FOR 120000 ps;
	oper(2) <= '0';
	WAIT FOR 160000 ps;
	oper(2) <= '1';
	WAIT FOR 120000 ps;
	oper(2) <= '0';
WAIT;
END PROCESS t_prcs_oper_2;
-- oper[1]
t_prcs_oper_1: PROCESS
BEGIN
	oper(1) <= '0';
	WAIT FOR 120000 ps;
	oper(1) <= '1';
	WAIT FOR 120000 ps;
	oper(1) <= '0';
	WAIT FOR 60000 ps;
	oper(1) <= '1';
	WAIT FOR 120000 ps;
	oper(1) <= '0';
	WAIT FOR 80000 ps;
	oper(1) <= '1';
	WAIT FOR 80000 ps;
	oper(1) <= '0';
	WAIT FOR 40000 ps;
	oper(1) <= '1';
	WAIT FOR 80000 ps;
	oper(1) <= '0';
	WAIT FOR 80000 ps;
	oper(1) <= '1';
	WAIT FOR 80000 ps;
	oper(1) <= '0';
	WAIT FOR 40000 ps;
	oper(1) <= '1';
	WAIT FOR 80000 ps;
	oper(1) <= '0';
WAIT;
END PROCESS t_prcs_oper_1;
-- oper[0]
t_prcs_oper_0: PROCESS
BEGIN
	oper(0) <= '0';
	WAIT FOR 60000 ps;
	oper(0) <= '1';
	WAIT FOR 60000 ps;
	oper(0) <= '0';
	WAIT FOR 60000 ps;
	oper(0) <= '1';
	WAIT FOR 60000 ps;
	oper(0) <= '0';
	WAIT FOR 120000 ps;
	oper(0) <= '1';
	WAIT FOR 60000 ps;
	oper(0) <= '0';
	WAIT FOR 40000 ps;
	oper(0) <= '1';
	WAIT FOR 40000 ps;
	oper(0) <= '0';
	WAIT FOR 40000 ps;
	oper(0) <= '1';
	WAIT FOR 40000 ps;
	oper(0) <= '0';
	WAIT FOR 80000 ps;
	oper(0) <= '1';
	WAIT FOR 40000 ps;
	oper(0) <= '0';
	WAIT FOR 40000 ps;
	oper(0) <= '1';
	WAIT FOR 40000 ps;
	oper(0) <= '0';
	WAIT FOR 40000 ps;
	oper(0) <= '1';
	WAIT FOR 40000 ps;
	oper(0) <= '0';
	WAIT FOR 80000 ps;
	oper(0) <= '1';
	WAIT FOR 40000 ps;
	oper(0) <= '0';
WAIT;
END PROCESS t_prcs_oper_0;
END ALU32_arch;
