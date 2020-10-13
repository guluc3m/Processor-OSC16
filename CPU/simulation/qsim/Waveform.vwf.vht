-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- Generated on "10/14/2020 00:51:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          cpu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cpu_vhd_vec_tst IS
END cpu_vhd_vec_tst;
ARCHITECTURE cpu_arch OF cpu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Address : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL Data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DataO : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Enable : STD_LOGIC;
SIGNAL HPI_p : STD_LOGIC;
SIGNAL LPI_p : STD_LOGIC;
SIGNAL mClk : STD_LOGIC;
SIGNAL MPI_p : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL RW : STD_LOGIC;
SIGNAL Sync : STD_LOGIC;
COMPONENT cpu
	PORT (
	Address : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
	clk : IN STD_LOGIC;
	Data : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	DataO : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	Enable : IN STD_LOGIC;
	HPI_p : IN STD_LOGIC;
	LPI_p : IN STD_LOGIC;
	mClk : IN STD_LOGIC;
	MPI_p : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	RW : OUT STD_LOGIC;
	Sync : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : cpu
	PORT MAP (
-- list connections between master ports and signals
	Address => Address,
	clk => clk,
	Data => Data,
	DataO => DataO,
	Enable => Enable,
	HPI_p => HPI_p,
	LPI_p => LPI_p,
	mClk => mClk,
	MPI_p => MPI_p,
	rst => rst,
	RW => RW,
	Sync => Sync
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 999
	LOOP
		clk <= '0';
		WAIT FOR 50000 ps;
		clk <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- mClk
t_prcs_mClk: PROCESS
BEGIN
LOOP
	mClk <= '0';
	WAIT FOR 50000 ps;
	mClk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_mClk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
	WAIT FOR 5120000 ps;
	rst <= '1';
WAIT;
END PROCESS t_prcs_rst;

-- Enable
t_prcs_Enable: PROCESS
BEGIN
	Enable <= '0';
	WAIT FOR 3584000 ps;
	Enable <= '1';
WAIT;
END PROCESS t_prcs_Enable;
-- Data[15]
t_prcs_Data_15: PROCESS
BEGIN
	Data(15) <= '0';
	WAIT FOR 6176000 ps;
	Data(15) <= '1';
	WAIT FOR 192000 ps;
	Data(15) <= '0';
	WAIT FOR 512000 ps;
	Data(15) <= '1';
	WAIT FOR 76000 ps;
	Data(15) <= '0';
	WAIT FOR 212000 ps;
	Data(15) <= '1';
	WAIT FOR 3072000 ps;
	Data(15) <= '0';
	WAIT FOR 1024000 ps;
	Data(15) <= '1';
WAIT;
END PROCESS t_prcs_Data_15;
-- Data[14]
t_prcs_Data_14: PROCESS
BEGIN
	Data(14) <= '0';
	WAIT FOR 6176000 ps;
	Data(14) <= '1';
	WAIT FOR 192000 ps;
	Data(14) <= '0';
	WAIT FOR 512000 ps;
	Data(14) <= '1';
	WAIT FOR 76000 ps;
	Data(14) <= '0';
	WAIT FOR 308000 ps;
	Data(14) <= '1';
	WAIT FOR 2976000 ps;
	Data(14) <= '0';
	WAIT FOR 1024000 ps;
	Data(14) <= '1';
WAIT;
END PROCESS t_prcs_Data_14;
-- Data[13]
t_prcs_Data_13: PROCESS
BEGIN
	Data(13) <= '0';
	WAIT FOR 6176000 ps;
	Data(13) <= '1';
	WAIT FOR 96000 ps;
	Data(13) <= '0';
	WAIT FOR 608000 ps;
	Data(13) <= '1';
	WAIT FOR 76000 ps;
	Data(13) <= '0';
	WAIT FOR 212000 ps;
	Data(13) <= '1';
	WAIT FOR 3072000 ps;
	Data(13) <= '0';
	WAIT FOR 1024000 ps;
	Data(13) <= '1';
WAIT;
END PROCESS t_prcs_Data_13;
-- Data[12]
t_prcs_Data_12: PROCESS
BEGIN
	Data(12) <= '0';
	WAIT FOR 6176000 ps;
	Data(12) <= '1';
	WAIT FOR 96000 ps;
	Data(12) <= '0';
	WAIT FOR 96000 ps;
	Data(12) <= '1';
	WAIT FOR 320000 ps;
	Data(12) <= '0';
	WAIT FOR 192000 ps;
	Data(12) <= '1';
	WAIT FOR 76000 ps;
	Data(12) <= '0';
	WAIT FOR 308000 ps;
	Data(12) <= '1';
	WAIT FOR 2976000 ps;
	Data(12) <= '0';
	WAIT FOR 1024000 ps;
	Data(12) <= '1';
WAIT;
END PROCESS t_prcs_Data_12;
-- Data[11]
t_prcs_Data_11: PROCESS
BEGIN
	Data(11) <= '0';
	WAIT FOR 6272000 ps;
	Data(11) <= '1';
	WAIT FOR 416000 ps;
	Data(11) <= '0';
	WAIT FOR 192000 ps;
	Data(11) <= '1';
	WAIT FOR 76000 ps;
	Data(11) <= '0';
	WAIT FOR 212000 ps;
	Data(11) <= '1';
	WAIT FOR 3072000 ps;
	Data(11) <= '0';
	WAIT FOR 1024000 ps;
	Data(11) <= '1';
WAIT;
END PROCESS t_prcs_Data_11;
-- Data[10]
t_prcs_Data_10: PROCESS
BEGIN
	Data(10) <= '0';
	WAIT FOR 5376000 ps;
	Data(10) <= '1';
	WAIT FOR 96000 ps;
	Data(10) <= '0';
	WAIT FOR 800000 ps;
	Data(10) <= '1';
	WAIT FOR 416000 ps;
	Data(10) <= '0';
	WAIT FOR 192000 ps;
	Data(10) <= '1';
	WAIT FOR 76000 ps;
	Data(10) <= '0';
	WAIT FOR 308000 ps;
	Data(10) <= '1';
	WAIT FOR 2976000 ps;
	Data(10) <= '0';
	WAIT FOR 1024000 ps;
	Data(10) <= '1';
WAIT;
END PROCESS t_prcs_Data_10;
-- Data[9]
t_prcs_Data_9: PROCESS
BEGIN
	Data(9) <= '0';
	WAIT FOR 5376000 ps;
	Data(9) <= '1';
	WAIT FOR 96000 ps;
	Data(9) <= '0';
	WAIT FOR 896000 ps;
	Data(9) <= '1';
	WAIT FOR 320000 ps;
	Data(9) <= '0';
	WAIT FOR 192000 ps;
	Data(9) <= '1';
	WAIT FOR 76000 ps;
	Data(9) <= '0';
	WAIT FOR 212000 ps;
	Data(9) <= '1';
	WAIT FOR 3072000 ps;
	Data(9) <= '0';
	WAIT FOR 1024000 ps;
	Data(9) <= '1';
WAIT;
END PROCESS t_prcs_Data_9;
-- Data[8]
t_prcs_Data_8: PROCESS
BEGIN
	Data(8) <= '0';
	WAIT FOR 6176000 ps;
	Data(8) <= '1';
	WAIT FOR 96000 ps;
	Data(8) <= '0';
	WAIT FOR 608000 ps;
	Data(8) <= '1';
	WAIT FOR 76000 ps;
	Data(8) <= '0';
	WAIT FOR 308000 ps;
	Data(8) <= '1';
	WAIT FOR 2976000 ps;
	Data(8) <= '0';
	WAIT FOR 1024000 ps;
	Data(8) <= '1';
WAIT;
END PROCESS t_prcs_Data_8;
-- Data[7]
t_prcs_Data_7: PROCESS
BEGIN
	Data(7) <= '0';
	WAIT FOR 6176000 ps;
	Data(7) <= '1';
	WAIT FOR 192000 ps;
	Data(7) <= '0';
	WAIT FOR 512000 ps;
	Data(7) <= '1';
	WAIT FOR 76000 ps;
	Data(7) <= '0';
	WAIT FOR 212000 ps;
	Data(7) <= '1';
	WAIT FOR 3072000 ps;
	Data(7) <= '0';
	WAIT FOR 1024000 ps;
	Data(7) <= '1';
WAIT;
END PROCESS t_prcs_Data_7;
-- Data[6]
t_prcs_Data_6: PROCESS
BEGIN
	Data(6) <= '0';
	WAIT FOR 6176000 ps;
	Data(6) <= '1';
	WAIT FOR 512000 ps;
	Data(6) <= '0';
	WAIT FOR 192000 ps;
	Data(6) <= '1';
	WAIT FOR 76000 ps;
	Data(6) <= '0';
	WAIT FOR 308000 ps;
	Data(6) <= '1';
	WAIT FOR 2976000 ps;
	Data(6) <= '0';
	WAIT FOR 1024000 ps;
	Data(6) <= '1';
WAIT;
END PROCESS t_prcs_Data_6;
-- Data[5]
t_prcs_Data_5: PROCESS
BEGIN
	Data(5) <= '0';
	WAIT FOR 6368000 ps;
	Data(5) <= '1';
	WAIT FOR 320000 ps;
	Data(5) <= '0';
	WAIT FOR 192000 ps;
	Data(5) <= '1';
	WAIT FOR 76000 ps;
	Data(5) <= '0';
	WAIT FOR 212000 ps;
	Data(5) <= '1';
	WAIT FOR 3072000 ps;
	Data(5) <= '0';
	WAIT FOR 1024000 ps;
	Data(5) <= '1';
WAIT;
END PROCESS t_prcs_Data_5;
-- Data[4]
t_prcs_Data_4: PROCESS
BEGIN
	Data(4) <= '0';
	WAIT FOR 6880000 ps;
	Data(4) <= '1';
	WAIT FOR 76000 ps;
	Data(4) <= '0';
	WAIT FOR 308000 ps;
	Data(4) <= '1';
	WAIT FOR 2976000 ps;
	Data(4) <= '0';
	WAIT FOR 1024000 ps;
	Data(4) <= '1';
WAIT;
END PROCESS t_prcs_Data_4;
-- Data[3]
t_prcs_Data_3: PROCESS
BEGIN
	Data(3) <= '0';
	WAIT FOR 5760000 ps;
	Data(3) <= '1';
	WAIT FOR 88000 ps;
	Data(3) <= '0';
	WAIT FOR 424000 ps;
	Data(3) <= '1';
	WAIT FOR 416000 ps;
	Data(3) <= '0';
	WAIT FOR 192000 ps;
	Data(3) <= '1';
	WAIT FOR 76000 ps;
	Data(3) <= '0';
	WAIT FOR 212000 ps;
	Data(3) <= '1';
	WAIT FOR 3072000 ps;
	Data(3) <= '0';
	WAIT FOR 1024000 ps;
	Data(3) <= '1';
WAIT;
END PROCESS t_prcs_Data_3;
-- Data[2]
t_prcs_Data_2: PROCESS
BEGIN
	Data(2) <= '0';
	WAIT FOR 5280000 ps;
	Data(2) <= '1';
	WAIT FOR 96000 ps;
	Data(2) <= '0';
	WAIT FOR 384000 ps;
	Data(2) <= '1';
	WAIT FOR 88000 ps;
	Data(2) <= '0';
	WAIT FOR 328000 ps;
	Data(2) <= '1';
	WAIT FOR 192000 ps;
	Data(2) <= '0';
	WAIT FOR 320000 ps;
	Data(2) <= '1';
	WAIT FOR 192000 ps;
	Data(2) <= '0';
	WAIT FOR 76000 ps;
	Data(2) <= '1';
	WAIT FOR 212000 ps;
	Data(2) <= '0';
	WAIT FOR 96000 ps;
	Data(2) <= '1';
WAIT;
END PROCESS t_prcs_Data_2;
-- Data[1]
t_prcs_Data_1: PROCESS
BEGIN
	Data(1) <= '0';
	WAIT FOR 5152000 ps;
	Data(1) <= '1';
	WAIT FOR 128000 ps;
	Data(1) <= '0';
	WAIT FOR 480000 ps;
	Data(1) <= '1';
	WAIT FOR 512000 ps;
	Data(1) <= '0';
	WAIT FOR 96000 ps;
	Data(1) <= '1';
	WAIT FOR 512000 ps;
	Data(1) <= '0';
	WAIT FOR 288000 ps;
	Data(1) <= '1';
WAIT;
END PROCESS t_prcs_Data_1;
-- Data[0]
t_prcs_Data_0: PROCESS
BEGIN
	Data(0) <= '0';
	WAIT FOR 5280000 ps;
	Data(0) <= '1';
	WAIT FOR 96000 ps;
	Data(0) <= '0';
	WAIT FOR 384000 ps;
	Data(0) <= '1';
	WAIT FOR 512000 ps;
	Data(0) <= '0';
	WAIT FOR 416000 ps;
	Data(0) <= '1';
	WAIT FOR 268000 ps;
	Data(0) <= '0';
	WAIT FOR 308000 ps;
	Data(0) <= '1';
	WAIT FOR 2976000 ps;
	Data(0) <= '0';
	WAIT FOR 1024000 ps;
	Data(0) <= '1';
WAIT;
END PROCESS t_prcs_Data_0;

-- HPI_p
t_prcs_HPI_p: PROCESS
BEGIN
	HPI_p <= '0';
WAIT;
END PROCESS t_prcs_HPI_p;

-- MPI_p
t_prcs_MPI_p: PROCESS
BEGIN
	MPI_p <= '0';
WAIT;
END PROCESS t_prcs_MPI_p;

-- LPI_p
t_prcs_LPI_p: PROCESS
BEGIN
	LPI_p <= '0';
WAIT;
END PROCESS t_prcs_LPI_p;
END cpu_arch;
