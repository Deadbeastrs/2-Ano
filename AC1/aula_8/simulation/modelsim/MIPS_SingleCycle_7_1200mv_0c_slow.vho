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

-- DATE "11/18/2019 10:09:55"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mips_single_cycle IS
    PORT (
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_5__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_6__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_7__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_8__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_9__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_10__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_11__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_12__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_13__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_14__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_15__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_16__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_17__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_18__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_19__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_20__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_21__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_22__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_23__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_24__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_25__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_26__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_27__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_28__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_29__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_30__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMdata_31__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_5__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_6__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_7__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_8__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_9__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_10__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_11__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_12__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_13__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_14__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_15__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_16__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_17__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_18__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_19__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_20__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_21__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_22__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_23__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_24__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_25__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_26__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_27__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_28__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_29__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_30__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFdata_31__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_31__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_30__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_29__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_28__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_27__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_26__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_25__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_24__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_23__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_22__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_21__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_20__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_19__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_18__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_17__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_16__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_15__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_14__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_13__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_12__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_11__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_10__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_9__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_8__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_7__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_6__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_5__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_PC_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_5__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_5__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFaddr_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFaddr_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFaddr_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFaddr_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_DMaddr_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_RFaddr_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMaddr_0__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_31__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_30__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_29__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_28__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_27__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_26__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_25__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_24__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_23__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_22__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_21__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_20__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_19__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_18__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_17__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_16__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_15__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_14__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_13__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_12__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_11__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_10__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_9__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_8__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_7__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_6__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_5__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_4__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_3__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_2__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_1__gl_output\ : OUT std_logic;
	\global.bp.work.DisplayUnit_pkg.DU_IMdata_0__gl_output\ : OUT std_logic;
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END mips_single_cycle;

-- Design Ports Information
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mips_single_cycle IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_6__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_7__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_8__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_9__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_10__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_11__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_12__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_13__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_14__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_15__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_16__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_17__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_18__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_19__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_20__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_21__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_22__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_23__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_24__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_25__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_26__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_27__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_28__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_29__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_30__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_31__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_6__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_7__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_8__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_9__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_10__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_11__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_12__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_13__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_14__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_15__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_16__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_17__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_18__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_19__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_20__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_21__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_22__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_23__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_24__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_25__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_26__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_27__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_28__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_29__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_30__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_31__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_31__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_30__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_29__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_28__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_27__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_26__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_25__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_24__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_23__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_22__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_21__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_20__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_19__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_18__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_17__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_16__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_15__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_14__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_13__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_12__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_11__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_10__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_9__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_8__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_7__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_6__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_PC_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_0__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_31__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_30__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_29__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_28__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_27__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_26__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_25__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_24__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_23__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_22__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_21__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_20__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_19__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_18__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_17__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_16__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_15__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_14__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_13__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_12__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_11__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_10__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_9__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_8__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_7__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_6__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_5__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_4__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_3__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_2__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_1__gl_output\ : std_logic;
SIGNAL \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_0__gl_output\ : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debnc|s_pulsedOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \displ|s_repeatCount[0]~31_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \displ|s_count[0]~31_combout\ : std_logic;
SIGNAL \displ|s_count[0]~32\ : std_logic;
SIGNAL \displ|s_count[1]~33_combout\ : std_logic;
SIGNAL \displ|s_count[1]~34\ : std_logic;
SIGNAL \displ|s_count[2]~35_combout\ : std_logic;
SIGNAL \displ|s_count[2]~36\ : std_logic;
SIGNAL \displ|s_count[3]~37_combout\ : std_logic;
SIGNAL \displ|s_count[3]~38\ : std_logic;
SIGNAL \displ|s_count[4]~39_combout\ : std_logic;
SIGNAL \displ|s_count[4]~40\ : std_logic;
SIGNAL \displ|s_count[5]~41_combout\ : std_logic;
SIGNAL \displ|s_count[5]~42\ : std_logic;
SIGNAL \displ|s_count[6]~43_combout\ : std_logic;
SIGNAL \displ|s_count[6]~44\ : std_logic;
SIGNAL \displ|s_count[7]~45_combout\ : std_logic;
SIGNAL \displ|s_count[7]~46\ : std_logic;
SIGNAL \displ|s_count[8]~47_combout\ : std_logic;
SIGNAL \displ|s_count[8]~48\ : std_logic;
SIGNAL \displ|s_count[9]~49_combout\ : std_logic;
SIGNAL \displ|s_count[9]~50\ : std_logic;
SIGNAL \displ|s_count[10]~51_combout\ : std_logic;
SIGNAL \displ|s_count[10]~52\ : std_logic;
SIGNAL \displ|s_count[11]~53_combout\ : std_logic;
SIGNAL \displ|s_count[11]~54\ : std_logic;
SIGNAL \displ|s_count[12]~55_combout\ : std_logic;
SIGNAL \displ|s_count[12]~56\ : std_logic;
SIGNAL \displ|s_count[13]~57_combout\ : std_logic;
SIGNAL \displ|s_count[13]~58\ : std_logic;
SIGNAL \displ|s_count[14]~60_combout\ : std_logic;
SIGNAL \displ|s_count[14]~61\ : std_logic;
SIGNAL \displ|s_count[15]~62_combout\ : std_logic;
SIGNAL \displ|s_count[15]~63\ : std_logic;
SIGNAL \displ|s_count[16]~64_combout\ : std_logic;
SIGNAL \displ|s_count[16]~65\ : std_logic;
SIGNAL \displ|s_count[17]~66_combout\ : std_logic;
SIGNAL \displ|s_count[17]~67\ : std_logic;
SIGNAL \displ|s_count[18]~68_combout\ : std_logic;
SIGNAL \displ|s_count[18]~69\ : std_logic;
SIGNAL \displ|s_count[19]~70_combout\ : std_logic;
SIGNAL \displ|Equal1~2_combout\ : std_logic;
SIGNAL \displ|Equal1~3_combout\ : std_logic;
SIGNAL \displ|Equal1~0_combout\ : std_logic;
SIGNAL \displ|Equal1~1_combout\ : std_logic;
SIGNAL \displ|s_count[4]~59_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[0]~32\ : std_logic;
SIGNAL \displ|s_repeatCount[1]~33_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[1]~34\ : std_logic;
SIGNAL \displ|s_repeatCount[2]~35_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[2]~36\ : std_logic;
SIGNAL \displ|s_repeatCount[3]~37_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[3]~38\ : std_logic;
SIGNAL \displ|s_repeatCount[4]~39_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[4]~40\ : std_logic;
SIGNAL \displ|s_repeatCount[5]~41_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[5]~42\ : std_logic;
SIGNAL \displ|s_repeatCount[6]~43_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[6]~44\ : std_logic;
SIGNAL \displ|s_repeatCount[7]~45_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[7]~46\ : std_logic;
SIGNAL \displ|s_repeatCount[8]~47_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[8]~48\ : std_logic;
SIGNAL \displ|s_repeatCount[9]~49_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[9]~50\ : std_logic;
SIGNAL \displ|s_repeatCount[10]~51_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[10]~52\ : std_logic;
SIGNAL \displ|s_repeatCount[11]~53_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[11]~54\ : std_logic;
SIGNAL \displ|s_repeatCount[12]~55_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[12]~56\ : std_logic;
SIGNAL \displ|s_repeatCount[13]~57_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[13]~58\ : std_logic;
SIGNAL \displ|s_repeatCount[14]~59_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[14]~60\ : std_logic;
SIGNAL \displ|s_repeatCount[15]~61_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[15]~62\ : std_logic;
SIGNAL \displ|s_repeatCount[16]~63_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[16]~64\ : std_logic;
SIGNAL \displ|s_repeatCount[17]~65_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[17]~66\ : std_logic;
SIGNAL \displ|s_repeatCount[18]~67_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[18]~68\ : std_logic;
SIGNAL \displ|s_repeatCount[19]~69_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[19]~70\ : std_logic;
SIGNAL \displ|s_repeatCount[20]~71_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[20]~72\ : std_logic;
SIGNAL \displ|s_repeatCount[21]~73_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[21]~74\ : std_logic;
SIGNAL \displ|s_repeatCount[22]~75_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[22]~76\ : std_logic;
SIGNAL \displ|s_repeatCount[23]~77_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~6_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~5_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~2_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~0_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~3_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~1_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~4_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[23]~78\ : std_logic;
SIGNAL \displ|s_repeatCount[24]~79_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[24]~80\ : std_logic;
SIGNAL \displ|s_repeatCount[25]~81_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[25]~82\ : std_logic;
SIGNAL \displ|s_repeatCount[26]~83_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[26]~84\ : std_logic;
SIGNAL \displ|s_repeatCount[27]~85_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[27]~86\ : std_logic;
SIGNAL \displ|s_repeatCount[28]~87_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[28]~88\ : std_logic;
SIGNAL \displ|s_repeatCount[29]~89_combout\ : std_logic;
SIGNAL \displ|s_repeatCount[29]~90\ : std_logic;
SIGNAL \displ|s_repeatCount[30]~91_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~7_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~8_combout\ : std_logic;
SIGNAL \displ|s_thd[24]~9_combout\ : std_logic;
SIGNAL \displ|s_count[19]~71\ : std_logic;
SIGNAL \displ|s_count[20]~72_combout\ : std_logic;
SIGNAL \displ|s_count[20]~73\ : std_logic;
SIGNAL \displ|s_count[21]~74_combout\ : std_logic;
SIGNAL \displ|Equal1~5_combout\ : std_logic;
SIGNAL \displ|s_count[21]~75\ : std_logic;
SIGNAL \displ|s_count[22]~76_combout\ : std_logic;
SIGNAL \displ|s_count[22]~77\ : std_logic;
SIGNAL \displ|s_count[23]~78_combout\ : std_logic;
SIGNAL \displ|s_count[23]~79\ : std_logic;
SIGNAL \displ|s_count[24]~80_combout\ : std_logic;
SIGNAL \displ|s_count[24]~81\ : std_logic;
SIGNAL \displ|s_count[25]~82_combout\ : std_logic;
SIGNAL \displ|s_count[25]~83\ : std_logic;
SIGNAL \displ|s_count[26]~84_combout\ : std_logic;
SIGNAL \displ|s_count[26]~85\ : std_logic;
SIGNAL \displ|s_count[27]~86_combout\ : std_logic;
SIGNAL \displ|Equal1~7_combout\ : std_logic;
SIGNAL \displ|Equal1~6_combout\ : std_logic;
SIGNAL \displ|Equal1~4_combout\ : std_logic;
SIGNAL \displ|Equal1~8_combout\ : std_logic;
SIGNAL \displ|s_count[27]~87\ : std_logic;
SIGNAL \displ|s_count[28]~88_combout\ : std_logic;
SIGNAL \displ|s_count[28]~89\ : std_logic;
SIGNAL \displ|s_count[29]~90_combout\ : std_logic;
SIGNAL \displ|s_count[29]~91\ : std_logic;
SIGNAL \displ|s_count[30]~92_combout\ : std_logic;
SIGNAL \displ|Equal1~9_combout\ : std_logic;
SIGNAL \displ|Equal1~10_combout\ : std_logic;
SIGNAL \displ|Equal1~11_combout\ : std_logic;
SIGNAL \displ|s_inc~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \displ|s_inc~1_combout\ : std_logic;
SIGNAL \displ|s_inc~q\ : std_logic;
SIGNAL \displ|s_dec~0_combout\ : std_logic;
SIGNAL \displ|s_dec~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \displ|Decoder0~4_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[0][5]~q\ : std_logic;
SIGNAL \displ|Decoder0~2_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[2][5]~17_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[2][5]~q\ : std_logic;
SIGNAL \displ|Mux0~0_combout\ : std_logic;
SIGNAL \displ|Decoder0~3_combout\ : std_logic;
SIGNAL \displ|s_addrCounters~16_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[3][5]~q\ : std_logic;
SIGNAL \displ|Mux38~0_combout\ : std_logic;
SIGNAL \displ|Mux0~1_combout\ : std_logic;
SIGNAL \displ|Add0~0_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[0][0]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~6_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[2][0]~q\ : std_logic;
SIGNAL \displ|Decoder0~1_combout\ : std_logic;
SIGNAL \displ|s_addrCounters~0_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[1][0]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~8_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[3][0]~q\ : std_logic;
SIGNAL \displ|Mux5~0_combout\ : std_logic;
SIGNAL \displ|Mux5~1_combout\ : std_logic;
SIGNAL \displ|Add0~1\ : std_logic;
SIGNAL \displ|Add0~2_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[0][1]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~10_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[3][1]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~1_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[1][1]~q\ : std_logic;
SIGNAL \displ|Mux4~0_combout\ : std_logic;
SIGNAL \displ|s_addrCounters~7_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[2][1]~q\ : std_logic;
SIGNAL \displ|Mux4~1_combout\ : std_logic;
SIGNAL \displ|Add0~3\ : std_logic;
SIGNAL \displ|Add0~4_combout\ : std_logic;
SIGNAL \displ|s_addrCounters~12_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[3][2]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~2_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[1][2]~q\ : std_logic;
SIGNAL \displ|Mux3~0_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[0][2]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~9_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[2][2]~q\ : std_logic;
SIGNAL \displ|Mux3~1_combout\ : std_logic;
SIGNAL \displ|Add0~5\ : std_logic;
SIGNAL \displ|Add0~6_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[0][3]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~11_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[2][3]~q\ : std_logic;
SIGNAL \displ|Mux2~0_combout\ : std_logic;
SIGNAL \displ|s_addrCounters~14_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[3][3]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~3_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[1][3]~q\ : std_logic;
SIGNAL \displ|Mux40~0_combout\ : std_logic;
SIGNAL \displ|Mux2~1_combout\ : std_logic;
SIGNAL \displ|Add0~7\ : std_logic;
SIGNAL \displ|Add0~8_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[0][4]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~13_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[2][4]~q\ : std_logic;
SIGNAL \displ|Mux1~0_combout\ : std_logic;
SIGNAL \displ|s_addrCounters~4_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[1][4]~q\ : std_logic;
SIGNAL \displ|s_addrCounters~15_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[3][4]~q\ : std_logic;
SIGNAL \displ|Mux39~0_combout\ : std_logic;
SIGNAL \displ|Mux1~1_combout\ : std_logic;
SIGNAL \displ|Add0~9\ : std_logic;
SIGNAL \displ|Add0~10_combout\ : std_logic;
SIGNAL \displ|s_addrCounters~5_combout\ : std_logic;
SIGNAL \displ|s_addrCounters[1][5]~q\ : std_logic;
SIGNAL \instmem|Mux7~0_combout\ : std_logic;
SIGNAL \instmem|Mux8~0_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[0]~23_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \debnc|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debnc|s_dirtyIn~q\ : std_logic;
SIGNAL \debnc|s_debounceCnt[8]~40\ : std_logic;
SIGNAL \debnc|s_debounceCnt[9]~41_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[9]~42\ : std_logic;
SIGNAL \debnc|s_debounceCnt[10]~43_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[10]~44\ : std_logic;
SIGNAL \debnc|s_debounceCnt[11]~45_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[11]~46\ : std_logic;
SIGNAL \debnc|s_debounceCnt[12]~47_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[12]~48\ : std_logic;
SIGNAL \debnc|s_debounceCnt[13]~49_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[13]~50\ : std_logic;
SIGNAL \debnc|s_debounceCnt[14]~51_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[14]~52\ : std_logic;
SIGNAL \debnc|s_debounceCnt[15]~53_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[15]~54\ : std_logic;
SIGNAL \debnc|s_debounceCnt[16]~55_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[16]~56\ : std_logic;
SIGNAL \debnc|s_debounceCnt[17]~57_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[17]~58\ : std_logic;
SIGNAL \debnc|s_debounceCnt[18]~59_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[18]~60\ : std_logic;
SIGNAL \debnc|s_debounceCnt[19]~61_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[19]~62\ : std_logic;
SIGNAL \debnc|s_debounceCnt[20]~63_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[20]~64\ : std_logic;
SIGNAL \debnc|s_debounceCnt[21]~68_combout\ : std_logic;
SIGNAL \debnc|Equal0~0_combout\ : std_logic;
SIGNAL \debnc|Equal0~1_combout\ : std_logic;
SIGNAL \debnc|Equal0~4_combout\ : std_logic;
SIGNAL \debnc|Equal0~5_combout\ : std_logic;
SIGNAL \debnc|LessThan0~0_combout\ : std_logic;
SIGNAL \debnc|LessThan0~1_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[16]~65_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[16]~66_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[21]~69\ : std_logic;
SIGNAL \debnc|s_debounceCnt[22]~70_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[16]~67_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[0]~24\ : std_logic;
SIGNAL \debnc|s_debounceCnt[1]~25_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[1]~26\ : std_logic;
SIGNAL \debnc|s_debounceCnt[2]~27_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[2]~28\ : std_logic;
SIGNAL \debnc|s_debounceCnt[3]~29_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[3]~30\ : std_logic;
SIGNAL \debnc|s_debounceCnt[4]~31_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[4]~32\ : std_logic;
SIGNAL \debnc|s_debounceCnt[5]~33_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[5]~34\ : std_logic;
SIGNAL \debnc|s_debounceCnt[6]~35_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[6]~36\ : std_logic;
SIGNAL \debnc|s_debounceCnt[7]~37_combout\ : std_logic;
SIGNAL \debnc|s_debounceCnt[7]~38\ : std_logic;
SIGNAL \debnc|s_debounceCnt[8]~39_combout\ : std_logic;
SIGNAL \debnc|Equal0~2_combout\ : std_logic;
SIGNAL \debnc|Equal0~3_combout\ : std_logic;
SIGNAL \debnc|Equal0~6_combout\ : std_logic;
SIGNAL \debnc|Equal0~7_combout\ : std_logic;
SIGNAL \debnc|s_pulsedOut~q\ : std_logic;
SIGNAL \debnc|s_pulsedOut~clkctrl_outclk\ : std_logic;
SIGNAL \pcupdt|s_pc4[2]~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \displ|Mux35~0_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[2]~1\ : std_logic;
SIGNAL \pcupdt|s_pc4[3]~2_combout\ : std_logic;
SIGNAL \displ|Mux52~0_combout\ : std_logic;
SIGNAL \displ|Mux51~0_combout\ : std_logic;
SIGNAL \displ|Mux46~0_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[3]~3\ : std_logic;
SIGNAL \pcupdt|s_pc4[4]~4_combout\ : std_logic;
SIGNAL \pcupdt|s_pc~0_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[4]~5\ : std_logic;
SIGNAL \pcupdt|s_pc4[5]~6_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[5]~7\ : std_logic;
SIGNAL \pcupdt|s_pc4[6]~8_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[6]~9\ : std_logic;
SIGNAL \pcupdt|s_pc4[7]~10_combout\ : std_logic;
SIGNAL \displ|Mux59~3_combout\ : std_logic;
SIGNAL \displ|Mux59~6_combout\ : std_logic;
SIGNAL \displ|Mux58~3_combout\ : std_logic;
SIGNAL \displ|Mux58~6_combout\ : std_logic;
SIGNAL \displ|Mux57~3_combout\ : std_logic;
SIGNAL \displ|Mux57~6_combout\ : std_logic;
SIGNAL \displ|Mux56~3_combout\ : std_logic;
SIGNAL \displ|Mux56~6_combout\ : std_logic;
SIGNAL \displ|Mux55~3_combout\ : std_logic;
SIGNAL \displ|Mux55~6_combout\ : std_logic;
SIGNAL \displ|Mux54~3_combout\ : std_logic;
SIGNAL \displ|Mux54~6_combout\ : std_logic;
SIGNAL \displ|Mux53~3_combout\ : std_logic;
SIGNAL \displ|Mux53~6_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[7]~11\ : std_logic;
SIGNAL \pcupdt|s_pc4[8]~12_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[8]~13\ : std_logic;
SIGNAL \pcupdt|s_pc4[9]~14_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[9]~15\ : std_logic;
SIGNAL \pcupdt|s_pc4[10]~16_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[10]~17\ : std_logic;
SIGNAL \pcupdt|s_pc4[11]~18_combout\ : std_logic;
SIGNAL \displ|Mux66~3_combout\ : std_logic;
SIGNAL \displ|Mux66~6_combout\ : std_logic;
SIGNAL \displ|Mux65~3_combout\ : std_logic;
SIGNAL \displ|Mux65~6_combout\ : std_logic;
SIGNAL \displ|Mux64~3_combout\ : std_logic;
SIGNAL \displ|Mux64~6_combout\ : std_logic;
SIGNAL \displ|Mux63~3_combout\ : std_logic;
SIGNAL \displ|Mux63~6_combout\ : std_logic;
SIGNAL \displ|Mux62~3_combout\ : std_logic;
SIGNAL \displ|Mux62~6_combout\ : std_logic;
SIGNAL \displ|Mux61~3_combout\ : std_logic;
SIGNAL \displ|Mux61~6_combout\ : std_logic;
SIGNAL \displ|Mux60~3_combout\ : std_logic;
SIGNAL \displ|Mux60~6_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[11]~19\ : std_logic;
SIGNAL \pcupdt|s_pc4[12]~20_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[12]~21\ : std_logic;
SIGNAL \pcupdt|s_pc4[13]~22_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[13]~23\ : std_logic;
SIGNAL \pcupdt|s_pc4[14]~24_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[14]~25\ : std_logic;
SIGNAL \pcupdt|s_pc4[15]~26_combout\ : std_logic;
SIGNAL \displ|Mux73~3_combout\ : std_logic;
SIGNAL \displ|Mux73~6_combout\ : std_logic;
SIGNAL \displ|Mux72~3_combout\ : std_logic;
SIGNAL \displ|Mux72~6_combout\ : std_logic;
SIGNAL \displ|Mux71~3_combout\ : std_logic;
SIGNAL \displ|Mux71~6_combout\ : std_logic;
SIGNAL \displ|Mux70~3_combout\ : std_logic;
SIGNAL \displ|Mux70~6_combout\ : std_logic;
SIGNAL \displ|Mux69~3_combout\ : std_logic;
SIGNAL \displ|Mux69~6_combout\ : std_logic;
SIGNAL \displ|Mux68~3_combout\ : std_logic;
SIGNAL \displ|Mux68~6_combout\ : std_logic;
SIGNAL \displ|Mux67~3_combout\ : std_logic;
SIGNAL \displ|Mux67~6_combout\ : std_logic;
SIGNAL \displ|Decoder0~0_combout\ : std_logic;
SIGNAL \displ|Mux45~0_combout\ : std_logic;
SIGNAL \displ|Mux43~0_combout\ : std_logic;
SIGNAL \displ|Mux43~1_combout\ : std_logic;
SIGNAL \displ|Mux42~0_combout\ : std_logic;
SIGNAL \displ|Mux42~1_combout\ : std_logic;
SIGNAL \displ|Mux44~0_combout\ : std_logic;
SIGNAL \displ|Mux122~0_combout\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \pcupdt|s_pc4[15]~27\ : std_logic;
SIGNAL \pcupdt|s_pc4[16]~28_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[16]~29\ : std_logic;
SIGNAL \pcupdt|s_pc4[17]~30_combout\ : std_logic;
SIGNAL \displ|Mux20~0_combout\ : std_logic;
SIGNAL \instmem|Mux7~1_combout\ : std_logic;
SIGNAL \displ|Mux21~0_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[17]~31\ : std_logic;
SIGNAL \pcupdt|s_pc4[18]~32_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[18]~33\ : std_logic;
SIGNAL \pcupdt|s_pc4[19]~34_combout\ : std_logic;
SIGNAL \displ|Mux18~0_combout\ : std_logic;
SIGNAL \displ|Mux19~0_combout\ : std_logic;
SIGNAL \displ|Mux80~0_combout\ : std_logic;
SIGNAL \displ|disp4[0]~0_combout\ : std_logic;
SIGNAL \displ|Mux121~0_combout\ : std_logic;
SIGNAL \displ|Mux79~0_combout\ : std_logic;
SIGNAL \displ|disp4[1]~1_combout\ : std_logic;
SIGNAL \displ|Mux120~0_combout\ : std_logic;
SIGNAL \displ|Mux78~0_combout\ : std_logic;
SIGNAL \displ|disp4[2]~2_combout\ : std_logic;
SIGNAL \displ|Mux77~0_combout\ : std_logic;
SIGNAL \displ|Mux119~0_combout\ : std_logic;
SIGNAL \displ|disp4[3]~3_combout\ : std_logic;
SIGNAL \displ|Mux76~0_combout\ : std_logic;
SIGNAL \displ|Mux118~0_combout\ : std_logic;
SIGNAL \displ|disp4[4]~4_combout\ : std_logic;
SIGNAL \displ|Mux117~0_combout\ : std_logic;
SIGNAL \displ|Mux75~0_combout\ : std_logic;
SIGNAL \displ|disp4[5]~5_combout\ : std_logic;
SIGNAL \displ|Mux116~0_combout\ : std_logic;
SIGNAL \displ|Mux74~0_combout\ : std_logic;
SIGNAL \displ|disp4[6]~6_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[19]~35\ : std_logic;
SIGNAL \pcupdt|s_pc4[20]~36_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[20]~37\ : std_logic;
SIGNAL \pcupdt|s_pc4[21]~38_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[21]~39\ : std_logic;
SIGNAL \pcupdt|s_pc4[22]~40_combout\ : std_logic;
SIGNAL \displ|Mux15~0_combout\ : std_logic;
SIGNAL \displ|Mux17~0_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[22]~41\ : std_logic;
SIGNAL \pcupdt|s_pc4[23]~42_combout\ : std_logic;
SIGNAL \pcupdt|s_pc~1_combout\ : std_logic;
SIGNAL \displ|Mux14~0_combout\ : std_logic;
SIGNAL \displ|Mux16~0_combout\ : std_logic;
SIGNAL \displ|Mux87~0_combout\ : std_logic;
SIGNAL \displ|Mux41~0_combout\ : std_logic;
SIGNAL \displ|Mux41~1_combout\ : std_logic;
SIGNAL \displ|Mux115~0_combout\ : std_logic;
SIGNAL \displ|disp5[0]~0_combout\ : std_logic;
SIGNAL \displ|Mux86~0_combout\ : std_logic;
SIGNAL \displ|Mux114~0_combout\ : std_logic;
SIGNAL \displ|disp5[1]~1_combout\ : std_logic;
SIGNAL \displ|Mux85~0_combout\ : std_logic;
SIGNAL \displ|Mux113~0_combout\ : std_logic;
SIGNAL \displ|disp5[2]~2_combout\ : std_logic;
SIGNAL \displ|Mux84~0_combout\ : std_logic;
SIGNAL \displ|Mux112~0_combout\ : std_logic;
SIGNAL \displ|disp5[3]~3_combout\ : std_logic;
SIGNAL \displ|Mux111~0_combout\ : std_logic;
SIGNAL \displ|Mux83~0_combout\ : std_logic;
SIGNAL \displ|disp5[4]~4_combout\ : std_logic;
SIGNAL \displ|Mux82~0_combout\ : std_logic;
SIGNAL \displ|Mux110~0_combout\ : std_logic;
SIGNAL \displ|disp5[5]~5_combout\ : std_logic;
SIGNAL \displ|Mux81~0_combout\ : std_logic;
SIGNAL \displ|Mux109~0_combout\ : std_logic;
SIGNAL \displ|disp5[6]~6_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[23]~43\ : std_logic;
SIGNAL \pcupdt|s_pc4[24]~44_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[24]~45\ : std_logic;
SIGNAL \pcupdt|s_pc4[25]~46_combout\ : std_logic;
SIGNAL \displ|Mux12~0_combout\ : std_logic;
SIGNAL \displ|Mux13~0_combout\ : std_logic;
SIGNAL \instmem|Mux7~2_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[25]~47\ : std_logic;
SIGNAL \pcupdt|s_pc4[26]~48_combout\ : std_logic;
SIGNAL \displ|Mux11~0_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[26]~49\ : std_logic;
SIGNAL \pcupdt|s_pc4[27]~50_combout\ : std_logic;
SIGNAL \displ|Mux10~0_combout\ : std_logic;
SIGNAL \displ|Mux94~0_combout\ : std_logic;
SIGNAL \displ|disp6[0]~0_combout\ : std_logic;
SIGNAL \displ|Mux93~0_combout\ : std_logic;
SIGNAL \displ|disp6[1]~1_combout\ : std_logic;
SIGNAL \displ|Mux92~0_combout\ : std_logic;
SIGNAL \displ|disp6[2]~2_combout\ : std_logic;
SIGNAL \displ|Mux91~0_combout\ : std_logic;
SIGNAL \displ|disp6[3]~3_combout\ : std_logic;
SIGNAL \displ|Mux90~0_combout\ : std_logic;
SIGNAL \displ|disp6[4]~4_combout\ : std_logic;
SIGNAL \displ|Mux89~0_combout\ : std_logic;
SIGNAL \displ|disp6[5]~5_combout\ : std_logic;
SIGNAL \displ|Mux88~0_combout\ : std_logic;
SIGNAL \displ|disp6[6]~6_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[27]~51\ : std_logic;
SIGNAL \pcupdt|s_pc4[28]~52_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[28]~53\ : std_logic;
SIGNAL \pcupdt|s_pc4[29]~54_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[29]~55\ : std_logic;
SIGNAL \pcupdt|s_pc4[30]~56_combout\ : std_logic;
SIGNAL \pcupdt|s_pc4[30]~57\ : std_logic;
SIGNAL \pcupdt|s_pc4[31]~58_combout\ : std_logic;
SIGNAL \displ|Mux6~0_combout\ : std_logic;
SIGNAL \displ|Mux8~0_combout\ : std_logic;
SIGNAL \displ|Mux7~0_combout\ : std_logic;
SIGNAL \displ|Mux9~0_combout\ : std_logic;
SIGNAL \displ|Mux101~0_combout\ : std_logic;
SIGNAL \displ|disp7[0]~0_combout\ : std_logic;
SIGNAL \displ|Mux100~0_combout\ : std_logic;
SIGNAL \displ|disp7[1]~1_combout\ : std_logic;
SIGNAL \displ|Mux99~0_combout\ : std_logic;
SIGNAL \displ|disp7[2]~2_combout\ : std_logic;
SIGNAL \displ|Mux98~0_combout\ : std_logic;
SIGNAL \displ|disp7[3]~3_combout\ : std_logic;
SIGNAL \displ|Mux97~0_combout\ : std_logic;
SIGNAL \displ|disp7[4]~4_combout\ : std_logic;
SIGNAL \displ|Mux96~0_combout\ : std_logic;
SIGNAL \displ|disp7[5]~5_combout\ : std_logic;
SIGNAL \displ|Mux95~0_combout\ : std_logic;
SIGNAL \displ|disp7[6]~6_combout\ : std_logic;
SIGNAL \pcupdt|s_pc\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \displ|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \debnc|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \displ|s_repeatCount\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \displ|ALT_INV_Mux67~6_combout\ : std_logic;
SIGNAL \displ|ALT_INV_Mux60~6_combout\ : std_logic;
SIGNAL \displ|ALT_INV_Mux53~6_combout\ : std_logic;
SIGNAL \debnc|ALT_INV_s_dirtyIn~q\ : std_logic;
SIGNAL \displ|ALT_INV_disp7[6]~6_combout\ : std_logic;
SIGNAL \displ|ALT_INV_Mux46~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

\global.bp.work.DisplayUnit_pkg.DU_DMdata_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_0__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_5__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_5__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_6__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_6__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_7__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_7__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_8__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_8__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_9__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_9__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_10__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_10__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_11__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_11__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_12__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_12__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_13__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_13__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_14__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_14__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_15__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_15__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_16__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_16__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_17__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_17__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_18__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_18__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_19__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_19__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_20__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_20__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_21__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_21__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_22__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_22__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_23__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_23__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_24__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_24__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_25__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_25__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_26__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_26__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_27__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_27__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_28__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_28__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_29__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_29__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_30__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_30__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMdata_31__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_31__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_0__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_5__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_5__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_6__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_6__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_7__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_7__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_8__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_8__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_9__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_9__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_10__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_10__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_11__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_11__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_12__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_12__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_13__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_13__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_14__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_14__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_15__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_15__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_16__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_16__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_17__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_17__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_18__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_18__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_19__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_19__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_20__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_20__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_21__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_21__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_22__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_22__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_23__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_23__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_24__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_24__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_25__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_25__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_26__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_26__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_27__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_27__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_28__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_28__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_29__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_29__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_30__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_30__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFdata_31__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_31__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_31__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_31__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_30__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_30__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_29__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_29__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_28__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_28__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_27__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_27__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_26__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_26__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_25__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_25__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_24__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_24__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_23__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_23__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_22__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_22__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_21__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_21__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_20__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_20__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_19__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_19__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_18__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_18__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_17__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_17__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_16__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_16__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_15__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_15__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_14__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_14__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_13__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_13__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_12__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_12__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_11__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_11__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_10__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_10__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_9__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_9__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_8__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_8__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_7__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_7__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_6__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_6__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_5__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_5__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_PC_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_PC_0__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMaddr_5__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_5__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_5__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_5__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMaddr_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFaddr_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMaddr_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFaddr_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMaddr_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFaddr_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMaddr_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFaddr_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_DMaddr_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_0__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_RFaddr_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_0__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMaddr_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_0__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_31__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_31__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_30__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_30__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_29__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_29__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_28__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_28__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_27__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_27__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_26__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_26__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_25__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_25__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_24__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_24__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_23__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_23__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_22__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_22__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_21__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_21__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_20__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_20__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_19__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_19__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_18__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_18__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_17__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_17__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_16__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_16__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_15__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_15__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_14__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_14__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_13__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_13__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_12__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_12__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_11__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_11__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_10__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_10__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_9__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_9__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_8__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_8__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_7__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_7__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_6__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_6__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_5__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_5__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_4__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_4__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_3__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_3__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_2__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_2__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_1__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_1__gl_output\;
\global.bp.work.DisplayUnit_pkg.DU_IMdata_0__gl_output\ <= \ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_0__gl_output\;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\debnc|s_pulsedOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \debnc|s_pulsedOut~q\);
\displ|ALT_INV_Mux67~6_combout\ <= NOT \displ|Mux67~6_combout\;
\displ|ALT_INV_Mux60~6_combout\ <= NOT \displ|Mux60~6_combout\;
\displ|ALT_INV_Mux53~6_combout\ <= NOT \displ|Mux53~6_combout\;
\debnc|ALT_INV_s_dirtyIn~q\ <= NOT \debnc|s_dirtyIn~q\;
\displ|ALT_INV_disp7[6]~6_combout\ <= NOT \displ|disp7[6]~6_combout\;
\displ|ALT_INV_Mux46~0_combout\ <= NOT \displ|Mux46~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux52~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux51~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux51~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux52~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux52~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|ALT_INV_Mux46~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux59~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux58~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux57~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux56~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux55~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux54~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|ALT_INV_Mux53~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux66~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux65~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux64~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux63~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux62~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux61~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|ALT_INV_Mux60~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux73~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux72~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux71~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux70~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux69~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|Mux68~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|ALT_INV_Mux67~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp4[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp4[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp4[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp4[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp4[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp4[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp4[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp5[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp5[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp5[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp5[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp5[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp5[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp5[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp6[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp6[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp6[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp6[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp6[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp6[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp6[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp7[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp7[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp7[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp7[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp7[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|disp7[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \displ|ALT_INV_disp7[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X106_Y33_N2
\displ|s_repeatCount[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[0]~31_combout\ = \displ|s_repeatCount\(0) $ (VCC)
-- \displ|s_repeatCount[0]~32\ = CARRY(\displ|s_repeatCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(0),
	datad => VCC,
	combout => \displ|s_repeatCount[0]~31_combout\,
	cout => \displ|s_repeatCount[0]~32\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X108_Y33_N2
\displ|s_count[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[0]~31_combout\ = \displ|s_count\(0) $ (VCC)
-- \displ|s_count[0]~32\ = CARRY(\displ|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(0),
	datad => VCC,
	combout => \displ|s_count[0]~31_combout\,
	cout => \displ|s_count[0]~32\);

-- Location: FF_X108_Y33_N3
\displ|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[0]~31_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(0));

-- Location: LCCOMB_X108_Y33_N4
\displ|s_count[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[1]~33_combout\ = (\displ|s_count\(1) & (!\displ|s_count[0]~32\)) # (!\displ|s_count\(1) & ((\displ|s_count[0]~32\) # (GND)))
-- \displ|s_count[1]~34\ = CARRY((!\displ|s_count[0]~32\) # (!\displ|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(1),
	datad => VCC,
	cin => \displ|s_count[0]~32\,
	combout => \displ|s_count[1]~33_combout\,
	cout => \displ|s_count[1]~34\);

-- Location: FF_X108_Y33_N5
\displ|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[1]~33_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(1));

-- Location: LCCOMB_X108_Y33_N6
\displ|s_count[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[2]~35_combout\ = (\displ|s_count\(2) & (\displ|s_count[1]~34\ $ (GND))) # (!\displ|s_count\(2) & (!\displ|s_count[1]~34\ & VCC))
-- \displ|s_count[2]~36\ = CARRY((\displ|s_count\(2) & !\displ|s_count[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(2),
	datad => VCC,
	cin => \displ|s_count[1]~34\,
	combout => \displ|s_count[2]~35_combout\,
	cout => \displ|s_count[2]~36\);

-- Location: FF_X108_Y33_N7
\displ|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[2]~35_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(2));

-- Location: LCCOMB_X108_Y33_N8
\displ|s_count[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[3]~37_combout\ = (\displ|s_count\(3) & (!\displ|s_count[2]~36\)) # (!\displ|s_count\(3) & ((\displ|s_count[2]~36\) # (GND)))
-- \displ|s_count[3]~38\ = CARRY((!\displ|s_count[2]~36\) # (!\displ|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(3),
	datad => VCC,
	cin => \displ|s_count[2]~36\,
	combout => \displ|s_count[3]~37_combout\,
	cout => \displ|s_count[3]~38\);

-- Location: FF_X108_Y33_N9
\displ|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[3]~37_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(3));

-- Location: LCCOMB_X108_Y33_N10
\displ|s_count[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[4]~39_combout\ = (\displ|s_count\(4) & (\displ|s_count[3]~38\ $ (GND))) # (!\displ|s_count\(4) & (!\displ|s_count[3]~38\ & VCC))
-- \displ|s_count[4]~40\ = CARRY((\displ|s_count\(4) & !\displ|s_count[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(4),
	datad => VCC,
	cin => \displ|s_count[3]~38\,
	combout => \displ|s_count[4]~39_combout\,
	cout => \displ|s_count[4]~40\);

-- Location: FF_X108_Y33_N11
\displ|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[4]~39_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(4));

-- Location: LCCOMB_X108_Y33_N12
\displ|s_count[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[5]~41_combout\ = (\displ|s_count\(5) & (!\displ|s_count[4]~40\)) # (!\displ|s_count\(5) & ((\displ|s_count[4]~40\) # (GND)))
-- \displ|s_count[5]~42\ = CARRY((!\displ|s_count[4]~40\) # (!\displ|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(5),
	datad => VCC,
	cin => \displ|s_count[4]~40\,
	combout => \displ|s_count[5]~41_combout\,
	cout => \displ|s_count[5]~42\);

-- Location: FF_X108_Y33_N13
\displ|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[5]~41_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(5));

-- Location: LCCOMB_X108_Y33_N14
\displ|s_count[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[6]~43_combout\ = (\displ|s_count\(6) & (\displ|s_count[5]~42\ $ (GND))) # (!\displ|s_count\(6) & (!\displ|s_count[5]~42\ & VCC))
-- \displ|s_count[6]~44\ = CARRY((\displ|s_count\(6) & !\displ|s_count[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(6),
	datad => VCC,
	cin => \displ|s_count[5]~42\,
	combout => \displ|s_count[6]~43_combout\,
	cout => \displ|s_count[6]~44\);

-- Location: FF_X108_Y33_N15
\displ|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[6]~43_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(6));

-- Location: LCCOMB_X108_Y33_N16
\displ|s_count[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[7]~45_combout\ = (\displ|s_count\(7) & (!\displ|s_count[6]~44\)) # (!\displ|s_count\(7) & ((\displ|s_count[6]~44\) # (GND)))
-- \displ|s_count[7]~46\ = CARRY((!\displ|s_count[6]~44\) # (!\displ|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(7),
	datad => VCC,
	cin => \displ|s_count[6]~44\,
	combout => \displ|s_count[7]~45_combout\,
	cout => \displ|s_count[7]~46\);

-- Location: FF_X108_Y33_N17
\displ|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[7]~45_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(7));

-- Location: LCCOMB_X108_Y33_N18
\displ|s_count[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[8]~47_combout\ = (\displ|s_count\(8) & (\displ|s_count[7]~46\ $ (GND))) # (!\displ|s_count\(8) & (!\displ|s_count[7]~46\ & VCC))
-- \displ|s_count[8]~48\ = CARRY((\displ|s_count\(8) & !\displ|s_count[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(8),
	datad => VCC,
	cin => \displ|s_count[7]~46\,
	combout => \displ|s_count[8]~47_combout\,
	cout => \displ|s_count[8]~48\);

-- Location: FF_X108_Y33_N19
\displ|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[8]~47_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(8));

-- Location: LCCOMB_X108_Y33_N20
\displ|s_count[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[9]~49_combout\ = (\displ|s_count\(9) & (!\displ|s_count[8]~48\)) # (!\displ|s_count\(9) & ((\displ|s_count[8]~48\) # (GND)))
-- \displ|s_count[9]~50\ = CARRY((!\displ|s_count[8]~48\) # (!\displ|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(9),
	datad => VCC,
	cin => \displ|s_count[8]~48\,
	combout => \displ|s_count[9]~49_combout\,
	cout => \displ|s_count[9]~50\);

-- Location: FF_X108_Y33_N21
\displ|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[9]~49_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(9));

-- Location: LCCOMB_X108_Y33_N22
\displ|s_count[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[10]~51_combout\ = (\displ|s_count\(10) & (\displ|s_count[9]~50\ $ (GND))) # (!\displ|s_count\(10) & (!\displ|s_count[9]~50\ & VCC))
-- \displ|s_count[10]~52\ = CARRY((\displ|s_count\(10) & !\displ|s_count[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(10),
	datad => VCC,
	cin => \displ|s_count[9]~50\,
	combout => \displ|s_count[10]~51_combout\,
	cout => \displ|s_count[10]~52\);

-- Location: FF_X108_Y33_N23
\displ|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[10]~51_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(10));

-- Location: LCCOMB_X108_Y33_N24
\displ|s_count[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[11]~53_combout\ = (\displ|s_count\(11) & (!\displ|s_count[10]~52\)) # (!\displ|s_count\(11) & ((\displ|s_count[10]~52\) # (GND)))
-- \displ|s_count[11]~54\ = CARRY((!\displ|s_count[10]~52\) # (!\displ|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(11),
	datad => VCC,
	cin => \displ|s_count[10]~52\,
	combout => \displ|s_count[11]~53_combout\,
	cout => \displ|s_count[11]~54\);

-- Location: FF_X108_Y33_N25
\displ|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[11]~53_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(11));

-- Location: LCCOMB_X108_Y33_N26
\displ|s_count[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[12]~55_combout\ = (\displ|s_count\(12) & (\displ|s_count[11]~54\ $ (GND))) # (!\displ|s_count\(12) & (!\displ|s_count[11]~54\ & VCC))
-- \displ|s_count[12]~56\ = CARRY((\displ|s_count\(12) & !\displ|s_count[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(12),
	datad => VCC,
	cin => \displ|s_count[11]~54\,
	combout => \displ|s_count[12]~55_combout\,
	cout => \displ|s_count[12]~56\);

-- Location: FF_X108_Y33_N27
\displ|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[12]~55_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(12));

-- Location: LCCOMB_X108_Y33_N28
\displ|s_count[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[13]~57_combout\ = (\displ|s_count\(13) & (!\displ|s_count[12]~56\)) # (!\displ|s_count\(13) & ((\displ|s_count[12]~56\) # (GND)))
-- \displ|s_count[13]~58\ = CARRY((!\displ|s_count[12]~56\) # (!\displ|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(13),
	datad => VCC,
	cin => \displ|s_count[12]~56\,
	combout => \displ|s_count[13]~57_combout\,
	cout => \displ|s_count[13]~58\);

-- Location: FF_X108_Y33_N29
\displ|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[13]~57_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(13));

-- Location: LCCOMB_X108_Y33_N30
\displ|s_count[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[14]~60_combout\ = (\displ|s_count\(14) & (\displ|s_count[13]~58\ $ (GND))) # (!\displ|s_count\(14) & (!\displ|s_count[13]~58\ & VCC))
-- \displ|s_count[14]~61\ = CARRY((\displ|s_count\(14) & !\displ|s_count[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(14),
	datad => VCC,
	cin => \displ|s_count[13]~58\,
	combout => \displ|s_count[14]~60_combout\,
	cout => \displ|s_count[14]~61\);

-- Location: FF_X108_Y33_N31
\displ|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[14]~60_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(14));

-- Location: LCCOMB_X108_Y32_N0
\displ|s_count[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[15]~62_combout\ = (\displ|s_count\(15) & (!\displ|s_count[14]~61\)) # (!\displ|s_count\(15) & ((\displ|s_count[14]~61\) # (GND)))
-- \displ|s_count[15]~63\ = CARRY((!\displ|s_count[14]~61\) # (!\displ|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(15),
	datad => VCC,
	cin => \displ|s_count[14]~61\,
	combout => \displ|s_count[15]~62_combout\,
	cout => \displ|s_count[15]~63\);

-- Location: FF_X108_Y32_N1
\displ|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[15]~62_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(15));

-- Location: LCCOMB_X108_Y32_N2
\displ|s_count[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[16]~64_combout\ = (\displ|s_count\(16) & (\displ|s_count[15]~63\ $ (GND))) # (!\displ|s_count\(16) & (!\displ|s_count[15]~63\ & VCC))
-- \displ|s_count[16]~65\ = CARRY((\displ|s_count\(16) & !\displ|s_count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(16),
	datad => VCC,
	cin => \displ|s_count[15]~63\,
	combout => \displ|s_count[16]~64_combout\,
	cout => \displ|s_count[16]~65\);

-- Location: FF_X108_Y32_N3
\displ|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[16]~64_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(16));

-- Location: LCCOMB_X108_Y32_N4
\displ|s_count[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[17]~66_combout\ = (\displ|s_count\(17) & (!\displ|s_count[16]~65\)) # (!\displ|s_count\(17) & ((\displ|s_count[16]~65\) # (GND)))
-- \displ|s_count[17]~67\ = CARRY((!\displ|s_count[16]~65\) # (!\displ|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(17),
	datad => VCC,
	cin => \displ|s_count[16]~65\,
	combout => \displ|s_count[17]~66_combout\,
	cout => \displ|s_count[17]~67\);

-- Location: FF_X108_Y32_N5
\displ|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[17]~66_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(17));

-- Location: LCCOMB_X108_Y32_N6
\displ|s_count[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[18]~68_combout\ = (\displ|s_count\(18) & (\displ|s_count[17]~67\ $ (GND))) # (!\displ|s_count\(18) & (!\displ|s_count[17]~67\ & VCC))
-- \displ|s_count[18]~69\ = CARRY((\displ|s_count\(18) & !\displ|s_count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(18),
	datad => VCC,
	cin => \displ|s_count[17]~67\,
	combout => \displ|s_count[18]~68_combout\,
	cout => \displ|s_count[18]~69\);

-- Location: FF_X108_Y32_N7
\displ|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[18]~68_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(18));

-- Location: LCCOMB_X108_Y32_N8
\displ|s_count[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[19]~70_combout\ = (\displ|s_count\(19) & (!\displ|s_count[18]~69\)) # (!\displ|s_count\(19) & ((\displ|s_count[18]~69\) # (GND)))
-- \displ|s_count[19]~71\ = CARRY((!\displ|s_count[18]~69\) # (!\displ|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(19),
	datad => VCC,
	cin => \displ|s_count[18]~69\,
	combout => \displ|s_count[19]~70_combout\,
	cout => \displ|s_count[19]~71\);

-- Location: FF_X108_Y32_N9
\displ|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[19]~70_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(19));

-- Location: LCCOMB_X107_Y32_N30
\displ|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~2_combout\ = (\displ|s_count\(19) & (\displ|s_count\(14) & !\displ|s_count\(16))) # (!\displ|s_count\(19) & (!\displ|s_count\(14) & \displ|s_count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(19),
	datac => \displ|s_count\(14),
	datad => \displ|s_count\(16),
	combout => \displ|Equal1~2_combout\);

-- Location: LCCOMB_X107_Y32_N16
\displ|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~3_combout\ = (\displ|Equal1~2_combout\ & ((\displ|s_thd[24]~9_combout\ & (\displ|s_count\(18) & !\displ|s_count\(16))) # (!\displ|s_thd[24]~9_combout\ & (!\displ|s_count\(18) & \displ|s_count\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_thd[24]~9_combout\,
	datab => \displ|s_count\(18),
	datac => \displ|Equal1~2_combout\,
	datad => \displ|s_count\(16),
	combout => \displ|Equal1~3_combout\);

-- Location: LCCOMB_X107_Y33_N0
\displ|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~0_combout\ = (\displ|s_count\(9) & (\displ|s_count\(6) & !\displ|s_count\(10))) # (!\displ|s_count\(9) & (!\displ|s_count\(6) & \displ|s_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(9),
	datac => \displ|s_count\(6),
	datad => \displ|s_count\(10),
	combout => \displ|Equal1~0_combout\);

-- Location: LCCOMB_X107_Y33_N26
\displ|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~1_combout\ = (\displ|Equal1~0_combout\ & ((\displ|s_thd[24]~9_combout\ & (\displ|s_count\(9) & !\displ|s_count\(13))) # (!\displ|s_thd[24]~9_combout\ & (!\displ|s_count\(9) & \displ|s_count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_thd[24]~9_combout\,
	datab => \displ|Equal1~0_combout\,
	datac => \displ|s_count\(9),
	datad => \displ|s_count\(13),
	combout => \displ|Equal1~1_combout\);

-- Location: LCCOMB_X107_Y32_N2
\displ|s_count[4]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[4]~59_combout\ = (\KEY[3]~input_o\) # ((\displ|Equal1~11_combout\ & (\displ|Equal1~3_combout\ & \displ|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Equal1~11_combout\,
	datab => \displ|Equal1~3_combout\,
	datac => \displ|Equal1~1_combout\,
	datad => \KEY[3]~input_o\,
	combout => \displ|s_count[4]~59_combout\);

-- Location: FF_X106_Y33_N3
\displ|s_repeatCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[0]~31_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(0));

-- Location: LCCOMB_X106_Y33_N4
\displ|s_repeatCount[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[1]~33_combout\ = (\displ|s_repeatCount\(1) & (!\displ|s_repeatCount[0]~32\)) # (!\displ|s_repeatCount\(1) & ((\displ|s_repeatCount[0]~32\) # (GND)))
-- \displ|s_repeatCount[1]~34\ = CARRY((!\displ|s_repeatCount[0]~32\) # (!\displ|s_repeatCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(1),
	datad => VCC,
	cin => \displ|s_repeatCount[0]~32\,
	combout => \displ|s_repeatCount[1]~33_combout\,
	cout => \displ|s_repeatCount[1]~34\);

-- Location: FF_X106_Y33_N5
\displ|s_repeatCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[1]~33_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(1));

-- Location: LCCOMB_X106_Y33_N6
\displ|s_repeatCount[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[2]~35_combout\ = (\displ|s_repeatCount\(2) & (\displ|s_repeatCount[1]~34\ $ (GND))) # (!\displ|s_repeatCount\(2) & (!\displ|s_repeatCount[1]~34\ & VCC))
-- \displ|s_repeatCount[2]~36\ = CARRY((\displ|s_repeatCount\(2) & !\displ|s_repeatCount[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(2),
	datad => VCC,
	cin => \displ|s_repeatCount[1]~34\,
	combout => \displ|s_repeatCount[2]~35_combout\,
	cout => \displ|s_repeatCount[2]~36\);

-- Location: FF_X106_Y33_N7
\displ|s_repeatCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[2]~35_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(2));

-- Location: LCCOMB_X106_Y33_N8
\displ|s_repeatCount[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[3]~37_combout\ = (\displ|s_repeatCount\(3) & (!\displ|s_repeatCount[2]~36\)) # (!\displ|s_repeatCount\(3) & ((\displ|s_repeatCount[2]~36\) # (GND)))
-- \displ|s_repeatCount[3]~38\ = CARRY((!\displ|s_repeatCount[2]~36\) # (!\displ|s_repeatCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(3),
	datad => VCC,
	cin => \displ|s_repeatCount[2]~36\,
	combout => \displ|s_repeatCount[3]~37_combout\,
	cout => \displ|s_repeatCount[3]~38\);

-- Location: FF_X106_Y33_N9
\displ|s_repeatCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[3]~37_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(3));

-- Location: LCCOMB_X106_Y33_N10
\displ|s_repeatCount[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[4]~39_combout\ = (\displ|s_repeatCount\(4) & (\displ|s_repeatCount[3]~38\ $ (GND))) # (!\displ|s_repeatCount\(4) & (!\displ|s_repeatCount[3]~38\ & VCC))
-- \displ|s_repeatCount[4]~40\ = CARRY((\displ|s_repeatCount\(4) & !\displ|s_repeatCount[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(4),
	datad => VCC,
	cin => \displ|s_repeatCount[3]~38\,
	combout => \displ|s_repeatCount[4]~39_combout\,
	cout => \displ|s_repeatCount[4]~40\);

-- Location: FF_X106_Y33_N11
\displ|s_repeatCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[4]~39_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(4));

-- Location: LCCOMB_X106_Y33_N12
\displ|s_repeatCount[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[5]~41_combout\ = (\displ|s_repeatCount\(5) & (!\displ|s_repeatCount[4]~40\)) # (!\displ|s_repeatCount\(5) & ((\displ|s_repeatCount[4]~40\) # (GND)))
-- \displ|s_repeatCount[5]~42\ = CARRY((!\displ|s_repeatCount[4]~40\) # (!\displ|s_repeatCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(5),
	datad => VCC,
	cin => \displ|s_repeatCount[4]~40\,
	combout => \displ|s_repeatCount[5]~41_combout\,
	cout => \displ|s_repeatCount[5]~42\);

-- Location: FF_X106_Y33_N13
\displ|s_repeatCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[5]~41_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(5));

-- Location: LCCOMB_X106_Y33_N14
\displ|s_repeatCount[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[6]~43_combout\ = (\displ|s_repeatCount\(6) & (\displ|s_repeatCount[5]~42\ $ (GND))) # (!\displ|s_repeatCount\(6) & (!\displ|s_repeatCount[5]~42\ & VCC))
-- \displ|s_repeatCount[6]~44\ = CARRY((\displ|s_repeatCount\(6) & !\displ|s_repeatCount[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(6),
	datad => VCC,
	cin => \displ|s_repeatCount[5]~42\,
	combout => \displ|s_repeatCount[6]~43_combout\,
	cout => \displ|s_repeatCount[6]~44\);

-- Location: FF_X106_Y33_N15
\displ|s_repeatCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[6]~43_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(6));

-- Location: LCCOMB_X106_Y33_N16
\displ|s_repeatCount[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[7]~45_combout\ = (\displ|s_repeatCount\(7) & (!\displ|s_repeatCount[6]~44\)) # (!\displ|s_repeatCount\(7) & ((\displ|s_repeatCount[6]~44\) # (GND)))
-- \displ|s_repeatCount[7]~46\ = CARRY((!\displ|s_repeatCount[6]~44\) # (!\displ|s_repeatCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(7),
	datad => VCC,
	cin => \displ|s_repeatCount[6]~44\,
	combout => \displ|s_repeatCount[7]~45_combout\,
	cout => \displ|s_repeatCount[7]~46\);

-- Location: FF_X106_Y33_N17
\displ|s_repeatCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[7]~45_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(7));

-- Location: LCCOMB_X106_Y33_N18
\displ|s_repeatCount[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[8]~47_combout\ = (\displ|s_repeatCount\(8) & (\displ|s_repeatCount[7]~46\ $ (GND))) # (!\displ|s_repeatCount\(8) & (!\displ|s_repeatCount[7]~46\ & VCC))
-- \displ|s_repeatCount[8]~48\ = CARRY((\displ|s_repeatCount\(8) & !\displ|s_repeatCount[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(8),
	datad => VCC,
	cin => \displ|s_repeatCount[7]~46\,
	combout => \displ|s_repeatCount[8]~47_combout\,
	cout => \displ|s_repeatCount[8]~48\);

-- Location: FF_X106_Y33_N19
\displ|s_repeatCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[8]~47_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(8));

-- Location: LCCOMB_X106_Y33_N20
\displ|s_repeatCount[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[9]~49_combout\ = (\displ|s_repeatCount\(9) & (!\displ|s_repeatCount[8]~48\)) # (!\displ|s_repeatCount\(9) & ((\displ|s_repeatCount[8]~48\) # (GND)))
-- \displ|s_repeatCount[9]~50\ = CARRY((!\displ|s_repeatCount[8]~48\) # (!\displ|s_repeatCount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(9),
	datad => VCC,
	cin => \displ|s_repeatCount[8]~48\,
	combout => \displ|s_repeatCount[9]~49_combout\,
	cout => \displ|s_repeatCount[9]~50\);

-- Location: FF_X106_Y33_N21
\displ|s_repeatCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[9]~49_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(9));

-- Location: LCCOMB_X106_Y33_N22
\displ|s_repeatCount[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[10]~51_combout\ = (\displ|s_repeatCount\(10) & (\displ|s_repeatCount[9]~50\ $ (GND))) # (!\displ|s_repeatCount\(10) & (!\displ|s_repeatCount[9]~50\ & VCC))
-- \displ|s_repeatCount[10]~52\ = CARRY((\displ|s_repeatCount\(10) & !\displ|s_repeatCount[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(10),
	datad => VCC,
	cin => \displ|s_repeatCount[9]~50\,
	combout => \displ|s_repeatCount[10]~51_combout\,
	cout => \displ|s_repeatCount[10]~52\);

-- Location: FF_X106_Y33_N23
\displ|s_repeatCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[10]~51_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(10));

-- Location: LCCOMB_X106_Y33_N24
\displ|s_repeatCount[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[11]~53_combout\ = (\displ|s_repeatCount\(11) & (!\displ|s_repeatCount[10]~52\)) # (!\displ|s_repeatCount\(11) & ((\displ|s_repeatCount[10]~52\) # (GND)))
-- \displ|s_repeatCount[11]~54\ = CARRY((!\displ|s_repeatCount[10]~52\) # (!\displ|s_repeatCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(11),
	datad => VCC,
	cin => \displ|s_repeatCount[10]~52\,
	combout => \displ|s_repeatCount[11]~53_combout\,
	cout => \displ|s_repeatCount[11]~54\);

-- Location: FF_X106_Y33_N25
\displ|s_repeatCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[11]~53_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(11));

-- Location: LCCOMB_X106_Y33_N26
\displ|s_repeatCount[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[12]~55_combout\ = (\displ|s_repeatCount\(12) & (\displ|s_repeatCount[11]~54\ $ (GND))) # (!\displ|s_repeatCount\(12) & (!\displ|s_repeatCount[11]~54\ & VCC))
-- \displ|s_repeatCount[12]~56\ = CARRY((\displ|s_repeatCount\(12) & !\displ|s_repeatCount[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(12),
	datad => VCC,
	cin => \displ|s_repeatCount[11]~54\,
	combout => \displ|s_repeatCount[12]~55_combout\,
	cout => \displ|s_repeatCount[12]~56\);

-- Location: FF_X106_Y33_N27
\displ|s_repeatCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[12]~55_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(12));

-- Location: LCCOMB_X106_Y33_N28
\displ|s_repeatCount[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[13]~57_combout\ = (\displ|s_repeatCount\(13) & (!\displ|s_repeatCount[12]~56\)) # (!\displ|s_repeatCount\(13) & ((\displ|s_repeatCount[12]~56\) # (GND)))
-- \displ|s_repeatCount[13]~58\ = CARRY((!\displ|s_repeatCount[12]~56\) # (!\displ|s_repeatCount\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(13),
	datad => VCC,
	cin => \displ|s_repeatCount[12]~56\,
	combout => \displ|s_repeatCount[13]~57_combout\,
	cout => \displ|s_repeatCount[13]~58\);

-- Location: FF_X106_Y33_N29
\displ|s_repeatCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[13]~57_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(13));

-- Location: LCCOMB_X106_Y33_N30
\displ|s_repeatCount[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[14]~59_combout\ = (\displ|s_repeatCount\(14) & (\displ|s_repeatCount[13]~58\ $ (GND))) # (!\displ|s_repeatCount\(14) & (!\displ|s_repeatCount[13]~58\ & VCC))
-- \displ|s_repeatCount[14]~60\ = CARRY((\displ|s_repeatCount\(14) & !\displ|s_repeatCount[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(14),
	datad => VCC,
	cin => \displ|s_repeatCount[13]~58\,
	combout => \displ|s_repeatCount[14]~59_combout\,
	cout => \displ|s_repeatCount[14]~60\);

-- Location: FF_X106_Y33_N31
\displ|s_repeatCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[14]~59_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(14));

-- Location: LCCOMB_X106_Y32_N0
\displ|s_repeatCount[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[15]~61_combout\ = (\displ|s_repeatCount\(15) & (!\displ|s_repeatCount[14]~60\)) # (!\displ|s_repeatCount\(15) & ((\displ|s_repeatCount[14]~60\) # (GND)))
-- \displ|s_repeatCount[15]~62\ = CARRY((!\displ|s_repeatCount[14]~60\) # (!\displ|s_repeatCount\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(15),
	datad => VCC,
	cin => \displ|s_repeatCount[14]~60\,
	combout => \displ|s_repeatCount[15]~61_combout\,
	cout => \displ|s_repeatCount[15]~62\);

-- Location: FF_X106_Y32_N1
\displ|s_repeatCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[15]~61_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(15));

-- Location: LCCOMB_X106_Y32_N2
\displ|s_repeatCount[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[16]~63_combout\ = (\displ|s_repeatCount\(16) & (\displ|s_repeatCount[15]~62\ $ (GND))) # (!\displ|s_repeatCount\(16) & (!\displ|s_repeatCount[15]~62\ & VCC))
-- \displ|s_repeatCount[16]~64\ = CARRY((\displ|s_repeatCount\(16) & !\displ|s_repeatCount[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(16),
	datad => VCC,
	cin => \displ|s_repeatCount[15]~62\,
	combout => \displ|s_repeatCount[16]~63_combout\,
	cout => \displ|s_repeatCount[16]~64\);

-- Location: FF_X106_Y32_N3
\displ|s_repeatCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[16]~63_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(16));

-- Location: LCCOMB_X106_Y32_N4
\displ|s_repeatCount[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[17]~65_combout\ = (\displ|s_repeatCount\(17) & (!\displ|s_repeatCount[16]~64\)) # (!\displ|s_repeatCount\(17) & ((\displ|s_repeatCount[16]~64\) # (GND)))
-- \displ|s_repeatCount[17]~66\ = CARRY((!\displ|s_repeatCount[16]~64\) # (!\displ|s_repeatCount\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(17),
	datad => VCC,
	cin => \displ|s_repeatCount[16]~64\,
	combout => \displ|s_repeatCount[17]~65_combout\,
	cout => \displ|s_repeatCount[17]~66\);

-- Location: FF_X106_Y32_N5
\displ|s_repeatCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[17]~65_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(17));

-- Location: LCCOMB_X106_Y32_N6
\displ|s_repeatCount[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[18]~67_combout\ = (\displ|s_repeatCount\(18) & (\displ|s_repeatCount[17]~66\ $ (GND))) # (!\displ|s_repeatCount\(18) & (!\displ|s_repeatCount[17]~66\ & VCC))
-- \displ|s_repeatCount[18]~68\ = CARRY((\displ|s_repeatCount\(18) & !\displ|s_repeatCount[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(18),
	datad => VCC,
	cin => \displ|s_repeatCount[17]~66\,
	combout => \displ|s_repeatCount[18]~67_combout\,
	cout => \displ|s_repeatCount[18]~68\);

-- Location: FF_X106_Y32_N7
\displ|s_repeatCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[18]~67_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(18));

-- Location: LCCOMB_X106_Y32_N8
\displ|s_repeatCount[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[19]~69_combout\ = (\displ|s_repeatCount\(19) & (!\displ|s_repeatCount[18]~68\)) # (!\displ|s_repeatCount\(19) & ((\displ|s_repeatCount[18]~68\) # (GND)))
-- \displ|s_repeatCount[19]~70\ = CARRY((!\displ|s_repeatCount[18]~68\) # (!\displ|s_repeatCount\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(19),
	datad => VCC,
	cin => \displ|s_repeatCount[18]~68\,
	combout => \displ|s_repeatCount[19]~69_combout\,
	cout => \displ|s_repeatCount[19]~70\);

-- Location: FF_X106_Y32_N9
\displ|s_repeatCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[19]~69_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(19));

-- Location: LCCOMB_X106_Y32_N10
\displ|s_repeatCount[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[20]~71_combout\ = (\displ|s_repeatCount\(20) & (\displ|s_repeatCount[19]~70\ $ (GND))) # (!\displ|s_repeatCount\(20) & (!\displ|s_repeatCount[19]~70\ & VCC))
-- \displ|s_repeatCount[20]~72\ = CARRY((\displ|s_repeatCount\(20) & !\displ|s_repeatCount[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(20),
	datad => VCC,
	cin => \displ|s_repeatCount[19]~70\,
	combout => \displ|s_repeatCount[20]~71_combout\,
	cout => \displ|s_repeatCount[20]~72\);

-- Location: FF_X106_Y32_N11
\displ|s_repeatCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[20]~71_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(20));

-- Location: LCCOMB_X106_Y32_N12
\displ|s_repeatCount[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[21]~73_combout\ = (\displ|s_repeatCount\(21) & (!\displ|s_repeatCount[20]~72\)) # (!\displ|s_repeatCount\(21) & ((\displ|s_repeatCount[20]~72\) # (GND)))
-- \displ|s_repeatCount[21]~74\ = CARRY((!\displ|s_repeatCount[20]~72\) # (!\displ|s_repeatCount\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(21),
	datad => VCC,
	cin => \displ|s_repeatCount[20]~72\,
	combout => \displ|s_repeatCount[21]~73_combout\,
	cout => \displ|s_repeatCount[21]~74\);

-- Location: FF_X106_Y32_N13
\displ|s_repeatCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[21]~73_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(21));

-- Location: LCCOMB_X106_Y32_N14
\displ|s_repeatCount[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[22]~75_combout\ = (\displ|s_repeatCount\(22) & (\displ|s_repeatCount[21]~74\ $ (GND))) # (!\displ|s_repeatCount\(22) & (!\displ|s_repeatCount[21]~74\ & VCC))
-- \displ|s_repeatCount[22]~76\ = CARRY((\displ|s_repeatCount\(22) & !\displ|s_repeatCount[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(22),
	datad => VCC,
	cin => \displ|s_repeatCount[21]~74\,
	combout => \displ|s_repeatCount[22]~75_combout\,
	cout => \displ|s_repeatCount[22]~76\);

-- Location: FF_X106_Y32_N15
\displ|s_repeatCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[22]~75_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(22));

-- Location: LCCOMB_X106_Y32_N16
\displ|s_repeatCount[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[23]~77_combout\ = (\displ|s_repeatCount\(23) & (!\displ|s_repeatCount[22]~76\)) # (!\displ|s_repeatCount\(23) & ((\displ|s_repeatCount[22]~76\) # (GND)))
-- \displ|s_repeatCount[23]~78\ = CARRY((!\displ|s_repeatCount[22]~76\) # (!\displ|s_repeatCount\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(23),
	datad => VCC,
	cin => \displ|s_repeatCount[22]~76\,
	combout => \displ|s_repeatCount[23]~77_combout\,
	cout => \displ|s_repeatCount[23]~78\);

-- Location: FF_X106_Y32_N17
\displ|s_repeatCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[23]~77_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(23));

-- Location: LCCOMB_X107_Y32_N22
\displ|s_thd[24]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~6_combout\ = (\displ|s_repeatCount\(22)) # ((\displ|s_repeatCount\(20)) # ((\displ|s_repeatCount\(23)) # (\displ|s_repeatCount\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(22),
	datab => \displ|s_repeatCount\(20),
	datac => \displ|s_repeatCount\(23),
	datad => \displ|s_repeatCount\(21),
	combout => \displ|s_thd[24]~6_combout\);

-- Location: LCCOMB_X107_Y32_N28
\displ|s_thd[24]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~5_combout\ = (\displ|s_repeatCount\(16)) # ((\displ|s_repeatCount\(18)) # ((\displ|s_repeatCount\(17)) # (\displ|s_repeatCount\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(16),
	datab => \displ|s_repeatCount\(18),
	datac => \displ|s_repeatCount\(17),
	datad => \displ|s_repeatCount\(19),
	combout => \displ|s_thd[24]~5_combout\);

-- Location: LCCOMB_X107_Y33_N12
\displ|s_thd[24]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~2_combout\ = (\displ|s_repeatCount\(10)) # ((\displ|s_repeatCount\(11)) # ((\displ|s_repeatCount\(8)) # (\displ|s_repeatCount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(10),
	datab => \displ|s_repeatCount\(11),
	datac => \displ|s_repeatCount\(8),
	datad => \displ|s_repeatCount\(9),
	combout => \displ|s_thd[24]~2_combout\);

-- Location: LCCOMB_X107_Y33_N24
\displ|s_thd[24]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~0_combout\ = (\displ|s_repeatCount\(3)) # (\displ|s_repeatCount\(2) $ (((!\displ|s_repeatCount\(1) & !\displ|s_repeatCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(3),
	datab => \displ|s_repeatCount\(1),
	datac => \displ|s_repeatCount\(2),
	datad => \displ|s_repeatCount\(0),
	combout => \displ|s_thd[24]~0_combout\);

-- Location: LCCOMB_X106_Y33_N0
\displ|s_thd[24]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~3_combout\ = (\displ|s_repeatCount\(12)) # ((\displ|s_repeatCount\(15)) # ((\displ|s_repeatCount\(14)) # (\displ|s_repeatCount\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(12),
	datab => \displ|s_repeatCount\(15),
	datac => \displ|s_repeatCount\(14),
	datad => \displ|s_repeatCount\(13),
	combout => \displ|s_thd[24]~3_combout\);

-- Location: LCCOMB_X107_Y33_N10
\displ|s_thd[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~1_combout\ = (\displ|s_repeatCount\(6)) # ((\displ|s_repeatCount\(4)) # ((\displ|s_repeatCount\(7)) # (\displ|s_repeatCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(6),
	datab => \displ|s_repeatCount\(4),
	datac => \displ|s_repeatCount\(7),
	datad => \displ|s_repeatCount\(5),
	combout => \displ|s_thd[24]~1_combout\);

-- Location: LCCOMB_X107_Y33_N30
\displ|s_thd[24]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~4_combout\ = (\displ|s_thd[24]~2_combout\) # ((\displ|s_thd[24]~0_combout\) # ((\displ|s_thd[24]~3_combout\) # (\displ|s_thd[24]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_thd[24]~2_combout\,
	datab => \displ|s_thd[24]~0_combout\,
	datac => \displ|s_thd[24]~3_combout\,
	datad => \displ|s_thd[24]~1_combout\,
	combout => \displ|s_thd[24]~4_combout\);

-- Location: LCCOMB_X106_Y32_N18
\displ|s_repeatCount[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[24]~79_combout\ = (\displ|s_repeatCount\(24) & (\displ|s_repeatCount[23]~78\ $ (GND))) # (!\displ|s_repeatCount\(24) & (!\displ|s_repeatCount[23]~78\ & VCC))
-- \displ|s_repeatCount[24]~80\ = CARRY((\displ|s_repeatCount\(24) & !\displ|s_repeatCount[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(24),
	datad => VCC,
	cin => \displ|s_repeatCount[23]~78\,
	combout => \displ|s_repeatCount[24]~79_combout\,
	cout => \displ|s_repeatCount[24]~80\);

-- Location: FF_X106_Y32_N19
\displ|s_repeatCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[24]~79_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(24));

-- Location: LCCOMB_X106_Y32_N20
\displ|s_repeatCount[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[25]~81_combout\ = (\displ|s_repeatCount\(25) & (!\displ|s_repeatCount[24]~80\)) # (!\displ|s_repeatCount\(25) & ((\displ|s_repeatCount[24]~80\) # (GND)))
-- \displ|s_repeatCount[25]~82\ = CARRY((!\displ|s_repeatCount[24]~80\) # (!\displ|s_repeatCount\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(25),
	datad => VCC,
	cin => \displ|s_repeatCount[24]~80\,
	combout => \displ|s_repeatCount[25]~81_combout\,
	cout => \displ|s_repeatCount[25]~82\);

-- Location: FF_X106_Y32_N21
\displ|s_repeatCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[25]~81_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(25));

-- Location: LCCOMB_X106_Y32_N22
\displ|s_repeatCount[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[26]~83_combout\ = (\displ|s_repeatCount\(26) & (\displ|s_repeatCount[25]~82\ $ (GND))) # (!\displ|s_repeatCount\(26) & (!\displ|s_repeatCount[25]~82\ & VCC))
-- \displ|s_repeatCount[26]~84\ = CARRY((\displ|s_repeatCount\(26) & !\displ|s_repeatCount[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(26),
	datad => VCC,
	cin => \displ|s_repeatCount[25]~82\,
	combout => \displ|s_repeatCount[26]~83_combout\,
	cout => \displ|s_repeatCount[26]~84\);

-- Location: FF_X106_Y32_N23
\displ|s_repeatCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[26]~83_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(26));

-- Location: LCCOMB_X106_Y32_N24
\displ|s_repeatCount[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[27]~85_combout\ = (\displ|s_repeatCount\(27) & (!\displ|s_repeatCount[26]~84\)) # (!\displ|s_repeatCount\(27) & ((\displ|s_repeatCount[26]~84\) # (GND)))
-- \displ|s_repeatCount[27]~86\ = CARRY((!\displ|s_repeatCount[26]~84\) # (!\displ|s_repeatCount\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(27),
	datad => VCC,
	cin => \displ|s_repeatCount[26]~84\,
	combout => \displ|s_repeatCount[27]~85_combout\,
	cout => \displ|s_repeatCount[27]~86\);

-- Location: FF_X106_Y32_N25
\displ|s_repeatCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[27]~85_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(27));

-- Location: LCCOMB_X106_Y32_N26
\displ|s_repeatCount[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[28]~87_combout\ = (\displ|s_repeatCount\(28) & (\displ|s_repeatCount[27]~86\ $ (GND))) # (!\displ|s_repeatCount\(28) & (!\displ|s_repeatCount[27]~86\ & VCC))
-- \displ|s_repeatCount[28]~88\ = CARRY((\displ|s_repeatCount\(28) & !\displ|s_repeatCount[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(28),
	datad => VCC,
	cin => \displ|s_repeatCount[27]~86\,
	combout => \displ|s_repeatCount[28]~87_combout\,
	cout => \displ|s_repeatCount[28]~88\);

-- Location: FF_X106_Y32_N27
\displ|s_repeatCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[28]~87_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(28));

-- Location: LCCOMB_X106_Y32_N28
\displ|s_repeatCount[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[29]~89_combout\ = (\displ|s_repeatCount\(29) & (!\displ|s_repeatCount[28]~88\)) # (!\displ|s_repeatCount\(29) & ((\displ|s_repeatCount[28]~88\) # (GND)))
-- \displ|s_repeatCount[29]~90\ = CARRY((!\displ|s_repeatCount[28]~88\) # (!\displ|s_repeatCount\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_repeatCount\(29),
	datad => VCC,
	cin => \displ|s_repeatCount[28]~88\,
	combout => \displ|s_repeatCount[29]~89_combout\,
	cout => \displ|s_repeatCount[29]~90\);

-- Location: FF_X106_Y32_N29
\displ|s_repeatCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[29]~89_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(29));

-- Location: LCCOMB_X106_Y32_N30
\displ|s_repeatCount[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_repeatCount[30]~91_combout\ = \displ|s_repeatCount\(30) $ (!\displ|s_repeatCount[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(30),
	cin => \displ|s_repeatCount[29]~90\,
	combout => \displ|s_repeatCount[30]~91_combout\);

-- Location: FF_X106_Y32_N31
\displ|s_repeatCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_repeatCount[30]~91_combout\,
	sclr => \KEY[3]~input_o\,
	ena => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_repeatCount\(30));

-- Location: LCCOMB_X107_Y32_N24
\displ|s_thd[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~7_combout\ = (\displ|s_repeatCount\(27)) # ((\displ|s_repeatCount\(25)) # ((\displ|s_repeatCount\(26)) # (\displ|s_repeatCount\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(27),
	datab => \displ|s_repeatCount\(25),
	datac => \displ|s_repeatCount\(26),
	datad => \displ|s_repeatCount\(24),
	combout => \displ|s_thd[24]~7_combout\);

-- Location: LCCOMB_X107_Y32_N18
\displ|s_thd[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~8_combout\ = (\displ|s_repeatCount\(29)) # ((\displ|s_repeatCount\(30)) # ((\displ|s_repeatCount\(28)) # (\displ|s_thd[24]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_repeatCount\(29),
	datab => \displ|s_repeatCount\(30),
	datac => \displ|s_repeatCount\(28),
	datad => \displ|s_thd[24]~7_combout\,
	combout => \displ|s_thd[24]~8_combout\);

-- Location: LCCOMB_X107_Y32_N12
\displ|s_thd[24]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_thd[24]~9_combout\ = (\displ|s_thd[24]~6_combout\) # ((\displ|s_thd[24]~5_combout\) # ((\displ|s_thd[24]~4_combout\) # (\displ|s_thd[24]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_thd[24]~6_combout\,
	datab => \displ|s_thd[24]~5_combout\,
	datac => \displ|s_thd[24]~4_combout\,
	datad => \displ|s_thd[24]~8_combout\,
	combout => \displ|s_thd[24]~9_combout\);

-- Location: LCCOMB_X108_Y32_N10
\displ|s_count[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[20]~72_combout\ = (\displ|s_count\(20) & (\displ|s_count[19]~71\ $ (GND))) # (!\displ|s_count\(20) & (!\displ|s_count[19]~71\ & VCC))
-- \displ|s_count[20]~73\ = CARRY((\displ|s_count\(20) & !\displ|s_count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(20),
	datad => VCC,
	cin => \displ|s_count[19]~71\,
	combout => \displ|s_count[20]~72_combout\,
	cout => \displ|s_count[20]~73\);

-- Location: FF_X108_Y32_N11
\displ|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[20]~72_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(20));

-- Location: LCCOMB_X108_Y32_N12
\displ|s_count[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[21]~74_combout\ = (\displ|s_count\(21) & (!\displ|s_count[20]~73\)) # (!\displ|s_count\(21) & ((\displ|s_count[20]~73\) # (GND)))
-- \displ|s_count[21]~75\ = CARRY((!\displ|s_count[20]~73\) # (!\displ|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(21),
	datad => VCC,
	cin => \displ|s_count[20]~73\,
	combout => \displ|s_count[21]~74_combout\,
	cout => \displ|s_count[21]~75\);

-- Location: FF_X108_Y32_N13
\displ|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[21]~74_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(21));

-- Location: LCCOMB_X109_Y33_N10
\displ|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~5_combout\ = (!\displ|s_count\(5) & (\displ|s_count\(8) & (!\displ|s_count\(7) & !\displ|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(5),
	datab => \displ|s_count\(8),
	datac => \displ|s_count\(7),
	datad => \displ|s_count\(4),
	combout => \displ|Equal1~5_combout\);

-- Location: LCCOMB_X108_Y32_N14
\displ|s_count[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[22]~76_combout\ = (\displ|s_count\(22) & (\displ|s_count[21]~75\ $ (GND))) # (!\displ|s_count\(22) & (!\displ|s_count[21]~75\ & VCC))
-- \displ|s_count[22]~77\ = CARRY((\displ|s_count\(22) & !\displ|s_count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(22),
	datad => VCC,
	cin => \displ|s_count[21]~75\,
	combout => \displ|s_count[22]~76_combout\,
	cout => \displ|s_count[22]~77\);

-- Location: FF_X108_Y32_N15
\displ|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[22]~76_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(22));

-- Location: LCCOMB_X108_Y32_N16
\displ|s_count[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[23]~78_combout\ = (\displ|s_count\(23) & (!\displ|s_count[22]~77\)) # (!\displ|s_count\(23) & ((\displ|s_count[22]~77\) # (GND)))
-- \displ|s_count[23]~79\ = CARRY((!\displ|s_count[22]~77\) # (!\displ|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(23),
	datad => VCC,
	cin => \displ|s_count[22]~77\,
	combout => \displ|s_count[23]~78_combout\,
	cout => \displ|s_count[23]~79\);

-- Location: FF_X108_Y32_N17
\displ|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[23]~78_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(23));

-- Location: LCCOMB_X108_Y32_N18
\displ|s_count[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[24]~80_combout\ = (\displ|s_count\(24) & (\displ|s_count[23]~79\ $ (GND))) # (!\displ|s_count\(24) & (!\displ|s_count[23]~79\ & VCC))
-- \displ|s_count[24]~81\ = CARRY((\displ|s_count\(24) & !\displ|s_count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(24),
	datad => VCC,
	cin => \displ|s_count[23]~79\,
	combout => \displ|s_count[24]~80_combout\,
	cout => \displ|s_count[24]~81\);

-- Location: FF_X108_Y32_N19
\displ|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[24]~80_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(24));

-- Location: LCCOMB_X108_Y32_N20
\displ|s_count[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[25]~82_combout\ = (\displ|s_count\(25) & (!\displ|s_count[24]~81\)) # (!\displ|s_count\(25) & ((\displ|s_count[24]~81\) # (GND)))
-- \displ|s_count[25]~83\ = CARRY((!\displ|s_count[24]~81\) # (!\displ|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(25),
	datad => VCC,
	cin => \displ|s_count[24]~81\,
	combout => \displ|s_count[25]~82_combout\,
	cout => \displ|s_count[25]~83\);

-- Location: FF_X108_Y32_N21
\displ|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[25]~82_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(25));

-- Location: LCCOMB_X108_Y32_N22
\displ|s_count[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[26]~84_combout\ = (\displ|s_count\(26) & (\displ|s_count[25]~83\ $ (GND))) # (!\displ|s_count\(26) & (!\displ|s_count[25]~83\ & VCC))
-- \displ|s_count[26]~85\ = CARRY((\displ|s_count\(26) & !\displ|s_count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(26),
	datad => VCC,
	cin => \displ|s_count[25]~83\,
	combout => \displ|s_count[26]~84_combout\,
	cout => \displ|s_count[26]~85\);

-- Location: FF_X108_Y32_N23
\displ|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[26]~84_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(26));

-- Location: LCCOMB_X108_Y32_N24
\displ|s_count[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[27]~86_combout\ = (\displ|s_count\(27) & (!\displ|s_count[26]~85\)) # (!\displ|s_count\(27) & ((\displ|s_count[26]~85\) # (GND)))
-- \displ|s_count[27]~87\ = CARRY((!\displ|s_count[26]~85\) # (!\displ|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(27),
	datad => VCC,
	cin => \displ|s_count[26]~85\,
	combout => \displ|s_count[27]~86_combout\,
	cout => \displ|s_count[27]~87\);

-- Location: FF_X108_Y32_N25
\displ|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[27]~86_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(27));

-- Location: LCCOMB_X109_Y32_N0
\displ|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~7_combout\ = (!\displ|s_count\(25) & (!\displ|s_count\(27) & (!\displ|s_count\(23) & !\displ|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(25),
	datab => \displ|s_count\(27),
	datac => \displ|s_count\(23),
	datad => \displ|s_count\(26),
	combout => \displ|Equal1~7_combout\);

-- Location: LCCOMB_X108_Y33_N0
\displ|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~6_combout\ = (!\displ|s_count\(17) & (!\displ|s_count\(15) & (!\displ|s_count\(12) & \displ|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(17),
	datab => \displ|s_count\(15),
	datac => \displ|s_count\(12),
	datad => \displ|s_count\(11),
	combout => \displ|Equal1~6_combout\);

-- Location: LCCOMB_X109_Y33_N24
\displ|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~4_combout\ = (!\displ|s_count\(3) & (!\displ|s_count\(2) & (!\displ|s_count\(1) & !\displ|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(3),
	datab => \displ|s_count\(2),
	datac => \displ|s_count\(1),
	datad => \displ|s_count\(0),
	combout => \displ|Equal1~4_combout\);

-- Location: LCCOMB_X109_Y33_N4
\displ|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~8_combout\ = (\displ|Equal1~5_combout\ & (\displ|Equal1~7_combout\ & (\displ|Equal1~6_combout\ & \displ|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Equal1~5_combout\,
	datab => \displ|Equal1~7_combout\,
	datac => \displ|Equal1~6_combout\,
	datad => \displ|Equal1~4_combout\,
	combout => \displ|Equal1~8_combout\);

-- Location: LCCOMB_X108_Y32_N26
\displ|s_count[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[28]~88_combout\ = (\displ|s_count\(28) & (\displ|s_count[27]~87\ $ (GND))) # (!\displ|s_count\(28) & (!\displ|s_count[27]~87\ & VCC))
-- \displ|s_count[28]~89\ = CARRY((\displ|s_count\(28) & !\displ|s_count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(28),
	datad => VCC,
	cin => \displ|s_count[27]~87\,
	combout => \displ|s_count[28]~88_combout\,
	cout => \displ|s_count[28]~89\);

-- Location: FF_X108_Y32_N27
\displ|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[28]~88_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(28));

-- Location: LCCOMB_X108_Y32_N28
\displ|s_count[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[29]~90_combout\ = (\displ|s_count\(29) & (!\displ|s_count[28]~89\)) # (!\displ|s_count\(29) & ((\displ|s_count[28]~89\) # (GND)))
-- \displ|s_count[29]~91\ = CARRY((!\displ|s_count[28]~89\) # (!\displ|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_count\(29),
	datad => VCC,
	cin => \displ|s_count[28]~89\,
	combout => \displ|s_count[29]~90_combout\,
	cout => \displ|s_count[29]~91\);

-- Location: FF_X108_Y32_N29
\displ|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[29]~90_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(29));

-- Location: LCCOMB_X108_Y32_N30
\displ|s_count[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_count[30]~92_combout\ = \displ|s_count\(30) $ (!\displ|s_count[29]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_count\(30),
	cin => \displ|s_count[29]~91\,
	combout => \displ|s_count[30]~92_combout\);

-- Location: FF_X108_Y32_N31
\displ|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_count[30]~92_combout\,
	sclr => \displ|s_count[4]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_count\(30));

-- Location: LCCOMB_X107_Y32_N10
\displ|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~9_combout\ = (\displ|Equal1~8_combout\ & (!\displ|s_count\(29) & (!\displ|s_count\(30) & !\displ|s_count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Equal1~8_combout\,
	datab => \displ|s_count\(29),
	datac => \displ|s_count\(30),
	datad => \displ|s_count\(28),
	combout => \displ|Equal1~9_combout\);

-- Location: LCCOMB_X107_Y32_N20
\displ|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~10_combout\ = (\displ|Equal1~9_combout\ & ((\displ|s_count\(24) & (!\displ|s_count\(22) & !\displ|s_thd[24]~9_combout\)) # (!\displ|s_count\(24) & (\displ|s_count\(22) & \displ|s_thd[24]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Equal1~9_combout\,
	datab => \displ|s_count\(24),
	datac => \displ|s_count\(22),
	datad => \displ|s_thd[24]~9_combout\,
	combout => \displ|Equal1~10_combout\);

-- Location: LCCOMB_X107_Y32_N6
\displ|Equal1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Equal1~11_combout\ = (\displ|Equal1~10_combout\ & ((\displ|s_thd[24]~9_combout\ & (!\displ|s_count\(21) & !\displ|s_count\(20))) # (!\displ|s_thd[24]~9_combout\ & (\displ|s_count\(21) & \displ|s_count\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_thd[24]~9_combout\,
	datab => \displ|s_count\(21),
	datac => \displ|s_count\(20),
	datad => \displ|Equal1~10_combout\,
	combout => \displ|Equal1~11_combout\);

-- Location: LCCOMB_X107_Y32_N0
\displ|s_inc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_inc~0_combout\ = (\displ|Equal1~11_combout\ & (\displ|Equal1~3_combout\ & (\displ|Equal1~1_combout\ & !\KEY[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Equal1~11_combout\,
	datab => \displ|Equal1~3_combout\,
	datac => \displ|Equal1~1_combout\,
	datad => \KEY[3]~input_o\,
	combout => \displ|s_inc~0_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X107_Y32_N26
\displ|s_inc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_inc~1_combout\ = (\displ|s_inc~0_combout\ & \KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_inc~0_combout\,
	datad => \KEY[2]~input_o\,
	combout => \displ|s_inc~1_combout\);

-- Location: FF_X107_Y32_N27
\displ|s_inc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_inc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_inc~q\);

-- Location: LCCOMB_X107_Y32_N8
\displ|s_dec~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_dec~0_combout\ = (\displ|s_inc~0_combout\ & !\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_inc~0_combout\,
	datad => \KEY[2]~input_o\,
	combout => \displ|s_dec~0_combout\);

-- Location: FF_X107_Y32_N9
\displ|s_dec\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_dec~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_dec~q\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X108_Y13_N30
\displ|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Decoder0~4_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((\displ|s_dec~q\) # (\displ|s_inc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_dec~q\,
	datab => \displ|s_inc~q\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Decoder0~4_combout\);

-- Location: FF_X108_Y13_N23
\displ|s_addrCounters[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|Add0~10_combout\,
	ena => \displ|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[0][5]~q\);

-- Location: LCCOMB_X108_Y13_N2
\displ|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Decoder0~2_combout\ = (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((\displ|s_dec~q\) # (\displ|s_inc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_dec~q\,
	datab => \displ|s_inc~q\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Decoder0~2_combout\);

-- Location: LCCOMB_X108_Y13_N24
\displ|s_addrCounters[2][5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters[2][5]~17_combout\ = (\displ|Decoder0~2_combout\ & ((\displ|Add0~10_combout\))) # (!\displ|Decoder0~2_combout\ & (\displ|s_addrCounters[2][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Decoder0~2_combout\,
	datac => \displ|s_addrCounters[2][5]~q\,
	datad => \displ|Add0~10_combout\,
	combout => \displ|s_addrCounters[2][5]~17_combout\);

-- Location: FF_X108_Y13_N25
\displ|s_addrCounters[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters[2][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[2][5]~q\);

-- Location: LCCOMB_X108_Y13_N10
\displ|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux0~0_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\displ|s_addrCounters[2][5]~q\))) # (!\SW[1]~input_o\ & (\displ|s_addrCounters[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[0][5]~q\,
	datab => \displ|s_addrCounters[2][5]~q\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y13_N4
\displ|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Decoder0~3_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\ & ((\displ|s_dec~q\) # (\displ|s_inc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_dec~q\,
	datab => \displ|s_inc~q\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Decoder0~3_combout\);

-- Location: LCCOMB_X107_Y13_N2
\displ|s_addrCounters~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~16_combout\ = (\displ|Decoder0~3_combout\ & (\displ|Add0~10_combout\)) # (!\displ|Decoder0~3_combout\ & ((\displ|s_addrCounters[3][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Add0~10_combout\,
	datac => \displ|s_addrCounters[3][5]~q\,
	datad => \displ|Decoder0~3_combout\,
	combout => \displ|s_addrCounters~16_combout\);

-- Location: FF_X107_Y13_N3
\displ|s_addrCounters[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[3][5]~q\);

-- Location: LCCOMB_X108_Y13_N28
\displ|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux38~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\displ|s_addrCounters[3][5]~q\)) # (!\SW[1]~input_o\ & ((\displ|s_addrCounters[1][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[3][5]~q\,
	datab => \displ|s_addrCounters[1][5]~q\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux38~0_combout\);

-- Location: LCCOMB_X108_Y13_N0
\displ|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux0~1_combout\ = (\displ|Mux0~0_combout\) # (\displ|Mux38~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux0~0_combout\,
	datad => \displ|Mux38~0_combout\,
	combout => \displ|Mux0~1_combout\);

-- Location: LCCOMB_X108_Y13_N12
\displ|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Add0~0_combout\ = \displ|Mux5~1_combout\ $ (VCC)
-- \displ|Add0~1\ = CARRY(\displ|Mux5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux5~1_combout\,
	datad => VCC,
	combout => \displ|Add0~0_combout\,
	cout => \displ|Add0~1\);

-- Location: FF_X108_Y13_N13
\displ|s_addrCounters[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|Add0~0_combout\,
	ena => \displ|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[0][0]~q\);

-- Location: LCCOMB_X107_Y13_N4
\displ|s_addrCounters~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~6_combout\ = (\displ|Decoder0~2_combout\ & ((\displ|Add0~0_combout\))) # (!\displ|Decoder0~2_combout\ & (\displ|s_addrCounters[2][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~2_combout\,
	datac => \displ|s_addrCounters[2][0]~q\,
	datad => \displ|Add0~0_combout\,
	combout => \displ|s_addrCounters~6_combout\);

-- Location: FF_X107_Y13_N5
\displ|s_addrCounters[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[2][0]~q\);

-- Location: LCCOMB_X108_Y13_N6
\displ|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Decoder0~1_combout\ = (\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((\displ|s_dec~q\) # (\displ|s_inc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_dec~q\,
	datab => \displ|s_inc~q\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Decoder0~1_combout\);

-- Location: LCCOMB_X107_Y13_N16
\displ|s_addrCounters~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~0_combout\ = (\displ|Decoder0~1_combout\ & (\displ|Add0~0_combout\)) # (!\displ|Decoder0~1_combout\ & ((\displ|s_addrCounters[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Add0~0_combout\,
	datac => \displ|s_addrCounters[1][0]~q\,
	datad => \displ|Decoder0~1_combout\,
	combout => \displ|s_addrCounters~0_combout\);

-- Location: FF_X107_Y13_N17
\displ|s_addrCounters[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[1][0]~q\);

-- Location: LCCOMB_X107_Y13_N22
\displ|s_addrCounters~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~8_combout\ = (\displ|Decoder0~3_combout\ & (\displ|Add0~0_combout\)) # (!\displ|Decoder0~3_combout\ & ((\displ|s_addrCounters[3][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Add0~0_combout\,
	datac => \displ|s_addrCounters[3][0]~q\,
	datad => \displ|Decoder0~3_combout\,
	combout => \displ|s_addrCounters~8_combout\);

-- Location: FF_X107_Y13_N23
\displ|s_addrCounters[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[3][0]~q\);

-- Location: LCCOMB_X107_Y13_N12
\displ|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux5~0_combout\ = (\SW[1]~input_o\ & (((\displ|s_addrCounters[3][0]~q\) # (!\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (\displ|s_addrCounters[1][0]~q\ & (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displ|s_addrCounters[1][0]~q\,
	datac => \SW[0]~input_o\,
	datad => \displ|s_addrCounters[3][0]~q\,
	combout => \displ|Mux5~0_combout\);

-- Location: LCCOMB_X107_Y13_N30
\displ|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux5~1_combout\ = (\SW[0]~input_o\ & (((\displ|Mux5~0_combout\)))) # (!\SW[0]~input_o\ & ((\displ|Mux5~0_combout\ & ((\displ|s_addrCounters[2][0]~q\))) # (!\displ|Mux5~0_combout\ & (\displ|s_addrCounters[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[0][0]~q\,
	datab => \displ|s_addrCounters[2][0]~q\,
	datac => \SW[0]~input_o\,
	datad => \displ|Mux5~0_combout\,
	combout => \displ|Mux5~1_combout\);

-- Location: LCCOMB_X108_Y13_N14
\displ|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Add0~2_combout\ = (\displ|Mux4~1_combout\ & ((\displ|s_inc~q\ & (!\displ|Add0~1\)) # (!\displ|s_inc~q\ & (\displ|Add0~1\ & VCC)))) # (!\displ|Mux4~1_combout\ & ((\displ|s_inc~q\ & ((\displ|Add0~1\) # (GND))) # (!\displ|s_inc~q\ & 
-- (!\displ|Add0~1\))))
-- \displ|Add0~3\ = CARRY((\displ|Mux4~1_combout\ & (\displ|s_inc~q\ & !\displ|Add0~1\)) # (!\displ|Mux4~1_combout\ & ((\displ|s_inc~q\) # (!\displ|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux4~1_combout\,
	datab => \displ|s_inc~q\,
	datad => VCC,
	cin => \displ|Add0~1\,
	combout => \displ|Add0~2_combout\,
	cout => \displ|Add0~3\);

-- Location: FF_X108_Y13_N15
\displ|s_addrCounters[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|Add0~2_combout\,
	ena => \displ|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[0][1]~q\);

-- Location: LCCOMB_X109_Y13_N10
\displ|s_addrCounters~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~10_combout\ = (\displ|Decoder0~3_combout\ & ((\displ|Add0~2_combout\))) # (!\displ|Decoder0~3_combout\ & (\displ|s_addrCounters[3][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Decoder0~3_combout\,
	datac => \displ|s_addrCounters[3][1]~q\,
	datad => \displ|Add0~2_combout\,
	combout => \displ|s_addrCounters~10_combout\);

-- Location: FF_X109_Y13_N11
\displ|s_addrCounters[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[3][1]~q\);

-- Location: LCCOMB_X109_Y13_N24
\displ|s_addrCounters~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~1_combout\ = (\displ|Decoder0~1_combout\ & (\displ|Add0~2_combout\)) # (!\displ|Decoder0~1_combout\ & ((\displ|s_addrCounters[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Add0~2_combout\,
	datac => \displ|s_addrCounters[1][1]~q\,
	datad => \displ|Decoder0~1_combout\,
	combout => \displ|s_addrCounters~1_combout\);

-- Location: FF_X109_Y13_N25
\displ|s_addrCounters[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[1][1]~q\);

-- Location: LCCOMB_X109_Y13_N8
\displ|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux4~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\displ|s_addrCounters[3][1]~q\)) # (!\SW[1]~input_o\ & ((\displ|s_addrCounters[1][1]~q\))))) # (!\SW[0]~input_o\ & (((\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[3][1]~q\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \displ|s_addrCounters[1][1]~q\,
	combout => \displ|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y13_N16
\displ|s_addrCounters~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~7_combout\ = (\displ|Decoder0~2_combout\ & ((\displ|Add0~2_combout\))) # (!\displ|Decoder0~2_combout\ & (\displ|s_addrCounters[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~2_combout\,
	datac => \displ|s_addrCounters[2][1]~q\,
	datad => \displ|Add0~2_combout\,
	combout => \displ|s_addrCounters~7_combout\);

-- Location: FF_X109_Y13_N17
\displ|s_addrCounters[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[2][1]~q\);

-- Location: LCCOMB_X109_Y13_N18
\displ|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux4~1_combout\ = (\displ|Mux4~0_combout\ & (((\SW[0]~input_o\) # (\displ|s_addrCounters[2][1]~q\)))) # (!\displ|Mux4~0_combout\ & (\displ|s_addrCounters[0][1]~q\ & (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[0][1]~q\,
	datab => \displ|Mux4~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \displ|s_addrCounters[2][1]~q\,
	combout => \displ|Mux4~1_combout\);

-- Location: LCCOMB_X108_Y13_N16
\displ|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Add0~4_combout\ = ((\displ|Mux3~1_combout\ $ (\displ|s_inc~q\ $ (\displ|Add0~3\)))) # (GND)
-- \displ|Add0~5\ = CARRY((\displ|Mux3~1_combout\ & ((!\displ|Add0~3\) # (!\displ|s_inc~q\))) # (!\displ|Mux3~1_combout\ & (!\displ|s_inc~q\ & !\displ|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux3~1_combout\,
	datab => \displ|s_inc~q\,
	datad => VCC,
	cin => \displ|Add0~3\,
	combout => \displ|Add0~4_combout\,
	cout => \displ|Add0~5\);

-- Location: LCCOMB_X109_Y13_N26
\displ|s_addrCounters~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~12_combout\ = (\displ|Decoder0~3_combout\ & (\displ|Add0~4_combout\)) # (!\displ|Decoder0~3_combout\ & ((\displ|s_addrCounters[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Add0~4_combout\,
	datab => \displ|Decoder0~3_combout\,
	datac => \displ|s_addrCounters[3][2]~q\,
	combout => \displ|s_addrCounters~12_combout\);

-- Location: FF_X109_Y13_N27
\displ|s_addrCounters[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[3][2]~q\);

-- Location: LCCOMB_X109_Y13_N2
\displ|s_addrCounters~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~2_combout\ = (\displ|Decoder0~1_combout\ & (\displ|Add0~4_combout\)) # (!\displ|Decoder0~1_combout\ & ((\displ|s_addrCounters[1][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Add0~4_combout\,
	datac => \displ|s_addrCounters[1][2]~q\,
	datad => \displ|Decoder0~1_combout\,
	combout => \displ|s_addrCounters~2_combout\);

-- Location: FF_X109_Y13_N3
\displ|s_addrCounters[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[1][2]~q\);

-- Location: LCCOMB_X107_Y13_N0
\displ|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux3~0_combout\ = (\SW[1]~input_o\ & ((\displ|s_addrCounters[3][2]~q\) # ((!\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (((\SW[0]~input_o\ & \displ|s_addrCounters[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displ|s_addrCounters[3][2]~q\,
	datac => \SW[0]~input_o\,
	datad => \displ|s_addrCounters[1][2]~q\,
	combout => \displ|Mux3~0_combout\);

-- Location: FF_X108_Y13_N17
\displ|s_addrCounters[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|Add0~4_combout\,
	ena => \displ|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[0][2]~q\);

-- Location: LCCOMB_X108_Y13_N26
\displ|s_addrCounters~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~9_combout\ = (\displ|Decoder0~2_combout\ & ((\displ|Add0~4_combout\))) # (!\displ|Decoder0~2_combout\ & (\displ|s_addrCounters[2][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Decoder0~2_combout\,
	datac => \displ|s_addrCounters[2][2]~q\,
	datad => \displ|Add0~4_combout\,
	combout => \displ|s_addrCounters~9_combout\);

-- Location: FF_X108_Y13_N27
\displ|s_addrCounters[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[2][2]~q\);

-- Location: LCCOMB_X107_Y13_N18
\displ|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux3~1_combout\ = (\displ|Mux3~0_combout\ & (((\SW[0]~input_o\) # (\displ|s_addrCounters[2][2]~q\)))) # (!\displ|Mux3~0_combout\ & (\displ|s_addrCounters[0][2]~q\ & (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux3~0_combout\,
	datab => \displ|s_addrCounters[0][2]~q\,
	datac => \SW[0]~input_o\,
	datad => \displ|s_addrCounters[2][2]~q\,
	combout => \displ|Mux3~1_combout\);

-- Location: LCCOMB_X108_Y13_N18
\displ|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Add0~6_combout\ = (\displ|Mux2~1_combout\ & ((\displ|s_inc~q\ & (!\displ|Add0~5\)) # (!\displ|s_inc~q\ & (\displ|Add0~5\ & VCC)))) # (!\displ|Mux2~1_combout\ & ((\displ|s_inc~q\ & ((\displ|Add0~5\) # (GND))) # (!\displ|s_inc~q\ & 
-- (!\displ|Add0~5\))))
-- \displ|Add0~7\ = CARRY((\displ|Mux2~1_combout\ & (\displ|s_inc~q\ & !\displ|Add0~5\)) # (!\displ|Mux2~1_combout\ & ((\displ|s_inc~q\) # (!\displ|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux2~1_combout\,
	datab => \displ|s_inc~q\,
	datad => VCC,
	cin => \displ|Add0~5\,
	combout => \displ|Add0~6_combout\,
	cout => \displ|Add0~7\);

-- Location: FF_X108_Y13_N19
\displ|s_addrCounters[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|Add0~6_combout\,
	ena => \displ|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[0][3]~q\);

-- Location: LCCOMB_X109_Y13_N12
\displ|s_addrCounters~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~11_combout\ = (\displ|Decoder0~2_combout\ & (\displ|Add0~6_combout\)) # (!\displ|Decoder0~2_combout\ & ((\displ|s_addrCounters[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Add0~6_combout\,
	datac => \displ|s_addrCounters[2][3]~q\,
	datad => \displ|Decoder0~2_combout\,
	combout => \displ|s_addrCounters~11_combout\);

-- Location: FF_X109_Y13_N13
\displ|s_addrCounters[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[2][3]~q\);

-- Location: LCCOMB_X109_Y13_N20
\displ|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux2~0_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\displ|s_addrCounters[2][3]~q\))) # (!\SW[1]~input_o\ & (\displ|s_addrCounters[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displ|s_addrCounters[0][3]~q\,
	datac => \SW[0]~input_o\,
	datad => \displ|s_addrCounters[2][3]~q\,
	combout => \displ|Mux2~0_combout\);

-- Location: LCCOMB_X109_Y13_N4
\displ|s_addrCounters~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~14_combout\ = (\displ|Decoder0~3_combout\ & (\displ|Add0~6_combout\)) # (!\displ|Decoder0~3_combout\ & ((\displ|s_addrCounters[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Add0~6_combout\,
	datab => \displ|Decoder0~3_combout\,
	datac => \displ|s_addrCounters[3][3]~q\,
	combout => \displ|s_addrCounters~14_combout\);

-- Location: FF_X109_Y13_N5
\displ|s_addrCounters[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[3][3]~q\);

-- Location: LCCOMB_X109_Y13_N28
\displ|s_addrCounters~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~3_combout\ = (\displ|Decoder0~1_combout\ & (\displ|Add0~6_combout\)) # (!\displ|Decoder0~1_combout\ & ((\displ|s_addrCounters[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Add0~6_combout\,
	datac => \displ|s_addrCounters[1][3]~q\,
	datad => \displ|Decoder0~1_combout\,
	combout => \displ|s_addrCounters~3_combout\);

-- Location: FF_X109_Y13_N29
\displ|s_addrCounters[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[1][3]~q\);

-- Location: LCCOMB_X109_Y13_N30
\displ|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux40~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\displ|s_addrCounters[3][3]~q\)) # (!\SW[1]~input_o\ & ((\displ|s_addrCounters[1][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displ|s_addrCounters[3][3]~q\,
	datac => \SW[0]~input_o\,
	datad => \displ|s_addrCounters[1][3]~q\,
	combout => \displ|Mux40~0_combout\);

-- Location: LCCOMB_X109_Y13_N6
\displ|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux2~1_combout\ = (\displ|Mux2~0_combout\) # (\displ|Mux40~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux2~0_combout\,
	datac => \displ|Mux40~0_combout\,
	combout => \displ|Mux2~1_combout\);

-- Location: LCCOMB_X108_Y13_N20
\displ|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Add0~8_combout\ = ((\displ|Mux1~1_combout\ $ (\displ|s_inc~q\ $ (\displ|Add0~7\)))) # (GND)
-- \displ|Add0~9\ = CARRY((\displ|Mux1~1_combout\ & ((!\displ|Add0~7\) # (!\displ|s_inc~q\))) # (!\displ|Mux1~1_combout\ & (!\displ|s_inc~q\ & !\displ|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux1~1_combout\,
	datab => \displ|s_inc~q\,
	datad => VCC,
	cin => \displ|Add0~7\,
	combout => \displ|Add0~8_combout\,
	cout => \displ|Add0~9\);

-- Location: FF_X108_Y13_N21
\displ|s_addrCounters[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|Add0~8_combout\,
	ena => \displ|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[0][4]~q\);

-- Location: LCCOMB_X107_Y13_N10
\displ|s_addrCounters~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~13_combout\ = (\displ|Decoder0~2_combout\ & ((\displ|Add0~8_combout\))) # (!\displ|Decoder0~2_combout\ & (\displ|s_addrCounters[2][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~2_combout\,
	datac => \displ|s_addrCounters[2][4]~q\,
	datad => \displ|Add0~8_combout\,
	combout => \displ|s_addrCounters~13_combout\);

-- Location: FF_X107_Y13_N11
\displ|s_addrCounters[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[2][4]~q\);

-- Location: LCCOMB_X107_Y13_N28
\displ|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux1~0_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\displ|s_addrCounters[2][4]~q\))) # (!\SW[1]~input_o\ & (\displ|s_addrCounters[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \displ|s_addrCounters[0][4]~q\,
	datac => \SW[1]~input_o\,
	datad => \displ|s_addrCounters[2][4]~q\,
	combout => \displ|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y13_N26
\displ|s_addrCounters~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~4_combout\ = (\displ|Decoder0~1_combout\ & (\displ|Add0~8_combout\)) # (!\displ|Decoder0~1_combout\ & ((\displ|s_addrCounters[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Add0~8_combout\,
	datac => \displ|s_addrCounters[1][4]~q\,
	datad => \displ|Decoder0~1_combout\,
	combout => \displ|s_addrCounters~4_combout\);

-- Location: FF_X107_Y13_N27
\displ|s_addrCounters[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[1][4]~q\);

-- Location: LCCOMB_X107_Y13_N6
\displ|s_addrCounters~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~15_combout\ = (\displ|Decoder0~3_combout\ & ((\displ|Add0~8_combout\))) # (!\displ|Decoder0~3_combout\ & (\displ|s_addrCounters[3][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~3_combout\,
	datac => \displ|s_addrCounters[3][4]~q\,
	datad => \displ|Add0~8_combout\,
	combout => \displ|s_addrCounters~15_combout\);

-- Location: FF_X107_Y13_N7
\displ|s_addrCounters[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[3][4]~q\);

-- Location: LCCOMB_X107_Y13_N24
\displ|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux39~0_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\displ|s_addrCounters[3][4]~q\))) # (!\SW[1]~input_o\ & (\displ|s_addrCounters[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \displ|s_addrCounters[1][4]~q\,
	datac => \SW[1]~input_o\,
	datad => \displ|s_addrCounters[3][4]~q\,
	combout => \displ|Mux39~0_combout\);

-- Location: LCCOMB_X107_Y13_N14
\displ|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux1~1_combout\ = (\displ|Mux1~0_combout\) # (\displ|Mux39~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux1~0_combout\,
	datad => \displ|Mux39~0_combout\,
	combout => \displ|Mux1~1_combout\);

-- Location: LCCOMB_X108_Y13_N22
\displ|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Add0~10_combout\ = \displ|s_inc~q\ $ (\displ|Add0~9\ $ (!\displ|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_inc~q\,
	datad => \displ|Mux0~1_combout\,
	cin => \displ|Add0~9\,
	combout => \displ|Add0~10_combout\);

-- Location: LCCOMB_X108_Y13_N8
\displ|s_addrCounters~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|s_addrCounters~5_combout\ = (\displ|Decoder0~1_combout\ & (\displ|Add0~10_combout\)) # (!\displ|Decoder0~1_combout\ & ((\displ|s_addrCounters[1][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Add0~10_combout\,
	datac => \displ|s_addrCounters[1][5]~q\,
	datad => \displ|Decoder0~1_combout\,
	combout => \displ|s_addrCounters~5_combout\);

-- Location: FF_X108_Y13_N9
\displ|s_addrCounters[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \displ|s_addrCounters~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displ|s_addrCounters[1][5]~q\);

-- Location: LCCOMB_X109_Y13_N14
\instmem|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instmem|Mux7~0_combout\ = (!\displ|s_addrCounters[1][4]~q\ & (!\displ|s_addrCounters[1][3]~q\ & (!\displ|s_addrCounters[1][2]~q\ & !\displ|s_addrCounters[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][4]~q\,
	datab => \displ|s_addrCounters[1][3]~q\,
	datac => \displ|s_addrCounters[1][2]~q\,
	datad => \displ|s_addrCounters[1][1]~q\,
	combout => \instmem|Mux7~0_combout\);

-- Location: LCCOMB_X108_Y11_N16
\instmem|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instmem|Mux8~0_combout\ = (!\displ|s_addrCounters[1][5]~q\ & (\displ|s_addrCounters[1][0]~q\ & \instmem|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_addrCounters[1][5]~q\,
	datac => \displ|s_addrCounters[1][0]~q\,
	datad => \instmem|Mux7~0_combout\,
	combout => \instmem|Mux8~0_combout\);

-- Location: LCCOMB_X2_Y36_N10
\debnc|s_debounceCnt[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[0]~23_combout\ = \debnc|s_debounceCnt\(0) $ (VCC)
-- \debnc|s_debounceCnt[0]~24\ = CARRY(\debnc|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_debounceCnt\(0),
	datad => VCC,
	combout => \debnc|s_debounceCnt[0]~23_combout\,
	cout => \debnc|s_debounceCnt[0]~24\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X1_Y36_N30
\debnc|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \debnc|s_dirtyIn~0_combout\);

-- Location: FF_X1_Y36_N31
\debnc|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_dirtyIn~q\);

-- Location: LCCOMB_X2_Y36_N26
\debnc|s_debounceCnt[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[8]~39_combout\ = (\debnc|s_debounceCnt\(8) & (\debnc|s_debounceCnt[7]~38\ $ (GND))) # (!\debnc|s_debounceCnt\(8) & (!\debnc|s_debounceCnt[7]~38\ & VCC))
-- \debnc|s_debounceCnt[8]~40\ = CARRY((\debnc|s_debounceCnt\(8) & !\debnc|s_debounceCnt[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_debounceCnt\(8),
	datad => VCC,
	cin => \debnc|s_debounceCnt[7]~38\,
	combout => \debnc|s_debounceCnt[8]~39_combout\,
	cout => \debnc|s_debounceCnt[8]~40\);

-- Location: LCCOMB_X2_Y36_N28
\debnc|s_debounceCnt[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[9]~41_combout\ = (\debnc|s_debounceCnt\(9) & (!\debnc|s_debounceCnt[8]~40\)) # (!\debnc|s_debounceCnt\(9) & ((\debnc|s_debounceCnt[8]~40\) # (GND)))
-- \debnc|s_debounceCnt[9]~42\ = CARRY((!\debnc|s_debounceCnt[8]~40\) # (!\debnc|s_debounceCnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debnc|s_debounceCnt\(9),
	datad => VCC,
	cin => \debnc|s_debounceCnt[8]~40\,
	combout => \debnc|s_debounceCnt[9]~41_combout\,
	cout => \debnc|s_debounceCnt[9]~42\);

-- Location: FF_X2_Y36_N29
\debnc|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[9]~41_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(9));

-- Location: LCCOMB_X2_Y36_N30
\debnc|s_debounceCnt[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[10]~43_combout\ = (\debnc|s_debounceCnt\(10) & (\debnc|s_debounceCnt[9]~42\ $ (GND))) # (!\debnc|s_debounceCnt\(10) & (!\debnc|s_debounceCnt[9]~42\ & VCC))
-- \debnc|s_debounceCnt[10]~44\ = CARRY((\debnc|s_debounceCnt\(10) & !\debnc|s_debounceCnt[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_debounceCnt\(10),
	datad => VCC,
	cin => \debnc|s_debounceCnt[9]~42\,
	combout => \debnc|s_debounceCnt[10]~43_combout\,
	cout => \debnc|s_debounceCnt[10]~44\);

-- Location: FF_X2_Y36_N31
\debnc|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[10]~43_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(10));

-- Location: LCCOMB_X2_Y35_N0
\debnc|s_debounceCnt[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[11]~45_combout\ = (\debnc|s_debounceCnt\(11) & (!\debnc|s_debounceCnt[10]~44\)) # (!\debnc|s_debounceCnt\(11) & ((\debnc|s_debounceCnt[10]~44\) # (GND)))
-- \debnc|s_debounceCnt[11]~46\ = CARRY((!\debnc|s_debounceCnt[10]~44\) # (!\debnc|s_debounceCnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debnc|s_debounceCnt\(11),
	datad => VCC,
	cin => \debnc|s_debounceCnt[10]~44\,
	combout => \debnc|s_debounceCnt[11]~45_combout\,
	cout => \debnc|s_debounceCnt[11]~46\);

-- Location: FF_X2_Y35_N1
\debnc|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[11]~45_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(11));

-- Location: LCCOMB_X2_Y35_N2
\debnc|s_debounceCnt[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[12]~47_combout\ = (\debnc|s_debounceCnt\(12) & (\debnc|s_debounceCnt[11]~46\ $ (GND))) # (!\debnc|s_debounceCnt\(12) & (!\debnc|s_debounceCnt[11]~46\ & VCC))
-- \debnc|s_debounceCnt[12]~48\ = CARRY((\debnc|s_debounceCnt\(12) & !\debnc|s_debounceCnt[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debnc|s_debounceCnt\(12),
	datad => VCC,
	cin => \debnc|s_debounceCnt[11]~46\,
	combout => \debnc|s_debounceCnt[12]~47_combout\,
	cout => \debnc|s_debounceCnt[12]~48\);

-- Location: FF_X2_Y35_N3
\debnc|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[12]~47_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(12));

-- Location: LCCOMB_X2_Y35_N4
\debnc|s_debounceCnt[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[13]~49_combout\ = (\debnc|s_debounceCnt\(13) & (!\debnc|s_debounceCnt[12]~48\)) # (!\debnc|s_debounceCnt\(13) & ((\debnc|s_debounceCnt[12]~48\) # (GND)))
-- \debnc|s_debounceCnt[13]~50\ = CARRY((!\debnc|s_debounceCnt[12]~48\) # (!\debnc|s_debounceCnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debnc|s_debounceCnt\(13),
	datad => VCC,
	cin => \debnc|s_debounceCnt[12]~48\,
	combout => \debnc|s_debounceCnt[13]~49_combout\,
	cout => \debnc|s_debounceCnt[13]~50\);

-- Location: FF_X2_Y35_N5
\debnc|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[13]~49_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(13));

-- Location: LCCOMB_X2_Y35_N6
\debnc|s_debounceCnt[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[14]~51_combout\ = (\debnc|s_debounceCnt\(14) & (\debnc|s_debounceCnt[13]~50\ $ (GND))) # (!\debnc|s_debounceCnt\(14) & (!\debnc|s_debounceCnt[13]~50\ & VCC))
-- \debnc|s_debounceCnt[14]~52\ = CARRY((\debnc|s_debounceCnt\(14) & !\debnc|s_debounceCnt[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_debounceCnt\(14),
	datad => VCC,
	cin => \debnc|s_debounceCnt[13]~50\,
	combout => \debnc|s_debounceCnt[14]~51_combout\,
	cout => \debnc|s_debounceCnt[14]~52\);

-- Location: FF_X2_Y35_N7
\debnc|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[14]~51_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(14));

-- Location: LCCOMB_X2_Y35_N8
\debnc|s_debounceCnt[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[15]~53_combout\ = (\debnc|s_debounceCnt\(15) & (!\debnc|s_debounceCnt[14]~52\)) # (!\debnc|s_debounceCnt\(15) & ((\debnc|s_debounceCnt[14]~52\) # (GND)))
-- \debnc|s_debounceCnt[15]~54\ = CARRY((!\debnc|s_debounceCnt[14]~52\) # (!\debnc|s_debounceCnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debnc|s_debounceCnt\(15),
	datad => VCC,
	cin => \debnc|s_debounceCnt[14]~52\,
	combout => \debnc|s_debounceCnt[15]~53_combout\,
	cout => \debnc|s_debounceCnt[15]~54\);

-- Location: FF_X2_Y35_N9
\debnc|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[15]~53_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(15));

-- Location: LCCOMB_X2_Y35_N10
\debnc|s_debounceCnt[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[16]~55_combout\ = (\debnc|s_debounceCnt\(16) & (\debnc|s_debounceCnt[15]~54\ $ (GND))) # (!\debnc|s_debounceCnt\(16) & (!\debnc|s_debounceCnt[15]~54\ & VCC))
-- \debnc|s_debounceCnt[16]~56\ = CARRY((\debnc|s_debounceCnt\(16) & !\debnc|s_debounceCnt[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_debounceCnt\(16),
	datad => VCC,
	cin => \debnc|s_debounceCnt[15]~54\,
	combout => \debnc|s_debounceCnt[16]~55_combout\,
	cout => \debnc|s_debounceCnt[16]~56\);

-- Location: FF_X2_Y35_N11
\debnc|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[16]~55_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(16));

-- Location: LCCOMB_X2_Y35_N12
\debnc|s_debounceCnt[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[17]~57_combout\ = (\debnc|s_debounceCnt\(17) & (!\debnc|s_debounceCnt[16]~56\)) # (!\debnc|s_debounceCnt\(17) & ((\debnc|s_debounceCnt[16]~56\) # (GND)))
-- \debnc|s_debounceCnt[17]~58\ = CARRY((!\debnc|s_debounceCnt[16]~56\) # (!\debnc|s_debounceCnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_debounceCnt\(17),
	datad => VCC,
	cin => \debnc|s_debounceCnt[16]~56\,
	combout => \debnc|s_debounceCnt[17]~57_combout\,
	cout => \debnc|s_debounceCnt[17]~58\);

-- Location: FF_X2_Y35_N13
\debnc|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[17]~57_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(17));

-- Location: LCCOMB_X2_Y35_N14
\debnc|s_debounceCnt[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[18]~59_combout\ = (\debnc|s_debounceCnt\(18) & (\debnc|s_debounceCnt[17]~58\ $ (GND))) # (!\debnc|s_debounceCnt\(18) & (!\debnc|s_debounceCnt[17]~58\ & VCC))
-- \debnc|s_debounceCnt[18]~60\ = CARRY((\debnc|s_debounceCnt\(18) & !\debnc|s_debounceCnt[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debnc|s_debounceCnt\(18),
	datad => VCC,
	cin => \debnc|s_debounceCnt[17]~58\,
	combout => \debnc|s_debounceCnt[18]~59_combout\,
	cout => \debnc|s_debounceCnt[18]~60\);

-- Location: FF_X2_Y35_N15
\debnc|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[18]~59_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(18));

-- Location: LCCOMB_X2_Y35_N16
\debnc|s_debounceCnt[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[19]~61_combout\ = (\debnc|s_debounceCnt\(19) & (!\debnc|s_debounceCnt[18]~60\)) # (!\debnc|s_debounceCnt\(19) & ((\debnc|s_debounceCnt[18]~60\) # (GND)))
-- \debnc|s_debounceCnt[19]~62\ = CARRY((!\debnc|s_debounceCnt[18]~60\) # (!\debnc|s_debounceCnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debnc|s_debounceCnt\(19),
	datad => VCC,
	cin => \debnc|s_debounceCnt[18]~60\,
	combout => \debnc|s_debounceCnt[19]~61_combout\,
	cout => \debnc|s_debounceCnt[19]~62\);

-- Location: FF_X2_Y35_N17
\debnc|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[19]~61_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(19));

-- Location: LCCOMB_X2_Y35_N18
\debnc|s_debounceCnt[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[20]~63_combout\ = (\debnc|s_debounceCnt\(20) & (\debnc|s_debounceCnt[19]~62\ $ (GND))) # (!\debnc|s_debounceCnt\(20) & (!\debnc|s_debounceCnt[19]~62\ & VCC))
-- \debnc|s_debounceCnt[20]~64\ = CARRY((\debnc|s_debounceCnt\(20) & !\debnc|s_debounceCnt[19]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debnc|s_debounceCnt\(20),
	datad => VCC,
	cin => \debnc|s_debounceCnt[19]~62\,
	combout => \debnc|s_debounceCnt[20]~63_combout\,
	cout => \debnc|s_debounceCnt[20]~64\);

-- Location: FF_X2_Y35_N19
\debnc|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[20]~63_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(20));

-- Location: LCCOMB_X2_Y35_N20
\debnc|s_debounceCnt[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[21]~68_combout\ = (\debnc|s_debounceCnt\(21) & (!\debnc|s_debounceCnt[20]~64\)) # (!\debnc|s_debounceCnt\(21) & ((\debnc|s_debounceCnt[20]~64\) # (GND)))
-- \debnc|s_debounceCnt[21]~69\ = CARRY((!\debnc|s_debounceCnt[20]~64\) # (!\debnc|s_debounceCnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debnc|s_debounceCnt\(21),
	datad => VCC,
	cin => \debnc|s_debounceCnt[20]~64\,
	combout => \debnc|s_debounceCnt[21]~68_combout\,
	cout => \debnc|s_debounceCnt[21]~69\);

-- Location: FF_X2_Y35_N21
\debnc|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[21]~68_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(21));

-- Location: LCCOMB_X2_Y35_N24
\debnc|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|Equal0~0_combout\ = (!\debnc|s_debounceCnt\(16) & (!\debnc|s_debounceCnt\(20) & (!\debnc|s_debounceCnt\(15) & !\debnc|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_debounceCnt\(16),
	datab => \debnc|s_debounceCnt\(20),
	datac => \debnc|s_debounceCnt\(15),
	datad => \debnc|s_debounceCnt\(21),
	combout => \debnc|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y35_N0
\debnc|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|Equal0~1_combout\ = (!\debnc|s_debounceCnt\(12) & (\debnc|Equal0~0_combout\ & (!\debnc|s_debounceCnt\(17) & !\debnc|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_debounceCnt\(12),
	datab => \debnc|Equal0~0_combout\,
	datac => \debnc|s_debounceCnt\(17),
	datad => \debnc|s_debounceCnt\(13),
	combout => \debnc|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y36_N2
\debnc|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|Equal0~4_combout\ = (!\debnc|s_debounceCnt\(1) & (!\debnc|s_debounceCnt\(3) & (!\debnc|s_debounceCnt\(2) & !\debnc|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_debounceCnt\(1),
	datab => \debnc|s_debounceCnt\(3),
	datac => \debnc|s_debounceCnt\(2),
	datad => \debnc|s_debounceCnt\(0),
	combout => \debnc|Equal0~4_combout\);

-- Location: LCCOMB_X2_Y36_N4
\debnc|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|Equal0~5_combout\ = (\debnc|Equal0~4_combout\ & (!\debnc|s_debounceCnt\(5) & (!\debnc|s_debounceCnt\(4) & !\debnc|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|Equal0~4_combout\,
	datab => \debnc|s_debounceCnt\(5),
	datac => \debnc|s_debounceCnt\(4),
	datad => \debnc|s_debounceCnt\(7),
	combout => \debnc|Equal0~5_combout\);

-- Location: LCCOMB_X2_Y36_N6
\debnc|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|LessThan0~0_combout\ = (\debnc|Equal0~5_combout\) # (((!\debnc|s_debounceCnt\(6) & !\debnc|s_debounceCnt\(7))) # (!\debnc|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_debounceCnt\(6),
	datab => \debnc|s_debounceCnt\(7),
	datac => \debnc|Equal0~5_combout\,
	datad => \debnc|Equal0~2_combout\,
	combout => \debnc|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y36_N14
\debnc|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|LessThan0~1_combout\ = (\debnc|Equal0~1_combout\ & (((!\debnc|s_debounceCnt\(10) & \debnc|LessThan0~0_combout\)) # (!\debnc|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_debounceCnt\(11),
	datab => \debnc|Equal0~1_combout\,
	datac => \debnc|s_debounceCnt\(10),
	datad => \debnc|LessThan0~0_combout\,
	combout => \debnc|LessThan0~1_combout\);

-- Location: LCCOMB_X2_Y35_N28
\debnc|s_debounceCnt[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[16]~65_combout\ = (\debnc|s_debounceCnt\(20)) # ((\debnc|s_debounceCnt\(21)) # ((\debnc|s_debounceCnt\(19) & \debnc|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_debounceCnt\(20),
	datab => \debnc|s_debounceCnt\(19),
	datac => \debnc|s_debounceCnt\(18),
	datad => \debnc|s_debounceCnt\(21),
	combout => \debnc|s_debounceCnt[16]~65_combout\);

-- Location: LCCOMB_X2_Y35_N30
\debnc|s_debounceCnt[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[16]~66_combout\ = (\debnc|s_debounceCnt[16]~65_combout\ & ((\debnc|s_debounceCnt\(14)) # ((\debnc|s_debounceCnt\(17)) # (!\debnc|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_debounceCnt\(14),
	datab => \debnc|s_debounceCnt[16]~65_combout\,
	datac => \debnc|Equal0~0_combout\,
	datad => \debnc|s_debounceCnt\(17),
	combout => \debnc|s_debounceCnt[16]~66_combout\);

-- Location: LCCOMB_X2_Y35_N22
\debnc|s_debounceCnt[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[22]~70_combout\ = \debnc|s_debounceCnt\(22) $ (!\debnc|s_debounceCnt[21]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_debounceCnt\(22),
	cin => \debnc|s_debounceCnt[21]~69\,
	combout => \debnc|s_debounceCnt[22]~70_combout\);

-- Location: FF_X2_Y35_N23
\debnc|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[22]~70_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(22));

-- Location: LCCOMB_X2_Y36_N0
\debnc|s_debounceCnt[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[16]~67_combout\ = ((\debnc|LessThan0~1_combout\) # ((!\debnc|s_debounceCnt\(22)) # (!\debnc|s_debounceCnt[16]~66_combout\))) # (!\debnc|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_dirtyIn~q\,
	datab => \debnc|LessThan0~1_combout\,
	datac => \debnc|s_debounceCnt[16]~66_combout\,
	datad => \debnc|s_debounceCnt\(22),
	combout => \debnc|s_debounceCnt[16]~67_combout\);

-- Location: FF_X2_Y36_N11
\debnc|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[0]~23_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(0));

-- Location: LCCOMB_X2_Y36_N12
\debnc|s_debounceCnt[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[1]~25_combout\ = (\debnc|s_debounceCnt\(1) & (!\debnc|s_debounceCnt[0]~24\)) # (!\debnc|s_debounceCnt\(1) & ((\debnc|s_debounceCnt[0]~24\) # (GND)))
-- \debnc|s_debounceCnt[1]~26\ = CARRY((!\debnc|s_debounceCnt[0]~24\) # (!\debnc|s_debounceCnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_debounceCnt\(1),
	datad => VCC,
	cin => \debnc|s_debounceCnt[0]~24\,
	combout => \debnc|s_debounceCnt[1]~25_combout\,
	cout => \debnc|s_debounceCnt[1]~26\);

-- Location: FF_X2_Y36_N13
\debnc|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[1]~25_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(1));

-- Location: LCCOMB_X2_Y36_N14
\debnc|s_debounceCnt[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[2]~27_combout\ = (\debnc|s_debounceCnt\(2) & (\debnc|s_debounceCnt[1]~26\ $ (GND))) # (!\debnc|s_debounceCnt\(2) & (!\debnc|s_debounceCnt[1]~26\ & VCC))
-- \debnc|s_debounceCnt[2]~28\ = CARRY((\debnc|s_debounceCnt\(2) & !\debnc|s_debounceCnt[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debnc|s_debounceCnt\(2),
	datad => VCC,
	cin => \debnc|s_debounceCnt[1]~26\,
	combout => \debnc|s_debounceCnt[2]~27_combout\,
	cout => \debnc|s_debounceCnt[2]~28\);

-- Location: FF_X2_Y36_N15
\debnc|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[2]~27_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(2));

-- Location: LCCOMB_X2_Y36_N16
\debnc|s_debounceCnt[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[3]~29_combout\ = (\debnc|s_debounceCnt\(3) & (!\debnc|s_debounceCnt[2]~28\)) # (!\debnc|s_debounceCnt\(3) & ((\debnc|s_debounceCnt[2]~28\) # (GND)))
-- \debnc|s_debounceCnt[3]~30\ = CARRY((!\debnc|s_debounceCnt[2]~28\) # (!\debnc|s_debounceCnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debnc|s_debounceCnt\(3),
	datad => VCC,
	cin => \debnc|s_debounceCnt[2]~28\,
	combout => \debnc|s_debounceCnt[3]~29_combout\,
	cout => \debnc|s_debounceCnt[3]~30\);

-- Location: FF_X2_Y36_N17
\debnc|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[3]~29_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(3));

-- Location: LCCOMB_X2_Y36_N18
\debnc|s_debounceCnt[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[4]~31_combout\ = (\debnc|s_debounceCnt\(4) & (\debnc|s_debounceCnt[3]~30\ $ (GND))) # (!\debnc|s_debounceCnt\(4) & (!\debnc|s_debounceCnt[3]~30\ & VCC))
-- \debnc|s_debounceCnt[4]~32\ = CARRY((\debnc|s_debounceCnt\(4) & !\debnc|s_debounceCnt[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debnc|s_debounceCnt\(4),
	datad => VCC,
	cin => \debnc|s_debounceCnt[3]~30\,
	combout => \debnc|s_debounceCnt[4]~31_combout\,
	cout => \debnc|s_debounceCnt[4]~32\);

-- Location: FF_X2_Y36_N19
\debnc|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[4]~31_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(4));

-- Location: LCCOMB_X2_Y36_N20
\debnc|s_debounceCnt[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[5]~33_combout\ = (\debnc|s_debounceCnt\(5) & (!\debnc|s_debounceCnt[4]~32\)) # (!\debnc|s_debounceCnt\(5) & ((\debnc|s_debounceCnt[4]~32\) # (GND)))
-- \debnc|s_debounceCnt[5]~34\ = CARRY((!\debnc|s_debounceCnt[4]~32\) # (!\debnc|s_debounceCnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debnc|s_debounceCnt\(5),
	datad => VCC,
	cin => \debnc|s_debounceCnt[4]~32\,
	combout => \debnc|s_debounceCnt[5]~33_combout\,
	cout => \debnc|s_debounceCnt[5]~34\);

-- Location: FF_X2_Y36_N21
\debnc|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[5]~33_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(5));

-- Location: LCCOMB_X2_Y36_N22
\debnc|s_debounceCnt[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[6]~35_combout\ = (\debnc|s_debounceCnt\(6) & (\debnc|s_debounceCnt[5]~34\ $ (GND))) # (!\debnc|s_debounceCnt\(6) & (!\debnc|s_debounceCnt[5]~34\ & VCC))
-- \debnc|s_debounceCnt[6]~36\ = CARRY((\debnc|s_debounceCnt\(6) & !\debnc|s_debounceCnt[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_debounceCnt\(6),
	datad => VCC,
	cin => \debnc|s_debounceCnt[5]~34\,
	combout => \debnc|s_debounceCnt[6]~35_combout\,
	cout => \debnc|s_debounceCnt[6]~36\);

-- Location: FF_X2_Y36_N23
\debnc|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[6]~35_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(6));

-- Location: LCCOMB_X2_Y36_N24
\debnc|s_debounceCnt[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|s_debounceCnt[7]~37_combout\ = (\debnc|s_debounceCnt\(7) & (!\debnc|s_debounceCnt[6]~36\)) # (!\debnc|s_debounceCnt\(7) & ((\debnc|s_debounceCnt[6]~36\) # (GND)))
-- \debnc|s_debounceCnt[7]~38\ = CARRY((!\debnc|s_debounceCnt[6]~36\) # (!\debnc|s_debounceCnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debnc|s_debounceCnt\(7),
	datad => VCC,
	cin => \debnc|s_debounceCnt[6]~36\,
	combout => \debnc|s_debounceCnt[7]~37_combout\,
	cout => \debnc|s_debounceCnt[7]~38\);

-- Location: FF_X2_Y36_N25
\debnc|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[7]~37_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(7));

-- Location: FF_X2_Y36_N27
\debnc|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debnc|s_debounceCnt[8]~39_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	ena => \debnc|s_debounceCnt[16]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_debounceCnt\(8));

-- Location: LCCOMB_X2_Y36_N8
\debnc|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|Equal0~2_combout\ = (\debnc|s_debounceCnt\(8) & \debnc|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debnc|s_debounceCnt\(8),
	datad => \debnc|s_debounceCnt\(9),
	combout => \debnc|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y36_N18
\debnc|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|Equal0~3_combout\ = (\debnc|Equal0~2_combout\ & (\debnc|Equal0~1_combout\ & (!\debnc|s_debounceCnt\(10) & \debnc|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|Equal0~2_combout\,
	datab => \debnc|Equal0~1_combout\,
	datac => \debnc|s_debounceCnt\(10),
	datad => \debnc|s_debounceCnt\(6),
	combout => \debnc|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y35_N26
\debnc|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|Equal0~6_combout\ = (\debnc|s_debounceCnt\(14) & (\debnc|s_debounceCnt\(19) & (\debnc|s_debounceCnt\(18) & \debnc|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|s_debounceCnt\(14),
	datab => \debnc|s_debounceCnt\(19),
	datac => \debnc|s_debounceCnt\(18),
	datad => \debnc|s_debounceCnt\(11),
	combout => \debnc|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y36_N16
\debnc|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debnc|Equal0~7_combout\ = (\debnc|Equal0~3_combout\ & (\debnc|s_debounceCnt\(22) & (\debnc|Equal0~6_combout\ & \debnc|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debnc|Equal0~3_combout\,
	datab => \debnc|s_debounceCnt\(22),
	datac => \debnc|Equal0~6_combout\,
	datad => \debnc|Equal0~5_combout\,
	combout => \debnc|Equal0~7_combout\);

-- Location: FF_X1_Y36_N17
\debnc|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \debnc|Equal0~7_combout\,
	sclr => \debnc|ALT_INV_s_dirtyIn~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debnc|s_pulsedOut~q\);

-- Location: CLKCTRL_G3
\debnc|s_pulsedOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \debnc|s_pulsedOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \debnc|s_pulsedOut~clkctrl_outclk\);

-- Location: LCCOMB_X109_Y12_N2
\pcupdt|s_pc4[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[2]~0_combout\ = \pcupdt|s_pc\(2) $ (VCC)
-- \pcupdt|s_pc4[2]~1\ = CARRY(\pcupdt|s_pc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(2),
	datad => VCC,
	combout => \pcupdt|s_pc4[2]~0_combout\,
	cout => \pcupdt|s_pc4[2]~1\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X109_Y12_N3
\pcupdt|s_pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[2]~0_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(2));

-- Location: LCCOMB_X108_Y11_N10
\displ|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux35~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\instmem|Mux8~0_combout\)) # (!\SW[0]~input_o\ & ((\pcupdt|s_pc\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \instmem|Mux8~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \pcupdt|s_pc\(2),
	combout => \displ|Mux35~0_combout\);

-- Location: LCCOMB_X109_Y12_N4
\pcupdt|s_pc4[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[3]~2_combout\ = (\pcupdt|s_pc\(3) & (!\pcupdt|s_pc4[2]~1\)) # (!\pcupdt|s_pc\(3) & ((\pcupdt|s_pc4[2]~1\) # (GND)))
-- \pcupdt|s_pc4[3]~3\ = CARRY((!\pcupdt|s_pc4[2]~1\) # (!\pcupdt|s_pc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(3),
	datad => VCC,
	cin => \pcupdt|s_pc4[2]~1\,
	combout => \pcupdt|s_pc4[3]~2_combout\,
	cout => \pcupdt|s_pc4[3]~3\);

-- Location: FF_X109_Y12_N5
\pcupdt|s_pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[3]~2_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(3));

-- Location: LCCOMB_X108_Y11_N4
\displ|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux52~0_combout\ = (\displ|Mux35~0_combout\ & (((\SW[0]~input_o\) # (\SW[1]~input_o\)) # (!\pcupdt|s_pc\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux35~0_combout\,
	datab => \pcupdt|s_pc\(3),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux52~0_combout\);

-- Location: LCCOMB_X108_Y11_N6
\displ|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux51~0_combout\ = (\displ|Mux35~0_combout\ & (\pcupdt|s_pc\(3) & (!\SW[0]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux35~0_combout\,
	datab => \pcupdt|s_pc\(3),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux51~0_combout\);

-- Location: LCCOMB_X108_Y11_N0
\displ|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux46~0_combout\ = \displ|Mux35~0_combout\ $ (((\pcupdt|s_pc\(3) & (!\SW[0]~input_o\ & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux35~0_combout\,
	datab => \pcupdt|s_pc\(3),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux46~0_combout\);

-- Location: LCCOMB_X109_Y12_N6
\pcupdt|s_pc4[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[4]~4_combout\ = (\pcupdt|s_pc\(4) & (\pcupdt|s_pc4[3]~3\ $ (GND))) # (!\pcupdt|s_pc\(4) & (!\pcupdt|s_pc4[3]~3\ & VCC))
-- \pcupdt|s_pc4[4]~5\ = CARRY((\pcupdt|s_pc\(4) & !\pcupdt|s_pc4[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(4),
	datad => VCC,
	cin => \pcupdt|s_pc4[3]~3\,
	combout => \pcupdt|s_pc4[4]~4_combout\,
	cout => \pcupdt|s_pc4[4]~5\);

-- Location: LCCOMB_X109_Y12_N0
\pcupdt|s_pc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc~0_combout\ = (\pcupdt|s_pc4[4]~4_combout\ & !\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc4[4]~4_combout\,
	datad => \KEY[1]~input_o\,
	combout => \pcupdt|s_pc~0_combout\);

-- Location: FF_X109_Y12_N1
\pcupdt|s_pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(4));

-- Location: LCCOMB_X109_Y12_N8
\pcupdt|s_pc4[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[5]~6_combout\ = (\pcupdt|s_pc\(5) & (!\pcupdt|s_pc4[4]~5\)) # (!\pcupdt|s_pc\(5) & ((\pcupdt|s_pc4[4]~5\) # (GND)))
-- \pcupdt|s_pc4[5]~7\ = CARRY((!\pcupdt|s_pc4[4]~5\) # (!\pcupdt|s_pc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(5),
	datad => VCC,
	cin => \pcupdt|s_pc4[4]~5\,
	combout => \pcupdt|s_pc4[5]~6_combout\,
	cout => \pcupdt|s_pc4[5]~7\);

-- Location: FF_X109_Y12_N9
\pcupdt|s_pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[5]~6_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(5));

-- Location: LCCOMB_X109_Y12_N10
\pcupdt|s_pc4[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[6]~8_combout\ = (\pcupdt|s_pc\(6) & (\pcupdt|s_pc4[5]~7\ $ (GND))) # (!\pcupdt|s_pc\(6) & (!\pcupdt|s_pc4[5]~7\ & VCC))
-- \pcupdt|s_pc4[6]~9\ = CARRY((\pcupdt|s_pc\(6) & !\pcupdt|s_pc4[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(6),
	datad => VCC,
	cin => \pcupdt|s_pc4[5]~7\,
	combout => \pcupdt|s_pc4[6]~8_combout\,
	cout => \pcupdt|s_pc4[6]~9\);

-- Location: FF_X109_Y12_N11
\pcupdt|s_pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[6]~8_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(6));

-- Location: LCCOMB_X109_Y12_N12
\pcupdt|s_pc4[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[7]~10_combout\ = (\pcupdt|s_pc\(7) & (!\pcupdt|s_pc4[6]~9\)) # (!\pcupdt|s_pc\(7) & ((\pcupdt|s_pc4[6]~9\) # (GND)))
-- \pcupdt|s_pc4[7]~11\ = CARRY((!\pcupdt|s_pc4[6]~9\) # (!\pcupdt|s_pc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(7),
	datad => VCC,
	cin => \pcupdt|s_pc4[6]~9\,
	combout => \pcupdt|s_pc4[7]~10_combout\,
	cout => \pcupdt|s_pc4[7]~11\);

-- Location: FF_X109_Y12_N13
\pcupdt|s_pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[7]~10_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(7));

-- Location: LCCOMB_X111_Y16_N8
\displ|Mux59~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux59~3_combout\ = (\pcupdt|s_pc\(6) & (!\pcupdt|s_pc\(5) & (\pcupdt|s_pc\(7) $ (!\pcupdt|s_pc\(4))))) # (!\pcupdt|s_pc\(6) & (\pcupdt|s_pc\(4) & (\pcupdt|s_pc\(7) $ (!\pcupdt|s_pc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(6),
	datab => \pcupdt|s_pc\(7),
	datac => \pcupdt|s_pc\(5),
	datad => \pcupdt|s_pc\(4),
	combout => \displ|Mux59~3_combout\);

-- Location: LCCOMB_X111_Y16_N26
\displ|Mux59~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux59~6_combout\ = (!\SW[1]~input_o\ & (\displ|Mux59~3_combout\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \displ|Mux59~3_combout\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux59~6_combout\);

-- Location: LCCOMB_X111_Y16_N20
\displ|Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux58~3_combout\ = (\pcupdt|s_pc\(7) & ((\pcupdt|s_pc\(4) & ((\pcupdt|s_pc\(5)))) # (!\pcupdt|s_pc\(4) & (\pcupdt|s_pc\(6))))) # (!\pcupdt|s_pc\(7) & (\pcupdt|s_pc\(6) & (\pcupdt|s_pc\(5) $ (\pcupdt|s_pc\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(6),
	datab => \pcupdt|s_pc\(7),
	datac => \pcupdt|s_pc\(5),
	datad => \pcupdt|s_pc\(4),
	combout => \displ|Mux58~3_combout\);

-- Location: LCCOMB_X111_Y16_N14
\displ|Mux58~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux58~6_combout\ = (\displ|Mux58~3_combout\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux58~3_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux58~6_combout\);

-- Location: LCCOMB_X111_Y16_N24
\displ|Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux57~3_combout\ = (\pcupdt|s_pc\(6) & (\pcupdt|s_pc\(7) & ((\pcupdt|s_pc\(5)) # (!\pcupdt|s_pc\(4))))) # (!\pcupdt|s_pc\(6) & (!\pcupdt|s_pc\(7) & (\pcupdt|s_pc\(5) & !\pcupdt|s_pc\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(6),
	datab => \pcupdt|s_pc\(7),
	datac => \pcupdt|s_pc\(5),
	datad => \pcupdt|s_pc\(4),
	combout => \displ|Mux57~3_combout\);

-- Location: LCCOMB_X111_Y16_N2
\displ|Mux57~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux57~6_combout\ = (\displ|Mux57~3_combout\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux57~3_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux57~6_combout\);

-- Location: LCCOMB_X111_Y16_N12
\displ|Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux56~3_combout\ = (\pcupdt|s_pc\(5) & ((\pcupdt|s_pc\(6) & ((\pcupdt|s_pc\(4)))) # (!\pcupdt|s_pc\(6) & (\pcupdt|s_pc\(7) & !\pcupdt|s_pc\(4))))) # (!\pcupdt|s_pc\(5) & (!\pcupdt|s_pc\(7) & (\pcupdt|s_pc\(6) $ (\pcupdt|s_pc\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(6),
	datab => \pcupdt|s_pc\(7),
	datac => \pcupdt|s_pc\(5),
	datad => \pcupdt|s_pc\(4),
	combout => \displ|Mux56~3_combout\);

-- Location: LCCOMB_X111_Y16_N22
\displ|Mux56~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux56~6_combout\ = (\displ|Mux56~3_combout\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux56~3_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux56~6_combout\);

-- Location: LCCOMB_X111_Y16_N0
\displ|Mux55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux55~3_combout\ = (\pcupdt|s_pc\(5) & (((!\pcupdt|s_pc\(7) & \pcupdt|s_pc\(4))))) # (!\pcupdt|s_pc\(5) & ((\pcupdt|s_pc\(6) & (!\pcupdt|s_pc\(7))) # (!\pcupdt|s_pc\(6) & ((\pcupdt|s_pc\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(6),
	datab => \pcupdt|s_pc\(7),
	datac => \pcupdt|s_pc\(5),
	datad => \pcupdt|s_pc\(4),
	combout => \displ|Mux55~3_combout\);

-- Location: LCCOMB_X111_Y16_N10
\displ|Mux55~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux55~6_combout\ = (\displ|Mux55~3_combout\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux55~3_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux55~6_combout\);

-- Location: LCCOMB_X111_Y16_N28
\displ|Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux54~3_combout\ = (\pcupdt|s_pc\(6) & (\pcupdt|s_pc\(4) & (\pcupdt|s_pc\(7) $ (\pcupdt|s_pc\(5))))) # (!\pcupdt|s_pc\(6) & (!\pcupdt|s_pc\(7) & ((\pcupdt|s_pc\(5)) # (\pcupdt|s_pc\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(6),
	datab => \pcupdt|s_pc\(7),
	datac => \pcupdt|s_pc\(5),
	datad => \pcupdt|s_pc\(4),
	combout => \displ|Mux54~3_combout\);

-- Location: LCCOMB_X111_Y16_N6
\displ|Mux54~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux54~6_combout\ = (\displ|Mux54~3_combout\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux54~3_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux54~6_combout\);

-- Location: LCCOMB_X111_Y16_N16
\displ|Mux53~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux53~3_combout\ = (\pcupdt|s_pc\(4) & ((\pcupdt|s_pc\(7)) # (\pcupdt|s_pc\(6) $ (\pcupdt|s_pc\(5))))) # (!\pcupdt|s_pc\(4) & ((\pcupdt|s_pc\(5)) # (\pcupdt|s_pc\(6) $ (\pcupdt|s_pc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(6),
	datab => \pcupdt|s_pc\(7),
	datac => \pcupdt|s_pc\(5),
	datad => \pcupdt|s_pc\(4),
	combout => \displ|Mux53~3_combout\);

-- Location: LCCOMB_X111_Y16_N18
\displ|Mux53~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux53~6_combout\ = (\displ|Mux53~3_combout\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux53~3_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux53~6_combout\);

-- Location: LCCOMB_X109_Y12_N14
\pcupdt|s_pc4[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[8]~12_combout\ = (\pcupdt|s_pc\(8) & (\pcupdt|s_pc4[7]~11\ $ (GND))) # (!\pcupdt|s_pc\(8) & (!\pcupdt|s_pc4[7]~11\ & VCC))
-- \pcupdt|s_pc4[8]~13\ = CARRY((\pcupdt|s_pc\(8) & !\pcupdt|s_pc4[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(8),
	datad => VCC,
	cin => \pcupdt|s_pc4[7]~11\,
	combout => \pcupdt|s_pc4[8]~12_combout\,
	cout => \pcupdt|s_pc4[8]~13\);

-- Location: FF_X109_Y12_N15
\pcupdt|s_pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[8]~12_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(8));

-- Location: LCCOMB_X109_Y12_N16
\pcupdt|s_pc4[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[9]~14_combout\ = (\pcupdt|s_pc\(9) & (!\pcupdt|s_pc4[8]~13\)) # (!\pcupdt|s_pc\(9) & ((\pcupdt|s_pc4[8]~13\) # (GND)))
-- \pcupdt|s_pc4[9]~15\ = CARRY((!\pcupdt|s_pc4[8]~13\) # (!\pcupdt|s_pc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(9),
	datad => VCC,
	cin => \pcupdt|s_pc4[8]~13\,
	combout => \pcupdt|s_pc4[9]~14_combout\,
	cout => \pcupdt|s_pc4[9]~15\);

-- Location: FF_X109_Y12_N17
\pcupdt|s_pc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[9]~14_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(9));

-- Location: LCCOMB_X109_Y12_N18
\pcupdt|s_pc4[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[10]~16_combout\ = (\pcupdt|s_pc\(10) & (\pcupdt|s_pc4[9]~15\ $ (GND))) # (!\pcupdt|s_pc\(10) & (!\pcupdt|s_pc4[9]~15\ & VCC))
-- \pcupdt|s_pc4[10]~17\ = CARRY((\pcupdt|s_pc\(10) & !\pcupdt|s_pc4[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(10),
	datad => VCC,
	cin => \pcupdt|s_pc4[9]~15\,
	combout => \pcupdt|s_pc4[10]~16_combout\,
	cout => \pcupdt|s_pc4[10]~17\);

-- Location: FF_X109_Y12_N19
\pcupdt|s_pc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[10]~16_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(10));

-- Location: LCCOMB_X109_Y12_N20
\pcupdt|s_pc4[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[11]~18_combout\ = (\pcupdt|s_pc\(11) & (!\pcupdt|s_pc4[10]~17\)) # (!\pcupdt|s_pc\(11) & ((\pcupdt|s_pc4[10]~17\) # (GND)))
-- \pcupdt|s_pc4[11]~19\ = CARRY((!\pcupdt|s_pc4[10]~17\) # (!\pcupdt|s_pc\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(11),
	datad => VCC,
	cin => \pcupdt|s_pc4[10]~17\,
	combout => \pcupdt|s_pc4[11]~18_combout\,
	cout => \pcupdt|s_pc4[11]~19\);

-- Location: FF_X109_Y12_N21
\pcupdt|s_pc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[11]~18_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(11));

-- Location: LCCOMB_X114_Y16_N16
\displ|Mux66~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux66~3_combout\ = (\pcupdt|s_pc\(10) & (!\pcupdt|s_pc\(9) & (\pcupdt|s_pc\(11) $ (!\pcupdt|s_pc\(8))))) # (!\pcupdt|s_pc\(10) & (\pcupdt|s_pc\(8) & (\pcupdt|s_pc\(9) $ (!\pcupdt|s_pc\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(9),
	datab => \pcupdt|s_pc\(10),
	datac => \pcupdt|s_pc\(11),
	datad => \pcupdt|s_pc\(8),
	combout => \displ|Mux66~3_combout\);

-- Location: LCCOMB_X114_Y16_N10
\displ|Mux66~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux66~6_combout\ = (\displ|Mux66~3_combout\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux66~3_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux66~6_combout\);

-- Location: LCCOMB_X114_Y16_N12
\displ|Mux65~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux65~3_combout\ = (\pcupdt|s_pc\(9) & ((\pcupdt|s_pc\(8) & ((\pcupdt|s_pc\(11)))) # (!\pcupdt|s_pc\(8) & (\pcupdt|s_pc\(10))))) # (!\pcupdt|s_pc\(9) & (\pcupdt|s_pc\(10) & (\pcupdt|s_pc\(11) $ (\pcupdt|s_pc\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(9),
	datab => \pcupdt|s_pc\(10),
	datac => \pcupdt|s_pc\(11),
	datad => \pcupdt|s_pc\(8),
	combout => \displ|Mux65~3_combout\);

-- Location: LCCOMB_X114_Y16_N22
\displ|Mux65~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux65~6_combout\ = (\displ|Mux65~3_combout\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux65~3_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux65~6_combout\);

-- Location: LCCOMB_X114_Y16_N0
\displ|Mux64~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux64~3_combout\ = (\pcupdt|s_pc\(10) & (\pcupdt|s_pc\(11) & ((\pcupdt|s_pc\(9)) # (!\pcupdt|s_pc\(8))))) # (!\pcupdt|s_pc\(10) & (\pcupdt|s_pc\(9) & (!\pcupdt|s_pc\(11) & !\pcupdt|s_pc\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(9),
	datab => \pcupdt|s_pc\(10),
	datac => \pcupdt|s_pc\(11),
	datad => \pcupdt|s_pc\(8),
	combout => \displ|Mux64~3_combout\);

-- Location: LCCOMB_X114_Y16_N2
\displ|Mux64~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux64~6_combout\ = (\displ|Mux64~3_combout\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux64~3_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux64~6_combout\);

-- Location: LCCOMB_X114_Y16_N20
\displ|Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux63~3_combout\ = (\pcupdt|s_pc\(9) & ((\pcupdt|s_pc\(10) & ((\pcupdt|s_pc\(8)))) # (!\pcupdt|s_pc\(10) & (\pcupdt|s_pc\(11) & !\pcupdt|s_pc\(8))))) # (!\pcupdt|s_pc\(9) & (!\pcupdt|s_pc\(11) & (\pcupdt|s_pc\(10) $ (\pcupdt|s_pc\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(9),
	datab => \pcupdt|s_pc\(10),
	datac => \pcupdt|s_pc\(11),
	datad => \pcupdt|s_pc\(8),
	combout => \displ|Mux63~3_combout\);

-- Location: LCCOMB_X114_Y16_N6
\displ|Mux63~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux63~6_combout\ = (\displ|Mux63~3_combout\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux63~3_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux63~6_combout\);

-- Location: LCCOMB_X114_Y16_N8
\displ|Mux62~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux62~3_combout\ = (\pcupdt|s_pc\(9) & (((!\pcupdt|s_pc\(11) & \pcupdt|s_pc\(8))))) # (!\pcupdt|s_pc\(9) & ((\pcupdt|s_pc\(10) & (!\pcupdt|s_pc\(11))) # (!\pcupdt|s_pc\(10) & ((\pcupdt|s_pc\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(9),
	datab => \pcupdt|s_pc\(10),
	datac => \pcupdt|s_pc\(11),
	datad => \pcupdt|s_pc\(8),
	combout => \displ|Mux62~3_combout\);

-- Location: LCCOMB_X114_Y16_N26
\displ|Mux62~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux62~6_combout\ = (\displ|Mux62~3_combout\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux62~3_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux62~6_combout\);

-- Location: LCCOMB_X114_Y16_N28
\displ|Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux61~3_combout\ = (\pcupdt|s_pc\(9) & (!\pcupdt|s_pc\(11) & ((\pcupdt|s_pc\(8)) # (!\pcupdt|s_pc\(10))))) # (!\pcupdt|s_pc\(9) & (\pcupdt|s_pc\(8) & (\pcupdt|s_pc\(10) $ (!\pcupdt|s_pc\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(9),
	datab => \pcupdt|s_pc\(10),
	datac => \pcupdt|s_pc\(11),
	datad => \pcupdt|s_pc\(8),
	combout => \displ|Mux61~3_combout\);

-- Location: LCCOMB_X114_Y16_N30
\displ|Mux61~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux61~6_combout\ = (\displ|Mux61~3_combout\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux61~3_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux61~6_combout\);

-- Location: LCCOMB_X114_Y16_N24
\displ|Mux60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux60~3_combout\ = (\pcupdt|s_pc\(8) & ((\pcupdt|s_pc\(11)) # (\pcupdt|s_pc\(9) $ (\pcupdt|s_pc\(10))))) # (!\pcupdt|s_pc\(8) & ((\pcupdt|s_pc\(9)) # (\pcupdt|s_pc\(10) $ (\pcupdt|s_pc\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(9),
	datab => \pcupdt|s_pc\(10),
	datac => \pcupdt|s_pc\(11),
	datad => \pcupdt|s_pc\(8),
	combout => \displ|Mux60~3_combout\);

-- Location: LCCOMB_X114_Y16_N18
\displ|Mux60~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux60~6_combout\ = (\displ|Mux60~3_combout\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux60~3_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux60~6_combout\);

-- Location: LCCOMB_X109_Y12_N22
\pcupdt|s_pc4[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[12]~20_combout\ = (\pcupdt|s_pc\(12) & (\pcupdt|s_pc4[11]~19\ $ (GND))) # (!\pcupdt|s_pc\(12) & (!\pcupdt|s_pc4[11]~19\ & VCC))
-- \pcupdt|s_pc4[12]~21\ = CARRY((\pcupdt|s_pc\(12) & !\pcupdt|s_pc4[11]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(12),
	datad => VCC,
	cin => \pcupdt|s_pc4[11]~19\,
	combout => \pcupdt|s_pc4[12]~20_combout\,
	cout => \pcupdt|s_pc4[12]~21\);

-- Location: FF_X109_Y12_N23
\pcupdt|s_pc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[12]~20_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(12));

-- Location: LCCOMB_X109_Y12_N24
\pcupdt|s_pc4[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[13]~22_combout\ = (\pcupdt|s_pc\(13) & (!\pcupdt|s_pc4[12]~21\)) # (!\pcupdt|s_pc\(13) & ((\pcupdt|s_pc4[12]~21\) # (GND)))
-- \pcupdt|s_pc4[13]~23\ = CARRY((!\pcupdt|s_pc4[12]~21\) # (!\pcupdt|s_pc\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(13),
	datad => VCC,
	cin => \pcupdt|s_pc4[12]~21\,
	combout => \pcupdt|s_pc4[13]~22_combout\,
	cout => \pcupdt|s_pc4[13]~23\);

-- Location: FF_X109_Y12_N25
\pcupdt|s_pc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[13]~22_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(13));

-- Location: LCCOMB_X109_Y12_N26
\pcupdt|s_pc4[14]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[14]~24_combout\ = (\pcupdt|s_pc\(14) & (\pcupdt|s_pc4[13]~23\ $ (GND))) # (!\pcupdt|s_pc\(14) & (!\pcupdt|s_pc4[13]~23\ & VCC))
-- \pcupdt|s_pc4[14]~25\ = CARRY((\pcupdt|s_pc\(14) & !\pcupdt|s_pc4[13]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(14),
	datad => VCC,
	cin => \pcupdt|s_pc4[13]~23\,
	combout => \pcupdt|s_pc4[14]~24_combout\,
	cout => \pcupdt|s_pc4[14]~25\);

-- Location: FF_X109_Y12_N27
\pcupdt|s_pc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[14]~24_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(14));

-- Location: LCCOMB_X109_Y12_N28
\pcupdt|s_pc4[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[15]~26_combout\ = (\pcupdt|s_pc\(15) & (!\pcupdt|s_pc4[14]~25\)) # (!\pcupdt|s_pc\(15) & ((\pcupdt|s_pc4[14]~25\) # (GND)))
-- \pcupdt|s_pc4[15]~27\ = CARRY((!\pcupdt|s_pc4[14]~25\) # (!\pcupdt|s_pc\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(15),
	datad => VCC,
	cin => \pcupdt|s_pc4[14]~25\,
	combout => \pcupdt|s_pc4[15]~26_combout\,
	cout => \pcupdt|s_pc4[15]~27\);

-- Location: FF_X109_Y12_N29
\pcupdt|s_pc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[15]~26_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(15));

-- Location: LCCOMB_X109_Y8_N10
\displ|Mux73~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux73~3_combout\ = (\pcupdt|s_pc\(14) & (!\pcupdt|s_pc\(13) & (\pcupdt|s_pc\(12) $ (!\pcupdt|s_pc\(15))))) # (!\pcupdt|s_pc\(14) & (\pcupdt|s_pc\(12) & (\pcupdt|s_pc\(13) $ (!\pcupdt|s_pc\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(13),
	datab => \pcupdt|s_pc\(14),
	datac => \pcupdt|s_pc\(12),
	datad => \pcupdt|s_pc\(15),
	combout => \displ|Mux73~3_combout\);

-- Location: LCCOMB_X109_Y8_N4
\displ|Mux73~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux73~6_combout\ = (\displ|Mux73~3_combout\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux73~3_combout\,
	datab => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux73~6_combout\);

-- Location: LCCOMB_X109_Y8_N6
\displ|Mux72~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux72~3_combout\ = (\pcupdt|s_pc\(13) & ((\pcupdt|s_pc\(12) & ((\pcupdt|s_pc\(15)))) # (!\pcupdt|s_pc\(12) & (\pcupdt|s_pc\(14))))) # (!\pcupdt|s_pc\(13) & (\pcupdt|s_pc\(14) & (\pcupdt|s_pc\(12) $ (\pcupdt|s_pc\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(13),
	datab => \pcupdt|s_pc\(14),
	datac => \pcupdt|s_pc\(12),
	datad => \pcupdt|s_pc\(15),
	combout => \displ|Mux72~3_combout\);

-- Location: LCCOMB_X109_Y8_N0
\displ|Mux72~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux72~6_combout\ = (\displ|Mux72~3_combout\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux72~3_combout\,
	datab => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux72~6_combout\);

-- Location: LCCOMB_X109_Y8_N26
\displ|Mux71~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux71~3_combout\ = (\pcupdt|s_pc\(14) & (\pcupdt|s_pc\(15) & ((\pcupdt|s_pc\(13)) # (!\pcupdt|s_pc\(12))))) # (!\pcupdt|s_pc\(14) & (\pcupdt|s_pc\(13) & (!\pcupdt|s_pc\(12) & !\pcupdt|s_pc\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(13),
	datab => \pcupdt|s_pc\(14),
	datac => \pcupdt|s_pc\(12),
	datad => \pcupdt|s_pc\(15),
	combout => \displ|Mux71~3_combout\);

-- Location: LCCOMB_X109_Y8_N20
\displ|Mux71~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux71~6_combout\ = (!\SW[1]~input_o\ & (\displ|Mux71~3_combout\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \displ|Mux71~3_combout\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux71~6_combout\);

-- Location: LCCOMB_X109_Y8_N22
\displ|Mux70~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux70~3_combout\ = (\pcupdt|s_pc\(13) & ((\pcupdt|s_pc\(14) & (\pcupdt|s_pc\(12))) # (!\pcupdt|s_pc\(14) & (!\pcupdt|s_pc\(12) & \pcupdt|s_pc\(15))))) # (!\pcupdt|s_pc\(13) & (!\pcupdt|s_pc\(15) & (\pcupdt|s_pc\(14) $ (\pcupdt|s_pc\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(13),
	datab => \pcupdt|s_pc\(14),
	datac => \pcupdt|s_pc\(12),
	datad => \pcupdt|s_pc\(15),
	combout => \displ|Mux70~3_combout\);

-- Location: LCCOMB_X109_Y8_N16
\displ|Mux70~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux70~6_combout\ = (!\SW[1]~input_o\ & (\displ|Mux70~3_combout\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \displ|Mux70~3_combout\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux70~6_combout\);

-- Location: LCCOMB_X109_Y8_N2
\displ|Mux69~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux69~3_combout\ = (\pcupdt|s_pc\(13) & (((\pcupdt|s_pc\(12) & !\pcupdt|s_pc\(15))))) # (!\pcupdt|s_pc\(13) & ((\pcupdt|s_pc\(14) & ((!\pcupdt|s_pc\(15)))) # (!\pcupdt|s_pc\(14) & (\pcupdt|s_pc\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(13),
	datab => \pcupdt|s_pc\(14),
	datac => \pcupdt|s_pc\(12),
	datad => \pcupdt|s_pc\(15),
	combout => \displ|Mux69~3_combout\);

-- Location: LCCOMB_X109_Y8_N12
\displ|Mux69~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux69~6_combout\ = (\displ|Mux69~3_combout\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux69~3_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux69~6_combout\);

-- Location: LCCOMB_X109_Y8_N30
\displ|Mux68~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux68~3_combout\ = (\pcupdt|s_pc\(13) & (!\pcupdt|s_pc\(15) & ((\pcupdt|s_pc\(12)) # (!\pcupdt|s_pc\(14))))) # (!\pcupdt|s_pc\(13) & (\pcupdt|s_pc\(12) & (\pcupdt|s_pc\(14) $ (!\pcupdt|s_pc\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(13),
	datab => \pcupdt|s_pc\(14),
	datac => \pcupdt|s_pc\(12),
	datad => \pcupdt|s_pc\(15),
	combout => \displ|Mux68~3_combout\);

-- Location: LCCOMB_X109_Y8_N8
\displ|Mux68~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux68~6_combout\ = (!\SW[1]~input_o\ & (\displ|Mux68~3_combout\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \displ|Mux68~3_combout\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux68~6_combout\);

-- Location: LCCOMB_X109_Y8_N18
\displ|Mux67~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux67~3_combout\ = (\pcupdt|s_pc\(12) & ((\pcupdt|s_pc\(15)) # (\pcupdt|s_pc\(13) $ (\pcupdt|s_pc\(14))))) # (!\pcupdt|s_pc\(12) & ((\pcupdt|s_pc\(13)) # (\pcupdt|s_pc\(14) $ (\pcupdt|s_pc\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(13),
	datab => \pcupdt|s_pc\(14),
	datac => \pcupdt|s_pc\(12),
	datad => \pcupdt|s_pc\(15),
	combout => \displ|Mux67~3_combout\);

-- Location: LCCOMB_X109_Y8_N28
\displ|Mux67~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux67~6_combout\ = (\displ|Mux67~3_combout\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux67~3_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux67~6_combout\);

-- Location: LCCOMB_X107_Y12_N0
\displ|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Decoder0~0_combout\ = (!\SW[0]~input_o\ & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Decoder0~0_combout\);

-- Location: LCCOMB_X107_Y10_N16
\displ|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux45~0_combout\ = (\displ|s_addrCounters[2][0]~q\ & (!\SW[0]~input_o\ & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[2][0]~q\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux45~0_combout\);

-- Location: LCCOMB_X107_Y13_N8
\displ|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux43~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\displ|s_addrCounters[3][0]~q\))) # (!\SW[0]~input_o\ & (\displ|s_addrCounters[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displ|s_addrCounters[2][2]~q\,
	datac => \SW[0]~input_o\,
	datad => \displ|s_addrCounters[3][0]~q\,
	combout => \displ|Mux43~0_combout\);

-- Location: LCCOMB_X107_Y10_N18
\displ|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux43~1_combout\ = (\displ|Mux43~0_combout\) # ((\displ|s_addrCounters[1][0]~q\ & (\SW[0]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[1][0]~q\,
	datab => \displ|Mux43~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux43~1_combout\);

-- Location: LCCOMB_X109_Y13_N22
\displ|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux42~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\displ|s_addrCounters[3][1]~q\)) # (!\SW[0]~input_o\ & ((\displ|s_addrCounters[2][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|s_addrCounters[3][1]~q\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \displ|s_addrCounters[2][3]~q\,
	combout => \displ|Mux42~0_combout\);

-- Location: LCCOMB_X109_Y13_N0
\displ|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux42~1_combout\ = (\displ|Mux42~0_combout\) # ((\SW[0]~input_o\ & (!\SW[1]~input_o\ & \displ|s_addrCounters[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux42~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \displ|s_addrCounters[1][1]~q\,
	combout => \displ|Mux42~1_combout\);

-- Location: LCCOMB_X108_Y10_N22
\displ|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux44~0_combout\ = (!\SW[0]~input_o\ & (\displ|s_addrCounters[2][1]~q\ & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \displ|s_addrCounters[2][1]~q\,
	datac => \SW[1]~input_o\,
	combout => \displ|Mux44~0_combout\);

-- Location: LCCOMB_X107_Y10_N4
\displ|Mux122~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux122~0_combout\ = (\displ|Mux43~1_combout\ & (!\displ|Mux44~0_combout\ & (\displ|Mux45~0_combout\ $ (!\displ|Mux42~1_combout\)))) # (!\displ|Mux43~1_combout\ & (\displ|Mux45~0_combout\ & (\displ|Mux42~1_combout\ $ (!\displ|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux45~0_combout\,
	datab => \displ|Mux43~1_combout\,
	datac => \displ|Mux42~1_combout\,
	datad => \displ|Mux44~0_combout\,
	combout => \displ|Mux122~0_combout\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X109_Y12_N30
\pcupdt|s_pc4[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[16]~28_combout\ = (\pcupdt|s_pc\(16) & (\pcupdt|s_pc4[15]~27\ $ (GND))) # (!\pcupdt|s_pc\(16) & (!\pcupdt|s_pc4[15]~27\ & VCC))
-- \pcupdt|s_pc4[16]~29\ = CARRY((\pcupdt|s_pc\(16) & !\pcupdt|s_pc4[15]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(16),
	datad => VCC,
	cin => \pcupdt|s_pc4[15]~27\,
	combout => \pcupdt|s_pc4[16]~28_combout\,
	cout => \pcupdt|s_pc4[16]~29\);

-- Location: FF_X109_Y12_N31
\pcupdt|s_pc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[16]~28_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(16));

-- Location: LCCOMB_X109_Y11_N0
\pcupdt|s_pc4[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[17]~30_combout\ = (\pcupdt|s_pc\(17) & (!\pcupdt|s_pc4[16]~29\)) # (!\pcupdt|s_pc\(17) & ((\pcupdt|s_pc4[16]~29\) # (GND)))
-- \pcupdt|s_pc4[17]~31\ = CARRY((!\pcupdt|s_pc4[16]~29\) # (!\pcupdt|s_pc\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(17),
	datad => VCC,
	cin => \pcupdt|s_pc4[16]~29\,
	combout => \pcupdt|s_pc4[17]~30_combout\,
	cout => \pcupdt|s_pc4[17]~31\);

-- Location: FF_X109_Y11_N1
\pcupdt|s_pc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[17]~30_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(17));

-- Location: LCCOMB_X108_Y10_N10
\displ|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux20~0_combout\ = (\pcupdt|s_pc\(17) & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(17),
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \displ|Mux20~0_combout\);

-- Location: LCCOMB_X108_Y11_N18
\instmem|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instmem|Mux7~1_combout\ = (!\displ|s_addrCounters[1][5]~q\ & \instmem|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_addrCounters[1][5]~q\,
	datad => \instmem|Mux7~0_combout\,
	combout => \instmem|Mux7~1_combout\);

-- Location: LCCOMB_X108_Y10_N16
\displ|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux21~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\instmem|Mux7~1_combout\)) # (!\SW[0]~input_o\ & ((\pcupdt|s_pc\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \instmem|Mux7~1_combout\,
	datac => \SW[1]~input_o\,
	datad => \pcupdt|s_pc\(16),
	combout => \displ|Mux21~0_combout\);

-- Location: LCCOMB_X109_Y11_N2
\pcupdt|s_pc4[18]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[18]~32_combout\ = (\pcupdt|s_pc\(18) & (\pcupdt|s_pc4[17]~31\ $ (GND))) # (!\pcupdt|s_pc\(18) & (!\pcupdt|s_pc4[17]~31\ & VCC))
-- \pcupdt|s_pc4[18]~33\ = CARRY((\pcupdt|s_pc\(18) & !\pcupdt|s_pc4[17]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(18),
	datad => VCC,
	cin => \pcupdt|s_pc4[17]~31\,
	combout => \pcupdt|s_pc4[18]~32_combout\,
	cout => \pcupdt|s_pc4[18]~33\);

-- Location: FF_X109_Y11_N3
\pcupdt|s_pc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[18]~32_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(18));

-- Location: LCCOMB_X109_Y11_N4
\pcupdt|s_pc4[19]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[19]~34_combout\ = (\pcupdt|s_pc\(19) & (!\pcupdt|s_pc4[18]~33\)) # (!\pcupdt|s_pc\(19) & ((\pcupdt|s_pc4[18]~33\) # (GND)))
-- \pcupdt|s_pc4[19]~35\ = CARRY((!\pcupdt|s_pc4[18]~33\) # (!\pcupdt|s_pc\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(19),
	datad => VCC,
	cin => \pcupdt|s_pc4[18]~33\,
	combout => \pcupdt|s_pc4[19]~34_combout\,
	cout => \pcupdt|s_pc4[19]~35\);

-- Location: FF_X109_Y11_N5
\pcupdt|s_pc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[19]~34_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(19));

-- Location: LCCOMB_X108_Y11_N30
\displ|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux18~0_combout\ = (\pcupdt|s_pc\(19) & (!\SW[0]~input_o\ & !\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(19),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux18~0_combout\);

-- Location: LCCOMB_X108_Y11_N20
\displ|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux19~0_combout\ = (\pcupdt|s_pc\(18) & (!\SW[0]~input_o\ & !\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(18),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux19~0_combout\);

-- Location: LCCOMB_X108_Y10_N4
\displ|Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux80~0_combout\ = (\displ|Mux18~0_combout\ & (\displ|Mux21~0_combout\ & (\displ|Mux20~0_combout\ $ (\displ|Mux19~0_combout\)))) # (!\displ|Mux18~0_combout\ & (!\displ|Mux20~0_combout\ & (\displ|Mux21~0_combout\ $ (\displ|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux20~0_combout\,
	datab => \displ|Mux21~0_combout\,
	datac => \displ|Mux18~0_combout\,
	datad => \displ|Mux19~0_combout\,
	combout => \displ|Mux80~0_combout\);

-- Location: LCCOMB_X107_Y10_N14
\displ|disp4[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp4[0]~0_combout\ = (\SW[17]~input_o\ & ((\displ|Decoder0~0_combout\) # ((\displ|Mux122~0_combout\)))) # (!\SW[17]~input_o\ & (((\displ|Mux80~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~0_combout\,
	datab => \displ|Mux122~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \displ|Mux80~0_combout\,
	combout => \displ|disp4[0]~0_combout\);

-- Location: LCCOMB_X107_Y10_N0
\displ|Mux121~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux121~0_combout\ = (\displ|Mux42~1_combout\ & ((\displ|Mux45~0_combout\ & ((\displ|Mux44~0_combout\))) # (!\displ|Mux45~0_combout\ & (\displ|Mux43~1_combout\)))) # (!\displ|Mux42~1_combout\ & (\displ|Mux43~1_combout\ & (\displ|Mux45~0_combout\ $ 
-- (\displ|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux45~0_combout\,
	datab => \displ|Mux43~1_combout\,
	datac => \displ|Mux42~1_combout\,
	datad => \displ|Mux44~0_combout\,
	combout => \displ|Mux121~0_combout\);

-- Location: LCCOMB_X108_Y10_N24
\displ|Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux79~0_combout\ = (\displ|Mux20~0_combout\ & ((\displ|Mux21~0_combout\ & (\displ|Mux18~0_combout\)) # (!\displ|Mux21~0_combout\ & ((\displ|Mux19~0_combout\))))) # (!\displ|Mux20~0_combout\ & (\displ|Mux19~0_combout\ & (\displ|Mux21~0_combout\ $ 
-- (\displ|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux20~0_combout\,
	datab => \displ|Mux21~0_combout\,
	datac => \displ|Mux18~0_combout\,
	datad => \displ|Mux19~0_combout\,
	combout => \displ|Mux79~0_combout\);

-- Location: LCCOMB_X107_Y10_N2
\displ|disp4[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp4[1]~1_combout\ = (\SW[17]~input_o\ & ((\displ|Mux121~0_combout\) # ((\displ|Decoder0~0_combout\)))) # (!\SW[17]~input_o\ & (((\displ|Mux79~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \displ|Mux121~0_combout\,
	datac => \displ|Decoder0~0_combout\,
	datad => \displ|Mux79~0_combout\,
	combout => \displ|disp4[1]~1_combout\);

-- Location: LCCOMB_X107_Y10_N20
\displ|Mux120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux120~0_combout\ = (\displ|Mux43~1_combout\ & (\displ|Mux42~1_combout\ & ((\displ|Mux44~0_combout\) # (!\displ|Mux45~0_combout\)))) # (!\displ|Mux43~1_combout\ & (!\displ|Mux45~0_combout\ & (!\displ|Mux42~1_combout\ & \displ|Mux44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux45~0_combout\,
	datab => \displ|Mux43~1_combout\,
	datac => \displ|Mux42~1_combout\,
	datad => \displ|Mux44~0_combout\,
	combout => \displ|Mux120~0_combout\);

-- Location: LCCOMB_X108_Y10_N18
\displ|Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux78~0_combout\ = (\displ|Mux18~0_combout\ & (\displ|Mux19~0_combout\ & ((\displ|Mux20~0_combout\) # (!\displ|Mux21~0_combout\)))) # (!\displ|Mux18~0_combout\ & (\displ|Mux20~0_combout\ & (!\displ|Mux21~0_combout\ & !\displ|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux20~0_combout\,
	datab => \displ|Mux21~0_combout\,
	datac => \displ|Mux18~0_combout\,
	datad => \displ|Mux19~0_combout\,
	combout => \displ|Mux78~0_combout\);

-- Location: LCCOMB_X107_Y10_N22
\displ|disp4[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp4[2]~2_combout\ = (\SW[17]~input_o\ & ((\displ|Mux120~0_combout\) # ((\displ|Decoder0~0_combout\)))) # (!\SW[17]~input_o\ & (((\displ|Mux78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \displ|Mux120~0_combout\,
	datac => \displ|Decoder0~0_combout\,
	datad => \displ|Mux78~0_combout\,
	combout => \displ|disp4[2]~2_combout\);

-- Location: LCCOMB_X108_Y10_N12
\displ|Mux77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux77~0_combout\ = (\displ|Mux20~0_combout\ & ((\displ|Mux21~0_combout\ & ((\displ|Mux19~0_combout\))) # (!\displ|Mux21~0_combout\ & (\displ|Mux18~0_combout\ & !\displ|Mux19~0_combout\)))) # (!\displ|Mux20~0_combout\ & (!\displ|Mux18~0_combout\ & 
-- (\displ|Mux21~0_combout\ $ (\displ|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux20~0_combout\,
	datab => \displ|Mux21~0_combout\,
	datac => \displ|Mux18~0_combout\,
	datad => \displ|Mux19~0_combout\,
	combout => \displ|Mux77~0_combout\);

-- Location: LCCOMB_X107_Y10_N8
\displ|Mux119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux119~0_combout\ = (\displ|Mux44~0_combout\ & ((\displ|Mux45~0_combout\ & (\displ|Mux43~1_combout\)) # (!\displ|Mux45~0_combout\ & (!\displ|Mux43~1_combout\ & \displ|Mux42~1_combout\)))) # (!\displ|Mux44~0_combout\ & (!\displ|Mux42~1_combout\ & 
-- (\displ|Mux45~0_combout\ $ (\displ|Mux43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux45~0_combout\,
	datab => \displ|Mux43~1_combout\,
	datac => \displ|Mux42~1_combout\,
	datad => \displ|Mux44~0_combout\,
	combout => \displ|Mux119~0_combout\);

-- Location: LCCOMB_X107_Y10_N26
\displ|disp4[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp4[3]~3_combout\ = (\SW[17]~input_o\ & ((\displ|Decoder0~0_combout\) # ((\displ|Mux119~0_combout\)))) # (!\SW[17]~input_o\ & (((\displ|Mux77~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~0_combout\,
	datab => \displ|Mux77~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \displ|Mux119~0_combout\,
	combout => \displ|disp4[3]~3_combout\);

-- Location: LCCOMB_X108_Y10_N14
\displ|Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux76~0_combout\ = (\displ|Mux20~0_combout\ & (\displ|Mux21~0_combout\ & (!\displ|Mux18~0_combout\))) # (!\displ|Mux20~0_combout\ & ((\displ|Mux19~0_combout\ & ((!\displ|Mux18~0_combout\))) # (!\displ|Mux19~0_combout\ & (\displ|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux20~0_combout\,
	datab => \displ|Mux21~0_combout\,
	datac => \displ|Mux18~0_combout\,
	datad => \displ|Mux19~0_combout\,
	combout => \displ|Mux76~0_combout\);

-- Location: LCCOMB_X107_Y10_N12
\displ|Mux118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux118~0_combout\ = (\displ|Mux44~0_combout\ & (\displ|Mux45~0_combout\ & ((!\displ|Mux42~1_combout\)))) # (!\displ|Mux44~0_combout\ & ((\displ|Mux43~1_combout\ & ((!\displ|Mux42~1_combout\))) # (!\displ|Mux43~1_combout\ & 
-- (\displ|Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux45~0_combout\,
	datab => \displ|Mux43~1_combout\,
	datac => \displ|Mux42~1_combout\,
	datad => \displ|Mux44~0_combout\,
	combout => \displ|Mux118~0_combout\);

-- Location: LCCOMB_X107_Y10_N6
\displ|disp4[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp4[4]~4_combout\ = (\SW[17]~input_o\ & (((\displ|Decoder0~0_combout\) # (\displ|Mux118~0_combout\)))) # (!\SW[17]~input_o\ & (\displ|Mux76~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \displ|Mux76~0_combout\,
	datac => \displ|Decoder0~0_combout\,
	datad => \displ|Mux118~0_combout\,
	combout => \displ|disp4[4]~4_combout\);

-- Location: LCCOMB_X107_Y10_N24
\displ|Mux117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux117~0_combout\ = (\displ|Mux45~0_combout\ & (\displ|Mux42~1_combout\ $ (((\displ|Mux44~0_combout\) # (!\displ|Mux43~1_combout\))))) # (!\displ|Mux45~0_combout\ & (!\displ|Mux43~1_combout\ & (!\displ|Mux42~1_combout\ & \displ|Mux44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux45~0_combout\,
	datab => \displ|Mux43~1_combout\,
	datac => \displ|Mux42~1_combout\,
	datad => \displ|Mux44~0_combout\,
	combout => \displ|Mux117~0_combout\);

-- Location: LCCOMB_X108_Y10_N8
\displ|Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux75~0_combout\ = (\displ|Mux20~0_combout\ & (!\displ|Mux18~0_combout\ & ((\displ|Mux21~0_combout\) # (!\displ|Mux19~0_combout\)))) # (!\displ|Mux20~0_combout\ & (\displ|Mux21~0_combout\ & (\displ|Mux18~0_combout\ $ (!\displ|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux20~0_combout\,
	datab => \displ|Mux21~0_combout\,
	datac => \displ|Mux18~0_combout\,
	datad => \displ|Mux19~0_combout\,
	combout => \displ|Mux75~0_combout\);

-- Location: LCCOMB_X107_Y10_N10
\displ|disp4[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp4[5]~5_combout\ = (\SW[17]~input_o\ & ((\displ|Decoder0~0_combout\) # ((\displ|Mux117~0_combout\)))) # (!\SW[17]~input_o\ & (((\displ|Mux75~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~0_combout\,
	datab => \displ|Mux117~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \displ|Mux75~0_combout\,
	combout => \displ|disp4[5]~5_combout\);

-- Location: LCCOMB_X107_Y10_N28
\displ|Mux116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux116~0_combout\ = (\displ|Mux45~0_combout\ & ((\displ|Mux42~1_combout\) # (\displ|Mux43~1_combout\ $ (\displ|Mux44~0_combout\)))) # (!\displ|Mux45~0_combout\ & ((\displ|Mux44~0_combout\) # (\displ|Mux43~1_combout\ $ (\displ|Mux42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux45~0_combout\,
	datab => \displ|Mux43~1_combout\,
	datac => \displ|Mux42~1_combout\,
	datad => \displ|Mux44~0_combout\,
	combout => \displ|Mux116~0_combout\);

-- Location: LCCOMB_X108_Y10_N26
\displ|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux74~0_combout\ = (\displ|Mux21~0_combout\ & ((\displ|Mux18~0_combout\) # (\displ|Mux20~0_combout\ $ (\displ|Mux19~0_combout\)))) # (!\displ|Mux21~0_combout\ & ((\displ|Mux20~0_combout\) # (\displ|Mux18~0_combout\ $ (\displ|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux20~0_combout\,
	datab => \displ|Mux21~0_combout\,
	datac => \displ|Mux18~0_combout\,
	datad => \displ|Mux19~0_combout\,
	combout => \displ|Mux74~0_combout\);

-- Location: LCCOMB_X107_Y10_N30
\displ|disp4[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp4[6]~6_combout\ = (\SW[17]~input_o\ & (!\displ|Decoder0~0_combout\ & (!\displ|Mux116~0_combout\))) # (!\SW[17]~input_o\ & (((!\displ|Mux74~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Decoder0~0_combout\,
	datab => \displ|Mux116~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \displ|Mux74~0_combout\,
	combout => \displ|disp4[6]~6_combout\);

-- Location: LCCOMB_X109_Y11_N6
\pcupdt|s_pc4[20]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[20]~36_combout\ = (\pcupdt|s_pc\(20) & (\pcupdt|s_pc4[19]~35\ $ (GND))) # (!\pcupdt|s_pc\(20) & (!\pcupdt|s_pc4[19]~35\ & VCC))
-- \pcupdt|s_pc4[20]~37\ = CARRY((\pcupdt|s_pc\(20) & !\pcupdt|s_pc4[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(20),
	datad => VCC,
	cin => \pcupdt|s_pc4[19]~35\,
	combout => \pcupdt|s_pc4[20]~36_combout\,
	cout => \pcupdt|s_pc4[20]~37\);

-- Location: FF_X109_Y11_N7
\pcupdt|s_pc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[20]~36_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(20));

-- Location: LCCOMB_X109_Y11_N8
\pcupdt|s_pc4[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[21]~38_combout\ = (\pcupdt|s_pc\(21) & (!\pcupdt|s_pc4[20]~37\)) # (!\pcupdt|s_pc\(21) & ((\pcupdt|s_pc4[20]~37\) # (GND)))
-- \pcupdt|s_pc4[21]~39\ = CARRY((!\pcupdt|s_pc4[20]~37\) # (!\pcupdt|s_pc\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(21),
	datad => VCC,
	cin => \pcupdt|s_pc4[20]~37\,
	combout => \pcupdt|s_pc4[21]~38_combout\,
	cout => \pcupdt|s_pc4[21]~39\);

-- Location: FF_X109_Y11_N9
\pcupdt|s_pc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[21]~38_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(21));

-- Location: LCCOMB_X109_Y11_N10
\pcupdt|s_pc4[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[22]~40_combout\ = (\pcupdt|s_pc\(22) & (\pcupdt|s_pc4[21]~39\ $ (GND))) # (!\pcupdt|s_pc\(22) & (!\pcupdt|s_pc4[21]~39\ & VCC))
-- \pcupdt|s_pc4[22]~41\ = CARRY((\pcupdt|s_pc\(22) & !\pcupdt|s_pc4[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(22),
	datad => VCC,
	cin => \pcupdt|s_pc4[21]~39\,
	combout => \pcupdt|s_pc4[22]~40_combout\,
	cout => \pcupdt|s_pc4[22]~41\);

-- Location: FF_X109_Y11_N11
\pcupdt|s_pc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[22]~40_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(22));

-- Location: LCCOMB_X108_Y11_N2
\displ|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux15~0_combout\ = (\pcupdt|s_pc\(22) & (!\SW[0]~input_o\ & !\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(22),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux15~0_combout\);

-- Location: LCCOMB_X107_Y11_N24
\displ|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux17~0_combout\ = (\pcupdt|s_pc\(20) & (!\SW[0]~input_o\ & !\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(20),
	datab => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux17~0_combout\);

-- Location: LCCOMB_X109_Y11_N12
\pcupdt|s_pc4[23]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[23]~42_combout\ = (\pcupdt|s_pc\(23) & (!\pcupdt|s_pc4[22]~41\)) # (!\pcupdt|s_pc\(23) & ((\pcupdt|s_pc4[22]~41\) # (GND)))
-- \pcupdt|s_pc4[23]~43\ = CARRY((!\pcupdt|s_pc4[22]~41\) # (!\pcupdt|s_pc\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(23),
	datad => VCC,
	cin => \pcupdt|s_pc4[22]~41\,
	combout => \pcupdt|s_pc4[23]~42_combout\,
	cout => \pcupdt|s_pc4[23]~43\);

-- Location: LCCOMB_X109_Y11_N30
\pcupdt|s_pc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc~1_combout\ = (\pcupdt|s_pc4[23]~42_combout\ & !\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc4[23]~42_combout\,
	datac => \KEY[1]~input_o\,
	combout => \pcupdt|s_pc~1_combout\);

-- Location: FF_X109_Y11_N31
\pcupdt|s_pc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(23));

-- Location: LCCOMB_X107_Y11_N10
\displ|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux14~0_combout\ = (!\SW[1]~input_o\ & (\pcupdt|s_pc\(23) & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \pcupdt|s_pc\(23),
	datad => \SW[0]~input_o\,
	combout => \displ|Mux14~0_combout\);

-- Location: LCCOMB_X108_Y11_N24
\displ|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux16~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\instmem|Mux8~0_combout\))) # (!\SW[0]~input_o\ & (\pcupdt|s_pc\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \pcupdt|s_pc\(21),
	datac => \SW[0]~input_o\,
	datad => \instmem|Mux8~0_combout\,
	combout => \displ|Mux16~0_combout\);

-- Location: LCCOMB_X107_Y11_N4
\displ|Mux87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux87~0_combout\ = (\displ|Mux15~0_combout\ & (!\displ|Mux16~0_combout\ & (\displ|Mux17~0_combout\ $ (!\displ|Mux14~0_combout\)))) # (!\displ|Mux15~0_combout\ & (\displ|Mux17~0_combout\ & (\displ|Mux14~0_combout\ $ (!\displ|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux15~0_combout\,
	datab => \displ|Mux17~0_combout\,
	datac => \displ|Mux14~0_combout\,
	datad => \displ|Mux16~0_combout\,
	combout => \displ|Mux87~0_combout\);

-- Location: LCCOMB_X107_Y13_N20
\displ|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux41~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\displ|s_addrCounters[3][2]~q\)) # (!\SW[0]~input_o\ & ((\displ|s_addrCounters[2][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displ|s_addrCounters[3][2]~q\,
	datac => \SW[0]~input_o\,
	datad => \displ|s_addrCounters[2][4]~q\,
	combout => \displ|Mux41~0_combout\);

-- Location: LCCOMB_X107_Y12_N18
\displ|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux41~1_combout\ = (\displ|Mux41~0_combout\) # ((\displ|s_addrCounters[1][2]~q\ & (!\SW[1]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux41~0_combout\,
	datab => \displ|s_addrCounters[1][2]~q\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux41~1_combout\);

-- Location: LCCOMB_X107_Y12_N20
\displ|Mux115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux115~0_combout\ = (\displ|Mux39~0_combout\ & (!\displ|Mux40~0_combout\ & (\displ|Mux41~1_combout\ $ (!\displ|Mux38~0_combout\)))) # (!\displ|Mux39~0_combout\ & (\displ|Mux41~1_combout\ & (\displ|Mux40~0_combout\ $ (!\displ|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux39~0_combout\,
	datab => \displ|Mux41~1_combout\,
	datac => \displ|Mux40~0_combout\,
	datad => \displ|Mux38~0_combout\,
	combout => \displ|Mux115~0_combout\);

-- Location: LCCOMB_X107_Y12_N14
\displ|disp5[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp5[0]~0_combout\ = (\SW[17]~input_o\ & (((\displ|Mux115~0_combout\) # (\displ|Decoder0~0_combout\)))) # (!\SW[17]~input_o\ & (\displ|Mux87~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux87~0_combout\,
	datab => \displ|Mux115~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \displ|Decoder0~0_combout\,
	combout => \displ|disp5[0]~0_combout\);

-- Location: LCCOMB_X107_Y11_N14
\displ|Mux86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux86~0_combout\ = (\displ|Mux14~0_combout\ & ((\displ|Mux17~0_combout\ & ((\displ|Mux16~0_combout\))) # (!\displ|Mux17~0_combout\ & (\displ|Mux15~0_combout\)))) # (!\displ|Mux14~0_combout\ & (\displ|Mux15~0_combout\ & (\displ|Mux17~0_combout\ $ 
-- (\displ|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux15~0_combout\,
	datab => \displ|Mux17~0_combout\,
	datac => \displ|Mux14~0_combout\,
	datad => \displ|Mux16~0_combout\,
	combout => \displ|Mux86~0_combout\);

-- Location: LCCOMB_X107_Y12_N8
\displ|Mux114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux114~0_combout\ = (\displ|Mux40~0_combout\ & ((\displ|Mux41~1_combout\ & ((\displ|Mux38~0_combout\))) # (!\displ|Mux41~1_combout\ & (\displ|Mux39~0_combout\)))) # (!\displ|Mux40~0_combout\ & (\displ|Mux39~0_combout\ & (\displ|Mux41~1_combout\ $ 
-- (\displ|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux39~0_combout\,
	datab => \displ|Mux41~1_combout\,
	datac => \displ|Mux40~0_combout\,
	datad => \displ|Mux38~0_combout\,
	combout => \displ|Mux114~0_combout\);

-- Location: LCCOMB_X107_Y12_N26
\displ|disp5[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp5[1]~1_combout\ = (\SW[17]~input_o\ & (((\displ|Mux114~0_combout\) # (\displ|Decoder0~0_combout\)))) # (!\SW[17]~input_o\ & (\displ|Mux86~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux86~0_combout\,
	datab => \displ|Mux114~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \displ|Decoder0~0_combout\,
	combout => \displ|disp5[1]~1_combout\);

-- Location: LCCOMB_X107_Y11_N8
\displ|Mux85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux85~0_combout\ = (\displ|Mux15~0_combout\ & (\displ|Mux14~0_combout\ & ((\displ|Mux16~0_combout\) # (!\displ|Mux17~0_combout\)))) # (!\displ|Mux15~0_combout\ & (!\displ|Mux17~0_combout\ & (!\displ|Mux14~0_combout\ & \displ|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux15~0_combout\,
	datab => \displ|Mux17~0_combout\,
	datac => \displ|Mux14~0_combout\,
	datad => \displ|Mux16~0_combout\,
	combout => \displ|Mux85~0_combout\);

-- Location: LCCOMB_X107_Y12_N28
\displ|Mux113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux113~0_combout\ = (\displ|Mux39~0_combout\ & (\displ|Mux38~0_combout\ & ((\displ|Mux40~0_combout\) # (!\displ|Mux41~1_combout\)))) # (!\displ|Mux39~0_combout\ & (!\displ|Mux41~1_combout\ & (\displ|Mux40~0_combout\ & !\displ|Mux38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux39~0_combout\,
	datab => \displ|Mux41~1_combout\,
	datac => \displ|Mux40~0_combout\,
	datad => \displ|Mux38~0_combout\,
	combout => \displ|Mux113~0_combout\);

-- Location: LCCOMB_X107_Y12_N22
\displ|disp5[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp5[2]~2_combout\ = (\SW[17]~input_o\ & (((\displ|Mux113~0_combout\) # (\displ|Decoder0~0_combout\)))) # (!\SW[17]~input_o\ & (\displ|Mux85~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux85~0_combout\,
	datab => \displ|Mux113~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \displ|Decoder0~0_combout\,
	combout => \displ|disp5[2]~2_combout\);

-- Location: LCCOMB_X107_Y11_N26
\displ|Mux84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux84~0_combout\ = (\displ|Mux16~0_combout\ & ((\displ|Mux15~0_combout\ & (\displ|Mux17~0_combout\)) # (!\displ|Mux15~0_combout\ & (!\displ|Mux17~0_combout\ & \displ|Mux14~0_combout\)))) # (!\displ|Mux16~0_combout\ & (!\displ|Mux14~0_combout\ & 
-- (\displ|Mux15~0_combout\ $ (\displ|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux15~0_combout\,
	datab => \displ|Mux17~0_combout\,
	datac => \displ|Mux14~0_combout\,
	datad => \displ|Mux16~0_combout\,
	combout => \displ|Mux84~0_combout\);

-- Location: LCCOMB_X107_Y12_N16
\displ|Mux112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux112~0_combout\ = (\displ|Mux40~0_combout\ & ((\displ|Mux39~0_combout\ & (\displ|Mux41~1_combout\)) # (!\displ|Mux39~0_combout\ & (!\displ|Mux41~1_combout\ & \displ|Mux38~0_combout\)))) # (!\displ|Mux40~0_combout\ & (!\displ|Mux38~0_combout\ & 
-- (\displ|Mux39~0_combout\ $ (\displ|Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux39~0_combout\,
	datab => \displ|Mux41~1_combout\,
	datac => \displ|Mux40~0_combout\,
	datad => \displ|Mux38~0_combout\,
	combout => \displ|Mux112~0_combout\);

-- Location: LCCOMB_X107_Y12_N2
\displ|disp5[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp5[3]~3_combout\ = (\SW[17]~input_o\ & (((\displ|Mux112~0_combout\) # (\displ|Decoder0~0_combout\)))) # (!\SW[17]~input_o\ & (\displ|Mux84~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux84~0_combout\,
	datab => \displ|Mux112~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \displ|Decoder0~0_combout\,
	combout => \displ|disp5[3]~3_combout\);

-- Location: LCCOMB_X107_Y12_N12
\displ|Mux111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux111~0_combout\ = (\displ|Mux40~0_combout\ & (((\displ|Mux41~1_combout\ & !\displ|Mux38~0_combout\)))) # (!\displ|Mux40~0_combout\ & ((\displ|Mux39~0_combout\ & ((!\displ|Mux38~0_combout\))) # (!\displ|Mux39~0_combout\ & 
-- (\displ|Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux39~0_combout\,
	datab => \displ|Mux41~1_combout\,
	datac => \displ|Mux40~0_combout\,
	datad => \displ|Mux38~0_combout\,
	combout => \displ|Mux111~0_combout\);

-- Location: LCCOMB_X107_Y11_N12
\displ|Mux83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux83~0_combout\ = (\displ|Mux16~0_combout\ & (((\displ|Mux17~0_combout\ & !\displ|Mux14~0_combout\)))) # (!\displ|Mux16~0_combout\ & ((\displ|Mux15~0_combout\ & ((!\displ|Mux14~0_combout\))) # (!\displ|Mux15~0_combout\ & 
-- (\displ|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux15~0_combout\,
	datab => \displ|Mux17~0_combout\,
	datac => \displ|Mux14~0_combout\,
	datad => \displ|Mux16~0_combout\,
	combout => \displ|Mux83~0_combout\);

-- Location: LCCOMB_X107_Y12_N6
\displ|disp5[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp5[4]~4_combout\ = (\SW[17]~input_o\ & ((\displ|Mux111~0_combout\) # ((\displ|Decoder0~0_combout\)))) # (!\SW[17]~input_o\ & (((\displ|Mux83~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux111~0_combout\,
	datab => \displ|Mux83~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \displ|Decoder0~0_combout\,
	combout => \displ|disp5[4]~4_combout\);

-- Location: LCCOMB_X107_Y11_N22
\displ|Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux82~0_combout\ = (\displ|Mux15~0_combout\ & (\displ|Mux17~0_combout\ & (\displ|Mux14~0_combout\ $ (\displ|Mux16~0_combout\)))) # (!\displ|Mux15~0_combout\ & (!\displ|Mux14~0_combout\ & ((\displ|Mux17~0_combout\) # (\displ|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux15~0_combout\,
	datab => \displ|Mux17~0_combout\,
	datac => \displ|Mux14~0_combout\,
	datad => \displ|Mux16~0_combout\,
	combout => \displ|Mux82~0_combout\);

-- Location: LCCOMB_X107_Y12_N24
\displ|Mux110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux110~0_combout\ = (\displ|Mux39~0_combout\ & (\displ|Mux41~1_combout\ & (\displ|Mux40~0_combout\ $ (\displ|Mux38~0_combout\)))) # (!\displ|Mux39~0_combout\ & (!\displ|Mux38~0_combout\ & ((\displ|Mux41~1_combout\) # (\displ|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux39~0_combout\,
	datab => \displ|Mux41~1_combout\,
	datac => \displ|Mux40~0_combout\,
	datad => \displ|Mux38~0_combout\,
	combout => \displ|Mux110~0_combout\);

-- Location: LCCOMB_X107_Y12_N10
\displ|disp5[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp5[5]~5_combout\ = (\SW[17]~input_o\ & (((\displ|Mux110~0_combout\) # (\displ|Decoder0~0_combout\)))) # (!\SW[17]~input_o\ & (\displ|Mux82~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux82~0_combout\,
	datab => \displ|Mux110~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \displ|Decoder0~0_combout\,
	combout => \displ|disp5[5]~5_combout\);

-- Location: LCCOMB_X107_Y11_N0
\displ|Mux81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux81~0_combout\ = (\displ|Mux17~0_combout\ & ((\displ|Mux14~0_combout\) # (\displ|Mux15~0_combout\ $ (\displ|Mux16~0_combout\)))) # (!\displ|Mux17~0_combout\ & ((\displ|Mux16~0_combout\) # (\displ|Mux15~0_combout\ $ (\displ|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux15~0_combout\,
	datab => \displ|Mux17~0_combout\,
	datac => \displ|Mux14~0_combout\,
	datad => \displ|Mux16~0_combout\,
	combout => \displ|Mux81~0_combout\);

-- Location: LCCOMB_X107_Y12_N4
\displ|Mux109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux109~0_combout\ = (\displ|Mux41~1_combout\ & ((\displ|Mux38~0_combout\) # (\displ|Mux39~0_combout\ $ (\displ|Mux40~0_combout\)))) # (!\displ|Mux41~1_combout\ & ((\displ|Mux40~0_combout\) # (\displ|Mux39~0_combout\ $ (\displ|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux39~0_combout\,
	datab => \displ|Mux41~1_combout\,
	datac => \displ|Mux40~0_combout\,
	datad => \displ|Mux38~0_combout\,
	combout => \displ|Mux109~0_combout\);

-- Location: LCCOMB_X107_Y12_N30
\displ|disp5[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp5[6]~6_combout\ = (\SW[17]~input_o\ & (((!\displ|Mux109~0_combout\ & !\displ|Decoder0~0_combout\)))) # (!\SW[17]~input_o\ & (!\displ|Mux81~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux81~0_combout\,
	datab => \displ|Mux109~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \displ|Decoder0~0_combout\,
	combout => \displ|disp5[6]~6_combout\);

-- Location: LCCOMB_X109_Y11_N14
\pcupdt|s_pc4[24]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[24]~44_combout\ = (\pcupdt|s_pc\(24) & (\pcupdt|s_pc4[23]~43\ $ (GND))) # (!\pcupdt|s_pc\(24) & (!\pcupdt|s_pc4[23]~43\ & VCC))
-- \pcupdt|s_pc4[24]~45\ = CARRY((\pcupdt|s_pc\(24) & !\pcupdt|s_pc4[23]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(24),
	datad => VCC,
	cin => \pcupdt|s_pc4[23]~43\,
	combout => \pcupdt|s_pc4[24]~44_combout\,
	cout => \pcupdt|s_pc4[24]~45\);

-- Location: FF_X109_Y11_N15
\pcupdt|s_pc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[24]~44_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(24));

-- Location: LCCOMB_X109_Y11_N16
\pcupdt|s_pc4[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[25]~46_combout\ = (\pcupdt|s_pc\(25) & (!\pcupdt|s_pc4[24]~45\)) # (!\pcupdt|s_pc\(25) & ((\pcupdt|s_pc4[24]~45\) # (GND)))
-- \pcupdt|s_pc4[25]~47\ = CARRY((!\pcupdt|s_pc4[24]~45\) # (!\pcupdt|s_pc\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(25),
	datad => VCC,
	cin => \pcupdt|s_pc4[24]~45\,
	combout => \pcupdt|s_pc4[25]~46_combout\,
	cout => \pcupdt|s_pc4[25]~47\);

-- Location: FF_X109_Y11_N17
\pcupdt|s_pc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[25]~46_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(25));

-- Location: LCCOMB_X102_Y6_N10
\displ|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux12~0_combout\ = (!\SW[1]~input_o\ & (\pcupdt|s_pc\(25) & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \pcupdt|s_pc\(25),
	datad => \SW[0]~input_o\,
	combout => \displ|Mux12~0_combout\);

-- Location: LCCOMB_X102_Y6_N24
\displ|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux13~0_combout\ = (!\SW[1]~input_o\ & (\pcupdt|s_pc\(24) & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \pcupdt|s_pc\(24),
	datad => \SW[0]~input_o\,
	combout => \displ|Mux13~0_combout\);

-- Location: LCCOMB_X108_Y11_N12
\instmem|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instmem|Mux7~2_combout\ = (!\displ|s_addrCounters[1][5]~q\ & (!\displ|s_addrCounters[1][0]~q\ & \instmem|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|s_addrCounters[1][5]~q\,
	datac => \displ|s_addrCounters[1][0]~q\,
	datad => \instmem|Mux7~0_combout\,
	combout => \instmem|Mux7~2_combout\);

-- Location: LCCOMB_X109_Y11_N18
\pcupdt|s_pc4[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[26]~48_combout\ = (\pcupdt|s_pc\(26) & (\pcupdt|s_pc4[25]~47\ $ (GND))) # (!\pcupdt|s_pc\(26) & (!\pcupdt|s_pc4[25]~47\ & VCC))
-- \pcupdt|s_pc4[26]~49\ = CARRY((\pcupdt|s_pc\(26) & !\pcupdt|s_pc4[25]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(26),
	datad => VCC,
	cin => \pcupdt|s_pc4[25]~47\,
	combout => \pcupdt|s_pc4[26]~48_combout\,
	cout => \pcupdt|s_pc4[26]~49\);

-- Location: FF_X109_Y11_N19
\pcupdt|s_pc[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[26]~48_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(26));

-- Location: LCCOMB_X108_Y11_N14
\displ|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux11~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\instmem|Mux7~2_combout\)) # (!\SW[0]~input_o\ & ((\pcupdt|s_pc\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmem|Mux7~2_combout\,
	datab => \pcupdt|s_pc\(26),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux11~0_combout\);

-- Location: LCCOMB_X109_Y11_N20
\pcupdt|s_pc4[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[27]~50_combout\ = (\pcupdt|s_pc\(27) & (!\pcupdt|s_pc4[26]~49\)) # (!\pcupdt|s_pc\(27) & ((\pcupdt|s_pc4[26]~49\) # (GND)))
-- \pcupdt|s_pc4[27]~51\ = CARRY((!\pcupdt|s_pc4[26]~49\) # (!\pcupdt|s_pc\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(27),
	datad => VCC,
	cin => \pcupdt|s_pc4[26]~49\,
	combout => \pcupdt|s_pc4[27]~50_combout\,
	cout => \pcupdt|s_pc4[27]~51\);

-- Location: FF_X109_Y11_N21
\pcupdt|s_pc[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[27]~50_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(27));

-- Location: LCCOMB_X108_Y11_N8
\displ|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux10~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\instmem|Mux7~2_combout\))) # (!\SW[0]~input_o\ & (\pcupdt|s_pc\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(27),
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \instmem|Mux7~2_combout\,
	combout => \displ|Mux10~0_combout\);

-- Location: LCCOMB_X102_Y6_N28
\displ|Mux94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux94~0_combout\ = (\displ|Mux11~0_combout\ & (!\displ|Mux12~0_combout\ & (\displ|Mux13~0_combout\ $ (!\displ|Mux10~0_combout\)))) # (!\displ|Mux11~0_combout\ & (\displ|Mux13~0_combout\ & (\displ|Mux12~0_combout\ $ (!\displ|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux12~0_combout\,
	datab => \displ|Mux13~0_combout\,
	datac => \displ|Mux11~0_combout\,
	datad => \displ|Mux10~0_combout\,
	combout => \displ|Mux94~0_combout\);

-- Location: LCCOMB_X102_Y6_N22
\displ|disp6[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp6[0]~0_combout\ = (\SW[17]~input_o\ & (\SW[1]~input_o\ & ((\SW[0]~input_o\)))) # (!\SW[17]~input_o\ & (((\displ|Mux94~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displ|Mux94~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|disp6[0]~0_combout\);

-- Location: LCCOMB_X102_Y6_N8
\displ|Mux93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux93~0_combout\ = (\displ|Mux12~0_combout\ & ((\displ|Mux13~0_combout\ & ((\displ|Mux10~0_combout\))) # (!\displ|Mux13~0_combout\ & (\displ|Mux11~0_combout\)))) # (!\displ|Mux12~0_combout\ & (\displ|Mux11~0_combout\ & (\displ|Mux13~0_combout\ $ 
-- (\displ|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux12~0_combout\,
	datab => \displ|Mux13~0_combout\,
	datac => \displ|Mux11~0_combout\,
	datad => \displ|Mux10~0_combout\,
	combout => \displ|Mux93~0_combout\);

-- Location: LCCOMB_X102_Y6_N26
\displ|disp6[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp6[1]~1_combout\ = (\SW[17]~input_o\ & (\SW[1]~input_o\ $ (((\SW[0]~input_o\))))) # (!\SW[17]~input_o\ & (((\displ|Mux93~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displ|Mux93~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|disp6[1]~1_combout\);

-- Location: LCCOMB_X102_Y6_N20
\displ|Mux92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux92~0_combout\ = (\displ|Mux11~0_combout\ & (\displ|Mux10~0_combout\ & ((\displ|Mux12~0_combout\) # (!\displ|Mux13~0_combout\)))) # (!\displ|Mux11~0_combout\ & (\displ|Mux12~0_combout\ & (!\displ|Mux13~0_combout\ & !\displ|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux12~0_combout\,
	datab => \displ|Mux13~0_combout\,
	datac => \displ|Mux11~0_combout\,
	datad => \displ|Mux10~0_combout\,
	combout => \displ|Mux92~0_combout\);

-- Location: LCCOMB_X102_Y6_N14
\displ|disp6[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp6[2]~2_combout\ = (\SW[17]~input_o\ & (((!\SW[0]~input_o\)) # (!\SW[1]~input_o\))) # (!\SW[17]~input_o\ & (((\displ|Mux92~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displ|Mux92~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|disp6[2]~2_combout\);

-- Location: LCCOMB_X102_Y6_N16
\displ|Mux91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux91~0_combout\ = (\displ|Mux12~0_combout\ & ((\displ|Mux13~0_combout\ & (\displ|Mux11~0_combout\)) # (!\displ|Mux13~0_combout\ & (!\displ|Mux11~0_combout\ & \displ|Mux10~0_combout\)))) # (!\displ|Mux12~0_combout\ & (!\displ|Mux10~0_combout\ & 
-- (\displ|Mux13~0_combout\ $ (\displ|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux12~0_combout\,
	datab => \displ|Mux13~0_combout\,
	datac => \displ|Mux11~0_combout\,
	datad => \displ|Mux10~0_combout\,
	combout => \displ|Mux91~0_combout\);

-- Location: LCCOMB_X102_Y6_N18
\displ|disp6[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp6[3]~3_combout\ = (\SW[17]~input_o\ & ((!\SW[0]~input_o\))) # (!\SW[17]~input_o\ & (\displ|Mux91~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux91~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|disp6[3]~3_combout\);

-- Location: LCCOMB_X102_Y6_N4
\displ|Mux90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux90~0_combout\ = (\displ|Mux12~0_combout\ & (\displ|Mux13~0_combout\ & ((!\displ|Mux10~0_combout\)))) # (!\displ|Mux12~0_combout\ & ((\displ|Mux11~0_combout\ & ((!\displ|Mux10~0_combout\))) # (!\displ|Mux11~0_combout\ & 
-- (\displ|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux12~0_combout\,
	datab => \displ|Mux13~0_combout\,
	datac => \displ|Mux11~0_combout\,
	datad => \displ|Mux10~0_combout\,
	combout => \displ|Mux90~0_combout\);

-- Location: LCCOMB_X102_Y6_N30
\displ|disp6[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp6[4]~4_combout\ = (\displ|Mux90~0_combout\ & !\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux90~0_combout\,
	datac => \SW[17]~input_o\,
	combout => \displ|disp6[4]~4_combout\);

-- Location: LCCOMB_X102_Y6_N0
\displ|Mux89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux89~0_combout\ = (\displ|Mux12~0_combout\ & (!\displ|Mux10~0_combout\ & ((\displ|Mux13~0_combout\) # (!\displ|Mux11~0_combout\)))) # (!\displ|Mux12~0_combout\ & (\displ|Mux13~0_combout\ & (\displ|Mux11~0_combout\ $ (!\displ|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux12~0_combout\,
	datab => \displ|Mux13~0_combout\,
	datac => \displ|Mux11~0_combout\,
	datad => \displ|Mux10~0_combout\,
	combout => \displ|Mux89~0_combout\);

-- Location: LCCOMB_X102_Y6_N2
\displ|disp6[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp6[5]~5_combout\ = (\SW[17]~input_o\ & (\SW[1]~input_o\ & ((\SW[0]~input_o\)))) # (!\SW[17]~input_o\ & (((\displ|Mux89~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \displ|Mux89~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|disp6[5]~5_combout\);

-- Location: LCCOMB_X102_Y6_N12
\displ|Mux88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux88~0_combout\ = (\displ|Mux13~0_combout\ & ((\displ|Mux10~0_combout\) # (\displ|Mux12~0_combout\ $ (\displ|Mux11~0_combout\)))) # (!\displ|Mux13~0_combout\ & ((\displ|Mux12~0_combout\) # (\displ|Mux11~0_combout\ $ (\displ|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux12~0_combout\,
	datab => \displ|Mux13~0_combout\,
	datac => \displ|Mux11~0_combout\,
	datad => \displ|Mux10~0_combout\,
	combout => \displ|Mux88~0_combout\);

-- Location: LCCOMB_X102_Y6_N6
\displ|disp6[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp6[6]~6_combout\ = (\SW[17]~input_o\ & (((\SW[0]~input_o\ & !\SW[1]~input_o\)))) # (!\SW[17]~input_o\ & (!\displ|Mux88~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux88~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \SW[17]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|disp6[6]~6_combout\);

-- Location: LCCOMB_X109_Y11_N22
\pcupdt|s_pc4[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[28]~52_combout\ = (\pcupdt|s_pc\(28) & (\pcupdt|s_pc4[27]~51\ $ (GND))) # (!\pcupdt|s_pc\(28) & (!\pcupdt|s_pc4[27]~51\ & VCC))
-- \pcupdt|s_pc4[28]~53\ = CARRY((\pcupdt|s_pc\(28) & !\pcupdt|s_pc4[27]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(28),
	datad => VCC,
	cin => \pcupdt|s_pc4[27]~51\,
	combout => \pcupdt|s_pc4[28]~52_combout\,
	cout => \pcupdt|s_pc4[28]~53\);

-- Location: FF_X109_Y11_N23
\pcupdt|s_pc[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[28]~52_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(28));

-- Location: LCCOMB_X109_Y11_N24
\pcupdt|s_pc4[29]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[29]~54_combout\ = (\pcupdt|s_pc\(29) & (!\pcupdt|s_pc4[28]~53\)) # (!\pcupdt|s_pc\(29) & ((\pcupdt|s_pc4[28]~53\) # (GND)))
-- \pcupdt|s_pc4[29]~55\ = CARRY((!\pcupdt|s_pc4[28]~53\) # (!\pcupdt|s_pc\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(29),
	datad => VCC,
	cin => \pcupdt|s_pc4[28]~53\,
	combout => \pcupdt|s_pc4[29]~54_combout\,
	cout => \pcupdt|s_pc4[29]~55\);

-- Location: FF_X109_Y11_N25
\pcupdt|s_pc[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[29]~54_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(29));

-- Location: LCCOMB_X109_Y11_N26
\pcupdt|s_pc4[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[30]~56_combout\ = (\pcupdt|s_pc\(30) & (\pcupdt|s_pc4[29]~55\ $ (GND))) # (!\pcupdt|s_pc\(30) & (!\pcupdt|s_pc4[29]~55\ & VCC))
-- \pcupdt|s_pc4[30]~57\ = CARRY((\pcupdt|s_pc\(30) & !\pcupdt|s_pc4[29]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pcupdt|s_pc\(30),
	datad => VCC,
	cin => \pcupdt|s_pc4[29]~55\,
	combout => \pcupdt|s_pc4[30]~56_combout\,
	cout => \pcupdt|s_pc4[30]~57\);

-- Location: FF_X109_Y11_N27
\pcupdt|s_pc[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[30]~56_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(30));

-- Location: LCCOMB_X109_Y11_N28
\pcupdt|s_pc4[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcupdt|s_pc4[31]~58_combout\ = \pcupdt|s_pc4[30]~57\ $ (\pcupdt|s_pc\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pcupdt|s_pc\(31),
	cin => \pcupdt|s_pc4[30]~57\,
	combout => \pcupdt|s_pc4[31]~58_combout\);

-- Location: FF_X109_Y11_N29
\pcupdt|s_pc[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debnc|s_pulsedOut~clkctrl_outclk\,
	d => \pcupdt|s_pc4[31]~58_combout\,
	sclr => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcupdt|s_pc\(31));

-- Location: LCCOMB_X108_Y11_N22
\displ|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux6~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\instmem|Mux7~2_combout\)) # (!\SW[0]~input_o\ & ((\pcupdt|s_pc\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmem|Mux7~2_combout\,
	datab => \pcupdt|s_pc\(31),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux6~0_combout\);

-- Location: LCCOMB_X108_Y11_N26
\displ|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux8~0_combout\ = (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\instmem|Mux8~0_combout\)) # (!\SW[0]~input_o\ & ((\pcupdt|s_pc\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \instmem|Mux8~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \pcupdt|s_pc\(29),
	combout => \displ|Mux8~0_combout\);

-- Location: LCCOMB_X108_Y11_N28
\displ|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux7~0_combout\ = (\pcupdt|s_pc\(30) & (!\SW[0]~input_o\ & !\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(30),
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \displ|Mux7~0_combout\);

-- Location: LCCOMB_X109_Y8_N24
\displ|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux9~0_combout\ = (\pcupdt|s_pc\(28) & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pcupdt|s_pc\(28),
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \displ|Mux9~0_combout\);

-- Location: LCCOMB_X100_Y6_N24
\displ|Mux101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux101~0_combout\ = (\displ|Mux6~0_combout\ & (\displ|Mux9~0_combout\ & (\displ|Mux8~0_combout\ $ (\displ|Mux7~0_combout\)))) # (!\displ|Mux6~0_combout\ & (!\displ|Mux8~0_combout\ & (\displ|Mux7~0_combout\ $ (\displ|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux6~0_combout\,
	datab => \displ|Mux8~0_combout\,
	datac => \displ|Mux7~0_combout\,
	datad => \displ|Mux9~0_combout\,
	combout => \displ|Mux101~0_combout\);

-- Location: LCCOMB_X100_Y6_N10
\displ|disp7[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp7[0]~0_combout\ = (\displ|Mux101~0_combout\ & !\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux101~0_combout\,
	datad => \SW[17]~input_o\,
	combout => \displ|disp7[0]~0_combout\);

-- Location: LCCOMB_X100_Y6_N12
\displ|Mux100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux100~0_combout\ = (\displ|Mux6~0_combout\ & ((\displ|Mux9~0_combout\ & (\displ|Mux8~0_combout\)) # (!\displ|Mux9~0_combout\ & ((\displ|Mux7~0_combout\))))) # (!\displ|Mux6~0_combout\ & (\displ|Mux7~0_combout\ & (\displ|Mux8~0_combout\ $ 
-- (\displ|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux6~0_combout\,
	datab => \displ|Mux8~0_combout\,
	datac => \displ|Mux7~0_combout\,
	datad => \displ|Mux9~0_combout\,
	combout => \displ|Mux100~0_combout\);

-- Location: LCCOMB_X100_Y6_N22
\displ|disp7[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp7[1]~1_combout\ = (\displ|Mux100~0_combout\) # (\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux100~0_combout\,
	datad => \SW[17]~input_o\,
	combout => \displ|disp7[1]~1_combout\);

-- Location: LCCOMB_X100_Y6_N8
\displ|Mux99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux99~0_combout\ = (\displ|Mux6~0_combout\ & (\displ|Mux7~0_combout\ & ((\displ|Mux8~0_combout\) # (!\displ|Mux9~0_combout\)))) # (!\displ|Mux6~0_combout\ & (\displ|Mux8~0_combout\ & (!\displ|Mux7~0_combout\ & !\displ|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux6~0_combout\,
	datab => \displ|Mux8~0_combout\,
	datac => \displ|Mux7~0_combout\,
	datad => \displ|Mux9~0_combout\,
	combout => \displ|Mux99~0_combout\);

-- Location: LCCOMB_X100_Y6_N18
\displ|disp7[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp7[2]~2_combout\ = (\displ|Mux99~0_combout\) # (\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \displ|Mux99~0_combout\,
	datad => \SW[17]~input_o\,
	combout => \displ|disp7[2]~2_combout\);

-- Location: LCCOMB_X100_Y6_N28
\displ|Mux98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux98~0_combout\ = (\displ|Mux8~0_combout\ & ((\displ|Mux7~0_combout\ & ((\displ|Mux9~0_combout\))) # (!\displ|Mux7~0_combout\ & (\displ|Mux6~0_combout\ & !\displ|Mux9~0_combout\)))) # (!\displ|Mux8~0_combout\ & (!\displ|Mux6~0_combout\ & 
-- (\displ|Mux7~0_combout\ $ (\displ|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux6~0_combout\,
	datab => \displ|Mux8~0_combout\,
	datac => \displ|Mux7~0_combout\,
	datad => \displ|Mux9~0_combout\,
	combout => \displ|Mux98~0_combout\);

-- Location: LCCOMB_X100_Y6_N30
\displ|disp7[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp7[3]~3_combout\ = (\displ|Mux98~0_combout\ & !\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux98~0_combout\,
	datad => \SW[17]~input_o\,
	combout => \displ|disp7[3]~3_combout\);

-- Location: LCCOMB_X100_Y6_N16
\displ|Mux97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux97~0_combout\ = (\displ|Mux8~0_combout\ & (!\displ|Mux6~0_combout\ & ((\displ|Mux9~0_combout\)))) # (!\displ|Mux8~0_combout\ & ((\displ|Mux7~0_combout\ & (!\displ|Mux6~0_combout\)) # (!\displ|Mux7~0_combout\ & ((\displ|Mux9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux6~0_combout\,
	datab => \displ|Mux8~0_combout\,
	datac => \displ|Mux7~0_combout\,
	datad => \displ|Mux9~0_combout\,
	combout => \displ|Mux97~0_combout\);

-- Location: LCCOMB_X100_Y6_N2
\displ|disp7[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp7[4]~4_combout\ = (\displ|Mux97~0_combout\) # (\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux97~0_combout\,
	datad => \SW[17]~input_o\,
	combout => \displ|disp7[4]~4_combout\);

-- Location: LCCOMB_X100_Y6_N20
\displ|Mux96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux96~0_combout\ = (\displ|Mux8~0_combout\ & (!\displ|Mux6~0_combout\ & ((\displ|Mux9~0_combout\) # (!\displ|Mux7~0_combout\)))) # (!\displ|Mux8~0_combout\ & (\displ|Mux9~0_combout\ & (\displ|Mux6~0_combout\ $ (!\displ|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux6~0_combout\,
	datab => \displ|Mux8~0_combout\,
	datac => \displ|Mux7~0_combout\,
	datad => \displ|Mux9~0_combout\,
	combout => \displ|Mux96~0_combout\);

-- Location: LCCOMB_X100_Y6_N14
\displ|disp7[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp7[5]~5_combout\ = (\displ|Mux96~0_combout\) # (\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux96~0_combout\,
	datad => \SW[17]~input_o\,
	combout => \displ|disp7[5]~5_combout\);

-- Location: LCCOMB_X100_Y6_N0
\displ|Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|Mux95~0_combout\ = (\displ|Mux9~0_combout\ & ((\displ|Mux6~0_combout\) # (\displ|Mux8~0_combout\ $ (\displ|Mux7~0_combout\)))) # (!\displ|Mux9~0_combout\ & ((\displ|Mux8~0_combout\) # (\displ|Mux6~0_combout\ $ (\displ|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displ|Mux6~0_combout\,
	datab => \displ|Mux8~0_combout\,
	datac => \displ|Mux7~0_combout\,
	datad => \displ|Mux9~0_combout\,
	combout => \displ|Mux95~0_combout\);

-- Location: LCCOMB_X100_Y6_N26
\displ|disp7[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \displ|disp7[6]~6_combout\ = (\displ|Mux95~0_combout\) # (\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displ|Mux95~0_combout\,
	datad => \SW[17]~input_o\,
	combout => \displ|disp7[6]~6_combout\);

-- Location: LCCOMB_X81_Y36_N0
\~GND\ : cycloneive_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_0__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_1__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_2__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_3__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_4__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_5__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_6__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_7__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_8__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_9__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_10__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_11__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_12__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_13__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_14__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_15__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_16__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_17__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_18__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_19__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_20__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_21__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_22__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_23__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_24__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_25__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_26__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_27__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_28__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_29__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_30__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMdata_31__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_0__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_1__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_2__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_3__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_4__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_5__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_6__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_7__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_8__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_9__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_10__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_11__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_12__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_13__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_14__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_15__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_16__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_17__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_18__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_19__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_20__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_21__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_22__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_23__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_24__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_25__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_26__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_27__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_28__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_29__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_30__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFdata_31__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_31__gl_output\ <= \pcupdt|s_pc\(31);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_30__gl_output\ <= \pcupdt|s_pc\(30);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_29__gl_output\ <= \pcupdt|s_pc\(29);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_28__gl_output\ <= \pcupdt|s_pc\(28);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_27__gl_output\ <= \pcupdt|s_pc\(27);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_26__gl_output\ <= \pcupdt|s_pc\(26);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_25__gl_output\ <= \pcupdt|s_pc\(25);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_24__gl_output\ <= \pcupdt|s_pc\(24);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_23__gl_output\ <= \pcupdt|s_pc\(23);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_22__gl_output\ <= \pcupdt|s_pc\(22);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_21__gl_output\ <= \pcupdt|s_pc\(21);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_20__gl_output\ <= \pcupdt|s_pc\(20);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_19__gl_output\ <= \pcupdt|s_pc\(19);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_18__gl_output\ <= \pcupdt|s_pc\(18);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_17__gl_output\ <= \pcupdt|s_pc\(17);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_16__gl_output\ <= \pcupdt|s_pc\(16);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_15__gl_output\ <= \pcupdt|s_pc\(15);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_14__gl_output\ <= \pcupdt|s_pc\(14);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_13__gl_output\ <= \pcupdt|s_pc\(13);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_12__gl_output\ <= \pcupdt|s_pc\(12);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_11__gl_output\ <= \pcupdt|s_pc\(11);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_10__gl_output\ <= \pcupdt|s_pc\(10);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_9__gl_output\ <= \pcupdt|s_pc\(9);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_8__gl_output\ <= \pcupdt|s_pc\(8);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_7__gl_output\ <= \pcupdt|s_pc\(7);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_6__gl_output\ <= \pcupdt|s_pc\(6);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_5__gl_output\ <= \pcupdt|s_pc\(5);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_4__gl_output\ <= \pcupdt|s_pc\(4);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_3__gl_output\ <= \pcupdt|s_pc\(3);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_2__gl_output\ <= \pcupdt|s_pc\(2);

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_1__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_PC_0__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_5__gl_output\ <= \displ|s_addrCounters[3][5]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_5__gl_output\ <= \displ|s_addrCounters[1][5]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_4__gl_output\ <= \displ|s_addrCounters[3][4]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_4__gl_output\ <= \displ|s_addrCounters[2][4]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_4__gl_output\ <= \displ|s_addrCounters[1][4]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_3__gl_output\ <= \displ|s_addrCounters[3][3]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_3__gl_output\ <= \displ|s_addrCounters[2][3]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_3__gl_output\ <= \displ|s_addrCounters[1][3]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_2__gl_output\ <= \displ|s_addrCounters[3][2]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_2__gl_output\ <= \displ|s_addrCounters[2][2]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_2__gl_output\ <= \displ|s_addrCounters[1][2]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_1__gl_output\ <= \displ|s_addrCounters[3][1]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_1__gl_output\ <= \displ|s_addrCounters[2][1]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_1__gl_output\ <= \displ|s_addrCounters[1][1]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_DMaddr_0__gl_output\ <= \displ|s_addrCounters[3][0]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_RFaddr_0__gl_output\ <= \displ|s_addrCounters[2][0]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMaddr_0__gl_output\ <= \displ|s_addrCounters[1][0]~q\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_31__gl_output\ <= \instmem|Mux7~2_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_30__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_29__gl_output\ <= \instmem|Mux8~0_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_28__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_27__gl_output\ <= \instmem|Mux7~2_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_26__gl_output\ <= \instmem|Mux7~2_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_25__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_24__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_23__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_22__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_21__gl_output\ <= \instmem|Mux8~0_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_20__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_19__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_18__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_17__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_16__gl_output\ <= \instmem|Mux7~1_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_15__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_14__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_13__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_12__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_11__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_10__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_9__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_8__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_7__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_6__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_5__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_4__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_3__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_2__gl_output\ <= \instmem|Mux8~0_combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_1__gl_output\ <= \~GND~combout\;

\ww_global.bp.work.DisplayUnit_pkg.DU_IMdata_0__gl_output\ <= \~GND~combout\;
END structure;


