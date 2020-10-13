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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/14/2020 00:44:25"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	cpu IS
    PORT (
	Data : INOUT std_logic_vector(15 DOWNTO 0);
	clk : IN std_logic;
	mClk : IN std_logic;
	rst : IN std_logic;
	Enable : IN std_logic;
	Sync : OUT std_logic;
	RW : OUT std_logic;
	Address : OUT std_logic_vector(23 DOWNTO 0);
	DataO : OUT std_logic_vector(15 DOWNTO 0);
	HPI_p : IN std_logic;
	MPI_p : IN std_logic;
	LPI_p : IN std_logic
	);
END cpu;

-- Design Ports Information
-- Sync	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RW	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[1]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[2]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[3]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[4]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[5]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[6]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[7]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[8]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[9]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[10]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[11]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[12]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[13]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[14]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[15]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[16]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[17]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[18]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[19]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[20]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[21]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[22]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[23]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[0]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[1]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[2]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[4]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[5]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[6]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[7]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[8]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[9]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[10]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[11]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[12]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[13]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[14]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[15]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[3]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[4]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[5]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[6]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[7]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[8]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[9]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[10]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[11]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[12]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[13]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[14]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data[15]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mClk	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HPI_p	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MPI_p	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LPI_p	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_mClk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Sync : std_logic;
SIGNAL ww_RW : std_logic;
SIGNAL ww_Address : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_DataO : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_HPI_p : std_logic;
SIGNAL ww_MPI_p : std_logic;
SIGNAL ww_LPI_p : std_logic;
SIGNAL \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mClk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DataO[0]~output_o\ : std_logic;
SIGNAL \DataO[1]~output_o\ : std_logic;
SIGNAL \DataO[2]~output_o\ : std_logic;
SIGNAL \DataO[3]~output_o\ : std_logic;
SIGNAL \DataO[4]~output_o\ : std_logic;
SIGNAL \DataO[5]~output_o\ : std_logic;
SIGNAL \DataO[6]~output_o\ : std_logic;
SIGNAL \DataO[7]~output_o\ : std_logic;
SIGNAL \DataO[8]~output_o\ : std_logic;
SIGNAL \DataO[9]~output_o\ : std_logic;
SIGNAL \DataO[10]~output_o\ : std_logic;
SIGNAL \DataO[11]~output_o\ : std_logic;
SIGNAL \DataO[12]~output_o\ : std_logic;
SIGNAL \DataO[13]~output_o\ : std_logic;
SIGNAL \DataO[14]~output_o\ : std_logic;
SIGNAL \DataO[15]~output_o\ : std_logic;
SIGNAL \Data[0]~output_o\ : std_logic;
SIGNAL \Data[1]~output_o\ : std_logic;
SIGNAL \Data[2]~output_o\ : std_logic;
SIGNAL \Data[3]~output_o\ : std_logic;
SIGNAL \Data[4]~output_o\ : std_logic;
SIGNAL \Data[5]~output_o\ : std_logic;
SIGNAL \Data[6]~output_o\ : std_logic;
SIGNAL \Data[7]~output_o\ : std_logic;
SIGNAL \Data[8]~output_o\ : std_logic;
SIGNAL \Data[9]~output_o\ : std_logic;
SIGNAL \Data[10]~output_o\ : std_logic;
SIGNAL \Data[11]~output_o\ : std_logic;
SIGNAL \Data[12]~output_o\ : std_logic;
SIGNAL \Data[13]~output_o\ : std_logic;
SIGNAL \Data[14]~output_o\ : std_logic;
SIGNAL \Data[15]~output_o\ : std_logic;
SIGNAL \Sync~output_o\ : std_logic;
SIGNAL \RW~output_o\ : std_logic;
SIGNAL \Address[0]~output_o\ : std_logic;
SIGNAL \Address[1]~output_o\ : std_logic;
SIGNAL \Address[2]~output_o\ : std_logic;
SIGNAL \Address[3]~output_o\ : std_logic;
SIGNAL \Address[4]~output_o\ : std_logic;
SIGNAL \Address[5]~output_o\ : std_logic;
SIGNAL \Address[6]~output_o\ : std_logic;
SIGNAL \Address[7]~output_o\ : std_logic;
SIGNAL \Address[8]~output_o\ : std_logic;
SIGNAL \Address[9]~output_o\ : std_logic;
SIGNAL \Address[10]~output_o\ : std_logic;
SIGNAL \Address[11]~output_o\ : std_logic;
SIGNAL \Address[12]~output_o\ : std_logic;
SIGNAL \Address[13]~output_o\ : std_logic;
SIGNAL \Address[14]~output_o\ : std_logic;
SIGNAL \Address[15]~output_o\ : std_logic;
SIGNAL \Address[16]~output_o\ : std_logic;
SIGNAL \Address[17]~output_o\ : std_logic;
SIGNAL \Address[18]~output_o\ : std_logic;
SIGNAL \Address[19]~output_o\ : std_logic;
SIGNAL \Address[20]~output_o\ : std_logic;
SIGNAL \Address[21]~output_o\ : std_logic;
SIGNAL \Address[22]~output_o\ : std_logic;
SIGNAL \Address[23]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Data[15]~input_o\ : std_logic;
SIGNAL \mClk~input_o\ : std_logic;
SIGNAL \mClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \LPI_p~input_o\ : std_logic;
SIGNAL \MPI_p~input_o\ : std_logic;
SIGNAL \HPI_p~input_o\ : std_logic;
SIGNAL \HPIO~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \HPIO~q\ : std_logic;
SIGNAL \process_6~3_combout\ : std_logic;
SIGNAL \MPIO~0_combout\ : std_logic;
SIGNAL \MPIO~q\ : std_logic;
SIGNAL \process_6~2_combout\ : std_logic;
SIGNAL \MPI~0_combout\ : std_logic;
SIGNAL \MPI~q\ : std_logic;
SIGNAL \LPI~0_combout\ : std_logic;
SIGNAL \LPIO~0_combout\ : std_logic;
SIGNAL \LPIO~q\ : std_logic;
SIGNAL \LPI~1_combout\ : std_logic;
SIGNAL \LPI~2_combout\ : std_logic;
SIGNAL \LPI~q\ : std_logic;
SIGNAL \process_6~1_combout\ : std_logic;
SIGNAL \HPI~0_combout\ : std_logic;
SIGNAL \HPI~q\ : std_logic;
SIGNAL \process_6~0_combout\ : std_logic;
SIGNAL \Data[5]~input_o\ : std_logic;
SIGNAL \AIE[0]~2_combout\ : std_logic;
SIGNAL \RstComplete~feeder_combout\ : std_logic;
SIGNAL \RstComplete~q\ : std_logic;
SIGNAL \Data[0]~input_o\ : std_logic;
SIGNAL \IR~1_combout\ : std_logic;
SIGNAL \Data[1]~input_o\ : std_logic;
SIGNAL \IR~7_combout\ : std_logic;
SIGNAL \Data[2]~input_o\ : std_logic;
SIGNAL \IR~6_combout\ : std_logic;
SIGNAL \Data[3]~input_o\ : std_logic;
SIGNAL \IR~5_combout\ : std_logic;
SIGNAL \Data[4]~input_o\ : std_logic;
SIGNAL \IR~4_combout\ : std_logic;
SIGNAL \Data[6]~input_o\ : std_logic;
SIGNAL \IR~2_combout\ : std_logic;
SIGNAL \Data[7]~input_o\ : std_logic;
SIGNAL \IR~8_combout\ : std_logic;
SIGNAL \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \MRC~7_combout\ : std_logic;
SIGNAL \CIR~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \CIR~2_combout\ : std_logic;
SIGNAL \CIR~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux52~4_combout\ : std_logic;
SIGNAL \MicroCode|Mux52~6_combout\ : std_logic;
SIGNAL \MicroCode|Mux52~5_combout\ : std_logic;
SIGNAL \MicroCode|Mux52~7_combout\ : std_logic;
SIGNAL \EIR[0]~36_combout\ : std_logic;
SIGNAL \IC~3_combout\ : std_logic;
SIGNAL \IC[1]~2_combout\ : std_logic;
SIGNAL \IC~0_combout\ : std_logic;
SIGNAL \IC~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux52~11_combout\ : std_logic;
SIGNAL \MicroCode|Mux52~8_combout\ : std_logic;
SIGNAL \MicroCode|Mux52~10_combout\ : std_logic;
SIGNAL \MicroCode|LIC[0]~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux57~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux61~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux52~9_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \process_2~1_combout\ : std_logic;
SIGNAL \CIR~3_combout\ : std_logic;
SIGNAL \CIR~q\ : std_logic;
SIGNAL \MRC[3]~9_combout\ : std_logic;
SIGNAL \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \MRC~10_combout\ : std_logic;
SIGNAL \MRC~6_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \MRC~8_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \AIE[0]~0_combout\ : std_logic;
SIGNAL \AIE[0]~1_combout\ : std_logic;
SIGNAL \AIE[1]~3_combout\ : std_logic;
SIGNAL \IR~0_combout\ : std_logic;
SIGNAL \IR~3_combout\ : std_logic;
SIGNAL \MicroCode|Mux55~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux7~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux10~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux58~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~5_combout\ : std_logic;
SIGNAL \Data[12]~input_o\ : std_logic;
SIGNAL \IR~12_combout\ : std_logic;
SIGNAL \MicroCode|Mux31~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux34~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~8_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~3_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~9_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~10_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~11_combout\ : std_logic;
SIGNAL \MicroCode|Mux57~4_combout\ : std_logic;
SIGNAL \Data[11]~input_o\ : std_logic;
SIGNAL \IR~13_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~4_combout\ : std_logic;
SIGNAL \MicroCode|Mux17~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~6_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~7_combout\ : std_logic;
SIGNAL \MicroCode|Mux55~1_combout\ : std_logic;
SIGNAL \Data[10]~input_o\ : std_logic;
SIGNAL \IR~14_combout\ : std_logic;
SIGNAL \MicroCode|Mux56~4_combout\ : std_logic;
SIGNAL \MicroCode|Mux56~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux31~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux11~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux56~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux56~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux56~3_combout\ : std_logic;
SIGNAL \MicroCode|Mux56~5_combout\ : std_logic;
SIGNAL \Mux120~0_combout\ : std_logic;
SIGNAL \Data[8]~input_o\ : std_logic;
SIGNAL \IR~16_combout\ : std_logic;
SIGNAL \MicroCode|Mux19~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux58~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux58~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux8~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux57~3_combout\ : std_logic;
SIGNAL \MicroCode|Mux57~5_combout\ : std_logic;
SIGNAL \MicroCode|Mux58~3_combout\ : std_logic;
SIGNAL \Mux130~4_combout\ : std_logic;
SIGNAL \MicroCode|Mux57~10_combout\ : std_logic;
SIGNAL \Data[9]~input_o\ : std_logic;
SIGNAL \IR~15_combout\ : std_logic;
SIGNAL \MicroCode|Mux57~7_combout\ : std_logic;
SIGNAL \MicroCode|Mux18~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux57~6_combout\ : std_logic;
SIGNAL \MicroCode|Mux57~8_combout\ : std_logic;
SIGNAL \MicroCode|Mux57~9_combout\ : std_logic;
SIGNAL \Mux120~1_combout\ : std_logic;
SIGNAL \EIR~58_combout\ : std_logic;
SIGNAL \EIR~78_combout\ : std_logic;
SIGNAL \EIR[0]~63_combout\ : std_logic;
SIGNAL \EIR[0]~43_combout\ : std_logic;
SIGNAL \EIR~54_combout\ : std_logic;
SIGNAL \EIR[16]~38_combout\ : std_logic;
SIGNAL \EIR[24]~41_combout\ : std_logic;
SIGNAL \MicroCode|Mux59~0_combout\ : std_logic;
SIGNAL \FR[2]~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux82~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux59~1_combout\ : std_logic;
SIGNAL \MicroCode|Set_A[3]~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux22~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux66~9_combout\ : std_logic;
SIGNAL \MicroCode|Mux34~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux60~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux82~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux60~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux60~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux60~3_combout\ : std_logic;
SIGNAL \MicroCode|Mux21~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux59~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux59~3_combout\ : std_logic;
SIGNAL \MicroCode|Mux62~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux62~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux63~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux6~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux23~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux62~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux62~3_combout\ : std_logic;
SIGNAL \MicroCode|Mux61~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux61~2_combout\ : std_logic;
SIGNAL \Mux153~6_combout\ : std_logic;
SIGNAL \Mux139~2_combout\ : std_logic;
SIGNAL \Mux153~5_combout\ : std_logic;
SIGNAL \Mux139~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux76~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux76~1_combout\ : std_logic;
SIGNAL \MicroCode|Add1~1_combout\ : std_logic;
SIGNAL \MicroCode|Add1~0_combout\ : std_logic;
SIGNAL \MicroCode|LessThan2~0_combout\ : std_logic;
SIGNAL \MicroCode|LessThan2~1_combout\ : std_logic;
SIGNAL \MicroCode|LessThan2~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux76~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux76~3_combout\ : std_logic;
SIGNAL \MicroCode|PC_inc~q\ : std_logic;
SIGNAL \PC[0]~24_combout\ : std_logic;
SIGNAL \Mux152~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux80~0_combout\ : std_logic;
SIGNAL \MicroCode|DIa_in~q\ : std_logic;
SIGNAL \DI[0]~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux30~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux63~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux63~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux63~3_combout\ : std_logic;
SIGNAL \MicroCode|AE~q\ : std_logic;
SIGNAL \Address~38_combout\ : std_logic;
SIGNAL \Address[0]~39_combout\ : std_logic;
SIGNAL \Address[0]~40_combout\ : std_logic;
SIGNAL \Address[0]~41_combout\ : std_logic;
SIGNAL \Address[0]~reg0_q\ : std_logic;
SIGNAL \EIR~42_combout\ : std_logic;
SIGNAL \EIR~40_combout\ : std_logic;
SIGNAL \Mux154~0_combout\ : std_logic;
SIGNAL \EIR~37_combout\ : std_logic;
SIGNAL \EIR~62_combout\ : std_logic;
SIGNAL \EIR[16]~39_combout\ : std_logic;
SIGNAL \Mux154~1_combout\ : std_logic;
SIGNAL \Mux152~1_combout\ : std_logic;
SIGNAL \Mux154~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux79~0_combout\ : std_logic;
SIGNAL \MicroCode|SIa_in~q\ : std_logic;
SIGNAL \SI[0]~0_combout\ : std_logic;
SIGNAL \Mux154~3_combout\ : std_logic;
SIGNAL \Mux154~4_combout\ : std_logic;
SIGNAL \Mux154~5_combout\ : std_logic;
SIGNAL \MicroCode|Mux65~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux82~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux82~3_combout\ : std_logic;
SIGNAL \MicroCode|Mux82~4_combout\ : std_logic;
SIGNAL \MicroCode|PCa_in~q\ : std_logic;
SIGNAL \PC[0]~25\ : std_logic;
SIGNAL \PC[1]~26_combout\ : std_logic;
SIGNAL \Mux153~0_combout\ : std_logic;
SIGNAL \Mux153~1_combout\ : std_logic;
SIGNAL \EIR~45_combout\ : std_logic;
SIGNAL \EIR~65_combout\ : std_logic;
SIGNAL \Mux151~0_combout\ : std_logic;
SIGNAL \Address~42_combout\ : std_logic;
SIGNAL \Address[1]~reg0_q\ : std_logic;
SIGNAL \EIR~64_combout\ : std_logic;
SIGNAL \Mux151~1_combout\ : std_logic;
SIGNAL \Mux151~2_combout\ : std_logic;
SIGNAL \EIR~44_combout\ : std_logic;
SIGNAL \Mux153~2_combout\ : std_logic;
SIGNAL \Mux153~3_combout\ : std_logic;
SIGNAL \Mux153~4_combout\ : std_logic;
SIGNAL \Mux153~7_combout\ : std_logic;
SIGNAL \Mux153~9_combout\ : std_logic;
SIGNAL \PC[1]~27\ : std_logic;
SIGNAL \PC[2]~28_combout\ : std_logic;
SIGNAL \Address~43_combout\ : std_logic;
SIGNAL \Address[2]~reg0_q\ : std_logic;
SIGNAL \EIR~66_combout\ : std_logic;
SIGNAL \EIR~47_combout\ : std_logic;
SIGNAL \EIR~46_combout\ : std_logic;
SIGNAL \Mux152~2_combout\ : std_logic;
SIGNAL \Mux152~3_combout\ : std_logic;
SIGNAL \Mux152~4_combout\ : std_logic;
SIGNAL \Mux152~5_combout\ : std_logic;
SIGNAL \Mux152~6_combout\ : std_logic;
SIGNAL \Mux152~7_combout\ : std_logic;
SIGNAL \PC[2]~29\ : std_logic;
SIGNAL \PC[3]~30_combout\ : std_logic;
SIGNAL \EIR~68_combout\ : std_logic;
SIGNAL \DI[3]~feeder_combout\ : std_logic;
SIGNAL \Mux151~3_combout\ : std_logic;
SIGNAL \Mux151~4_combout\ : std_logic;
SIGNAL \Address~44_combout\ : std_logic;
SIGNAL \Address[3]~reg0_q\ : std_logic;
SIGNAL \SI[3]~feeder_combout\ : std_logic;
SIGNAL \EIR~67_combout\ : std_logic;
SIGNAL \EIR~48_combout\ : std_logic;
SIGNAL \Mux151~5_combout\ : std_logic;
SIGNAL \Mux151~6_combout\ : std_logic;
SIGNAL \Mux151~7_combout\ : std_logic;
SIGNAL \Mux151~8_combout\ : std_logic;
SIGNAL \Mux151~10_combout\ : std_logic;
SIGNAL \PC[3]~31\ : std_logic;
SIGNAL \PC[4]~32_combout\ : std_logic;
SIGNAL \Address~45_combout\ : std_logic;
SIGNAL \Address[4]~reg0_q\ : std_logic;
SIGNAL \EIR~49_combout\ : std_logic;
SIGNAL \EIR[28]~feeder_combout\ : std_logic;
SIGNAL \EIR~50_combout\ : std_logic;
SIGNAL \Mux150~0_combout\ : std_logic;
SIGNAL \EIR~69_combout\ : std_logic;
SIGNAL \Mux150~1_combout\ : std_logic;
SIGNAL \Mux150~3_combout\ : std_logic;
SIGNAL \Mux150~2_combout\ : std_logic;
SIGNAL \Mux150~4_combout\ : std_logic;
SIGNAL \Mux150~5_combout\ : std_logic;
SIGNAL \PC[4]~33\ : std_logic;
SIGNAL \PC[5]~34_combout\ : std_logic;
SIGNAL \DI[5]~feeder_combout\ : std_logic;
SIGNAL \Mux149~0_combout\ : std_logic;
SIGNAL \Mux149~1_combout\ : std_logic;
SIGNAL \EIR~71_combout\ : std_logic;
SIGNAL \Address~46_combout\ : std_logic;
SIGNAL \Address[5]~reg0_q\ : std_logic;
SIGNAL \EIR~70_combout\ : std_logic;
SIGNAL \Data[13]~input_o\ : std_logic;
SIGNAL \EIR~51_combout\ : std_logic;
SIGNAL \Mux149~2_combout\ : std_logic;
SIGNAL \Mux149~3_combout\ : std_logic;
SIGNAL \Mux149~4_combout\ : std_logic;
SIGNAL \Mux149~5_combout\ : std_logic;
SIGNAL \Mux149~7_combout\ : std_logic;
SIGNAL \PC[5]~35\ : std_logic;
SIGNAL \PC[6]~36_combout\ : std_logic;
SIGNAL \DI[6]~feeder_combout\ : std_logic;
SIGNAL \Mux148~3_combout\ : std_logic;
SIGNAL \Mux148~2_combout\ : std_logic;
SIGNAL \Mux148~4_combout\ : std_logic;
SIGNAL \EIR~72_combout\ : std_logic;
SIGNAL \Address~47_combout\ : std_logic;
SIGNAL \Address[6]~reg0_q\ : std_logic;
SIGNAL \EIR~53_combout\ : std_logic;
SIGNAL \Data[14]~input_o\ : std_logic;
SIGNAL \EIR~52_combout\ : std_logic;
SIGNAL \Mux148~0_combout\ : std_logic;
SIGNAL \Mux148~1_combout\ : std_logic;
SIGNAL \Mux148~5_combout\ : std_logic;
SIGNAL \PC[6]~37\ : std_logic;
SIGNAL \PC[7]~38_combout\ : std_logic;
SIGNAL \EIR~74_combout\ : std_logic;
SIGNAL \SI[7]~feeder_combout\ : std_logic;
SIGNAL \Mux147~0_combout\ : std_logic;
SIGNAL \Mux147~1_combout\ : std_logic;
SIGNAL \Address~48_combout\ : std_logic;
SIGNAL \Address[7]~reg0_q\ : std_logic;
SIGNAL \EIR~73_combout\ : std_logic;
SIGNAL \Mux147~2_combout\ : std_logic;
SIGNAL \Mux147~3_combout\ : std_logic;
SIGNAL \Mux147~4_combout\ : std_logic;
SIGNAL \Mux147~5_combout\ : std_logic;
SIGNAL \Mux147~7_combout\ : std_logic;
SIGNAL \PC[7]~39\ : std_logic;
SIGNAL \PC[8]~40_combout\ : std_logic;
SIGNAL \DI[8]~feeder_combout\ : std_logic;
SIGNAL \Mux146~2_combout\ : std_logic;
SIGNAL \Mux146~3_combout\ : std_logic;
SIGNAL \Mux146~4_combout\ : std_logic;
SIGNAL \EIR[39]~55_combout\ : std_logic;
SIGNAL \EIR[32]~56_combout\ : std_logic;
SIGNAL \EIR[8]~feeder_combout\ : std_logic;
SIGNAL \Mux146~0_combout\ : std_logic;
SIGNAL \Address~49_combout\ : std_logic;
SIGNAL \Address[8]~reg0_q\ : std_logic;
SIGNAL \Mux146~1_combout\ : std_logic;
SIGNAL \Mux146~5_combout\ : std_logic;
SIGNAL \PC[8]~41\ : std_logic;
SIGNAL \PC[9]~42_combout\ : std_logic;
SIGNAL \Mux145~5_combout\ : std_logic;
SIGNAL \Mux145~7_combout\ : std_logic;
SIGNAL \EIR~75_combout\ : std_logic;
SIGNAL \Address~50_combout\ : std_logic;
SIGNAL \Address[9]~reg0_q\ : std_logic;
SIGNAL \EIR~57_combout\ : std_logic;
SIGNAL \Mux153~8_combout\ : std_logic;
SIGNAL \Mux145~2_combout\ : std_logic;
SIGNAL \Mux145~3_combout\ : std_logic;
SIGNAL \Mux145~4_combout\ : std_logic;
SIGNAL \Mux145~6_combout\ : std_logic;
SIGNAL \PC[9]~43\ : std_logic;
SIGNAL \PC[10]~44_combout\ : std_logic;
SIGNAL \DI[10]~feeder_combout\ : std_logic;
SIGNAL \Address~51_combout\ : std_logic;
SIGNAL \Address[10]~reg0_q\ : std_logic;
SIGNAL \Mux144~0_combout\ : std_logic;
SIGNAL \Mux144~1_combout\ : std_logic;
SIGNAL \Mux144~2_combout\ : std_logic;
SIGNAL \Mux144~3_combout\ : std_logic;
SIGNAL \Mux144~4_combout\ : std_logic;
SIGNAL \Mux144~5_combout\ : std_logic;
SIGNAL \PC[10]~45\ : std_logic;
SIGNAL \PC[11]~46_combout\ : std_logic;
SIGNAL \EIR~76_combout\ : std_logic;
SIGNAL \Address~52_combout\ : std_logic;
SIGNAL \Address[11]~reg0_q\ : std_logic;
SIGNAL \EIR~59_combout\ : std_logic;
SIGNAL \Mux143~2_combout\ : std_logic;
SIGNAL \Mux143~3_combout\ : std_logic;
SIGNAL \Mux143~4_combout\ : std_logic;
SIGNAL \Mux143~5_combout\ : std_logic;
SIGNAL \DI[11]~feeder_combout\ : std_logic;
SIGNAL \Mux143~6_combout\ : std_logic;
SIGNAL \Mux143~8_combout\ : std_logic;
SIGNAL \Mux143~7_combout\ : std_logic;
SIGNAL \PC[11]~47\ : std_logic;
SIGNAL \PC[12]~48_combout\ : std_logic;
SIGNAL \Mux142~2_combout\ : std_logic;
SIGNAL \Mux142~3_combout\ : std_logic;
SIGNAL \Mux142~4_combout\ : std_logic;
SIGNAL \DI[12]~feeder_combout\ : std_logic;
SIGNAL \Address~53_combout\ : std_logic;
SIGNAL \Address[12]~reg0_q\ : std_logic;
SIGNAL \Mux142~0_combout\ : std_logic;
SIGNAL \Mux142~1_combout\ : std_logic;
SIGNAL \Mux142~5_combout\ : std_logic;
SIGNAL \PC[12]~49\ : std_logic;
SIGNAL \PC[13]~50_combout\ : std_logic;
SIGNAL \DI[13]~feeder_combout\ : std_logic;
SIGNAL \Mux141~5_combout\ : std_logic;
SIGNAL \Mux141~7_combout\ : std_logic;
SIGNAL \EIR~77_combout\ : std_logic;
SIGNAL \EIR~60_combout\ : std_logic;
SIGNAL \Mux149~6_combout\ : std_logic;
SIGNAL \Mux141~2_combout\ : std_logic;
SIGNAL \Address~54_combout\ : std_logic;
SIGNAL \Address[13]~reg0_q\ : std_logic;
SIGNAL \Mux141~3_combout\ : std_logic;
SIGNAL \Mux141~4_combout\ : std_logic;
SIGNAL \Mux141~6_combout\ : std_logic;
SIGNAL \PC[13]~51\ : std_logic;
SIGNAL \PC[14]~52_combout\ : std_logic;
SIGNAL \Mux140~3_combout\ : std_logic;
SIGNAL \Mux140~2_combout\ : std_logic;
SIGNAL \Mux140~4_combout\ : std_logic;
SIGNAL \Address~55_combout\ : std_logic;
SIGNAL \Address[14]~reg0_q\ : std_logic;
SIGNAL \Mux140~0_combout\ : std_logic;
SIGNAL \Mux140~1_combout\ : std_logic;
SIGNAL \Mux140~5_combout\ : std_logic;
SIGNAL \PC[14]~53\ : std_logic;
SIGNAL \PC[15]~54_combout\ : std_logic;
SIGNAL \Mux139~1_combout\ : std_logic;
SIGNAL \Address~56_combout\ : std_logic;
SIGNAL \Address[15]~reg0_q\ : std_logic;
SIGNAL \SI[15]~feeder_combout\ : std_logic;
SIGNAL \EIR~61_combout\ : std_logic;
SIGNAL \Mux147~6_combout\ : std_logic;
SIGNAL \Mux139~3_combout\ : std_logic;
SIGNAL \Mux139~4_combout\ : std_logic;
SIGNAL \Mux139~5_combout\ : std_logic;
SIGNAL \DI[15]~feeder_combout\ : std_logic;
SIGNAL \Mux115~0_combout\ : std_logic;
SIGNAL \Mux115~1_combout\ : std_logic;
SIGNAL \Mux115~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux75~0_combout\ : std_logic;
SIGNAL \MicroCode|Z_in~q\ : std_logic;
SIGNAL \Z[8]~0_combout\ : std_logic;
SIGNAL \Mux115~3_combout\ : std_logic;
SIGNAL \Mux120~2_combout\ : std_logic;
SIGNAL \Mux120~3_combout\ : std_logic;
SIGNAL \MicroCode|Mux74~0_combout\ : std_logic;
SIGNAL \MicroCode|Y_in~q\ : std_logic;
SIGNAL \Y[8]~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux65~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux65~2_combout\ : std_logic;
SIGNAL \MicroCode|X_in~q\ : std_logic;
SIGNAL \X[8]~0_combout\ : std_logic;
SIGNAL \IR~9_combout\ : std_logic;
SIGNAL \Mux115~4_combout\ : std_logic;
SIGNAL \Mux115~5_combout\ : std_logic;
SIGNAL \Mux115~6_combout\ : std_logic;
SIGNAL \Mux115~7_combout\ : std_logic;
SIGNAL \Mux115~8_combout\ : std_logic;
SIGNAL \Mux115~9_combout\ : std_logic;
SIGNAL \MicroCode|Mux66~10_combout\ : std_logic;
SIGNAL \MicroCode|Mux66~8_combout\ : std_logic;
SIGNAL \MicroCode|Write~q\ : std_logic;
SIGNAL \MicroCode|Mux64~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux64~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux64~2_combout\ : std_logic;
SIGNAL \MicroCode|DE~q\ : std_logic;
SIGNAL \data_out[0]~0_combout\ : std_logic;
SIGNAL \Mux116~5_combout\ : std_logic;
SIGNAL \IR~10_combout\ : std_logic;
SIGNAL \Mux116~6_combout\ : std_logic;
SIGNAL \Mux116~7_combout\ : std_logic;
SIGNAL \Y[14]~feeder_combout\ : std_logic;
SIGNAL \Mux116~11_combout\ : std_logic;
SIGNAL \Mux116~8_combout\ : std_logic;
SIGNAL \Mux116~9_combout\ : std_logic;
SIGNAL \Mux116~2_combout\ : std_logic;
SIGNAL \Mux116~3_combout\ : std_logic;
SIGNAL \Mux116~4_combout\ : std_logic;
SIGNAL \Mux116~10_combout\ : std_logic;
SIGNAL \data_out[1]~feeder_combout\ : std_logic;
SIGNAL \Mux117~8_combout\ : std_logic;
SIGNAL \Mux117~9_combout\ : std_logic;
SIGNAL \X[13]~feeder_combout\ : std_logic;
SIGNAL \Mux128~2_combout\ : std_logic;
SIGNAL \Mux127~2_combout\ : std_logic;
SIGNAL \Mux121~3_combout\ : std_logic;
SIGNAL \Mux117~6_combout\ : std_logic;
SIGNAL \IR~11_combout\ : std_logic;
SIGNAL \Mux121~2_combout\ : std_logic;
SIGNAL \Mux121~1_combout\ : std_logic;
SIGNAL \Z[13]~feeder_combout\ : std_logic;
SIGNAL \Mux117~3_combout\ : std_logic;
SIGNAL \Mux117~4_combout\ : std_logic;
SIGNAL \Mux117~5_combout\ : std_logic;
SIGNAL \Mux117~7_combout\ : std_logic;
SIGNAL \Y[13]~feeder_combout\ : std_logic;
SIGNAL \Mux121~0_combout\ : std_logic;
SIGNAL \Mux117~0_combout\ : std_logic;
SIGNAL \Mux117~1_combout\ : std_logic;
SIGNAL \Mux117~2_combout\ : std_logic;
SIGNAL \Mux117~10_combout\ : std_logic;
SIGNAL \Mux118~11_combout\ : std_logic;
SIGNAL \Mux126~0_combout\ : std_logic;
SIGNAL \Y[12]~feeder_combout\ : std_logic;
SIGNAL \Mux118~0_combout\ : std_logic;
SIGNAL \Mux118~1_combout\ : std_logic;
SIGNAL \Mux118~2_combout\ : std_logic;
SIGNAL \Mux118~3_combout\ : std_logic;
SIGNAL \Mux118~5_combout\ : std_logic;
SIGNAL \Mux118~4_combout\ : std_logic;
SIGNAL \Mux118~6_combout\ : std_logic;
SIGNAL \Mux118~7_combout\ : std_logic;
SIGNAL \Mux118~8_combout\ : std_logic;
SIGNAL \Mux118~9_combout\ : std_logic;
SIGNAL \Mux118~10_combout\ : std_logic;
SIGNAL \Mux118~12_combout\ : std_logic;
SIGNAL \data_out[3]~feeder_combout\ : std_logic;
SIGNAL \Y[11]~feeder_combout\ : std_logic;
SIGNAL \Mux119~0_combout\ : std_logic;
SIGNAL \Mux119~4_combout\ : std_logic;
SIGNAL \Mux119~5_combout\ : std_logic;
SIGNAL \Mux119~1_combout\ : std_logic;
SIGNAL \Mux119~2_combout\ : std_logic;
SIGNAL \Mux119~3_combout\ : std_logic;
SIGNAL \Mux119~6_combout\ : std_logic;
SIGNAL \Mux119~7_combout\ : std_logic;
SIGNAL \Mux119~8_combout\ : std_logic;
SIGNAL \Z[10]~feeder_combout\ : std_logic;
SIGNAL \Mux120~7_combout\ : std_logic;
SIGNAL \Mux120~8_combout\ : std_logic;
SIGNAL \Mux120~9_combout\ : std_logic;
SIGNAL \Mux120~10_combout\ : std_logic;
SIGNAL \Mux120~11_combout\ : std_logic;
SIGNAL \Mux120~12_combout\ : std_logic;
SIGNAL \Mux120~4_combout\ : std_logic;
SIGNAL \Mux120~5_combout\ : std_logic;
SIGNAL \Mux120~6_combout\ : std_logic;
SIGNAL \Mux120~13_combout\ : std_logic;
SIGNAL \Mux121~7_combout\ : std_logic;
SIGNAL \Z[9]~feeder_combout\ : std_logic;
SIGNAL \Mux121~4_combout\ : std_logic;
SIGNAL \Mux121~5_combout\ : std_logic;
SIGNAL \Mux121~6_combout\ : std_logic;
SIGNAL \Mux121~8_combout\ : std_logic;
SIGNAL \Mux121~9_combout\ : std_logic;
SIGNAL \Mux121~10_combout\ : std_logic;
SIGNAL \Mux121~11_combout\ : std_logic;
SIGNAL \Mux121~12_combout\ : std_logic;
SIGNAL \Mux122~0_combout\ : std_logic;
SIGNAL \Mux122~1_combout\ : std_logic;
SIGNAL \Mux122~2_combout\ : std_logic;
SIGNAL \Z[8]~feeder_combout\ : std_logic;
SIGNAL \Mux122~3_combout\ : std_logic;
SIGNAL \Mux122~4_combout\ : std_logic;
SIGNAL \Mux122~5_combout\ : std_logic;
SIGNAL \Mux122~6_combout\ : std_logic;
SIGNAL \Mux122~7_combout\ : std_logic;
SIGNAL \Mux122~8_combout\ : std_logic;
SIGNAL \Mux122~9_combout\ : std_logic;
SIGNAL \Mux123~0_combout\ : std_logic;
SIGNAL \Mux123~1_combout\ : std_logic;
SIGNAL \Mux123~2_combout\ : std_logic;
SIGNAL \Mux127~4_combout\ : std_logic;
SIGNAL \Mux127~19_combout\ : std_logic;
SIGNAL \Mux127~5_combout\ : std_logic;
SIGNAL \Mux127~6_combout\ : std_logic;
SIGNAL \Mux123~3_combout\ : std_logic;
SIGNAL \Mux123~4_combout\ : std_logic;
SIGNAL \Mux127~7_combout\ : std_logic;
SIGNAL \Mux123~5_combout\ : std_logic;
SIGNAL \Mux123~6_combout\ : std_logic;
SIGNAL \Mux123~7_combout\ : std_logic;
SIGNAL \Mux123~8_combout\ : std_logic;
SIGNAL \Mux123~9_combout\ : std_logic;
SIGNAL \Mux126~1_combout\ : std_logic;
SIGNAL \Mux126~2_combout\ : std_logic;
SIGNAL \Mux124~0_combout\ : std_logic;
SIGNAL \Mux124~1_combout\ : std_logic;
SIGNAL \Mux124~2_combout\ : std_logic;
SIGNAL \Mux124~9_combout\ : std_logic;
SIGNAL \Mux124~10_combout\ : std_logic;
SIGNAL \Mux124~3_combout\ : std_logic;
SIGNAL \Mux126~4_combout\ : std_logic;
SIGNAL \Mux126~5_combout\ : std_logic;
SIGNAL \Mux126~3_combout\ : std_logic;
SIGNAL \Mux124~4_combout\ : std_logic;
SIGNAL \Mux124~5_combout\ : std_logic;
SIGNAL \Mux124~6_combout\ : std_logic;
SIGNAL \Mux124~7_combout\ : std_logic;
SIGNAL \Mux124~8_combout\ : std_logic;
SIGNAL \data_out[9]~feeder_combout\ : std_logic;
SIGNAL \Mux125~3_combout\ : std_logic;
SIGNAL \Mux125~4_combout\ : std_logic;
SIGNAL \Mux125~5_combout\ : std_logic;
SIGNAL \Mux125~6_combout\ : std_logic;
SIGNAL \Mux125~7_combout\ : std_logic;
SIGNAL \Mux125~8_combout\ : std_logic;
SIGNAL \Mux125~0_combout\ : std_logic;
SIGNAL \Mux125~1_combout\ : std_logic;
SIGNAL \Mux125~2_combout\ : std_logic;
SIGNAL \Mux125~9_combout\ : std_logic;
SIGNAL \data_out[10]~feeder_combout\ : std_logic;
SIGNAL \Mux126~11_combout\ : std_logic;
SIGNAL \Mux126~12_combout\ : std_logic;
SIGNAL \Mux126~13_combout\ : std_logic;
SIGNAL \Z[4]~feeder_combout\ : std_logic;
SIGNAL \Mux126~8_combout\ : std_logic;
SIGNAL \Mux126~9_combout\ : std_logic;
SIGNAL \Mux126~6_combout\ : std_logic;
SIGNAL \Mux126~7_combout\ : std_logic;
SIGNAL \Mux126~10_combout\ : std_logic;
SIGNAL \Mux126~14_combout\ : std_logic;
SIGNAL \Mux126~15_combout\ : std_logic;
SIGNAL \data_out[11]~feeder_combout\ : std_logic;
SIGNAL \Mux127~14_combout\ : std_logic;
SIGNAL \Mux127~15_combout\ : std_logic;
SIGNAL \Mux127~11_combout\ : std_logic;
SIGNAL \Mux127~12_combout\ : std_logic;
SIGNAL \Mux127~13_combout\ : std_logic;
SIGNAL \Mux127~16_combout\ : std_logic;
SIGNAL \Mux127~17_combout\ : std_logic;
SIGNAL \Mux127~8_combout\ : std_logic;
SIGNAL \Mux127~9_combout\ : std_logic;
SIGNAL \Mux127~10_combout\ : std_logic;
SIGNAL \Mux127~18_combout\ : std_logic;
SIGNAL \data_out[12]~feeder_combout\ : std_logic;
SIGNAL \Mux130~7_combout\ : std_logic;
SIGNAL \Mux130~8_combout\ : std_logic;
SIGNAL \Mux128~10_combout\ : std_logic;
SIGNAL \Mux128~3_combout\ : std_logic;
SIGNAL \Mux128~4_combout\ : std_logic;
SIGNAL \Mux127~3_combout\ : std_logic;
SIGNAL \Mux128~5_combout\ : std_logic;
SIGNAL \Mux128~7_combout\ : std_logic;
SIGNAL \Mux128~8_combout\ : std_logic;
SIGNAL \Mux128~6_combout\ : std_logic;
SIGNAL \Mux130~5_combout\ : std_logic;
SIGNAL \Mux130~6_combout\ : std_logic;
SIGNAL \Mux128~12_combout\ : std_logic;
SIGNAL \Mux128~9_combout\ : std_logic;
SIGNAL \Mux128~11_combout\ : std_logic;
SIGNAL \data_out[13]~feeder_combout\ : std_logic;
SIGNAL \Mux130~14_combout\ : std_logic;
SIGNAL \Mux130~15_combout\ : std_logic;
SIGNAL \Mux130~13_combout\ : std_logic;
SIGNAL \Mux130~12_combout\ : std_logic;
SIGNAL \Mux129~4_combout\ : std_logic;
SIGNAL \Mux130~11_combout\ : std_logic;
SIGNAL \Mux130~29_combout\ : std_logic;
SIGNAL \Mux129~5_combout\ : std_logic;
SIGNAL \Mux130~10_combout\ : std_logic;
SIGNAL \Mux130~9_combout\ : std_logic;
SIGNAL \Mux129~0_combout\ : std_logic;
SIGNAL \Mux129~1_combout\ : std_logic;
SIGNAL \Mux129~2_combout\ : std_logic;
SIGNAL \Mux129~3_combout\ : std_logic;
SIGNAL \Mux129~6_combout\ : std_logic;
SIGNAL \data_out[14]~feeder_combout\ : std_logic;
SIGNAL \Mux130~23_combout\ : std_logic;
SIGNAL \Mux130~22_combout\ : std_logic;
SIGNAL \Mux130~24_combout\ : std_logic;
SIGNAL \Mux130~25_combout\ : std_logic;
SIGNAL \Mux130~26_combout\ : std_logic;
SIGNAL \Mux130~21_combout\ : std_logic;
SIGNAL \Mux130~30_combout\ : std_logic;
SIGNAL \Mux130~27_combout\ : std_logic;
SIGNAL \Mux130~18_combout\ : std_logic;
SIGNAL \Mux130~19_combout\ : std_logic;
SIGNAL \Mux130~16_combout\ : std_logic;
SIGNAL \Mux130~17_combout\ : std_logic;
SIGNAL \Mux130~20_combout\ : std_logic;
SIGNAL \Mux130~28_combout\ : std_logic;
SIGNAL \data_out[15]~feeder_combout\ : std_logic;
SIGNAL \SI[16]~feeder_combout\ : std_logic;
SIGNAL \Mux138~2_combout\ : std_logic;
SIGNAL \PC[15]~55\ : std_logic;
SIGNAL \PC[16]~56_combout\ : std_logic;
SIGNAL \Mux138~3_combout\ : std_logic;
SIGNAL \Mux138~4_combout\ : std_logic;
SIGNAL \Mux138~5_combout\ : std_logic;
SIGNAL \EIR[40]~feeder_combout\ : std_logic;
SIGNAL \Mux138~7_combout\ : std_logic;
SIGNAL \Mux138~8_combout\ : std_logic;
SIGNAL \Mux138~9_combout\ : std_logic;
SIGNAL \Address[16]~0_combout\ : std_logic;
SIGNAL \Address[16]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[16]~reg0_q\ : std_logic;
SIGNAL \Mux138~6_combout\ : std_logic;
SIGNAL \PC[16]~57\ : std_logic;
SIGNAL \PC[17]~58_combout\ : std_logic;
SIGNAL \DI[17]~feeder_combout\ : std_logic;
SIGNAL \Mux137~0_combout\ : std_logic;
SIGNAL \Mux152~8_combout\ : std_logic;
SIGNAL \Mux133~0_combout\ : std_logic;
SIGNAL \Mux137~1_combout\ : std_logic;
SIGNAL \Mux137~2_combout\ : std_logic;
SIGNAL \Mux137~3_combout\ : std_logic;
SIGNAL \Mux137~4_combout\ : std_logic;
SIGNAL \Address[17]~1_combout\ : std_logic;
SIGNAL \Address[17]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[17]~reg0_q\ : std_logic;
SIGNAL \SI[18]~feeder_combout\ : std_logic;
SIGNAL \PC[17]~59\ : std_logic;
SIGNAL \PC[18]~60_combout\ : std_logic;
SIGNAL \Mux136~2_combout\ : std_logic;
SIGNAL \Mux136~3_combout\ : std_logic;
SIGNAL \Mux136~4_combout\ : std_logic;
SIGNAL \Mux136~5_combout\ : std_logic;
SIGNAL \Mux136~6_combout\ : std_logic;
SIGNAL \Mux136~7_combout\ : std_logic;
SIGNAL \Address[18]~2_combout\ : std_logic;
SIGNAL \Address[18]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[18]~reg0_q\ : std_logic;
SIGNAL \Address[19]~68_combout\ : std_logic;
SIGNAL \Address[19]~66_combout\ : std_logic;
SIGNAL \Mux151~9_combout\ : std_logic;
SIGNAL \Address[19]~57_combout\ : std_logic;
SIGNAL \Address[19]~64_combout\ : std_logic;
SIGNAL \Address[19]~58_combout\ : std_logic;
SIGNAL \PC[18]~61\ : std_logic;
SIGNAL \PC[19]~62_combout\ : std_logic;
SIGNAL \Address[19]~59_combout\ : std_logic;
SIGNAL \Address[19]~65_combout\ : std_logic;
SIGNAL \Address[19]~3_combout\ : std_logic;
SIGNAL \Address[19]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[19]~reg0_q\ : std_logic;
SIGNAL \SI[20]~feeder_combout\ : std_logic;
SIGNAL \PC[19]~63\ : std_logic;
SIGNAL \PC[20]~64_combout\ : std_logic;
SIGNAL \Mux134~2_combout\ : std_logic;
SIGNAL \Mux134~3_combout\ : std_logic;
SIGNAL \Mux134~4_combout\ : std_logic;
SIGNAL \Mux134~5_combout\ : std_logic;
SIGNAL \Mux134~6_combout\ : std_logic;
SIGNAL \Mux134~7_combout\ : std_logic;
SIGNAL \Address[20]~4_combout\ : std_logic;
SIGNAL \Address[20]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[20]~reg0_q\ : std_logic;
SIGNAL \DI[21]~feeder_combout\ : std_logic;
SIGNAL \PC[20]~65\ : std_logic;
SIGNAL \PC[21]~66_combout\ : std_logic;
SIGNAL \Mux133~1_combout\ : std_logic;
SIGNAL \Mux133~2_combout\ : std_logic;
SIGNAL \Mux133~3_combout\ : std_logic;
SIGNAL \Mux133~4_combout\ : std_logic;
SIGNAL \Mux133~5_combout\ : std_logic;
SIGNAL \Address[21]~5_combout\ : std_logic;
SIGNAL \Address[21]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[21]~reg0_q\ : std_logic;
SIGNAL \Mux132~2_combout\ : std_logic;
SIGNAL \Mux132~3_combout\ : std_logic;
SIGNAL \Mux132~4_combout\ : std_logic;
SIGNAL \Mux132~5_combout\ : std_logic;
SIGNAL \SI[22]~feeder_combout\ : std_logic;
SIGNAL \PC[21]~67\ : std_logic;
SIGNAL \PC[22]~68_combout\ : std_logic;
SIGNAL \Mux132~0_combout\ : std_logic;
SIGNAL \Mux132~1_combout\ : std_logic;
SIGNAL \Address[22]~6_combout\ : std_logic;
SIGNAL \Address[22]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[22]~reg0_q\ : std_logic;
SIGNAL \PC[22]~69\ : std_logic;
SIGNAL \PC[23]~70_combout\ : std_logic;
SIGNAL \Address[23]~63_combout\ : std_logic;
SIGNAL \Address[23]~67_combout\ : std_logic;
SIGNAL \Address[23]~60_combout\ : std_logic;
SIGNAL \SI[23]~feeder_combout\ : std_logic;
SIGNAL \Address[23]~61_combout\ : std_logic;
SIGNAL \Address[23]~62_combout\ : std_logic;
SIGNAL \Address[23]~7_combout\ : std_logic;
SIGNAL \Address[23]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[23]~reg0_q\ : std_logic;
SIGNAL \MicroCode|LIC\ : std_logic_vector(1 DOWNTO 0);
SIGNAL IC : std_logic_vector(1 DOWNTO 0);
SIGNAL PC : std_logic_vector(23 DOWNTO 0);
SIGNAL \MicroCode|Set_D\ : std_logic_vector(4 DOWNTO 0);
SIGNAL MRC : std_logic_vector(3 DOWNTO 0);
SIGNAL IR : std_logic_vector(15 DOWNTO 0);
SIGNAL \MicroCode|Set_A\ : std_logic_vector(3 DOWNTO 0);
SIGNAL DI : std_logic_vector(23 DOWNTO 0);
SIGNAL EIR : std_logic_vector(47 DOWNTO 0);
SIGNAL SI : std_logic_vector(23 DOWNTO 0);
SIGNAL data_out : std_logic_vector(15 DOWNTO 0);
SIGNAL AIE : std_logic_vector(1 DOWNTO 0);
SIGNAL FR : std_logic_vector(15 DOWNTO 0);
SIGNAL Z : std_logic_vector(15 DOWNTO 0);
SIGNAL Y : std_logic_vector(15 DOWNTO 0);
SIGNAL X : std_logic_vector(15 DOWNTO 0);
SIGNAL \MicroCode|ALT_INV_AE~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_mClk <= mClk;
ww_rst <= rst;
ww_Enable <= Enable;
Sync <= ww_Sync;
RW <= ww_RW;
Address <= ww_Address;
DataO <= ww_DataO;
ww_HPI_p <= HPI_p;
ww_MPI_p <= MPI_p;
ww_LPI_p <= LPI_p;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (IR(7) & IR(6) & IR(5) & IR(4) & IR(3) & IR(2) & IR(1) & IR(0));

\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\ <= \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\ <= \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\ <= \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\mClk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mClk~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\MicroCode|ALT_INV_AE~q\ <= NOT \MicroCode|AE~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N23
\DataO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(0),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \DataO[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\DataO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(1),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \DataO[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\DataO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(2),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \DataO[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\DataO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(3),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \DataO[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\DataO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(4),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \DataO[4]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\DataO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(5),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \DataO[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\DataO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(6),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \DataO[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\DataO[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(7),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \DataO[7]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\DataO[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(8),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \DataO[8]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\DataO[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(9),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \DataO[9]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\DataO[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(10),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \DataO[10]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\DataO[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(11),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \DataO[11]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\DataO[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(12),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \DataO[12]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\DataO[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(13),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \DataO[13]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\DataO[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(14),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \DataO[14]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\DataO[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(15),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \DataO[15]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\Data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\Data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\Data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\Data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\Data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data[4]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\Data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\Data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\Data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\Data[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\Data[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Data[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data[10]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Data[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data[11]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\Data[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data[12]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\Data[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data[13]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\Data[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\Data[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Data[15]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\Sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \Sync~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \RW~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\Address[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\Address[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[1]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\Address[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\Address[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\Address[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[4]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\Address[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[5]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\Address[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[6]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\Address[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[7]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[7]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\Address[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[8]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[8]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\Address[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[9]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[9]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\Address[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[10]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[10]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\Address[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[11]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[11]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\Address[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[12]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[12]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\Address[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[13]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[13]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\Address[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[14]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[14]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\Address[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[15]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[15]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\Address[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[16]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[16]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\Address[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[17]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[17]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\Address[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[18]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[18]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\Address[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[19]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[19]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\Address[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[20]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[20]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\Address[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[21]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[21]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\Address[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[22]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[22]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\Address[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[23]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[23]~output_o\);

-- Location: IOIBUF_X34_Y12_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G8
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X3_Y0_N1
\Data[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Data(15),
	o => \Data[15]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\mClk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mClk,
	o => \mClk~input_o\);

-- Location: CLKCTRL_G9
\mClk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mClk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mClk~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N1
\Enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\LPI_p~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LPI_p,
	o => \LPI_p~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\MPI_p~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MPI_p,
	o => \MPI_p~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\HPI_p~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HPI_p,
	o => \HPI_p~input_o\);

-- Location: LCCOMB_X10_Y10_N24
\HPIO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HPIO~0_combout\ = (\HPI_p~input_o\ & ((\HPIO~q\) # ((!\MPI~q\ & !\LPI~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HPI_p~input_o\,
	datab => \MPI~q\,
	datac => \HPIO~q\,
	datad => \LPI~q\,
	combout => \HPIO~0_combout\);

-- Location: IOIBUF_X0_Y11_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G3
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X10_Y10_N25
HPIO : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HPIO~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HPIO~q\);

-- Location: LCCOMB_X10_Y10_N0
\process_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_6~3_combout\ = (\HPI_p~input_o\ & (!\MPI~q\ & !\HPIO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HPI_p~input_o\,
	datac => \MPI~q\,
	datad => \HPIO~q\,
	combout => \process_6~3_combout\);

-- Location: LCCOMB_X10_Y10_N4
\MPIO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MPIO~0_combout\ = (\MPI_p~input_o\ & ((\MPIO~q\) # ((!\process_6~3_combout\ & \process_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MPI_p~input_o\,
	datab => \process_6~3_combout\,
	datac => \MPIO~q\,
	datad => \process_6~0_combout\,
	combout => \MPIO~0_combout\);

-- Location: FF_X10_Y10_N5
MPIO : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MPIO~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MPIO~q\);

-- Location: LCCOMB_X10_Y10_N6
\process_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_6~2_combout\ = (!\LPI~q\ & (!\HPI~q\ & (!\MPIO~q\ & \MPI_p~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LPI~q\,
	datab => \HPI~q\,
	datac => \MPIO~q\,
	datad => \MPI_p~input_o\,
	combout => \process_6~2_combout\);

-- Location: LCCOMB_X10_Y10_N26
\MPI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MPI~0_combout\ = (\MPI~q\) # ((\Enable~input_o\ & (!\process_6~1_combout\ & \process_6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datab => \process_6~1_combout\,
	datac => \MPI~q\,
	datad => \process_6~2_combout\,
	combout => \MPI~0_combout\);

-- Location: FF_X10_Y10_N27
MPI : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MPI~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MPI~q\);

-- Location: LCCOMB_X10_Y10_N20
\LPI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPI~0_combout\ = (!\MPI~q\ & (!\process_6~1_combout\ & (!\HPI~q\ & !\process_6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MPI~q\,
	datab => \process_6~1_combout\,
	datac => \HPI~q\,
	datad => \process_6~2_combout\,
	combout => \LPI~0_combout\);

-- Location: LCCOMB_X10_Y10_N2
\LPIO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPIO~0_combout\ = (\LPI_p~input_o\ & ((\LPIO~q\) # (\LPI~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LPI_p~input_o\,
	datac => \LPIO~q\,
	datad => \LPI~0_combout\,
	combout => \LPIO~0_combout\);

-- Location: FF_X10_Y10_N3
LPIO : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LPIO~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPIO~q\);

-- Location: LCCOMB_X10_Y10_N16
\LPI~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPI~1_combout\ = (\LPI_p~input_o\ & (\Enable~input_o\ & !\LPIO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LPI_p~input_o\,
	datac => \Enable~input_o\,
	datad => \LPIO~q\,
	combout => \LPI~1_combout\);

-- Location: LCCOMB_X10_Y10_N10
\LPI~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPI~2_combout\ = (\LPI~q\) # ((\LPI~1_combout\ & \LPI~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LPI~1_combout\,
	datac => \LPI~q\,
	datad => \LPI~0_combout\,
	combout => \LPI~2_combout\);

-- Location: FF_X10_Y10_N11
LPI : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LPI~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPI~q\);

-- Location: LCCOMB_X10_Y10_N18
\process_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_6~1_combout\ = (!\LPI~q\ & (!\HPIO~q\ & (!\MPI~q\ & \HPI_p~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LPI~q\,
	datab => \HPIO~q\,
	datac => \MPI~q\,
	datad => \HPI_p~input_o\,
	combout => \process_6~1_combout\);

-- Location: LCCOMB_X10_Y10_N8
\HPI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HPI~0_combout\ = (\HPI~q\) # ((\Enable~input_o\ & \process_6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datac => \HPI~q\,
	datad => \process_6~1_combout\,
	combout => \HPI~0_combout\);

-- Location: FF_X10_Y10_N9
HPI : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HPI~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HPI~q\);

-- Location: LCCOMB_X10_Y10_N12
\process_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_6~0_combout\ = (!\HPI~q\ & !\LPI~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HPI~q\,
	datad => \LPI~q\,
	combout => \process_6~0_combout\);

-- Location: IOIBUF_X0_Y5_N15
\Data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Data(5),
	o => \Data[5]~input_o\);

-- Location: LCCOMB_X13_Y7_N4
\AIE[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AIE[0]~2_combout\ = (\LPI~q\) # (!\MPI~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MPI~q\,
	datac => \LPI~q\,
	combout => \AIE[0]~2_combout\);

-- Location: LCCOMB_X14_Y9_N16
\RstComplete~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RstComplete~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RstComplete~feeder_combout\);

-- Location: FF_X14_Y9_N17
RstComplete : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RstComplete~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RstComplete~q\);

-- Location: IOIBUF_X0_Y9_N8
\Data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Data(0),
	o => \Data[0]~input_o\);

-- Location: LCCOMB_X13_Y7_N12
\IR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~1_combout\ = (\Data[0]~input_o\ & (((!\MPI~q\ & \process_6~0_combout\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[0]~input_o\,
	datab => \IR~0_combout\,
	datac => \MPI~q\,
	datad => \process_6~0_combout\,
	combout => \IR~1_combout\);

-- Location: FF_X13_Y7_N13
\IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(0));

-- Location: IOIBUF_X0_Y8_N15
\Data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Data(1),
	o => \Data[1]~input_o\);

-- Location: LCCOMB_X13_Y7_N24
\IR~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~7_combout\ = (\Data[1]~input_o\ & (((!\MPI~q\ & \process_6~0_combout\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MPI~q\,
	datab => \Data[1]~input_o\,
	datac => \process_6~0_combout\,
	datad => \IR~0_combout\,
	combout => \IR~7_combout\);

-- Location: FF_X13_Y7_N25
\IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(1));

-- Location: IOIBUF_X0_Y7_N1
\Data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Data(2),
	o => \Data[2]~input_o\);

-- Location: LCCOMB_X13_Y7_N22
\IR~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~6_combout\ = (\Data[2]~input_o\ & (((!\MPI~q\ & \process_6~0_combout\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MPI~q\,
	datab => \Data[2]~input_o\,
	datac => \process_6~0_combout\,
	datad => \IR~0_combout\,
	combout => \IR~6_combout\);

-- Location: FF_X13_Y7_N23
\IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(2));

-- Location: IOIBUF_X0_Y6_N15
\Data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Data(3),
	o => \Data[3]~input_o\);

-- Location: LCCOMB_X10_Y6_N26
\IR~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~5_combout\ = (\Data[3]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \Data[3]~input_o\,
	datac => \IR~0_combout\,
	datad => \MPI~q\,
	combout => \IR~5_combout\);

-- Location: FF_X10_Y6_N27
\IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(3));

-- Location: IOIBUF_X0_Y6_N22
\Data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Data(4),
	o => \Data[4]~input_o\);

-- Location: LCCOMB_X10_Y6_N20
\IR~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~4_combout\ = (\Data[4]~input_o\ & (((!\MPI~q\ & \process_6~0_combout\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[4]~input_o\,
	datab => \MPI~q\,
	datac => \IR~0_combout\,
	datad => \process_6~0_combout\,
	combout => \IR~4_combout\);

-- Location: FF_X10_Y6_N21
\IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(4));

-- Location: IOIBUF_X1_Y0_N22
\Data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Data(6),
	o => \Data[6]~input_o\);

-- Location: LCCOMB_X10_Y6_N24
\IR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~2_combout\ = (\Data[6]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \MPI~q\,
	datac => \IR~0_combout\,
	datad => \Data[6]~input_o\,
	combout => \IR~2_combout\);

-- Location: FF_X10_Y6_N25
\IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(6));

-- Location: IOIBUF_X1_Y0_N15
\Data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Data(7),
	o => \Data[7]~input_o\);

-- Location: LCCOMB_X9_Y8_N10
\IR~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~8_combout\ = (\Data[7]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \Data[7]~input_o\,
	datac => \MPI~q\,
	datad => \IR~0_combout\,
	combout => \IR~8_combout\);

-- Location: FF_X9_Y8_N11
\IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(7));

-- Location: M9K_X15_Y8_N0
\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F00",
	mem_init1 => X"03C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C00080003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0",
	mem_init0 => X"003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F00010000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000F0003C000400010000400010000400010000400010000400010000400010000400010000400004000E00018000A000100008",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Processor16Bits.cpu0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "MCode:MicroCode|altsyncram:Mux48_rtl_0|altsyncram_3o01:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \mClk~inputclkctrl_outclk\,
	ena0 => \rst~input_o\,
	portaaddr => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X14_Y8_N28
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~3_combout\) # ((\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\ & !MRC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => MRC(3),
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X13_Y10_N28
\MRC~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MRC~7_combout\ = (\LessThan0~4_combout\ & (MRC(2) $ (((MRC(1) & MRC(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(1),
	datab => MRC(0),
	datac => MRC(2),
	datad => \LessThan0~4_combout\,
	combout => \MRC~7_combout\);

-- Location: LCCOMB_X14_Y9_N30
\CIR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CIR~0_combout\ = (\Enable~input_o\ & \RstComplete~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datad => \RstComplete~q\,
	combout => \CIR~0_combout\);

-- Location: LCCOMB_X13_Y10_N12
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!MRC(1) & (!MRC(0) & (!MRC(3) & !MRC(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(1),
	datab => MRC(0),
	datac => MRC(3),
	datad => MRC(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X14_Y9_N18
\CIR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CIR~2_combout\ = (\CIR~q\) # ((\CIR~0_combout\ & ((\Equal0~0_combout\) # (!\IR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CIR~0_combout\,
	datab => \IR~0_combout\,
	datac => \CIR~q\,
	datad => \Equal0~0_combout\,
	combout => \CIR~2_combout\);

-- Location: LCCOMB_X14_Y9_N4
\CIR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CIR~1_combout\ = (\CIR~q\ & ((!\Enable~input_o\) # (!\RstComplete~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RstComplete~q\,
	datac => \CIR~q\,
	datad => \Enable~input_o\,
	combout => \CIR~1_combout\);

-- Location: LCCOMB_X9_Y9_N10
\MicroCode|Mux52~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux52~4_combout\ = (IR(4) & ((IR(1)) # ((IR(0)) # (!IR(2))))) # (!IR(4) & (!IR(2) & ((IR(1)) # (IR(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => IR(4),
	datac => IR(0),
	datad => IR(2),
	combout => \MicroCode|Mux52~4_combout\);

-- Location: LCCOMB_X9_Y9_N14
\MicroCode|Mux52~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux52~6_combout\ = (IR(3)) # (IR(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => IR(3),
	datad => IR(5),
	combout => \MicroCode|Mux52~6_combout\);

-- Location: LCCOMB_X9_Y9_N8
\MicroCode|Mux52~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux52~5_combout\ = (IR(1) & ((IR(0)) # ((IR(6))))) # (!IR(1) & ((IR(7)) # (IR(0) $ (IR(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => IR(0),
	datac => IR(6),
	datad => IR(7),
	combout => \MicroCode|Mux52~5_combout\);

-- Location: LCCOMB_X9_Y9_N30
\MicroCode|Mux52~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux52~7_combout\ = (\Equal0~0_combout\ & ((\MicroCode|Mux52~4_combout\) # ((\MicroCode|Mux52~6_combout\) # (\MicroCode|Mux52~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux52~4_combout\,
	datab => \MicroCode|Mux52~6_combout\,
	datac => \MicroCode|Mux52~5_combout\,
	datad => \Equal0~0_combout\,
	combout => \MicroCode|Mux52~7_combout\);

-- Location: FF_X9_Y9_N31
\MicroCode|LIC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux52~7_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|LIC\(1));

-- Location: LCCOMB_X9_Y8_N12
\EIR[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[0]~36_combout\ = (!IC(0) & !IC(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IC(0),
	datac => IC(1),
	combout => \EIR[0]~36_combout\);

-- Location: LCCOMB_X9_Y8_N26
\IC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \IC~3_combout\ = (\process_2~0_combout\ & (!\CIR~q\ & (\RstComplete~q\ & !\EIR[0]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => \CIR~q\,
	datac => \RstComplete~q\,
	datad => \EIR[0]~36_combout\,
	combout => \IC~3_combout\);

-- Location: LCCOMB_X9_Y8_N2
\IC[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \IC[1]~2_combout\ = (\Enable~input_o\ & ((\process_2~1_combout\) # ((!\LessThan0~4_combout\) # (!\RstComplete~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \RstComplete~q\,
	datac => \Enable~input_o\,
	datad => \LessThan0~4_combout\,
	combout => \IC[1]~2_combout\);

-- Location: FF_X9_Y8_N27
\IC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IC~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \IC[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IC(1));

-- Location: LCCOMB_X9_Y8_N0
\IC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IC~0_combout\ = (IC(1)) # (!IC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IC(1),
	datac => IC(0),
	combout => \IC~0_combout\);

-- Location: LCCOMB_X9_Y8_N8
\IC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IC~1_combout\ = (\process_2~0_combout\ & (\IC~0_combout\ & (\RstComplete~q\ & !\CIR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => \IC~0_combout\,
	datac => \RstComplete~q\,
	datad => \CIR~q\,
	combout => \IC~1_combout\);

-- Location: FF_X9_Y8_N9
\IC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IC~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \IC[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IC(0));

-- Location: LCCOMB_X9_Y9_N18
\MicroCode|Mux52~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux52~11_combout\ = (\Equal0~0_combout\ & ((IR(4)) # ((IR(5)) # (IR(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => IR(5),
	datac => IR(6),
	datad => \Equal0~0_combout\,
	combout => \MicroCode|Mux52~11_combout\);

-- Location: LCCOMB_X9_Y9_N4
\MicroCode|Mux52~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux52~8_combout\ = (IR(2) & ((IR(4)) # (!IR(1)))) # (!IR(2) & (!IR(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => IR(4),
	datad => IR(1),
	combout => \MicroCode|Mux52~8_combout\);

-- Location: LCCOMB_X9_Y9_N24
\MicroCode|Mux52~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux52~10_combout\ = (\Equal0~0_combout\ & ((IR(6)) # ((\MicroCode|Mux52~8_combout\) # (IR(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(6),
	datab => \Equal0~0_combout\,
	datac => \MicroCode|Mux52~8_combout\,
	datad => IR(5),
	combout => \MicroCode|Mux52~10_combout\);

-- Location: LCCOMB_X9_Y9_N20
\MicroCode|LIC[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|LIC[0]~0_combout\ = (IR(3) & (\MicroCode|Mux52~11_combout\)) # (!IR(3) & ((\MicroCode|Mux52~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(3),
	datab => \MicroCode|Mux52~11_combout\,
	datad => \MicroCode|Mux52~10_combout\,
	combout => \MicroCode|LIC[0]~0_combout\);

-- Location: LCCOMB_X9_Y9_N12
\MicroCode|Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux57~2_combout\ = (!IR(0) & IR(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => IR(0),
	datad => IR(1),
	combout => \MicroCode|Mux57~2_combout\);

-- Location: LCCOMB_X10_Y6_N8
\MicroCode|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux61~0_combout\ = (!IR(3) & (!IR(4) & (!IR(5) & !IR(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(3),
	datab => IR(4),
	datac => IR(5),
	datad => IR(6),
	combout => \MicroCode|Mux61~0_combout\);

-- Location: LCCOMB_X9_Y9_N22
\MicroCode|Mux52~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux52~9_combout\ = (\Equal0~0_combout\ & (((!IR(2)) # (!\MicroCode|Mux61~0_combout\)) # (!\MicroCode|Mux57~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux57~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \MicroCode|Mux61~0_combout\,
	datad => IR(2),
	combout => \MicroCode|Mux52~9_combout\);

-- Location: FF_X9_Y9_N21
\MicroCode|LIC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|LIC[0]~0_combout\,
	asdata => \MicroCode|Mux52~9_combout\,
	sload => IR(7),
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|LIC\(0));

-- Location: LCCOMB_X9_Y8_N24
\process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (\MicroCode|LIC\(1) & (((!IC(0) & \MicroCode|LIC\(0))) # (!IC(1)))) # (!\MicroCode|LIC\(1) & (!IC(0) & (!IC(1) & \MicroCode|LIC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|LIC\(1),
	datab => IC(0),
	datac => IC(1),
	datad => \MicroCode|LIC\(0),
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X12_Y8_N16
\process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~1_combout\ = (\process_2~0_combout\ & !\CIR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_2~0_combout\,
	datad => \CIR~q\,
	combout => \process_2~1_combout\);

-- Location: LCCOMB_X14_Y9_N8
\CIR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CIR~3_combout\ = (\CIR~1_combout\) # ((\CIR~2_combout\ & (!\process_2~1_combout\ & \LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CIR~2_combout\,
	datab => \CIR~1_combout\,
	datac => \process_2~1_combout\,
	datad => \LessThan0~4_combout\,
	combout => \CIR~3_combout\);

-- Location: FF_X14_Y9_N9
CIR : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CIR~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CIR~q\);

-- Location: LCCOMB_X14_Y9_N12
\MRC[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MRC[3]~9_combout\ = (\Enable~input_o\ & (\RstComplete~q\ & ((\CIR~q\) # (!\process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datab => \RstComplete~q\,
	datac => \CIR~q\,
	datad => \process_2~0_combout\,
	combout => \MRC[3]~9_combout\);

-- Location: FF_X13_Y10_N29
\MRC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MRC~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \MRC[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MRC(2));

-- Location: LCCOMB_X14_Y8_N4
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = MRC(3) $ (\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(3),
	datad => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X14_Y8_N10
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (MRC(1) & (!MRC(0) & (\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\ & \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\))) # (!MRC(1) & ((\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\) # ((!MRC(0) & 
-- \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(1),
	datac => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\,
	datad => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X14_Y8_N6
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!\LessThan0~2_combout\ & ((MRC(2) & (\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\ & \LessThan0~1_combout\)) # (!MRC(2) & ((\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\) # (\LessThan0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(2),
	datab => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X13_Y10_N14
\MRC~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MRC~10_combout\ = (!MRC(0) & ((\LessThan0~3_combout\) # ((!MRC(3) & \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(3),
	datab => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => MRC(0),
	datad => \LessThan0~3_combout\,
	combout => \MRC~10_combout\);

-- Location: FF_X13_Y10_N15
\MRC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MRC~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \MRC[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MRC(0));

-- Location: LCCOMB_X13_Y10_N6
\MRC~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MRC~6_combout\ = (\LessThan0~0_combout\ & (MRC(0) $ ((MRC(1))))) # (!\LessThan0~0_combout\ & (\LessThan0~3_combout\ & (MRC(0) $ (MRC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => MRC(0),
	datac => MRC(1),
	datad => \LessThan0~3_combout\,
	combout => \MRC~6_combout\);

-- Location: FF_X13_Y10_N7
\MRC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MRC~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \MRC[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MRC(1));

-- Location: LCCOMB_X13_Y10_N26
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = MRC(3) $ (((MRC(1) & (MRC(0) & MRC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(1),
	datab => MRC(3),
	datac => MRC(0),
	datad => MRC(2),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X13_Y10_N8
\MRC~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MRC~8_combout\ = (\Add4~0_combout\ & ((\LessThan0~3_combout\) # ((\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\ & !MRC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => MRC(3),
	datad => \LessThan0~3_combout\,
	combout => \MRC~8_combout\);

-- Location: FF_X13_Y10_N9
\MRC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MRC~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \MRC[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MRC(3));

-- Location: LCCOMB_X14_Y8_N8
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!MRC(3) & \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MRC(3),
	datad => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y8_N16
\AIE[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AIE[0]~0_combout\ = (\Enable~input_o\ & (((!\LessThan0~0_combout\ & !\LessThan0~3_combout\)) # (!\RstComplete~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datab => \RstComplete~q\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \AIE[0]~0_combout\);

-- Location: LCCOMB_X13_Y7_N28
\AIE[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AIE[0]~1_combout\ = (\IR~0_combout\ & (\AIE[0]~0_combout\ & ((\MPI~q\) # (!\process_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MPI~q\,
	datab => \IR~0_combout\,
	datac => \process_6~0_combout\,
	datad => \AIE[0]~0_combout\,
	combout => \AIE[0]~1_combout\);

-- Location: FF_X13_Y7_N5
\AIE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AIE[0]~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AIE(0));

-- Location: LCCOMB_X13_Y7_N10
\AIE[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AIE[1]~3_combout\ = !\LPI~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LPI~q\,
	combout => \AIE[1]~3_combout\);

-- Location: FF_X13_Y7_N11
\AIE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AIE[1]~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AIE(1));

-- Location: LCCOMB_X13_Y7_N18
\IR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~0_combout\ = (!AIE(0) & !AIE(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => AIE(0),
	datad => AIE(1),
	combout => \IR~0_combout\);

-- Location: LCCOMB_X10_Y6_N22
\IR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~3_combout\ = (\Data[5]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \Data[5]~input_o\,
	datac => \IR~0_combout\,
	datad => \MPI~q\,
	combout => \IR~3_combout\);

-- Location: FF_X10_Y6_N23
\IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(5));

-- Location: LCCOMB_X9_Y9_N26
\MicroCode|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux55~0_combout\ = (!IR(5) & !IR(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(5),
	datad => IR(6),
	combout => \MicroCode|Mux55~0_combout\);

-- Location: LCCOMB_X11_Y10_N28
\MicroCode|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~0_combout\ = (!IR(7) & (!IR(4) & (!IR(3) & !IR(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(4),
	datac => IR(3),
	datad => IR(2),
	combout => \MicroCode|Mux54~0_combout\);

-- Location: LCCOMB_X13_Y10_N22
\MicroCode|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux7~0_combout\ = (MRC(1) & (!MRC(3) & (!MRC(0) & !MRC(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(1),
	datab => MRC(3),
	datac => MRC(0),
	datad => MRC(2),
	combout => \MicroCode|Mux7~0_combout\);

-- Location: LCCOMB_X12_Y10_N16
\MicroCode|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux10~0_combout\ = (!MRC(3) & (!MRC(0) & (MRC(1) $ (MRC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(1),
	datab => MRC(3),
	datac => MRC(0),
	datad => MRC(2),
	combout => \MicroCode|Mux10~0_combout\);

-- Location: LCCOMB_X11_Y10_N18
\MicroCode|Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~1_combout\ = (\MicroCode|Mux54~0_combout\ & ((IR(0) & ((\MicroCode|Mux10~0_combout\))) # (!IR(0) & (\MicroCode|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => \MicroCode|Mux54~0_combout\,
	datac => \MicroCode|Mux7~0_combout\,
	datad => \MicroCode|Mux10~0_combout\,
	combout => \MicroCode|Mux54~1_combout\);

-- Location: LCCOMB_X10_Y8_N2
\MicroCode|Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~2_combout\ = (IR(1) & \MicroCode|Mux54~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datad => \MicroCode|Mux54~1_combout\,
	combout => \MicroCode|Mux54~2_combout\);

-- Location: LCCOMB_X9_Y10_N0
\MicroCode|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux58~0_combout\ = (IR(2) & (IR(7) $ (!IR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datac => IR(1),
	datad => IR(2),
	combout => \MicroCode|Mux58~0_combout\);

-- Location: LCCOMB_X10_Y8_N10
\MicroCode|Mux54~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~5_combout\ = (!IR(3) & (!IR(7) & ((!IR(0)) # (!IR(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => IR(3),
	datac => IR(7),
	datad => IR(0),
	combout => \MicroCode|Mux54~5_combout\);

-- Location: IOIBUF_X13_Y0_N1
\Data[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Data(12),
	o => \Data[12]~input_o\);

-- Location: LCCOMB_X9_Y8_N6
\IR~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~12_combout\ = (\Data[12]~input_o\ & (((!\MPI~q\ & \process_6~0_combout\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MPI~q\,
	datab => \Data[12]~input_o\,
	datac => \process_6~0_combout\,
	datad => \IR~0_combout\,
	combout => \IR~12_combout\);

-- Location: FF_X9_Y8_N7
\IR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(12));

-- Location: LCCOMB_X12_Y10_N10
\MicroCode|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux31~1_combout\ = (MRC(1) & (!MRC(3) & (!MRC(0) & MRC(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(1),
	datab => MRC(3),
	datac => MRC(0),
	datad => MRC(2),
	combout => \MicroCode|Mux31~1_combout\);

-- Location: LCCOMB_X13_Y10_N30
\MicroCode|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux34~0_combout\ = (!MRC(1) & (!MRC(3) & (MRC(0) & !MRC(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(1),
	datab => MRC(3),
	datac => MRC(0),
	datad => MRC(2),
	combout => \MicroCode|Mux34~0_combout\);

-- Location: LCCOMB_X9_Y10_N14
\MicroCode|Mux54~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~8_combout\ = (IR(0) & ((IR(4) & ((\MicroCode|Mux34~0_combout\))) # (!IR(4) & (\MicroCode|Mux31~1_combout\)))) # (!IR(0) & (((\MicroCode|Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => IR(4),
	datac => \MicroCode|Mux31~1_combout\,
	datad => \MicroCode|Mux34~0_combout\,
	combout => \MicroCode|Mux54~8_combout\);

-- Location: LCCOMB_X9_Y10_N10
\MicroCode|Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~3_combout\ = (IR(7) & (!IR(4) & (!IR(3) & !IR(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(4),
	datac => IR(3),
	datad => IR(0),
	combout => \MicroCode|Mux54~3_combout\);

-- Location: LCCOMB_X9_Y10_N8
\MicroCode|Mux54~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~9_combout\ = (\MicroCode|Mux54~3_combout\ & \MicroCode|Mux34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux54~3_combout\,
	datad => \MicroCode|Mux34~0_combout\,
	combout => \MicroCode|Mux54~9_combout\);

-- Location: LCCOMB_X10_Y8_N18
\MicroCode|Mux54~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~10_combout\ = (\MicroCode|Mux54~5_combout\ & ((\MicroCode|Mux54~8_combout\) # ((IR(12) & \MicroCode|Mux54~9_combout\)))) # (!\MicroCode|Mux54~5_combout\ & (IR(12) & ((\MicroCode|Mux54~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux54~5_combout\,
	datab => IR(12),
	datac => \MicroCode|Mux54~8_combout\,
	datad => \MicroCode|Mux54~9_combout\,
	combout => \MicroCode|Mux54~10_combout\);

-- Location: LCCOMB_X10_Y8_N28
\MicroCode|Mux54~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~11_combout\ = (\MicroCode|Mux55~0_combout\ & ((\MicroCode|Mux54~2_combout\) # ((\MicroCode|Mux58~0_combout\ & \MicroCode|Mux54~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux55~0_combout\,
	datab => \MicroCode|Mux54~2_combout\,
	datac => \MicroCode|Mux58~0_combout\,
	datad => \MicroCode|Mux54~10_combout\,
	combout => \MicroCode|Mux54~11_combout\);

-- Location: FF_X10_Y8_N29
\MicroCode|Set_D[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux54~11_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Set_D\(4));

-- Location: LCCOMB_X11_Y9_N30
\MicroCode|Mux57~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux57~4_combout\ = (IR(4) & \MicroCode|Mux34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(4),
	datad => \MicroCode|Mux34~0_combout\,
	combout => \MicroCode|Mux57~4_combout\);

-- Location: IOIBUF_X16_Y0_N22
\Data[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Data(11),
	o => \Data[11]~input_o\);

-- Location: LCCOMB_X13_Y7_N8
\IR~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~13_combout\ = (\Data[11]~input_o\ & (((!\MPI~q\ & \process_6~0_combout\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MPI~q\,
	datab => \IR~0_combout\,
	datac => \process_6~0_combout\,
	datad => \Data[11]~input_o\,
	combout => \IR~13_combout\);

-- Location: FF_X13_Y7_N9
\IR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~13_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(11));

-- Location: LCCOMB_X9_Y10_N24
\MicroCode|Mux54~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~4_combout\ = (IR(11) & (\MicroCode|Mux34~0_combout\ & \MicroCode|Mux54~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(11),
	datab => \MicroCode|Mux34~0_combout\,
	datad => \MicroCode|Mux54~3_combout\,
	combout => \MicroCode|Mux54~4_combout\);

-- Location: LCCOMB_X13_Y10_N24
\MicroCode|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux17~0_combout\ = (!MRC(3) & ((MRC(0) & ((!MRC(2)))) # (!MRC(0) & (!MRC(1) & MRC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(1),
	datab => MRC(0),
	datac => MRC(3),
	datad => MRC(2),
	combout => \MicroCode|Mux17~0_combout\);

-- Location: LCCOMB_X12_Y10_N28
\MicroCode|Mux54~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~6_combout\ = (!IR(4) & ((IR(0) & (\MicroCode|Mux31~1_combout\)) # (!IR(0) & ((\MicroCode|Mux17~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux31~1_combout\,
	datab => IR(0),
	datac => IR(4),
	datad => \MicroCode|Mux17~0_combout\,
	combout => \MicroCode|Mux54~6_combout\);

-- Location: LCCOMB_X10_Y8_N0
\MicroCode|Mux54~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~7_combout\ = (\MicroCode|Mux54~4_combout\) # ((\MicroCode|Mux54~5_combout\ & ((\MicroCode|Mux57~4_combout\) # (\MicroCode|Mux54~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux54~5_combout\,
	datab => \MicroCode|Mux57~4_combout\,
	datac => \MicroCode|Mux54~4_combout\,
	datad => \MicroCode|Mux54~6_combout\,
	combout => \MicroCode|Mux54~7_combout\);

-- Location: LCCOMB_X10_Y8_N20
\MicroCode|Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux55~1_combout\ = (\MicroCode|Mux55~0_combout\ & ((\MicroCode|Mux54~2_combout\) # ((\MicroCode|Mux58~0_combout\ & \MicroCode|Mux54~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux55~0_combout\,
	datab => \MicroCode|Mux54~2_combout\,
	datac => \MicroCode|Mux58~0_combout\,
	datad => \MicroCode|Mux54~7_combout\,
	combout => \MicroCode|Mux55~1_combout\);

-- Location: FF_X10_Y8_N21
\MicroCode|Set_D[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux55~1_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Set_D\(3));

-- Location: IOIBUF_X16_Y0_N8
\Data[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Data(10),
	o => \Data[10]~input_o\);

-- Location: LCCOMB_X9_Y8_N20
\IR~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~14_combout\ = (\Data[10]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \Data[10]~input_o\,
	datac => \MPI~q\,
	datad => \IR~0_combout\,
	combout => \IR~14_combout\);

-- Location: FF_X9_Y8_N21
\IR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~14_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(10));

-- Location: LCCOMB_X9_Y10_N18
\MicroCode|Mux56~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux56~4_combout\ = (IR(7) & (IR(10) & IR(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datac => IR(10),
	datad => IR(2),
	combout => \MicroCode|Mux56~4_combout\);

-- Location: LCCOMB_X9_Y10_N6
\MicroCode|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux56~0_combout\ = (!IR(0) & (IR(1) & \MicroCode|Mux34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datac => IR(1),
	datad => \MicroCode|Mux34~0_combout\,
	combout => \MicroCode|Mux56~0_combout\);

-- Location: LCCOMB_X12_Y10_N4
\MicroCode|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux31~0_combout\ = (MRC(2) & (!MRC(3) & MRC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MRC(2),
	datac => MRC(3),
	datad => MRC(1),
	combout => \MicroCode|Mux31~0_combout\);

-- Location: LCCOMB_X13_Y10_N4
\MicroCode|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux11~0_combout\ = (!MRC(3) & ((MRC(1) & (!MRC(0) & !MRC(2))) # (!MRC(1) & ((MRC(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(1),
	datab => MRC(3),
	datac => MRC(0),
	datad => MRC(2),
	combout => \MicroCode|Mux11~0_combout\);

-- Location: LCCOMB_X12_Y10_N30
\MicroCode|Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux56~2_combout\ = (IR(0) & ((IR(2) & (\MicroCode|Mux31~0_combout\)) # (!IR(2) & ((\MicroCode|Mux11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => \MicroCode|Mux31~0_combout\,
	datac => IR(0),
	datad => \MicroCode|Mux11~0_combout\,
	combout => \MicroCode|Mux56~2_combout\);

-- Location: LCCOMB_X12_Y10_N8
\MicroCode|Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux56~1_combout\ = (!IR(7) & (IR(1) $ (IR(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datac => IR(1),
	datad => IR(2),
	combout => \MicroCode|Mux56~1_combout\);

-- Location: LCCOMB_X12_Y10_N24
\MicroCode|Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux56~3_combout\ = (\MicroCode|Mux56~1_combout\ & ((\MicroCode|Mux56~2_combout\) # ((!IR(0) & \MicroCode|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux56~2_combout\,
	datab => \MicroCode|Mux56~1_combout\,
	datac => IR(0),
	datad => \MicroCode|Mux10~0_combout\,
	combout => \MicroCode|Mux56~3_combout\);

-- Location: LCCOMB_X10_Y6_N28
\MicroCode|Mux56~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux56~5_combout\ = (\MicroCode|Mux61~0_combout\ & ((\MicroCode|Mux56~3_combout\) # ((\MicroCode|Mux56~4_combout\ & \MicroCode|Mux56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux56~4_combout\,
	datab => \MicroCode|Mux56~0_combout\,
	datac => \MicroCode|Mux61~0_combout\,
	datad => \MicroCode|Mux56~3_combout\,
	combout => \MicroCode|Mux56~5_combout\);

-- Location: FF_X10_Y6_N29
\MicroCode|Set_D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux56~5_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Set_D\(2));

-- Location: LCCOMB_X11_Y7_N26
\Mux120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~0_combout\ = (\MicroCode|Set_D\(2) & ((\MicroCode|Set_D\(3)) # (\MicroCode|Set_D\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(2),
	datad => \MicroCode|Set_D\(4),
	combout => \Mux120~0_combout\);

-- Location: IOIBUF_X18_Y0_N22
\Data[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Data(8),
	o => \Data[8]~input_o\);

-- Location: LCCOMB_X9_Y8_N14
\IR~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~16_combout\ = (\Data[8]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \Data[8]~input_o\,
	datac => \MPI~q\,
	datad => \IR~0_combout\,
	combout => \IR~16_combout\);

-- Location: FF_X9_Y8_N15
\IR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(8));

-- Location: LCCOMB_X13_Y10_N2
\MicroCode|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux19~0_combout\ = (!MRC(0) & (!MRC(3) & ((MRC(1)) # (MRC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(1),
	datab => MRC(0),
	datac => MRC(3),
	datad => MRC(2),
	combout => \MicroCode|Mux19~0_combout\);

-- Location: LCCOMB_X12_Y10_N18
\MicroCode|Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux58~1_combout\ = (IR(0) & (MRC(0) & (\MicroCode|Mux31~0_combout\))) # (!IR(0) & (((\MicroCode|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => \MicroCode|Mux31~0_combout\,
	datac => IR(0),
	datad => \MicroCode|Mux19~0_combout\,
	combout => \MicroCode|Mux58~1_combout\);

-- Location: LCCOMB_X9_Y10_N28
\MicroCode|Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux58~2_combout\ = (\MicroCode|Mux56~0_combout\ & ((IR(8)) # ((!IR(1) & \MicroCode|Mux58~1_combout\)))) # (!\MicroCode|Mux56~0_combout\ & (((!IR(1) & \MicroCode|Mux58~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux56~0_combout\,
	datab => IR(8),
	datac => IR(1),
	datad => \MicroCode|Mux58~1_combout\,
	combout => \MicroCode|Mux58~2_combout\);

-- Location: LCCOMB_X12_Y9_N28
\MicroCode|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux8~0_combout\ = (!MRC(0) & (!MRC(1) & (MRC(2) & !MRC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(1),
	datac => MRC(2),
	datad => MRC(3),
	combout => \MicroCode|Mux8~0_combout\);

-- Location: LCCOMB_X9_Y9_N28
\MicroCode|Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux57~3_combout\ = (\MicroCode|Mux61~0_combout\ & !IR(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Mux61~0_combout\,
	datad => IR(7),
	combout => \MicroCode|Mux57~3_combout\);

-- Location: LCCOMB_X9_Y9_N6
\MicroCode|Mux57~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux57~5_combout\ = (\MicroCode|Mux57~2_combout\ & (!IR(2) & (\MicroCode|Mux8~0_combout\ & \MicroCode|Mux57~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux57~2_combout\,
	datab => IR(2),
	datac => \MicroCode|Mux8~0_combout\,
	datad => \MicroCode|Mux57~3_combout\,
	combout => \MicroCode|Mux57~5_combout\);

-- Location: LCCOMB_X10_Y8_N14
\MicroCode|Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux58~3_combout\ = (\MicroCode|Mux57~5_combout\) # ((\MicroCode|Mux58~2_combout\ & (\MicroCode|Mux58~0_combout\ & \MicroCode|Mux61~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux58~2_combout\,
	datab => \MicroCode|Mux57~5_combout\,
	datac => \MicroCode|Mux58~0_combout\,
	datad => \MicroCode|Mux61~0_combout\,
	combout => \MicroCode|Mux58~3_combout\);

-- Location: FF_X10_Y8_N15
\MicroCode|Set_D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux58~3_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Set_D\(0));

-- Location: LCCOMB_X10_Y8_N8
\Mux130~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~4_combout\ = (!\MicroCode|Set_D\(0) & \MicroCode|Set_D\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(0),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux130~4_combout\);

-- Location: LCCOMB_X10_Y6_N4
\MicroCode|Mux57~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux57~10_combout\ = (\MicroCode|Mux58~0_combout\ & (!IR(6) & (!IR(3) & !IR(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux58~0_combout\,
	datab => IR(6),
	datac => IR(3),
	datad => IR(5),
	combout => \MicroCode|Mux57~10_combout\);

-- Location: IOIBUF_X16_Y0_N1
\Data[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Data(9),
	o => \Data[9]~input_o\);

-- Location: LCCOMB_X13_Y7_N30
\IR~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~15_combout\ = (\Data[9]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \Data[9]~input_o\,
	datac => \MPI~q\,
	datad => \IR~0_combout\,
	combout => \IR~15_combout\);

-- Location: FF_X13_Y7_N31
\IR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~15_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(9));

-- Location: LCCOMB_X9_Y10_N30
\MicroCode|Mux57~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux57~7_combout\ = (!IR(0) & (\MicroCode|Mux34~0_combout\ & ((IR(9)) # (!IR(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => IR(9),
	datac => IR(1),
	datad => \MicroCode|Mux34~0_combout\,
	combout => \MicroCode|Mux57~7_combout\);

-- Location: LCCOMB_X13_Y10_N16
\MicroCode|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux18~0_combout\ = (!MRC(3) & ((MRC(1) & ((!MRC(2)) # (!MRC(0)))) # (!MRC(1) & (MRC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(1),
	datab => MRC(0),
	datac => MRC(3),
	datad => MRC(2),
	combout => \MicroCode|Mux18~0_combout\);

-- Location: LCCOMB_X12_Y10_N22
\MicroCode|Mux57~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux57~6_combout\ = (IR(0) & (MRC(0) & (\MicroCode|Mux31~0_combout\))) # (!IR(0) & (((\MicroCode|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => \MicroCode|Mux31~0_combout\,
	datac => IR(0),
	datad => \MicroCode|Mux18~0_combout\,
	combout => \MicroCode|Mux57~6_combout\);

-- Location: LCCOMB_X9_Y10_N16
\MicroCode|Mux57~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux57~8_combout\ = (IR(1) & (!IR(4) & (\MicroCode|Mux57~7_combout\))) # (!IR(1) & ((IR(4) & (\MicroCode|Mux57~7_combout\)) # (!IR(4) & ((\MicroCode|Mux57~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => IR(4),
	datac => \MicroCode|Mux57~7_combout\,
	datad => \MicroCode|Mux57~6_combout\,
	combout => \MicroCode|Mux57~8_combout\);

-- Location: LCCOMB_X10_Y6_N30
\MicroCode|Mux57~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux57~9_combout\ = (\MicroCode|Mux57~5_combout\) # ((\MicroCode|Mux57~10_combout\ & \MicroCode|Mux57~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Mux57~5_combout\,
	datac => \MicroCode|Mux57~10_combout\,
	datad => \MicroCode|Mux57~8_combout\,
	combout => \MicroCode|Mux57~9_combout\);

-- Location: FF_X10_Y6_N31
\MicroCode|Set_D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux57~9_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Set_D\(1));

-- Location: LCCOMB_X10_Y7_N0
\Mux120~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~1_combout\ = (\MicroCode|Set_D\(4) & (((\Mux130~4_combout\ & !\MicroCode|Set_D\(1))) # (!\Mux120~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(4),
	datab => \Mux120~0_combout\,
	datac => \Mux130~4_combout\,
	datad => \MicroCode|Set_D\(1),
	combout => \Mux120~1_combout\);

-- Location: LCCOMB_X13_Y4_N2
\EIR~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~58_combout\ = (!\process_2~1_combout\ & (((AIE(1) & !AIE(0))) # (!\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AIE(1),
	datab => AIE(0),
	datac => \process_2~1_combout\,
	datad => \LessThan0~4_combout\,
	combout => \EIR~58_combout\);

-- Location: LCCOMB_X13_Y8_N12
\EIR~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~78_combout\ = (!\EIR~58_combout\ & (((\CIR~q\) # (!\Data[15]~input_o\)) # (!\process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => \CIR~q\,
	datac => \Data[15]~input_o\,
	datad => \EIR~58_combout\,
	combout => \EIR~78_combout\);

-- Location: LCCOMB_X14_Y8_N2
\EIR[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[0]~63_combout\ = ((!\LessThan0~3_combout\ & ((MRC(3)) # (!\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # (!\IR~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => MRC(3),
	datac => \IR~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR[0]~63_combout\);

-- Location: LCCOMB_X14_Y8_N26
\EIR[0]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[0]~43_combout\ = (\CIR~0_combout\ & ((\process_2~1_combout\ & (\EIR[0]~36_combout\)) # (!\process_2~1_combout\ & ((\EIR[0]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EIR[0]~36_combout\,
	datab => \process_2~1_combout\,
	datac => \CIR~0_combout\,
	datad => \EIR[0]~63_combout\,
	combout => \EIR[0]~43_combout\);

-- Location: FF_X13_Y8_N13
\EIR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~78_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(15));

-- Location: LCCOMB_X16_Y8_N6
\EIR~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~54_combout\ = (\process_2~1_combout\ & (!\Data[15]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \Data[15]~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~54_combout\);

-- Location: LCCOMB_X13_Y9_N6
\EIR[16]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[16]~38_combout\ = (\CIR~0_combout\ & ((\CIR~q\) # ((!\process_2~0_combout\) # (!\IC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CIR~0_combout\,
	datab => \CIR~q\,
	datac => \IC~0_combout\,
	datad => \process_2~0_combout\,
	combout => \EIR[16]~38_combout\);

-- Location: LCCOMB_X16_Y8_N14
\EIR[24]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[24]~41_combout\ = (\EIR[16]~38_combout\ & ((\process_2~1_combout\) # ((!\LessThan0~0_combout\ & !\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \EIR[16]~38_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR[24]~41_combout\);

-- Location: FF_X16_Y8_N7
\EIR[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~54_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[24]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(31));

-- Location: LCCOMB_X11_Y9_N8
\MicroCode|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux59~0_combout\ = (!IR(6) & (!IR(5) & !IR(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(6),
	datac => IR(5),
	datad => IR(7),
	combout => \MicroCode|Mux59~0_combout\);

-- Location: LCCOMB_X11_Y9_N20
\FR[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FR[2]~0_combout\ = (FR(2)) # ((\rst~input_o\ & \Enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => FR(2),
	datad => \Enable~input_o\,
	combout => \FR[2]~0_combout\);

-- Location: FF_X11_Y9_N21
\FR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FR[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FR(2));

-- Location: LCCOMB_X11_Y9_N2
\MicroCode|Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux82~0_combout\ = (FR(2) & !IR(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => FR(2),
	datac => IR(0),
	combout => \MicroCode|Mux82~0_combout\);

-- Location: LCCOMB_X11_Y9_N4
\MicroCode|Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux59~1_combout\ = (!IR(3) & (!IR(2) & (\MicroCode|Mux57~4_combout\ & !\MicroCode|Mux82~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(3),
	datab => IR(2),
	datac => \MicroCode|Mux57~4_combout\,
	datad => \MicroCode|Mux82~0_combout\,
	combout => \MicroCode|Mux59~1_combout\);

-- Location: LCCOMB_X11_Y9_N26
\MicroCode|Set_A[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Set_A[3]~0_combout\ = (!IR(3) & (IR(2) & ((IR(1)) # (IR(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(3),
	datab => IR(2),
	datac => IR(1),
	datad => IR(0),
	combout => \MicroCode|Set_A[3]~0_combout\);

-- Location: LCCOMB_X12_Y10_N6
\MicroCode|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux22~0_combout\ = (!MRC(3) & ((MRC(1) & ((!MRC(2)))) # (!MRC(1) & ((MRC(0)) # (MRC(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(1),
	datab => MRC(3),
	datac => MRC(0),
	datad => MRC(2),
	combout => \MicroCode|Mux22~0_combout\);

-- Location: LCCOMB_X12_Y9_N14
\MicroCode|Mux66~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux66~9_combout\ = (IR(0) & \MicroCode|Mux34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => IR(0),
	datad => \MicroCode|Mux34~0_combout\,
	combout => \MicroCode|Mux66~9_combout\);

-- Location: LCCOMB_X13_Y10_N10
\MicroCode|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux34~1_combout\ = (MRC(0) & (!MRC(3) & !MRC(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MRC(0),
	datac => MRC(3),
	datad => MRC(2),
	combout => \MicroCode|Mux34~1_combout\);

-- Location: LCCOMB_X12_Y10_N12
\MicroCode|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux60~0_combout\ = (IR(2)) # ((IR(0) & ((\MicroCode|Mux17~0_combout\))) # (!IR(0) & (\MicroCode|Mux34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => IR(0),
	datac => \MicroCode|Mux34~1_combout\,
	datad => \MicroCode|Mux17~0_combout\,
	combout => \MicroCode|Mux60~0_combout\);

-- Location: LCCOMB_X11_Y9_N24
\MicroCode|Mux82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux82~1_combout\ = (\MicroCode|Mux34~0_combout\ & ((IR(1) & ((IR(2)) # (\MicroCode|Mux82~0_combout\))) # (!IR(1) & (IR(2) & \MicroCode|Mux82~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux34~0_combout\,
	datab => IR(1),
	datac => IR(2),
	datad => \MicroCode|Mux82~0_combout\,
	combout => \MicroCode|Mux82~1_combout\);

-- Location: LCCOMB_X11_Y9_N6
\MicroCode|Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux60~1_combout\ = (IR(3) & (((\MicroCode|Mux82~1_combout\)))) # (!IR(3) & (IR(1) & (\MicroCode|Mux60~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(3),
	datab => IR(1),
	datac => \MicroCode|Mux60~0_combout\,
	datad => \MicroCode|Mux82~1_combout\,
	combout => \MicroCode|Mux60~1_combout\);

-- Location: LCCOMB_X11_Y9_N28
\MicroCode|Mux60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux60~2_combout\ = (\MicroCode|Set_A[3]~0_combout\ & ((\MicroCode|Mux60~1_combout\ & ((\MicroCode|Mux66~9_combout\))) # (!\MicroCode|Mux60~1_combout\ & (\MicroCode|Mux22~0_combout\)))) # (!\MicroCode|Set_A[3]~0_combout\ & 
-- (((\MicroCode|Mux60~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A[3]~0_combout\,
	datab => \MicroCode|Mux22~0_combout\,
	datac => \MicroCode|Mux66~9_combout\,
	datad => \MicroCode|Mux60~1_combout\,
	combout => \MicroCode|Mux60~2_combout\);

-- Location: LCCOMB_X11_Y9_N16
\MicroCode|Mux60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux60~3_combout\ = (\MicroCode|Mux59~0_combout\ & ((\MicroCode|Mux59~1_combout\) # ((!IR(4) & \MicroCode|Mux60~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux59~0_combout\,
	datab => IR(4),
	datac => \MicroCode|Mux59~1_combout\,
	datad => \MicroCode|Mux60~2_combout\,
	combout => \MicroCode|Mux60~3_combout\);

-- Location: FF_X11_Y9_N17
\MicroCode|Set_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux60~3_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Set_A\(2));

-- Location: LCCOMB_X12_Y9_N8
\MicroCode|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux21~0_combout\ = (!MRC(3) & ((MRC(0) & (!MRC(2))) # (!MRC(0) & (MRC(2) & MRC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(3),
	datac => MRC(2),
	datad => MRC(1),
	combout => \MicroCode|Mux21~0_combout\);

-- Location: LCCOMB_X12_Y9_N20
\MicroCode|Mux59~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux59~2_combout\ = (\MicroCode|Set_A[3]~0_combout\ & ((\MicroCode|Mux60~1_combout\ & (\MicroCode|Mux66~9_combout\)) # (!\MicroCode|Mux60~1_combout\ & ((\MicroCode|Mux21~0_combout\))))) # (!\MicroCode|Set_A[3]~0_combout\ & 
-- (((\MicroCode|Mux60~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A[3]~0_combout\,
	datab => \MicroCode|Mux66~9_combout\,
	datac => \MicroCode|Mux60~1_combout\,
	datad => \MicroCode|Mux21~0_combout\,
	combout => \MicroCode|Mux59~2_combout\);

-- Location: LCCOMB_X12_Y9_N30
\MicroCode|Mux59~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux59~3_combout\ = (\MicroCode|Mux59~0_combout\ & ((\MicroCode|Mux59~1_combout\) # ((!IR(4) & \MicroCode|Mux59~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux59~0_combout\,
	datab => IR(4),
	datac => \MicroCode|Mux59~1_combout\,
	datad => \MicroCode|Mux59~2_combout\,
	combout => \MicroCode|Mux59~3_combout\);

-- Location: FF_X12_Y9_N31
\MicroCode|Set_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux59~3_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Set_A\(3));

-- Location: LCCOMB_X13_Y10_N20
\MicroCode|Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux62~1_combout\ = (MRC(3) & ((MRC(1)))) # (!MRC(3) & (MRC(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MRC(2),
	datac => MRC(3),
	datad => MRC(1),
	combout => \MicroCode|Mux62~1_combout\);

-- Location: LCCOMB_X12_Y9_N22
\MicroCode|Mux62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux62~2_combout\ = (MRC(1) & (MRC(0) & ((!\MicroCode|Mux62~1_combout\)))) # (!MRC(1) & (\MicroCode|Mux62~1_combout\ & (MRC(0) $ (!IR(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(1),
	datac => IR(2),
	datad => \MicroCode|Mux62~1_combout\,
	combout => \MicroCode|Mux62~2_combout\);

-- Location: LCCOMB_X9_Y9_N0
\MicroCode|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux63~0_combout\ = (!IR(7) & (\MicroCode|Mux61~0_combout\ & (IR(1) $ (IR(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => \MicroCode|Mux61~0_combout\,
	datac => IR(1),
	datad => IR(2),
	combout => \MicroCode|Mux63~0_combout\);

-- Location: LCCOMB_X12_Y9_N26
\MicroCode|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux6~0_combout\ = (MRC(0) & (!MRC(3) & (!MRC(2) & MRC(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(3),
	datac => MRC(2),
	datad => MRC(1),
	combout => \MicroCode|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y9_N0
\MicroCode|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux23~0_combout\ = (MRC(0) & (!MRC(3) & (MRC(2) & !MRC(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(3),
	datac => MRC(2),
	datad => MRC(1),
	combout => \MicroCode|Mux23~0_combout\);

-- Location: LCCOMB_X12_Y9_N16
\MicroCode|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux62~0_combout\ = (IR(2) & ((\MicroCode|Mux23~0_combout\))) # (!IR(2) & (\MicroCode|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(2),
	datac => \MicroCode|Mux6~0_combout\,
	datad => \MicroCode|Mux23~0_combout\,
	combout => \MicroCode|Mux62~0_combout\);

-- Location: LCCOMB_X12_Y9_N4
\MicroCode|Mux62~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux62~3_combout\ = (\MicroCode|Mux63~0_combout\ & ((IR(0) & (\MicroCode|Mux62~2_combout\)) # (!IR(0) & ((\MicroCode|Mux62~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux62~2_combout\,
	datab => IR(0),
	datac => \MicroCode|Mux63~0_combout\,
	datad => \MicroCode|Mux62~0_combout\,
	combout => \MicroCode|Mux62~3_combout\);

-- Location: FF_X12_Y9_N5
\MicroCode|Set_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux62~3_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Set_A\(0));

-- Location: LCCOMB_X9_Y9_N2
\MicroCode|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux61~1_combout\ = (!IR(1) & (IR(2) & (IR(0) & \MicroCode|Mux57~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => IR(2),
	datac => IR(0),
	datad => \MicroCode|Mux57~3_combout\,
	combout => \MicroCode|Mux61~1_combout\);

-- Location: LCCOMB_X12_Y9_N10
\MicroCode|Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux61~2_combout\ = (\MicroCode|Mux23~0_combout\ & \MicroCode|Mux61~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Mux23~0_combout\,
	datac => \MicroCode|Mux61~1_combout\,
	combout => \MicroCode|Mux61~2_combout\);

-- Location: FF_X12_Y9_N11
\MicroCode|Set_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux61~2_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Set_A\(1));

-- Location: LCCOMB_X13_Y7_N16
\Mux153~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~6_combout\ = (\MicroCode|Set_A\(2) & (\MicroCode|Set_A\(3) & (!\MicroCode|Set_A\(0) & !\MicroCode|Set_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => \MicroCode|Set_A\(3),
	datac => \MicroCode|Set_A\(0),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux153~6_combout\);

-- Location: LCCOMB_X12_Y7_N22
\Mux139~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux139~2_combout\ = (\Mux153~6_combout\ & !EIR(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux153~6_combout\,
	datac => EIR(15),
	combout => \Mux139~2_combout\);

-- Location: LCCOMB_X16_Y6_N14
\Mux153~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~5_combout\ = (\MicroCode|Set_A\(2) & ((\MicroCode|Set_A\(0)) # (\MicroCode|Set_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datac => \MicroCode|Set_A\(1),
	datad => \MicroCode|Set_A\(2),
	combout => \Mux153~5_combout\);

-- Location: LCCOMB_X12_Y7_N14
\Mux139~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux139~0_combout\ = (\MicroCode|Set_A\(3) & (!\MicroCode|Set_A\(0) & ((DI(15)) # (\MicroCode|Set_A\(1))))) # (!\MicroCode|Set_A\(3) & (((\MicroCode|Set_A\(0) & !\MicroCode|Set_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(15),
	datab => \MicroCode|Set_A\(3),
	datac => \MicroCode|Set_A\(0),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux139~0_combout\);

-- Location: LCCOMB_X9_Y8_N16
\MicroCode|Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux76~0_combout\ = (!IC(1) & ((\Equal0~0_combout\) # (!IC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IC(1),
	datab => IC(0),
	datad => \Equal0~0_combout\,
	combout => \MicroCode|Mux76~0_combout\);

-- Location: LCCOMB_X9_Y8_N22
\MicroCode|Mux76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux76~1_combout\ = (\MicroCode|Mux76~0_combout\ & (((\MicroCode|LIC\(0) & \MicroCode|LIC\(1))) # (!IC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|LIC\(0),
	datab => IC(0),
	datac => \MicroCode|LIC\(1),
	datad => \MicroCode|Mux76~0_combout\,
	combout => \MicroCode|Mux76~1_combout\);

-- Location: LCCOMB_X8_Y8_N8
\MicroCode|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Add1~1_combout\ = \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (((\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\) # ((\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\) # 
-- (\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\,
	datab => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\,
	datad => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\,
	combout => \MicroCode|Add1~1_combout\);

-- Location: LCCOMB_X8_Y8_N4
\MicroCode|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Add1~0_combout\ = \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\ $ (((\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\) # (\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\,
	datac => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\,
	datad => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\,
	combout => \MicroCode|Add1~0_combout\);

-- Location: LCCOMB_X8_Y8_N18
\MicroCode|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|LessThan2~0_combout\ = (\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\ & (!MRC(1) & ((\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\) # (!MRC(0))))) # (!\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\ & 
-- (!\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\ & ((!MRC(0)) # (!MRC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\,
	datab => MRC(1),
	datac => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\,
	datad => MRC(0),
	combout => \MicroCode|LessThan2~0_combout\);

-- Location: LCCOMB_X8_Y8_N10
\MicroCode|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|LessThan2~1_combout\ = (MRC(2) & (!\MicroCode|Add1~0_combout\ & \MicroCode|LessThan2~0_combout\)) # (!MRC(2) & ((\MicroCode|LessThan2~0_combout\) # (!\MicroCode|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MRC(2),
	datac => \MicroCode|Add1~0_combout\,
	datad => \MicroCode|LessThan2~0_combout\,
	combout => \MicroCode|LessThan2~1_combout\);

-- Location: LCCOMB_X8_Y8_N2
\MicroCode|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|LessThan2~2_combout\ = (MRC(3) & (!\MicroCode|Add1~1_combout\ & \MicroCode|LessThan2~1_combout\)) # (!MRC(3) & ((\MicroCode|LessThan2~1_combout\) # (!\MicroCode|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MRC(3),
	datac => \MicroCode|Add1~1_combout\,
	datad => \MicroCode|LessThan2~1_combout\,
	combout => \MicroCode|LessThan2~2_combout\);

-- Location: LCCOMB_X9_Y9_N16
\MicroCode|Mux76~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux76~2_combout\ = (IR(2) & (\MicroCode|Mux57~3_combout\ & (!IR(0) & !IR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => \MicroCode|Mux57~3_combout\,
	datac => IR(0),
	datad => IR(1),
	combout => \MicroCode|Mux76~2_combout\);

-- Location: LCCOMB_X8_Y8_N16
\MicroCode|Mux76~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux76~3_combout\ = (\MicroCode|Mux76~1_combout\) # (((\MicroCode|Mux8~0_combout\ & \MicroCode|Mux76~2_combout\)) # (!\MicroCode|LessThan2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux76~1_combout\,
	datab => \MicroCode|LessThan2~2_combout\,
	datac => \MicroCode|Mux8~0_combout\,
	datad => \MicroCode|Mux76~2_combout\,
	combout => \MicroCode|Mux76~3_combout\);

-- Location: FF_X8_Y8_N17
\MicroCode|PC_inc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux76~3_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|PC_inc~q\);

-- Location: LCCOMB_X13_Y6_N8
\PC[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[0]~24_combout\ = (\MicroCode|PC_inc~q\ & (PC(0) $ (VCC))) # (!\MicroCode|PC_inc~q\ & (PC(0) & VCC))
-- \PC[0]~25\ = CARRY((\MicroCode|PC_inc~q\ & PC(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|PC_inc~q\,
	datab => PC(0),
	datad => VCC,
	combout => \PC[0]~24_combout\,
	cout => \PC[0]~25\);

-- Location: LCCOMB_X12_Y8_N0
\Mux152~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~0_combout\ = (\MicroCode|Set_A\(3) & ((\MicroCode|Set_A\(2)) # ((!\MicroCode|Set_A\(0) & !\MicroCode|Set_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(3),
	datac => \MicroCode|Set_A\(2),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux152~0_combout\);

-- Location: LCCOMB_X12_Y9_N18
\MicroCode|Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux80~0_combout\ = (\MicroCode|Mux8~0_combout\ & \MicroCode|Mux61~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Mux8~0_combout\,
	datac => \MicroCode|Mux61~1_combout\,
	combout => \MicroCode|Mux80~0_combout\);

-- Location: FF_X12_Y9_N19
\MicroCode|DIa_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux80~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|DIa_in~q\);

-- Location: LCCOMB_X14_Y9_N28
\DI[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DI[0]~0_combout\ = (\Enable~input_o\ & \MicroCode|DIa_in~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datad => \MicroCode|DIa_in~q\,
	combout => \DI[0]~0_combout\);

-- Location: FF_X16_Y5_N25
\DI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux154~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(0));

-- Location: LCCOMB_X13_Y10_N0
\MicroCode|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux30~0_combout\ = (!MRC(3) & (MRC(2) & (MRC(0) $ (MRC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(3),
	datab => MRC(2),
	datac => MRC(0),
	datad => MRC(1),
	combout => \MicroCode|Mux30~0_combout\);

-- Location: LCCOMB_X12_Y10_N26
\MicroCode|Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux63~2_combout\ = (IR(2) & ((IR(0) & (\MicroCode|Mux30~0_combout\)) # (!IR(0) & ((\MicroCode|Mux23~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => IR(0),
	datac => \MicroCode|Mux30~0_combout\,
	datad => \MicroCode|Mux23~0_combout\,
	combout => \MicroCode|Mux63~2_combout\);

-- Location: LCCOMB_X12_Y10_N20
\MicroCode|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux63~1_combout\ = (!IR(2) & ((IR(0) & ((\MicroCode|Mux17~0_combout\))) # (!IR(0) & (\MicroCode|Mux34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => IR(0),
	datac => \MicroCode|Mux34~1_combout\,
	datad => \MicroCode|Mux17~0_combout\,
	combout => \MicroCode|Mux63~1_combout\);

-- Location: LCCOMB_X12_Y10_N2
\MicroCode|Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux63~3_combout\ = (\MicroCode|Mux63~0_combout\ & ((\MicroCode|Mux63~2_combout\) # (\MicroCode|Mux63~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux63~2_combout\,
	datac => \MicroCode|Mux63~0_combout\,
	datad => \MicroCode|Mux63~1_combout\,
	combout => \MicroCode|Mux63~3_combout\);

-- Location: FF_X12_Y10_N3
\MicroCode|AE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux63~3_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|AE~q\);

-- Location: LCCOMB_X13_Y6_N0
\Address~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~38_combout\ = (\MicroCode|AE~q\ & ((\Mux154~5_combout\))) # (!\MicroCode|AE~q\ & (PC(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|AE~q\,
	datab => PC(0),
	datad => \Mux154~5_combout\,
	combout => \Address~38_combout\);

-- Location: LCCOMB_X14_Y8_N18
\Address[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[0]~39_combout\ = (MRC(2) & (\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\ & (MRC(1) $ (!\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\)))) # (!MRC(2) & (!\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\ & (MRC(1) $ 
-- (!\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(2),
	datab => MRC(1),
	datac => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\,
	datad => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\,
	combout => \Address[0]~39_combout\);

-- Location: LCCOMB_X14_Y8_N12
\Address[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[0]~40_combout\ = (!\LessThan0~2_combout\ & (\Address[0]~39_combout\ & (MRC(0) $ (!\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\,
	datac => \LessThan0~2_combout\,
	datad => \Address[0]~39_combout\,
	combout => \Address[0]~40_combout\);

-- Location: LCCOMB_X14_Y8_N22
\Address[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[0]~41_combout\ = (\Enable~input_o\ & ((\MicroCode|AE~q\) # ((\Equal0~0_combout\) # (\Address[0]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datab => \MicroCode|AE~q\,
	datac => \Equal0~0_combout\,
	datad => \Address[0]~40_combout\,
	combout => \Address[0]~41_combout\);

-- Location: FF_X13_Y6_N1
\Address[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~38_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[0]~reg0_q\);

-- Location: LCCOMB_X12_Y8_N14
\EIR~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~42_combout\ = (\process_2~1_combout\ & (((!\Data[0]~input_o\)))) # (!\process_2~1_combout\ & ((\LessThan0~0_combout\) # ((\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \process_2~1_combout\,
	datac => \Data[0]~input_o\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~42_combout\);

-- Location: FF_X12_Y8_N9
\EIR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EIR~42_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(0));

-- Location: LCCOMB_X12_Y8_N18
\EIR~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~40_combout\ = (\process_2~1_combout\ & (!\Data[8]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[8]~input_o\,
	datab => \process_2~1_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~40_combout\);

-- Location: FF_X16_Y8_N1
\EIR[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EIR~40_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EIR[24]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(24));

-- Location: LCCOMB_X12_Y8_N8
\Mux154~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux154~0_combout\ = (\MicroCode|Set_A\(0) & ((\MicroCode|Set_A\(1)) # ((!EIR(24))))) # (!\MicroCode|Set_A\(0) & (!\MicroCode|Set_A\(1) & (!EIR(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(1),
	datac => EIR(0),
	datad => EIR(24),
	combout => \Mux154~0_combout\);

-- Location: LCCOMB_X14_Y7_N24
\EIR~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~37_combout\ = (!\process_2~1_combout\ & (((AIE(1) & AIE(0))) # (!\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AIE(1),
	datab => AIE(0),
	datac => \process_2~1_combout\,
	datad => \LessThan0~4_combout\,
	combout => \EIR~37_combout\);

-- Location: LCCOMB_X14_Y7_N0
\EIR~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~62_combout\ = (!\EIR~37_combout\ & (((\CIR~q\) # (!\process_2~0_combout\)) # (!\Data[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[0]~input_o\,
	datab => \CIR~q\,
	datac => \process_2~0_combout\,
	datad => \EIR~37_combout\,
	combout => \EIR~62_combout\);

-- Location: LCCOMB_X14_Y7_N14
\EIR[16]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[16]~39_combout\ = (\EIR[16]~38_combout\ & (((\process_2~1_combout\) # (!\LessThan0~4_combout\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~0_combout\,
	datab => \process_2~1_combout\,
	datac => \EIR[16]~38_combout\,
	datad => \LessThan0~4_combout\,
	combout => \EIR[16]~39_combout\);

-- Location: FF_X14_Y7_N1
\EIR[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~62_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[16]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(16));

-- Location: LCCOMB_X12_Y8_N2
\Mux154~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux154~1_combout\ = (\MicroCode|Set_A\(1) & ((\Mux154~0_combout\ & (\Address[0]~reg0_q\)) # (!\Mux154~0_combout\ & ((!EIR(16)))))) # (!\MicroCode|Set_A\(1) & (((\Mux154~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[0]~reg0_q\,
	datab => \MicroCode|Set_A\(1),
	datac => \Mux154~0_combout\,
	datad => EIR(16),
	combout => \Mux154~1_combout\);

-- Location: LCCOMB_X11_Y5_N24
\Mux152~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~1_combout\ = (\MicroCode|Set_A\(2) & ((\MicroCode|Set_A\(3)) # (\MicroCode|Set_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datac => \MicroCode|Set_A\(1),
	datad => \MicroCode|Set_A\(2),
	combout => \Mux152~1_combout\);

-- Location: LCCOMB_X12_Y5_N8
\Mux154~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux154~2_combout\ = (!\MicroCode|Set_A\(2) & (\MicroCode|Set_A\(0) & (!\MicroCode|Set_A\(1) & PC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => \MicroCode|Set_A\(0),
	datac => \MicroCode|Set_A\(1),
	datad => PC(0),
	combout => \Mux154~2_combout\);

-- Location: LCCOMB_X12_Y9_N2
\MicroCode|Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux79~0_combout\ = (\MicroCode|Mux7~0_combout\ & \MicroCode|Mux61~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux7~0_combout\,
	datac => \MicroCode|Mux61~1_combout\,
	combout => \MicroCode|Mux79~0_combout\);

-- Location: FF_X12_Y9_N3
\MicroCode|SIa_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux79~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|SIa_in~q\);

-- Location: LCCOMB_X14_Y9_N14
\SI[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SI[0]~0_combout\ = (\MicroCode|SIa_in~q\ & \Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|SIa_in~q\,
	datad => \Enable~input_o\,
	combout => \SI[0]~0_combout\);

-- Location: FF_X16_Y5_N7
\SI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux154~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(0));

-- Location: LCCOMB_X16_Y5_N12
\Mux154~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux154~3_combout\ = (\MicroCode|Set_A\(0) & SI(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(0),
	datad => SI(0),
	combout => \Mux154~3_combout\);

-- Location: LCCOMB_X12_Y5_N18
\Mux154~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux154~4_combout\ = (\MicroCode|Set_A\(3) & (\Mux152~1_combout\)) # (!\MicroCode|Set_A\(3) & ((\Mux152~1_combout\ & ((\Mux154~3_combout\))) # (!\Mux152~1_combout\ & (\Mux154~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \Mux152~1_combout\,
	datac => \Mux154~2_combout\,
	datad => \Mux154~3_combout\,
	combout => \Mux154~4_combout\);

-- Location: LCCOMB_X12_Y5_N16
\Mux154~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux154~5_combout\ = (\Mux152~0_combout\ & ((\Mux154~4_combout\ & ((\Mux154~1_combout\))) # (!\Mux154~4_combout\ & (DI(0))))) # (!\Mux152~0_combout\ & (((\Mux154~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux152~0_combout\,
	datab => DI(0),
	datac => \Mux154~1_combout\,
	datad => \Mux154~4_combout\,
	combout => \Mux154~5_combout\);

-- Location: LCCOMB_X10_Y9_N0
\MicroCode|Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux65~0_combout\ = (IR(2) & IR(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => IR(2),
	datad => IR(0),
	combout => \MicroCode|Mux65~0_combout\);

-- Location: LCCOMB_X10_Y9_N18
\MicroCode|Mux82~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux82~2_combout\ = (!IR(3) & (IR(1) & (\MicroCode|Mux34~0_combout\ & \MicroCode|Mux65~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(3),
	datab => IR(1),
	datac => \MicroCode|Mux34~0_combout\,
	datad => \MicroCode|Mux65~0_combout\,
	combout => \MicroCode|Mux82~2_combout\);

-- Location: LCCOMB_X11_Y9_N12
\MicroCode|Mux82~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux82~3_combout\ = (!IR(4) & ((\MicroCode|Mux82~2_combout\) # ((IR(3) & \MicroCode|Mux82~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(3),
	datab => \MicroCode|Mux82~1_combout\,
	datac => IR(4),
	datad => \MicroCode|Mux82~2_combout\,
	combout => \MicroCode|Mux82~3_combout\);

-- Location: LCCOMB_X11_Y9_N14
\MicroCode|Mux82~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux82~4_combout\ = (\MicroCode|Mux59~0_combout\ & ((\MicroCode|Mux59~1_combout\) # (\MicroCode|Mux82~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Mux59~0_combout\,
	datac => \MicroCode|Mux59~1_combout\,
	datad => \MicroCode|Mux82~3_combout\,
	combout => \MicroCode|Mux82~4_combout\);

-- Location: FF_X11_Y9_N15
\MicroCode|PCa_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux82~4_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|PCa_in~q\);

-- Location: FF_X13_Y6_N9
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[0]~24_combout\,
	asdata => \Mux154~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X13_Y6_N10
\PC[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[1]~26_combout\ = (PC(1) & (!\PC[0]~25\)) # (!PC(1) & ((\PC[0]~25\) # (GND)))
-- \PC[1]~27\ = CARRY((!\PC[0]~25\) # (!PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(1),
	datad => VCC,
	cin => \PC[0]~25\,
	combout => \PC[1]~26_combout\,
	cout => \PC[1]~27\);

-- Location: FF_X12_Y6_N7
\DI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux153~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(1));

-- Location: LCCOMB_X12_Y6_N8
\Mux153~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~0_combout\ = (\MicroCode|Set_A\(0) & (\MicroCode|Set_A\(1) $ ((!\MicroCode|Set_A\(3))))) # (!\MicroCode|Set_A\(0) & (!\MicroCode|Set_A\(1) & (\MicroCode|Set_A\(3) & DI(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(1),
	datac => \MicroCode|Set_A\(3),
	datad => DI(1),
	combout => \Mux153~0_combout\);

-- Location: LCCOMB_X12_Y6_N10
\Mux153~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~1_combout\ = (\Mux153~0_combout\ & (!\MicroCode|Set_A\(2) & ((\MicroCode|Set_A\(3)) # (PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \Mux153~0_combout\,
	datac => \MicroCode|Set_A\(2),
	datad => PC(1),
	combout => \Mux153~1_combout\);

-- Location: LCCOMB_X13_Y8_N14
\EIR~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~45_combout\ = (!\process_2~1_combout\ & (((AIE(0) & !AIE(1))) # (!\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => AIE(0),
	datac => AIE(1),
	datad => \LessThan0~4_combout\,
	combout => \EIR~45_combout\);

-- Location: LCCOMB_X13_Y8_N24
\EIR~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~65_combout\ = (!\EIR~45_combout\ & (((\CIR~q\) # (!\Data[1]~input_o\)) # (!\process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => \CIR~q\,
	datac => \EIR~45_combout\,
	datad => \Data[1]~input_o\,
	combout => \EIR~65_combout\);

-- Location: FF_X13_Y8_N25
\EIR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~65_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(1));

-- Location: LCCOMB_X12_Y9_N24
\Mux151~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~0_combout\ = (\MicroCode|Set_A\(0) & \MicroCode|Set_A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_A\(0),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux151~0_combout\);

-- Location: LCCOMB_X12_Y6_N0
\Address~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~42_combout\ = (\MicroCode|AE~q\ & (((\Mux153~7_combout\) # (\Mux153~1_combout\)))) # (!\MicroCode|AE~q\ & (PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(1),
	datab => \Mux153~7_combout\,
	datac => \MicroCode|AE~q\,
	datad => \Mux153~1_combout\,
	combout => \Address~42_combout\);

-- Location: FF_X12_Y6_N1
\Address[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~42_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[1]~reg0_q\);

-- Location: FF_X10_Y8_N9
\SI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux153~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(1));

-- Location: LCCOMB_X14_Y7_N26
\EIR~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~64_combout\ = (!\EIR~37_combout\ & (((\CIR~q\) # (!\process_2~0_combout\)) # (!\Data[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[1]~input_o\,
	datab => \CIR~q\,
	datac => \process_2~0_combout\,
	datad => \EIR~37_combout\,
	combout => \EIR~64_combout\);

-- Location: FF_X14_Y7_N27
\EIR[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~64_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[16]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(17));

-- Location: LCCOMB_X13_Y7_N14
\Mux151~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~1_combout\ = ((\MicroCode|Set_A\(3) & !\MicroCode|Set_A\(0))) # (!\MicroCode|Set_A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(3),
	datac => \MicroCode|Set_A\(0),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux151~1_combout\);

-- Location: LCCOMB_X13_Y9_N22
\Mux151~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~2_combout\ = (\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(3)) # (!\MicroCode|Set_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(3),
	datac => \MicroCode|Set_A\(0),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux151~2_combout\);

-- Location: LCCOMB_X14_Y8_N24
\EIR~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~44_combout\ = (\process_2~1_combout\ & (!\Data[9]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[9]~input_o\,
	datab => \process_2~1_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~44_combout\);

-- Location: FF_X16_Y8_N11
\EIR[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EIR~44_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EIR[24]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(25));

-- Location: LCCOMB_X16_Y8_N8
\Mux153~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~2_combout\ = (\MicroCode|Set_A\(3) & !EIR(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(3),
	datad => EIR(25),
	combout => \Mux153~2_combout\);

-- Location: LCCOMB_X12_Y7_N28
\Mux153~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~3_combout\ = (\Mux151~1_combout\ & ((\Mux151~2_combout\ & (!EIR(17))) # (!\Mux151~2_combout\ & ((\Mux153~2_combout\))))) # (!\Mux151~1_combout\ & (((!\Mux151~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(17),
	datab => \Mux151~1_combout\,
	datac => \Mux151~2_combout\,
	datad => \Mux153~2_combout\,
	combout => \Mux153~3_combout\);

-- Location: LCCOMB_X12_Y7_N30
\Mux153~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~4_combout\ = (\Mux151~0_combout\ & ((\Mux153~3_combout\ & ((SI(1)))) # (!\Mux153~3_combout\ & (\Address[1]~reg0_q\)))) # (!\Mux151~0_combout\ & (((\Mux153~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~0_combout\,
	datab => \Address[1]~reg0_q\,
	datac => SI(1),
	datad => \Mux153~3_combout\,
	combout => \Mux153~4_combout\);

-- Location: LCCOMB_X12_Y6_N20
\Mux153~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~7_combout\ = (EIR(1) & (\Mux153~5_combout\ & (\Mux153~4_combout\))) # (!EIR(1) & ((\Mux153~6_combout\) # ((\Mux153~5_combout\ & \Mux153~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(1),
	datab => \Mux153~5_combout\,
	datac => \Mux153~4_combout\,
	datad => \Mux153~6_combout\,
	combout => \Mux153~7_combout\);

-- Location: LCCOMB_X12_Y6_N30
\Mux153~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~9_combout\ = (\Mux153~1_combout\) # (\Mux153~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~1_combout\,
	datad => \Mux153~7_combout\,
	combout => \Mux153~9_combout\);

-- Location: FF_X13_Y6_N11
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[1]~26_combout\,
	asdata => \Mux153~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X13_Y6_N12
\PC[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[2]~28_combout\ = (PC(2) & (\PC[1]~27\ $ (GND))) # (!PC(2) & (!\PC[1]~27\ & VCC))
-- \PC[2]~29\ = CARRY((PC(2) & !\PC[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datad => VCC,
	cin => \PC[1]~27\,
	combout => \PC[2]~28_combout\,
	cout => \PC[2]~29\);

-- Location: LCCOMB_X11_Y8_N0
\Address~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~43_combout\ = (\MicroCode|AE~q\ & ((\Mux152~7_combout\))) # (!\MicroCode|AE~q\ & (PC(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datab => \MicroCode|AE~q\,
	datac => \Mux152~7_combout\,
	combout => \Address~43_combout\);

-- Location: FF_X11_Y8_N1
\Address[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~43_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[2]~reg0_q\);

-- Location: LCCOMB_X14_Y7_N20
\EIR~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~66_combout\ = (!\EIR~37_combout\ & (((\CIR~q\) # (!\process_2~0_combout\)) # (!\Data[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[2]~input_o\,
	datab => \CIR~q\,
	datac => \process_2~0_combout\,
	datad => \EIR~37_combout\,
	combout => \EIR~66_combout\);

-- Location: FF_X14_Y7_N21
\EIR[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~66_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[16]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(18));

-- Location: LCCOMB_X13_Y8_N22
\EIR~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~47_combout\ = (\process_2~1_combout\ & (!\Data[2]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \Data[2]~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~47_combout\);

-- Location: FF_X13_Y8_N19
\EIR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EIR~47_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(2));

-- Location: LCCOMB_X13_Y8_N30
\EIR~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~46_combout\ = (\process_2~1_combout\ & (!\Data[10]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \Data[10]~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~46_combout\);

-- Location: FF_X16_Y8_N23
\EIR[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EIR~46_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EIR[24]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(26));

-- Location: LCCOMB_X13_Y8_N18
\Mux152~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~2_combout\ = (\MicroCode|Set_A\(1) & (\MicroCode|Set_A\(0))) # (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0) & ((!EIR(26)))) # (!\MicroCode|Set_A\(0) & (!EIR(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \MicroCode|Set_A\(0),
	datac => EIR(2),
	datad => EIR(26),
	combout => \Mux152~2_combout\);

-- Location: LCCOMB_X12_Y8_N6
\Mux152~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~3_combout\ = (\MicroCode|Set_A\(1) & ((\Mux152~2_combout\ & (\Address[2]~reg0_q\)) # (!\Mux152~2_combout\ & ((!EIR(18)))))) # (!\MicroCode|Set_A\(1) & (((\Mux152~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[2]~reg0_q\,
	datab => \MicroCode|Set_A\(1),
	datac => EIR(18),
	datad => \Mux152~2_combout\,
	combout => \Mux152~3_combout\);

-- Location: FF_X11_Y8_N31
\DI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux152~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(2));

-- Location: LCCOMB_X11_Y5_N10
\Mux152~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~4_combout\ = (\MicroCode|Set_A\(0) & (!\MicroCode|Set_A\(1) & (!\MicroCode|Set_A\(2) & PC(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(1),
	datac => \MicroCode|Set_A\(2),
	datad => PC(2),
	combout => \Mux152~4_combout\);

-- Location: FF_X10_Y8_N3
\SI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux152~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(2));

-- Location: LCCOMB_X11_Y5_N16
\Mux152~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~5_combout\ = (SI(2) & \MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SI(2),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux152~5_combout\);

-- Location: LCCOMB_X11_Y5_N30
\Mux152~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~6_combout\ = (\MicroCode|Set_A\(3) & (((\Mux152~1_combout\)))) # (!\MicroCode|Set_A\(3) & ((\Mux152~1_combout\ & ((\Mux152~5_combout\))) # (!\Mux152~1_combout\ & (\Mux152~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux152~4_combout\,
	datab => \Mux152~5_combout\,
	datac => \MicroCode|Set_A\(3),
	datad => \Mux152~1_combout\,
	combout => \Mux152~6_combout\);

-- Location: LCCOMB_X11_Y8_N4
\Mux152~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~7_combout\ = (\Mux152~0_combout\ & ((\Mux152~6_combout\ & (\Mux152~3_combout\)) # (!\Mux152~6_combout\ & ((DI(2)))))) # (!\Mux152~0_combout\ & (((\Mux152~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux152~3_combout\,
	datab => DI(2),
	datac => \Mux152~0_combout\,
	datad => \Mux152~6_combout\,
	combout => \Mux152~7_combout\);

-- Location: FF_X13_Y6_N13
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[2]~28_combout\,
	asdata => \Mux152~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X13_Y6_N14
\PC[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[3]~30_combout\ = (PC(3) & (!\PC[2]~29\)) # (!PC(3) & ((\PC[2]~29\) # (GND)))
-- \PC[3]~31\ = CARRY((!\PC[2]~29\) # (!PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(3),
	datad => VCC,
	cin => \PC[2]~29\,
	combout => \PC[3]~30_combout\,
	cout => \PC[3]~31\);

-- Location: LCCOMB_X13_Y8_N4
\EIR~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~68_combout\ = (!\EIR~45_combout\ & (((\CIR~q\) # (!\process_2~0_combout\)) # (!\Data[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[3]~input_o\,
	datab => \EIR~45_combout\,
	datac => \process_2~0_combout\,
	datad => \CIR~q\,
	combout => \EIR~68_combout\);

-- Location: FF_X13_Y8_N5
\EIR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~68_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(3));

-- Location: LCCOMB_X17_Y6_N24
\DI[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DI[3]~feeder_combout\ = \Mux151~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux151~10_combout\,
	combout => \DI[3]~feeder_combout\);

-- Location: FF_X17_Y6_N25
\DI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DI[3]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(3));

-- Location: LCCOMB_X17_Y6_N22
\Mux151~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~3_combout\ = (\MicroCode|Set_A\(0) & (\MicroCode|Set_A\(3) $ ((!\MicroCode|Set_A\(1))))) # (!\MicroCode|Set_A\(0) & (\MicroCode|Set_A\(3) & (!\MicroCode|Set_A\(1) & DI(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \MicroCode|Set_A\(1),
	datac => \MicroCode|Set_A\(0),
	datad => DI(3),
	combout => \Mux151~3_combout\);

-- Location: LCCOMB_X16_Y6_N0
\Mux151~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~4_combout\ = (!\MicroCode|Set_A\(2) & (\Mux151~3_combout\ & ((PC(3)) # (\MicroCode|Set_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => PC(3),
	datac => \MicroCode|Set_A\(3),
	datad => \Mux151~3_combout\,
	combout => \Mux151~4_combout\);

-- Location: LCCOMB_X16_Y6_N12
\Address~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~44_combout\ = (\MicroCode|AE~q\ & (((\Mux151~8_combout\) # (\Mux151~4_combout\)))) # (!\MicroCode|AE~q\ & (PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|AE~q\,
	datab => PC(3),
	datac => \Mux151~8_combout\,
	datad => \Mux151~4_combout\,
	combout => \Address~44_combout\);

-- Location: FF_X16_Y6_N13
\Address[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~44_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[3]~reg0_q\);

-- Location: LCCOMB_X16_Y6_N22
\SI[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SI[3]~feeder_combout\ = \Mux151~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux151~10_combout\,
	combout => \SI[3]~feeder_combout\);

-- Location: FF_X16_Y6_N23
\SI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SI[3]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(3));

-- Location: LCCOMB_X14_Y7_N10
\EIR~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~67_combout\ = (!\EIR~37_combout\ & (((\CIR~q\) # (!\process_2~0_combout\)) # (!\Data[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[3]~input_o\,
	datab => \CIR~q\,
	datac => \process_2~0_combout\,
	datad => \EIR~37_combout\,
	combout => \EIR~67_combout\);

-- Location: FF_X14_Y7_N11
\EIR[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~67_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[16]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(19));

-- Location: LCCOMB_X13_Y8_N8
\EIR~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~48_combout\ = (\process_2~1_combout\ & (!\Data[11]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \Data[11]~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~48_combout\);

-- Location: FF_X16_Y8_N9
\EIR[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EIR~48_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EIR[24]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(27));

-- Location: LCCOMB_X16_Y6_N28
\Mux151~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~5_combout\ = (\MicroCode|Set_A\(3) & !EIR(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datac => EIR(27),
	combout => \Mux151~5_combout\);

-- Location: LCCOMB_X16_Y6_N18
\Mux151~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~6_combout\ = (\Mux151~1_combout\ & ((\Mux151~2_combout\ & (!EIR(19))) # (!\Mux151~2_combout\ & ((\Mux151~5_combout\))))) # (!\Mux151~1_combout\ & (!\Mux151~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~1_combout\,
	datab => \Mux151~2_combout\,
	datac => EIR(19),
	datad => \Mux151~5_combout\,
	combout => \Mux151~6_combout\);

-- Location: LCCOMB_X16_Y6_N4
\Mux151~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~7_combout\ = (\Mux151~0_combout\ & ((\Mux151~6_combout\ & ((SI(3)))) # (!\Mux151~6_combout\ & (\Address[3]~reg0_q\)))) # (!\Mux151~0_combout\ & (((\Mux151~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[3]~reg0_q\,
	datab => \Mux151~0_combout\,
	datac => SI(3),
	datad => \Mux151~6_combout\,
	combout => \Mux151~7_combout\);

-- Location: LCCOMB_X16_Y6_N26
\Mux151~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~8_combout\ = (\Mux153~5_combout\ & ((\Mux151~7_combout\) # ((!EIR(3) & \Mux153~6_combout\)))) # (!\Mux153~5_combout\ & (!EIR(3) & ((\Mux153~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~5_combout\,
	datab => EIR(3),
	datac => \Mux151~7_combout\,
	datad => \Mux153~6_combout\,
	combout => \Mux151~8_combout\);

-- Location: LCCOMB_X16_Y6_N20
\Mux151~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~10_combout\ = (\Mux151~8_combout\) # (\Mux151~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux151~8_combout\,
	datad => \Mux151~4_combout\,
	combout => \Mux151~10_combout\);

-- Location: FF_X13_Y6_N15
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[3]~30_combout\,
	asdata => \Mux151~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X13_Y6_N16
\PC[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[4]~32_combout\ = (PC(4) & (\PC[3]~31\ $ (GND))) # (!PC(4) & (!\PC[3]~31\ & VCC))
-- \PC[4]~33\ = CARRY((PC(4) & !\PC[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(4),
	datad => VCC,
	cin => \PC[3]~31\,
	combout => \PC[4]~32_combout\,
	cout => \PC[4]~33\);

-- Location: LCCOMB_X11_Y8_N14
\Address~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~45_combout\ = (\MicroCode|AE~q\ & ((\Mux150~5_combout\))) # (!\MicroCode|AE~q\ & (PC(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => \MicroCode|AE~q\,
	datac => \Mux150~5_combout\,
	combout => \Address~45_combout\);

-- Location: FF_X11_Y8_N15
\Address[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~45_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[4]~reg0_q\);

-- Location: LCCOMB_X14_Y8_N30
\EIR~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~49_combout\ = (\process_2~1_combout\ & (!\Data[12]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[12]~input_o\,
	datab => \process_2~1_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~49_combout\);

-- Location: LCCOMB_X17_Y8_N4
\EIR[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[28]~feeder_combout\ = \EIR~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EIR~49_combout\,
	combout => \EIR[28]~feeder_combout\);

-- Location: FF_X17_Y8_N5
\EIR[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR[28]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[24]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(28));

-- Location: LCCOMB_X13_Y8_N26
\EIR~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~50_combout\ = (\process_2~1_combout\ & (!\Data[4]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \Data[4]~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~50_combout\);

-- Location: FF_X13_Y8_N3
\EIR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EIR~50_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(4));

-- Location: LCCOMB_X13_Y8_N2
\Mux150~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux150~0_combout\ = (\MicroCode|Set_A\(1) & (((\MicroCode|Set_A\(0))))) # (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0) & (!EIR(28))) # (!\MicroCode|Set_A\(0) & ((!EIR(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => EIR(28),
	datac => EIR(4),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux150~0_combout\);

-- Location: LCCOMB_X14_Y7_N12
\EIR~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~69_combout\ = (!\EIR~37_combout\ & (((\CIR~q\) # (!\process_2~0_combout\)) # (!\Data[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[4]~input_o\,
	datab => \CIR~q\,
	datac => \process_2~0_combout\,
	datad => \EIR~37_combout\,
	combout => \EIR~69_combout\);

-- Location: FF_X14_Y7_N13
\EIR[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~69_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[16]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(20));

-- Location: LCCOMB_X12_Y8_N20
\Mux150~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux150~1_combout\ = (\MicroCode|Set_A\(1) & ((\Mux150~0_combout\ & (\Address[4]~reg0_q\)) # (!\Mux150~0_combout\ & ((!EIR(20)))))) # (!\MicroCode|Set_A\(1) & (((\Mux150~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[4]~reg0_q\,
	datab => \MicroCode|Set_A\(1),
	datac => \Mux150~0_combout\,
	datad => EIR(20),
	combout => \Mux150~1_combout\);

-- Location: FF_X11_Y8_N3
\DI[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux150~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(4));

-- Location: FF_X10_Y8_N13
\SI[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux150~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(4));

-- Location: LCCOMB_X11_Y5_N14
\Mux150~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux150~3_combout\ = (\MicroCode|Set_A\(0) & SI(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datad => SI(4),
	combout => \Mux150~3_combout\);

-- Location: LCCOMB_X11_Y5_N28
\Mux150~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux150~2_combout\ = (!\MicroCode|Set_A\(2) & (!\MicroCode|Set_A\(1) & (PC(4) & \MicroCode|Set_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => \MicroCode|Set_A\(1),
	datac => PC(4),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux150~2_combout\);

-- Location: LCCOMB_X11_Y5_N12
\Mux150~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux150~4_combout\ = (\MicroCode|Set_A\(3) & (\Mux152~1_combout\)) # (!\MicroCode|Set_A\(3) & ((\Mux152~1_combout\ & (\Mux150~3_combout\)) # (!\Mux152~1_combout\ & ((\Mux150~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \Mux152~1_combout\,
	datac => \Mux150~3_combout\,
	datad => \Mux150~2_combout\,
	combout => \Mux150~4_combout\);

-- Location: LCCOMB_X11_Y8_N8
\Mux150~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux150~5_combout\ = (\Mux152~0_combout\ & ((\Mux150~4_combout\ & (\Mux150~1_combout\)) # (!\Mux150~4_combout\ & ((DI(4)))))) # (!\Mux152~0_combout\ & (((\Mux150~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux150~1_combout\,
	datab => DI(4),
	datac => \Mux152~0_combout\,
	datad => \Mux150~4_combout\,
	combout => \Mux150~5_combout\);

-- Location: FF_X13_Y6_N17
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[4]~32_combout\,
	asdata => \Mux150~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: LCCOMB_X13_Y6_N18
\PC[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[5]~34_combout\ = (PC(5) & (!\PC[4]~33\)) # (!PC(5) & ((\PC[4]~33\) # (GND)))
-- \PC[5]~35\ = CARRY((!\PC[4]~33\) # (!PC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(5),
	datad => VCC,
	cin => \PC[4]~33\,
	combout => \PC[5]~34_combout\,
	cout => \PC[5]~35\);

-- Location: LCCOMB_X11_Y5_N6
\DI[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DI[5]~feeder_combout\ = \Mux149~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux149~7_combout\,
	combout => \DI[5]~feeder_combout\);

-- Location: FF_X11_Y5_N7
\DI[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DI[5]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(5));

-- Location: LCCOMB_X11_Y5_N0
\Mux149~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~0_combout\ = (\MicroCode|Set_A\(0) & (\MicroCode|Set_A\(1) $ ((!\MicroCode|Set_A\(3))))) # (!\MicroCode|Set_A\(0) & (!\MicroCode|Set_A\(1) & (\MicroCode|Set_A\(3) & DI(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(1),
	datac => \MicroCode|Set_A\(3),
	datad => DI(5),
	combout => \Mux149~0_combout\);

-- Location: LCCOMB_X14_Y6_N28
\Mux149~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~1_combout\ = (!\MicroCode|Set_A\(2) & (\Mux149~0_combout\ & ((PC(5)) # (\MicroCode|Set_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => PC(5),
	datac => \MicroCode|Set_A\(3),
	datad => \Mux149~0_combout\,
	combout => \Mux149~1_combout\);

-- Location: LCCOMB_X13_Y8_N28
\EIR~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~71_combout\ = (!\EIR~45_combout\ & (((\CIR~q\) # (!\process_2~0_combout\)) # (!\Data[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[5]~input_o\,
	datab => \EIR~45_combout\,
	datac => \process_2~0_combout\,
	datad => \CIR~q\,
	combout => \EIR~71_combout\);

-- Location: FF_X13_Y8_N29
\EIR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~71_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(5));

-- Location: FF_X14_Y6_N23
\SI[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux149~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(5));

-- Location: LCCOMB_X14_Y6_N4
\Address~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~46_combout\ = (\MicroCode|AE~q\ & ((\Mux149~1_combout\) # ((\Mux149~5_combout\)))) # (!\MicroCode|AE~q\ & (((PC(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|AE~q\,
	datab => \Mux149~1_combout\,
	datac => PC(5),
	datad => \Mux149~5_combout\,
	combout => \Address~46_combout\);

-- Location: FF_X14_Y6_N5
\Address[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~46_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[5]~reg0_q\);

-- Location: LCCOMB_X14_Y7_N6
\EIR~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~70_combout\ = (!\EIR~37_combout\ & (((\CIR~q\) # (!\process_2~0_combout\)) # (!\Data[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[5]~input_o\,
	datab => \CIR~q\,
	datac => \process_2~0_combout\,
	datad => \EIR~37_combout\,
	combout => \EIR~70_combout\);

-- Location: FF_X14_Y7_N7
\EIR[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~70_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[16]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(21));

-- Location: IOIBUF_X13_Y0_N15
\Data[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Data(13),
	o => \Data[13]~input_o\);

-- Location: LCCOMB_X14_Y8_N20
\EIR~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~51_combout\ = (\process_2~1_combout\ & (!\Data[13]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[13]~input_o\,
	datab => \process_2~1_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~51_combout\);

-- Location: FF_X16_Y8_N25
\EIR[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EIR~51_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EIR[24]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(29));

-- Location: LCCOMB_X16_Y8_N30
\Mux149~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~2_combout\ = (\MicroCode|Set_A\(3) & !EIR(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(3),
	datad => EIR(29),
	combout => \Mux149~2_combout\);

-- Location: LCCOMB_X14_Y6_N0
\Mux149~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~3_combout\ = (\Mux151~2_combout\ & (\Mux151~1_combout\ & (!EIR(21)))) # (!\Mux151~2_combout\ & (((\Mux149~2_combout\)) # (!\Mux151~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~2_combout\,
	datab => \Mux151~1_combout\,
	datac => EIR(21),
	datad => \Mux149~2_combout\,
	combout => \Mux149~3_combout\);

-- Location: LCCOMB_X14_Y6_N2
\Mux149~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~4_combout\ = (\Mux151~0_combout\ & ((\Mux149~3_combout\ & (SI(5))) # (!\Mux149~3_combout\ & ((\Address[5]~reg0_q\))))) # (!\Mux151~0_combout\ & (((\Mux149~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SI(5),
	datab => \Mux151~0_combout\,
	datac => \Address[5]~reg0_q\,
	datad => \Mux149~3_combout\,
	combout => \Mux149~4_combout\);

-- Location: LCCOMB_X14_Y6_N16
\Mux149~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~5_combout\ = (\Mux153~5_combout\ & ((\Mux149~4_combout\) # ((!EIR(5) & \Mux153~6_combout\)))) # (!\Mux153~5_combout\ & (!EIR(5) & (\Mux153~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~5_combout\,
	datab => EIR(5),
	datac => \Mux153~6_combout\,
	datad => \Mux149~4_combout\,
	combout => \Mux149~5_combout\);

-- Location: LCCOMB_X14_Y6_N8
\Mux149~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~7_combout\ = (\Mux149~1_combout\) # (\Mux149~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux149~1_combout\,
	datad => \Mux149~5_combout\,
	combout => \Mux149~7_combout\);

-- Location: FF_X13_Y6_N19
\PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[5]~34_combout\,
	asdata => \Mux149~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(5));

-- Location: LCCOMB_X13_Y6_N20
\PC[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[6]~36_combout\ = (PC(6) & (\PC[5]~35\ $ (GND))) # (!PC(6) & (!\PC[5]~35\ & VCC))
-- \PC[6]~37\ = CARRY((PC(6) & !\PC[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(6),
	datad => VCC,
	cin => \PC[5]~35\,
	combout => \PC[6]~36_combout\,
	cout => \PC[6]~37\);

-- Location: LCCOMB_X11_Y5_N22
\DI[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DI[6]~feeder_combout\ = \Mux148~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux148~5_combout\,
	combout => \DI[6]~feeder_combout\);

-- Location: FF_X11_Y5_N23
\DI[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DI[6]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(6));

-- Location: FF_X10_Y8_N27
\SI[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux148~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(6));

-- Location: LCCOMB_X11_Y5_N26
\Mux148~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux148~3_combout\ = (\MicroCode|Set_A\(0) & SI(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datad => SI(6),
	combout => \Mux148~3_combout\);

-- Location: LCCOMB_X11_Y5_N20
\Mux148~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux148~2_combout\ = (!\MicroCode|Set_A\(2) & (!\MicroCode|Set_A\(1) & (PC(6) & \MicroCode|Set_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => \MicroCode|Set_A\(1),
	datac => PC(6),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux148~2_combout\);

-- Location: LCCOMB_X11_Y5_N8
\Mux148~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux148~4_combout\ = (\MicroCode|Set_A\(3) & (\Mux152~1_combout\)) # (!\MicroCode|Set_A\(3) & ((\Mux152~1_combout\ & (\Mux148~3_combout\)) # (!\Mux152~1_combout\ & ((\Mux148~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \Mux152~1_combout\,
	datac => \Mux148~3_combout\,
	datad => \Mux148~2_combout\,
	combout => \Mux148~4_combout\);

-- Location: LCCOMB_X14_Y7_N4
\EIR~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~72_combout\ = (!\EIR~37_combout\ & (((\CIR~q\) # (!\process_2~0_combout\)) # (!\Data[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[6]~input_o\,
	datab => \CIR~q\,
	datac => \process_2~0_combout\,
	datad => \EIR~37_combout\,
	combout => \EIR~72_combout\);

-- Location: FF_X14_Y7_N5
\EIR[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~72_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[16]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(22));

-- Location: LCCOMB_X13_Y6_N6
\Address~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~47_combout\ = (\MicroCode|AE~q\ & ((\Mux148~5_combout\))) # (!\MicroCode|AE~q\ & (PC(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(6),
	datac => \MicroCode|AE~q\,
	datad => \Mux148~5_combout\,
	combout => \Address~47_combout\);

-- Location: FF_X13_Y6_N7
\Address[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~47_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[6]~reg0_q\);

-- Location: LCCOMB_X13_Y8_N0
\EIR~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~53_combout\ = (\process_2~1_combout\ & (!\Data[6]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \Data[6]~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~53_combout\);

-- Location: FF_X13_Y8_N11
\EIR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EIR~53_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(6));

-- Location: IOIBUF_X7_Y0_N1
\Data[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Data(14),
	o => \Data[14]~input_o\);

-- Location: LCCOMB_X14_Y8_N14
\EIR~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~52_combout\ = (\process_2~1_combout\ & (!\Data[14]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[14]~input_o\,
	datab => \process_2~1_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~52_combout\);

-- Location: FF_X16_Y8_N21
\EIR[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EIR~52_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EIR[24]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(30));

-- Location: LCCOMB_X13_Y8_N10
\Mux148~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux148~0_combout\ = (\MicroCode|Set_A\(1) & (\MicroCode|Set_A\(0))) # (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0) & ((!EIR(30)))) # (!\MicroCode|Set_A\(0) & (!EIR(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \MicroCode|Set_A\(0),
	datac => EIR(6),
	datad => EIR(30),
	combout => \Mux148~0_combout\);

-- Location: LCCOMB_X13_Y8_N20
\Mux148~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux148~1_combout\ = (\MicroCode|Set_A\(1) & ((\Mux148~0_combout\ & ((\Address[6]~reg0_q\))) # (!\Mux148~0_combout\ & (!EIR(22))))) # (!\MicroCode|Set_A\(1) & (((\Mux148~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => EIR(22),
	datac => \Address[6]~reg0_q\,
	datad => \Mux148~0_combout\,
	combout => \Mux148~1_combout\);

-- Location: LCCOMB_X11_Y5_N18
\Mux148~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux148~5_combout\ = (\Mux152~0_combout\ & ((\Mux148~4_combout\ & ((\Mux148~1_combout\))) # (!\Mux148~4_combout\ & (DI(6))))) # (!\Mux152~0_combout\ & (((\Mux148~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(6),
	datab => \Mux152~0_combout\,
	datac => \Mux148~4_combout\,
	datad => \Mux148~1_combout\,
	combout => \Mux148~5_combout\);

-- Location: FF_X13_Y6_N21
\PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[6]~36_combout\,
	asdata => \Mux148~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(6));

-- Location: LCCOMB_X13_Y6_N22
\PC[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[7]~38_combout\ = (PC(7) & (!\PC[6]~37\)) # (!PC(7) & ((\PC[6]~37\) # (GND)))
-- \PC[7]~39\ = CARRY((!\PC[6]~37\) # (!PC(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(7),
	datad => VCC,
	cin => \PC[6]~37\,
	combout => \PC[7]~38_combout\,
	cout => \PC[7]~39\);

-- Location: LCCOMB_X14_Y7_N8
\EIR~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~74_combout\ = (!\EIR~45_combout\ & (((\CIR~q\) # (!\process_2~0_combout\)) # (!\Data[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[7]~input_o\,
	datab => \CIR~q\,
	datac => \process_2~0_combout\,
	datad => \EIR~45_combout\,
	combout => \EIR~74_combout\);

-- Location: FF_X14_Y7_N9
\EIR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~74_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(7));

-- Location: LCCOMB_X14_Y6_N18
\SI[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SI[7]~feeder_combout\ = \Mux147~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux147~7_combout\,
	combout => \SI[7]~feeder_combout\);

-- Location: FF_X14_Y6_N19
\SI[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SI[7]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(7));

-- Location: FF_X12_Y6_N23
\DI[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux147~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(7));

-- Location: LCCOMB_X12_Y6_N22
\Mux147~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~0_combout\ = (\MicroCode|Set_A\(0) & (\MicroCode|Set_A\(3) $ ((!\MicroCode|Set_A\(1))))) # (!\MicroCode|Set_A\(0) & (\MicroCode|Set_A\(3) & (!\MicroCode|Set_A\(1) & DI(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \MicroCode|Set_A\(1),
	datac => DI(7),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux147~0_combout\);

-- Location: LCCOMB_X11_Y9_N22
\Mux147~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~1_combout\ = (!\MicroCode|Set_A\(2) & (\Mux147~0_combout\ & ((\MicroCode|Set_A\(3)) # (PC(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \MicroCode|Set_A\(2),
	datac => PC(7),
	datad => \Mux147~0_combout\,
	combout => \Mux147~1_combout\);

-- Location: LCCOMB_X11_Y8_N12
\Address~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~48_combout\ = (\MicroCode|AE~q\ & (((\Mux147~1_combout\) # (\Mux147~5_combout\)))) # (!\MicroCode|AE~q\ & (PC(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(7),
	datab => \MicroCode|AE~q\,
	datac => \Mux147~1_combout\,
	datad => \Mux147~5_combout\,
	combout => \Address~48_combout\);

-- Location: FF_X11_Y8_N13
\Address[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~48_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[7]~reg0_q\);

-- Location: LCCOMB_X14_Y7_N22
\EIR~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~73_combout\ = (!\EIR~37_combout\ & (((\CIR~q\) # (!\process_2~0_combout\)) # (!\Data[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[7]~input_o\,
	datab => \CIR~q\,
	datac => \process_2~0_combout\,
	datad => \EIR~37_combout\,
	combout => \EIR~73_combout\);

-- Location: FF_X14_Y7_N23
\EIR[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~73_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[16]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(23));

-- Location: LCCOMB_X16_Y8_N4
\Mux147~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~2_combout\ = (\MicroCode|Set_A\(3) & !EIR(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_A\(3),
	datad => EIR(31),
	combout => \Mux147~2_combout\);

-- Location: LCCOMB_X14_Y7_N28
\Mux147~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~3_combout\ = (\Mux151~1_combout\ & ((\Mux151~2_combout\ & (!EIR(23))) # (!\Mux151~2_combout\ & ((\Mux147~2_combout\))))) # (!\Mux151~1_combout\ & (!\Mux151~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~1_combout\,
	datab => \Mux151~2_combout\,
	datac => EIR(23),
	datad => \Mux147~2_combout\,
	combout => \Mux147~3_combout\);

-- Location: LCCOMB_X14_Y7_N18
\Mux147~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~4_combout\ = (\Mux151~0_combout\ & ((\Mux147~3_combout\ & (SI(7))) # (!\Mux147~3_combout\ & ((\Address[7]~reg0_q\))))) # (!\Mux151~0_combout\ & (((\Mux147~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~0_combout\,
	datab => SI(7),
	datac => \Address[7]~reg0_q\,
	datad => \Mux147~3_combout\,
	combout => \Mux147~4_combout\);

-- Location: LCCOMB_X14_Y7_N30
\Mux147~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~5_combout\ = (\Mux153~6_combout\ & (((\Mux153~5_combout\ & \Mux147~4_combout\)) # (!EIR(7)))) # (!\Mux153~6_combout\ & (((\Mux153~5_combout\ & \Mux147~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~6_combout\,
	datab => EIR(7),
	datac => \Mux153~5_combout\,
	datad => \Mux147~4_combout\,
	combout => \Mux147~5_combout\);

-- Location: LCCOMB_X12_Y6_N16
\Mux147~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~7_combout\ = (\Mux147~5_combout\) # (\Mux147~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux147~5_combout\,
	datad => \Mux147~1_combout\,
	combout => \Mux147~7_combout\);

-- Location: FF_X13_Y6_N23
\PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[7]~38_combout\,
	asdata => \Mux147~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(7));

-- Location: LCCOMB_X13_Y6_N24
\PC[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[8]~40_combout\ = (PC(8) & (\PC[7]~39\ $ (GND))) # (!PC(8) & (!\PC[7]~39\ & VCC))
-- \PC[8]~41\ = CARRY((PC(8) & !\PC[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(8),
	datad => VCC,
	cin => \PC[7]~39\,
	combout => \PC[8]~40_combout\,
	cout => \PC[8]~41\);

-- Location: LCCOMB_X16_Y5_N10
\DI[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DI[8]~feeder_combout\ = \Mux146~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux146~5_combout\,
	combout => \DI[8]~feeder_combout\);

-- Location: FF_X16_Y5_N11
\DI[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DI[8]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(8));

-- Location: LCCOMB_X16_Y9_N28
\Mux146~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux146~2_combout\ = (\MicroCode|Set_A\(0) & (!\MicroCode|Set_A\(2) & (PC(8) & !\MicroCode|Set_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(2),
	datac => PC(8),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux146~2_combout\);

-- Location: FF_X16_Y5_N17
\SI[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux146~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(8));

-- Location: LCCOMB_X16_Y5_N16
\Mux146~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux146~3_combout\ = (\MicroCode|Set_A\(0) & SI(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(0),
	datac => SI(8),
	combout => \Mux146~3_combout\);

-- Location: LCCOMB_X16_Y9_N22
\Mux146~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux146~4_combout\ = (\MicroCode|Set_A\(3) & (((\Mux152~1_combout\)))) # (!\MicroCode|Set_A\(3) & ((\Mux152~1_combout\ & ((\Mux146~3_combout\))) # (!\Mux152~1_combout\ & (\Mux146~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \Mux146~2_combout\,
	datac => \Mux146~3_combout\,
	datad => \Mux152~1_combout\,
	combout => \Mux146~4_combout\);

-- Location: LCCOMB_X9_Y8_N18
\EIR[39]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[39]~55_combout\ = (IC(0)) # (!IC(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IC(0),
	datac => IC(1),
	combout => \EIR[39]~55_combout\);

-- Location: LCCOMB_X14_Y8_N0
\EIR[32]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[32]~56_combout\ = (\CIR~0_combout\ & ((\process_2~1_combout\ & (!\EIR[39]~55_combout\)) # (!\process_2~1_combout\ & ((!\LessThan0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EIR[39]~55_combout\,
	datab => \process_2~1_combout\,
	datac => \CIR~0_combout\,
	datad => \LessThan0~4_combout\,
	combout => \EIR[32]~56_combout\);

-- Location: FF_X12_Y8_N15
\EIR[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~42_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(32));

-- Location: LCCOMB_X12_Y8_N24
\EIR[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[8]~feeder_combout\ = \EIR~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EIR~40_combout\,
	combout => \EIR[8]~feeder_combout\);

-- Location: FF_X12_Y8_N25
\EIR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR[8]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(8));

-- Location: LCCOMB_X12_Y8_N10
\Mux146~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux146~0_combout\ = (\MicroCode|Set_A\(1) & (((\MicroCode|Set_A\(0))))) # (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0) & (!EIR(32))) # (!\MicroCode|Set_A\(0) & ((!EIR(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(32),
	datab => \MicroCode|Set_A\(1),
	datac => \MicroCode|Set_A\(0),
	datad => EIR(8),
	combout => \Mux146~0_combout\);

-- Location: LCCOMB_X16_Y9_N20
\Address~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~49_combout\ = (\MicroCode|AE~q\ & ((\Mux146~5_combout\))) # (!\MicroCode|AE~q\ & (PC(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|AE~q\,
	datac => PC(8),
	datad => \Mux146~5_combout\,
	combout => \Address~49_combout\);

-- Location: FF_X16_Y9_N21
\Address[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~49_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[8]~reg0_q\);

-- Location: LCCOMB_X16_Y8_N0
\Mux146~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux146~1_combout\ = (\MicroCode|Set_A\(1) & ((\Mux146~0_combout\ & ((\Address[8]~reg0_q\))) # (!\Mux146~0_combout\ & (!EIR(24))))) # (!\MicroCode|Set_A\(1) & (\Mux146~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \Mux146~0_combout\,
	datac => EIR(24),
	datad => \Address[8]~reg0_q\,
	combout => \Mux146~1_combout\);

-- Location: LCCOMB_X16_Y9_N0
\Mux146~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux146~5_combout\ = (\Mux152~0_combout\ & ((\Mux146~4_combout\ & ((\Mux146~1_combout\))) # (!\Mux146~4_combout\ & (DI(8))))) # (!\Mux152~0_combout\ & (((\Mux146~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux152~0_combout\,
	datab => DI(8),
	datac => \Mux146~4_combout\,
	datad => \Mux146~1_combout\,
	combout => \Mux146~5_combout\);

-- Location: FF_X13_Y6_N25
\PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[8]~40_combout\,
	asdata => \Mux146~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(8));

-- Location: LCCOMB_X13_Y6_N26
\PC[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[9]~42_combout\ = (PC(9) & (!\PC[8]~41\)) # (!PC(9) & ((\PC[8]~41\) # (GND)))
-- \PC[9]~43\ = CARRY((!\PC[8]~41\) # (!PC(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(9),
	datad => VCC,
	cin => \PC[8]~41\,
	combout => \PC[9]~42_combout\,
	cout => \PC[9]~43\);

-- Location: FF_X12_Y6_N15
\DI[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux145~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(9));

-- Location: LCCOMB_X12_Y6_N14
\Mux145~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~5_combout\ = (\MicroCode|Set_A\(0) & ((PC(9)))) # (!\MicroCode|Set_A\(0) & (DI(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datac => DI(9),
	datad => PC(9),
	combout => \Mux145~5_combout\);

-- Location: LCCOMB_X12_Y6_N26
\Mux145~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~7_combout\ = (\MicroCode|Set_A\(1) & (\MicroCode|Set_A\(3) & ((!\MicroCode|Set_A\(0))))) # (!\MicroCode|Set_A\(1) & (\Mux145~5_combout\ & (\MicroCode|Set_A\(3) $ (\MicroCode|Set_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \MicroCode|Set_A\(1),
	datac => \Mux145~5_combout\,
	datad => \MicroCode|Set_A\(0),
	combout => \Mux145~7_combout\);

-- Location: LCCOMB_X13_Y4_N16
\EIR~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~75_combout\ = (!\EIR~58_combout\ & ((\CIR~q\) # ((!\Data[9]~input_o\) # (!\process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CIR~q\,
	datab => \process_2~0_combout\,
	datac => \Data[9]~input_o\,
	datad => \EIR~58_combout\,
	combout => \EIR~75_combout\);

-- Location: FF_X13_Y4_N17
\EIR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~75_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(9));

-- Location: LCCOMB_X13_Y6_N4
\Address~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~50_combout\ = (\MicroCode|AE~q\ & ((\Mux145~6_combout\))) # (!\MicroCode|AE~q\ & (PC(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|AE~q\,
	datab => PC(9),
	datad => \Mux145~6_combout\,
	combout => \Address~50_combout\);

-- Location: FF_X13_Y6_N5
\Address[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~50_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[9]~reg0_q\);

-- Location: FF_X13_Y9_N17
\SI[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux145~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(9));

-- Location: LCCOMB_X13_Y9_N30
\EIR~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~57_combout\ = (\process_2~1_combout\ & (!\Data[1]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[1]~input_o\,
	datab => \process_2~1_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~57_combout\);

-- Location: FF_X13_Y9_N31
\EIR[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~57_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(33));

-- Location: LCCOMB_X13_Y9_N20
\Mux153~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~8_combout\ = (\MicroCode|Set_A\(3) & !EIR(33))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(3),
	datac => EIR(33),
	combout => \Mux153~8_combout\);

-- Location: LCCOMB_X13_Y9_N16
\Mux145~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~2_combout\ = (\Mux151~2_combout\ & (\Mux151~0_combout\)) # (!\Mux151~2_combout\ & ((\Mux151~0_combout\ & (SI(9))) # (!\Mux151~0_combout\ & ((\Mux153~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~2_combout\,
	datab => \Mux151~0_combout\,
	datac => SI(9),
	datad => \Mux153~8_combout\,
	combout => \Mux145~2_combout\);

-- Location: LCCOMB_X13_Y9_N18
\Mux145~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~3_combout\ = (\Mux145~2_combout\ & ((\Address[9]~reg0_q\) # ((!\Mux151~2_combout\)))) # (!\Mux145~2_combout\ & (((\Mux151~2_combout\ & \Mux153~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[9]~reg0_q\,
	datab => \Mux145~2_combout\,
	datac => \Mux151~2_combout\,
	datad => \Mux153~2_combout\,
	combout => \Mux145~3_combout\);

-- Location: LCCOMB_X12_Y6_N24
\Mux145~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~4_combout\ = (EIR(9) & (\Mux153~5_combout\ & (\Mux145~3_combout\))) # (!EIR(9) & ((\Mux153~6_combout\) # ((\Mux153~5_combout\ & \Mux145~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(9),
	datab => \Mux153~5_combout\,
	datac => \Mux145~3_combout\,
	datad => \Mux153~6_combout\,
	combout => \Mux145~4_combout\);

-- Location: LCCOMB_X12_Y6_N12
\Mux145~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~6_combout\ = (\Mux145~4_combout\) # ((!\MicroCode|Set_A\(2) & \Mux145~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datac => \Mux145~7_combout\,
	datad => \Mux145~4_combout\,
	combout => \Mux145~6_combout\);

-- Location: FF_X13_Y6_N27
\PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[9]~42_combout\,
	asdata => \Mux145~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(9));

-- Location: LCCOMB_X13_Y6_N28
\PC[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[10]~44_combout\ = (PC(10) & (\PC[9]~43\ $ (GND))) # (!PC(10) & (!\PC[9]~43\ & VCC))
-- \PC[10]~45\ = CARRY((PC(10) & !\PC[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(10),
	datad => VCC,
	cin => \PC[9]~43\,
	combout => \PC[10]~44_combout\,
	cout => \PC[10]~45\);

-- Location: LCCOMB_X16_Y5_N14
\DI[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DI[10]~feeder_combout\ = \Mux144~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux144~5_combout\,
	combout => \DI[10]~feeder_combout\);

-- Location: FF_X16_Y5_N15
\DI[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DI[10]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(10));

-- Location: LCCOMB_X16_Y9_N30
\Address~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~51_combout\ = (\MicroCode|AE~q\ & ((\Mux144~5_combout\))) # (!\MicroCode|AE~q\ & (PC(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|AE~q\,
	datac => PC(10),
	datad => \Mux144~5_combout\,
	combout => \Address~51_combout\);

-- Location: FF_X16_Y9_N31
\Address[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~51_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[10]~reg0_q\);

-- Location: FF_X13_Y8_N17
\EIR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EIR~46_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(10));

-- Location: FF_X13_Y8_N23
\EIR[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~47_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(34));

-- Location: LCCOMB_X13_Y8_N16
\Mux144~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux144~0_combout\ = (\MicroCode|Set_A\(1) & (\MicroCode|Set_A\(0))) # (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0) & ((!EIR(34)))) # (!\MicroCode|Set_A\(0) & (!EIR(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \MicroCode|Set_A\(0),
	datac => EIR(10),
	datad => EIR(34),
	combout => \Mux144~0_combout\);

-- Location: LCCOMB_X16_Y8_N22
\Mux144~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux144~1_combout\ = (\MicroCode|Set_A\(1) & ((\Mux144~0_combout\ & (\Address[10]~reg0_q\)) # (!\Mux144~0_combout\ & ((!EIR(26)))))) # (!\MicroCode|Set_A\(1) & (((\Mux144~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \Address[10]~reg0_q\,
	datac => EIR(26),
	datad => \Mux144~0_combout\,
	combout => \Mux144~1_combout\);

-- Location: LCCOMB_X16_Y9_N26
\Mux144~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux144~2_combout\ = (\MicroCode|Set_A\(0) & (!\MicroCode|Set_A\(2) & (PC(10) & !\MicroCode|Set_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(2),
	datac => PC(10),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux144~2_combout\);

-- Location: FF_X16_Y5_N13
\SI[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux144~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(10));

-- Location: LCCOMB_X16_Y5_N4
\Mux144~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux144~3_combout\ = (\MicroCode|Set_A\(0) & SI(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(0),
	datad => SI(10),
	combout => \Mux144~3_combout\);

-- Location: LCCOMB_X16_Y9_N16
\Mux144~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux144~4_combout\ = (\MicroCode|Set_A\(3) & (\Mux152~1_combout\)) # (!\MicroCode|Set_A\(3) & ((\Mux152~1_combout\ & ((\Mux144~3_combout\))) # (!\Mux152~1_combout\ & (\Mux144~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \Mux152~1_combout\,
	datac => \Mux144~2_combout\,
	datad => \Mux144~3_combout\,
	combout => \Mux144~4_combout\);

-- Location: LCCOMB_X16_Y9_N2
\Mux144~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux144~5_combout\ = (\Mux152~0_combout\ & ((\Mux144~4_combout\ & ((\Mux144~1_combout\))) # (!\Mux144~4_combout\ & (DI(10))))) # (!\Mux152~0_combout\ & (((\Mux144~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux152~0_combout\,
	datab => DI(10),
	datac => \Mux144~1_combout\,
	datad => \Mux144~4_combout\,
	combout => \Mux144~5_combout\);

-- Location: FF_X13_Y6_N29
\PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[10]~44_combout\,
	asdata => \Mux144~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(10));

-- Location: LCCOMB_X13_Y6_N30
\PC[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[11]~46_combout\ = (PC(11) & (!\PC[10]~45\)) # (!PC(11) & ((\PC[10]~45\) # (GND)))
-- \PC[11]~47\ = CARRY((!\PC[10]~45\) # (!PC(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(11),
	datad => VCC,
	cin => \PC[10]~45\,
	combout => \PC[11]~46_combout\,
	cout => \PC[11]~47\);

-- Location: LCCOMB_X13_Y4_N26
\EIR~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~76_combout\ = (!\EIR~58_combout\ & ((\CIR~q\) # ((!\Data[11]~input_o\) # (!\process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CIR~q\,
	datab => \process_2~0_combout\,
	datac => \Data[11]~input_o\,
	datad => \EIR~58_combout\,
	combout => \EIR~76_combout\);

-- Location: FF_X13_Y4_N27
\EIR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~76_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(11));

-- Location: FF_X16_Y5_N5
\SI[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux143~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(11));

-- Location: LCCOMB_X13_Y6_N2
\Address~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~52_combout\ = (\MicroCode|AE~q\ & ((\Mux143~7_combout\))) # (!\MicroCode|AE~q\ & (PC(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(11),
	datac => \MicroCode|AE~q\,
	datad => \Mux143~7_combout\,
	combout => \Address~52_combout\);

-- Location: FF_X13_Y6_N3
\Address[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~52_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[11]~reg0_q\);

-- Location: LCCOMB_X16_Y8_N18
\EIR~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~59_combout\ = (\process_2~1_combout\ & (!\Data[3]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \Data[3]~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~59_combout\);

-- Location: FF_X16_Y8_N19
\EIR[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~59_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(35));

-- Location: LCCOMB_X16_Y8_N10
\Mux143~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux143~2_combout\ = (\MicroCode|Set_A\(0)) # (!EIR(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => EIR(27),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux143~2_combout\);

-- Location: LCCOMB_X16_Y8_N28
\Mux143~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux143~3_combout\ = (\MicroCode|Set_A\(3) & ((\MicroCode|Set_A\(1) & ((\Mux143~2_combout\))) # (!\MicroCode|Set_A\(1) & (!EIR(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => EIR(35),
	datac => \MicroCode|Set_A\(1),
	datad => \Mux143~2_combout\,
	combout => \Mux143~3_combout\);

-- Location: LCCOMB_X16_Y8_N2
\Mux143~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux143~4_combout\ = (\Mux151~0_combout\ & ((\Mux143~3_combout\ & ((\Address[11]~reg0_q\))) # (!\Mux143~3_combout\ & (SI(11))))) # (!\Mux151~0_combout\ & (((\Mux143~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SI(11),
	datab => \Address[11]~reg0_q\,
	datac => \Mux151~0_combout\,
	datad => \Mux143~3_combout\,
	combout => \Mux143~4_combout\);

-- Location: LCCOMB_X16_Y6_N8
\Mux143~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux143~5_combout\ = (\Mux153~5_combout\ & ((\Mux143~4_combout\) # ((!EIR(11) & \Mux153~6_combout\)))) # (!\Mux153~5_combout\ & (!EIR(11) & ((\Mux153~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~5_combout\,
	datab => EIR(11),
	datac => \Mux143~4_combout\,
	datad => \Mux153~6_combout\,
	combout => \Mux143~5_combout\);

-- Location: LCCOMB_X16_Y5_N22
\DI[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DI[11]~feeder_combout\ = \Mux143~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux143~7_combout\,
	combout => \DI[11]~feeder_combout\);

-- Location: FF_X16_Y5_N23
\DI[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DI[11]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(11));

-- Location: LCCOMB_X16_Y5_N6
\Mux143~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux143~6_combout\ = (\MicroCode|Set_A\(0) & ((PC(11)))) # (!\MicroCode|Set_A\(0) & (DI(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(11),
	datab => \MicroCode|Set_A\(0),
	datad => PC(11),
	combout => \Mux143~6_combout\);

-- Location: LCCOMB_X16_Y6_N24
\Mux143~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux143~8_combout\ = (\MicroCode|Set_A\(1) & (\MicroCode|Set_A\(3) & (!\MicroCode|Set_A\(0)))) # (!\MicroCode|Set_A\(1) & (\Mux143~6_combout\ & (\MicroCode|Set_A\(3) $ (\MicroCode|Set_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \MicroCode|Set_A\(0),
	datac => \MicroCode|Set_A\(1),
	datad => \Mux143~6_combout\,
	combout => \Mux143~8_combout\);

-- Location: LCCOMB_X16_Y6_N30
\Mux143~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux143~7_combout\ = (\Mux143~5_combout\) # ((!\MicroCode|Set_A\(2) & \Mux143~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datac => \Mux143~5_combout\,
	datad => \Mux143~8_combout\,
	combout => \Mux143~7_combout\);

-- Location: FF_X13_Y6_N31
\PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[11]~46_combout\,
	asdata => \Mux143~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(11));

-- Location: LCCOMB_X13_Y5_N0
\PC[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[12]~48_combout\ = (PC(12) & (\PC[11]~47\ $ (GND))) # (!PC(12) & (!\PC[11]~47\ & VCC))
-- \PC[12]~49\ = CARRY((PC(12) & !\PC[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(12),
	datad => VCC,
	cin => \PC[11]~47\,
	combout => \PC[12]~48_combout\,
	cout => \PC[12]~49\);

-- Location: LCCOMB_X12_Y8_N12
\Mux142~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux142~2_combout\ = (\MicroCode|Set_A\(0) & (!\MicroCode|Set_A\(2) & (PC(12) & !\MicroCode|Set_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(2),
	datac => PC(12),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux142~2_combout\);

-- Location: FF_X10_Y8_N17
\SI[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux142~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(12));

-- Location: LCCOMB_X11_Y8_N2
\Mux142~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux142~3_combout\ = (\MicroCode|Set_A\(0) & SI(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datad => SI(12),
	combout => \Mux142~3_combout\);

-- Location: LCCOMB_X12_Y8_N22
\Mux142~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux142~4_combout\ = (\MicroCode|Set_A\(3) & (((\Mux152~1_combout\)))) # (!\MicroCode|Set_A\(3) & ((\Mux152~1_combout\ & ((\Mux142~3_combout\))) # (!\Mux152~1_combout\ & (\Mux142~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux142~2_combout\,
	datab => \MicroCode|Set_A\(3),
	datac => \Mux152~1_combout\,
	datad => \Mux142~3_combout\,
	combout => \Mux142~4_combout\);

-- Location: LCCOMB_X11_Y8_N18
\DI[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DI[12]~feeder_combout\ = \Mux142~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux142~5_combout\,
	combout => \DI[12]~feeder_combout\);

-- Location: FF_X11_Y8_N19
\DI[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DI[12]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(12));

-- Location: LCCOMB_X11_Y8_N10
\Address~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~53_combout\ = (\MicroCode|AE~q\ & ((\Mux142~5_combout\))) # (!\MicroCode|AE~q\ & (PC(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(12),
	datac => \MicroCode|AE~q\,
	datad => \Mux142~5_combout\,
	combout => \Address~53_combout\);

-- Location: FF_X11_Y8_N11
\Address[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~53_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[12]~reg0_q\);

-- Location: FF_X17_Y8_N3
\EIR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EIR~49_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(12));

-- Location: FF_X13_Y8_N27
\EIR[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~50_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(36));

-- Location: LCCOMB_X17_Y8_N2
\Mux142~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux142~0_combout\ = (\MicroCode|Set_A\(0) & ((\MicroCode|Set_A\(1)) # ((!EIR(36))))) # (!\MicroCode|Set_A\(0) & (!\MicroCode|Set_A\(1) & (!EIR(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(1),
	datac => EIR(12),
	datad => EIR(36),
	combout => \Mux142~0_combout\);

-- Location: LCCOMB_X17_Y8_N28
\Mux142~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux142~1_combout\ = (\MicroCode|Set_A\(1) & ((\Mux142~0_combout\ & (\Address[12]~reg0_q\)) # (!\Mux142~0_combout\ & ((!EIR(28)))))) # (!\MicroCode|Set_A\(1) & (((\Mux142~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[12]~reg0_q\,
	datab => EIR(28),
	datac => \MicroCode|Set_A\(1),
	datad => \Mux142~0_combout\,
	combout => \Mux142~1_combout\);

-- Location: LCCOMB_X12_Y8_N4
\Mux142~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux142~5_combout\ = (\Mux142~4_combout\ & (((\Mux142~1_combout\)) # (!\Mux152~0_combout\))) # (!\Mux142~4_combout\ & (\Mux152~0_combout\ & (DI(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux142~4_combout\,
	datab => \Mux152~0_combout\,
	datac => DI(12),
	datad => \Mux142~1_combout\,
	combout => \Mux142~5_combout\);

-- Location: FF_X13_Y5_N1
\PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[12]~48_combout\,
	asdata => \Mux142~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(12));

-- Location: LCCOMB_X13_Y5_N2
\PC[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[13]~50_combout\ = (PC(13) & (!\PC[12]~49\)) # (!PC(13) & ((\PC[12]~49\) # (GND)))
-- \PC[13]~51\ = CARRY((!\PC[12]~49\) # (!PC(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(13),
	datad => VCC,
	cin => \PC[12]~49\,
	combout => \PC[13]~50_combout\,
	cout => \PC[13]~51\);

-- Location: LCCOMB_X17_Y6_N8
\DI[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DI[13]~feeder_combout\ = \Mux141~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux141~6_combout\,
	combout => \DI[13]~feeder_combout\);

-- Location: FF_X17_Y6_N9
\DI[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DI[13]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(13));

-- Location: LCCOMB_X17_Y6_N18
\Mux141~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux141~5_combout\ = (\MicroCode|Set_A\(0) & ((PC(13)))) # (!\MicroCode|Set_A\(0) & (DI(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => DI(13),
	datac => \MicroCode|Set_A\(0),
	datad => PC(13),
	combout => \Mux141~5_combout\);

-- Location: LCCOMB_X14_Y6_N26
\Mux141~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux141~7_combout\ = (\MicroCode|Set_A\(1) & (\MicroCode|Set_A\(3) & (!\MicroCode|Set_A\(0)))) # (!\MicroCode|Set_A\(1) & (\Mux141~5_combout\ & (\MicroCode|Set_A\(3) $ (\MicroCode|Set_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \MicroCode|Set_A\(3),
	datac => \MicroCode|Set_A\(0),
	datad => \Mux141~5_combout\,
	combout => \Mux141~7_combout\);

-- Location: LCCOMB_X13_Y4_N4
\EIR~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~77_combout\ = (!\EIR~58_combout\ & ((\CIR~q\) # ((!\Data[13]~input_o\) # (!\process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CIR~q\,
	datab => \process_2~0_combout\,
	datac => \Data[13]~input_o\,
	datad => \EIR~58_combout\,
	combout => \EIR~77_combout\);

-- Location: FF_X13_Y4_N5
\EIR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~77_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(13));

-- Location: FF_X14_Y6_N21
\SI[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux141~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(13));

-- Location: LCCOMB_X13_Y9_N12
\EIR~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~60_combout\ = (\process_2~1_combout\ & (!\Data[5]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[5]~input_o\,
	datab => \process_2~1_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~60_combout\);

-- Location: FF_X13_Y9_N13
\EIR[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~60_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(37));

-- Location: LCCOMB_X13_Y9_N26
\Mux149~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~6_combout\ = (\MicroCode|Set_A\(3) & !EIR(37))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(3),
	datad => EIR(37),
	combout => \Mux149~6_combout\);

-- Location: LCCOMB_X14_Y6_N20
\Mux141~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux141~2_combout\ = (\Mux151~2_combout\ & (\Mux151~0_combout\)) # (!\Mux151~2_combout\ & ((\Mux151~0_combout\ & (SI(13))) # (!\Mux151~0_combout\ & ((\Mux149~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~2_combout\,
	datab => \Mux151~0_combout\,
	datac => SI(13),
	datad => \Mux149~6_combout\,
	combout => \Mux141~2_combout\);

-- Location: LCCOMB_X14_Y6_N14
\Address~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~54_combout\ = (\MicroCode|AE~q\ & (\Mux141~6_combout\)) # (!\MicroCode|AE~q\ & ((PC(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|AE~q\,
	datac => \Mux141~6_combout\,
	datad => PC(13),
	combout => \Address~54_combout\);

-- Location: FF_X14_Y6_N15
\Address[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~54_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[13]~reg0_q\);

-- Location: LCCOMB_X14_Y6_N6
\Mux141~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux141~3_combout\ = (\Mux151~2_combout\ & ((\Mux141~2_combout\ & (\Address[13]~reg0_q\)) # (!\Mux141~2_combout\ & ((\Mux149~2_combout\))))) # (!\Mux151~2_combout\ & (\Mux141~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~2_combout\,
	datab => \Mux141~2_combout\,
	datac => \Address[13]~reg0_q\,
	datad => \Mux149~2_combout\,
	combout => \Mux141~3_combout\);

-- Location: LCCOMB_X14_Y6_N24
\Mux141~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux141~4_combout\ = (\Mux153~5_combout\ & ((\Mux141~3_combout\) # ((!EIR(13) & \Mux153~6_combout\)))) # (!\Mux153~5_combout\ & (!EIR(13) & (\Mux153~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~5_combout\,
	datab => EIR(13),
	datac => \Mux153~6_combout\,
	datad => \Mux141~3_combout\,
	combout => \Mux141~4_combout\);

-- Location: LCCOMB_X14_Y6_N30
\Mux141~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux141~6_combout\ = (\Mux141~4_combout\) # ((!\MicroCode|Set_A\(2) & \Mux141~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datac => \Mux141~7_combout\,
	datad => \Mux141~4_combout\,
	combout => \Mux141~6_combout\);

-- Location: FF_X13_Y5_N3
\PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[13]~50_combout\,
	asdata => \Mux141~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(13));

-- Location: LCCOMB_X13_Y5_N4
\PC[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[14]~52_combout\ = (PC(14) & (\PC[13]~51\ $ (GND))) # (!PC(14) & (!\PC[13]~51\ & VCC))
-- \PC[14]~53\ = CARRY((PC(14) & !\PC[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(14),
	datad => VCC,
	cin => \PC[13]~51\,
	combout => \PC[14]~52_combout\,
	cout => \PC[14]~53\);

-- Location: FF_X11_Y8_N29
\DI[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux140~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(14));

-- Location: FF_X10_Y8_N31
\SI[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux140~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(14));

-- Location: LCCOMB_X10_Y8_N16
\Mux140~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux140~3_combout\ = (SI(14) & \MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SI(14),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux140~3_combout\);

-- Location: LCCOMB_X11_Y8_N6
\Mux140~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux140~2_combout\ = (\MicroCode|Set_A\(0) & (!\MicroCode|Set_A\(2) & (PC(14) & !\MicroCode|Set_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(2),
	datac => PC(14),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux140~2_combout\);

-- Location: LCCOMB_X11_Y8_N24
\Mux140~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux140~4_combout\ = (\MicroCode|Set_A\(3) & (\Mux152~1_combout\)) # (!\MicroCode|Set_A\(3) & ((\Mux152~1_combout\ & (\Mux140~3_combout\)) # (!\Mux152~1_combout\ & ((\Mux140~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \Mux152~1_combout\,
	datac => \Mux140~3_combout\,
	datad => \Mux140~2_combout\,
	combout => \Mux140~4_combout\);

-- Location: LCCOMB_X11_Y8_N16
\Address~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~55_combout\ = (\MicroCode|AE~q\ & ((\Mux140~5_combout\))) # (!\MicroCode|AE~q\ & (PC(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(14),
	datab => \MicroCode|AE~q\,
	datac => \Mux140~5_combout\,
	combout => \Address~55_combout\);

-- Location: FF_X11_Y8_N17
\Address[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~55_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[14]~reg0_q\);

-- Location: FF_X13_Y8_N7
\EIR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EIR~52_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(14));

-- Location: FF_X13_Y8_N1
\EIR[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~53_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(38));

-- Location: LCCOMB_X13_Y8_N6
\Mux140~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux140~0_combout\ = (\MicroCode|Set_A\(1) & (\MicroCode|Set_A\(0))) # (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0) & ((!EIR(38)))) # (!\MicroCode|Set_A\(0) & (!EIR(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \MicroCode|Set_A\(0),
	datac => EIR(14),
	datad => EIR(38),
	combout => \Mux140~0_combout\);

-- Location: LCCOMB_X16_Y8_N20
\Mux140~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux140~1_combout\ = (\MicroCode|Set_A\(1) & ((\Mux140~0_combout\ & (\Address[14]~reg0_q\)) # (!\Mux140~0_combout\ & ((!EIR(30)))))) # (!\MicroCode|Set_A\(1) & (((\Mux140~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \Address[14]~reg0_q\,
	datac => EIR(30),
	datad => \Mux140~0_combout\,
	combout => \Mux140~1_combout\);

-- Location: LCCOMB_X11_Y8_N26
\Mux140~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux140~5_combout\ = (\Mux140~4_combout\ & (((\Mux140~1_combout\) # (!\Mux152~0_combout\)))) # (!\Mux140~4_combout\ & (DI(14) & (\Mux152~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(14),
	datab => \Mux140~4_combout\,
	datac => \Mux152~0_combout\,
	datad => \Mux140~1_combout\,
	combout => \Mux140~5_combout\);

-- Location: FF_X13_Y5_N5
\PC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[14]~52_combout\,
	asdata => \Mux140~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(14));

-- Location: LCCOMB_X13_Y5_N6
\PC[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[15]~54_combout\ = (PC(15) & (!\PC[14]~53\)) # (!PC(15) & ((\PC[14]~53\) # (GND)))
-- \PC[15]~55\ = CARRY((!\PC[14]~53\) # (!PC(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(15),
	datad => VCC,
	cin => \PC[14]~53\,
	combout => \PC[15]~54_combout\,
	cout => \PC[15]~55\);

-- Location: FF_X13_Y5_N7
\PC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[15]~54_combout\,
	asdata => \Mux139~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(15));

-- Location: LCCOMB_X12_Y7_N8
\Mux139~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux139~1_combout\ = (!\MicroCode|Set_A\(2) & (\Mux139~0_combout\ & ((PC(15)) # (!\MicroCode|Set_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => \Mux139~0_combout\,
	datac => \MicroCode|Set_A\(0),
	datad => PC(15),
	combout => \Mux139~1_combout\);

-- Location: LCCOMB_X18_Y7_N22
\Address~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~56_combout\ = (\MicroCode|AE~q\ & ((\Mux139~5_combout\))) # (!\MicroCode|AE~q\ & (PC(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|AE~q\,
	datac => PC(15),
	datad => \Mux139~5_combout\,
	combout => \Address~56_combout\);

-- Location: FF_X18_Y7_N23
\Address[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~56_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[15]~reg0_q\);

-- Location: LCCOMB_X16_Y7_N30
\SI[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SI[15]~feeder_combout\ = \Mux139~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux139~5_combout\,
	combout => \SI[15]~feeder_combout\);

-- Location: FF_X16_Y7_N31
\SI[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SI[15]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(15));

-- Location: LCCOMB_X16_Y8_N16
\EIR~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~61_combout\ = (\process_2~1_combout\ & (!\Data[7]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \Data[7]~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~61_combout\);

-- Location: FF_X16_Y8_N17
\EIR[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~61_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(39));

-- Location: LCCOMB_X16_Y7_N24
\Mux147~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~6_combout\ = (\MicroCode|Set_A\(3) & !EIR(39))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(3),
	datad => EIR(39),
	combout => \Mux147~6_combout\);

-- Location: LCCOMB_X16_Y7_N14
\Mux139~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux139~3_combout\ = (\Mux151~0_combout\ & ((\Mux151~2_combout\) # ((SI(15))))) # (!\Mux151~0_combout\ & (!\Mux151~2_combout\ & ((\Mux147~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~0_combout\,
	datab => \Mux151~2_combout\,
	datac => SI(15),
	datad => \Mux147~6_combout\,
	combout => \Mux139~3_combout\);

-- Location: LCCOMB_X12_Y7_N16
\Mux139~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux139~4_combout\ = (\Mux151~2_combout\ & ((\Mux139~3_combout\ & (\Address[15]~reg0_q\)) # (!\Mux139~3_combout\ & ((\Mux147~2_combout\))))) # (!\Mux151~2_combout\ & (((\Mux139~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[15]~reg0_q\,
	datab => \Mux147~2_combout\,
	datac => \Mux151~2_combout\,
	datad => \Mux139~3_combout\,
	combout => \Mux139~4_combout\);

-- Location: LCCOMB_X12_Y7_N6
\Mux139~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux139~5_combout\ = (\Mux139~2_combout\) # ((\Mux139~1_combout\) # ((\Mux153~5_combout\ & \Mux139~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux139~2_combout\,
	datab => \Mux153~5_combout\,
	datac => \Mux139~1_combout\,
	datad => \Mux139~4_combout\,
	combout => \Mux139~5_combout\);

-- Location: LCCOMB_X12_Y7_N12
\DI[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DI[15]~feeder_combout\ = \Mux139~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux139~5_combout\,
	combout => \DI[15]~feeder_combout\);

-- Location: FF_X12_Y7_N13
\DI[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DI[15]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(15));

-- Location: LCCOMB_X12_Y7_N18
\Mux115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~0_combout\ = (\MicroCode|Set_D\(0) & ((DI(15)) # ((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (((!\MicroCode|Set_D\(3) & SI(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(15),
	datab => \MicroCode|Set_D\(0),
	datac => \MicroCode|Set_D\(3),
	datad => SI(15),
	combout => \Mux115~0_combout\);

-- Location: LCCOMB_X12_Y7_N24
\Mux115~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~1_combout\ = (\MicroCode|Set_D\(3) & ((\Mux115~0_combout\ & ((!EIR(31)))) # (!\Mux115~0_combout\ & (!EIR(15))))) # (!\MicroCode|Set_D\(3) & (((\Mux115~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(15),
	datab => EIR(31),
	datac => \MicroCode|Set_D\(3),
	datad => \Mux115~0_combout\,
	combout => \Mux115~1_combout\);

-- Location: LCCOMB_X11_Y7_N8
\Mux115~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~2_combout\ = (\MicroCode|Set_D\(1) & \Mux115~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(1),
	datad => \Mux115~1_combout\,
	combout => \Mux115~2_combout\);

-- Location: LCCOMB_X11_Y9_N18
\MicroCode|Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux75~0_combout\ = (\MicroCode|Mux6~0_combout\ & \MicroCode|Mux76~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Mux6~0_combout\,
	datad => \MicroCode|Mux76~2_combout\,
	combout => \MicroCode|Mux75~0_combout\);

-- Location: FF_X11_Y9_N19
\MicroCode|Z_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux75~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Z_in~q\);

-- Location: LCCOMB_X11_Y9_N0
\Z[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z[8]~0_combout\ = (\Enable~input_o\ & \MicroCode|Z_in~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datad => \MicroCode|Z_in~q\,
	combout => \Z[8]~0_combout\);

-- Location: FF_X10_Y7_N3
\Z[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux115~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(15));

-- Location: LCCOMB_X9_Y7_N18
\Mux115~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~3_combout\ = (\MicroCode|Set_D\(0) & (!\MicroCode|Set_D\(1) & Z(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datac => \MicroCode|Set_D\(1),
	datad => Z(15),
	combout => \Mux115~3_combout\);

-- Location: LCCOMB_X11_Y7_N22
\Mux120~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~2_combout\ = (\MicroCode|Set_D\(3) & (((!\MicroCode|Set_D\(0) & \MicroCode|Set_D\(1))))) # (!\MicroCode|Set_D\(3) & (\MicroCode|Set_D\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(2),
	datac => \MicroCode|Set_D\(0),
	datad => \MicroCode|Set_D\(1),
	combout => \Mux120~2_combout\);

-- Location: LCCOMB_X10_Y7_N22
\Mux120~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~3_combout\ = (\MicroCode|Set_D\(3)) # ((!\MicroCode|Set_D\(2) & \MicroCode|Set_D\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \MicroCode|Set_D\(3),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux120~3_combout\);

-- Location: LCCOMB_X11_Y9_N10
\MicroCode|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux74~0_combout\ = (\MicroCode|Mux7~0_combout\ & \MicroCode|Mux76~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Mux7~0_combout\,
	datad => \MicroCode|Mux76~2_combout\,
	combout => \MicroCode|Mux74~0_combout\);

-- Location: FF_X11_Y9_N11
\MicroCode|Y_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux74~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Y_in~q\);

-- Location: LCCOMB_X12_Y7_N26
\Y[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[8]~0_combout\ = (\MicroCode|Y_in~q\ & \Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Y_in~q\,
	datac => \Enable~input_o\,
	combout => \Y[8]~0_combout\);

-- Location: FF_X11_Y7_N27
\Y[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux115~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(15));

-- Location: LCCOMB_X9_Y10_N26
\MicroCode|Mux65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux65~1_combout\ = (!IR(0) & ((IR(2) & (\MicroCode|Mux34~0_combout\)) # (!IR(2) & ((\MicroCode|Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => \MicroCode|Mux34~0_combout\,
	datac => \MicroCode|Mux7~0_combout\,
	datad => IR(2),
	combout => \MicroCode|Mux65~1_combout\);

-- Location: LCCOMB_X9_Y10_N12
\MicroCode|Mux65~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux65~2_combout\ = (\MicroCode|Mux63~0_combout\ & ((\MicroCode|Mux65~1_combout\) # ((\MicroCode|Mux31~1_combout\ & \MicroCode|Mux65~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux65~1_combout\,
	datab => \MicroCode|Mux63~0_combout\,
	datac => \MicroCode|Mux31~1_combout\,
	datad => \MicroCode|Mux65~0_combout\,
	combout => \MicroCode|Mux65~2_combout\);

-- Location: FF_X9_Y10_N13
\MicroCode|X_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux65~2_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|X_in~q\);

-- Location: LCCOMB_X10_Y10_N14
\X[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \X[8]~0_combout\ = (\Enable~input_o\ & \MicroCode|X_in~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Enable~input_o\,
	datad => \MicroCode|X_in~q\,
	combout => \X[8]~0_combout\);

-- Location: FF_X10_Y7_N9
\X[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux115~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(15));

-- Location: LCCOMB_X13_Y7_N20
\IR~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~9_combout\ = (\Data[15]~input_o\ & (((!\MPI~q\ & \process_6~0_combout\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MPI~q\,
	datab => \Data[15]~input_o\,
	datac => \process_6~0_combout\,
	datad => \IR~0_combout\,
	combout => \IR~9_combout\);

-- Location: FF_X13_Y7_N21
\IR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(15));

-- Location: LCCOMB_X10_Y7_N8
\Mux115~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~4_combout\ = (\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(1) & (X(15))) # (!\MicroCode|Set_D\(1) & ((IR(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(0),
	datac => X(15),
	datad => IR(15),
	combout => \Mux115~4_combout\);

-- Location: LCCOMB_X11_Y7_N16
\Mux115~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~5_combout\ = (\Mux115~4_combout\) # ((!\MicroCode|Set_D\(0) & (\MicroCode|Set_D\(1) & PC(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(1),
	datac => PC(15),
	datad => \Mux115~4_combout\,
	combout => \Mux115~5_combout\);

-- Location: LCCOMB_X11_Y7_N20
\Mux115~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~6_combout\ = (\Mux120~2_combout\ & ((\Mux120~3_combout\ & (Y(15))) # (!\Mux120~3_combout\ & ((\Mux115~5_combout\))))) # (!\Mux120~2_combout\ & (!\Mux120~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~2_combout\,
	datab => \Mux120~3_combout\,
	datac => Y(15),
	datad => \Mux115~5_combout\,
	combout => \Mux115~6_combout\);

-- Location: LCCOMB_X11_Y7_N4
\Mux115~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~7_combout\ = ((!\MicroCode|Set_D\(3) & !\MicroCode|Set_D\(2))) # (!\Mux115~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(2),
	datad => \Mux115~6_combout\,
	combout => \Mux115~7_combout\);

-- Location: LCCOMB_X10_Y7_N24
\Mux115~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~8_combout\ = (\MicroCode|Set_D\(4) & (!\Mux120~0_combout\)) # (!\MicroCode|Set_D\(4) & ((\Mux120~0_combout\ & (\Mux115~3_combout\)) # (!\Mux120~0_combout\ & ((!\Mux115~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(4),
	datab => \Mux120~0_combout\,
	datac => \Mux115~3_combout\,
	datad => \Mux115~7_combout\,
	combout => \Mux115~8_combout\);

-- Location: LCCOMB_X10_Y7_N6
\Mux115~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~9_combout\ = (\Mux120~1_combout\ & ((\Mux115~8_combout\ & ((\Mux115~2_combout\))) # (!\Mux115~8_combout\ & (\Data[15]~input_o\)))) # (!\Mux120~1_combout\ & (((\Mux115~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[15]~input_o\,
	datab => \Mux120~1_combout\,
	datac => \Mux115~2_combout\,
	datad => \Mux115~8_combout\,
	combout => \Mux115~9_combout\);

-- Location: LCCOMB_X12_Y9_N6
\MicroCode|Mux66~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux66~10_combout\ = (MRC(2) & (!MRC(3) & (MRC(1) $ (!IR(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(2),
	datab => MRC(1),
	datac => IR(2),
	datad => MRC(3),
	combout => \MicroCode|Mux66~10_combout\);

-- Location: LCCOMB_X12_Y9_N12
\MicroCode|Mux66~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux66~8_combout\ = (\MicroCode|Mux63~0_combout\ & (\MicroCode|Mux66~10_combout\ & (MRC(0) $ (!IR(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => IR(0),
	datac => \MicroCode|Mux63~0_combout\,
	datad => \MicroCode|Mux66~10_combout\,
	combout => \MicroCode|Mux66~8_combout\);

-- Location: FF_X12_Y9_N13
\MicroCode|Write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux66~8_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Write~q\);

-- Location: LCCOMB_X12_Y10_N14
\MicroCode|Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux64~0_combout\ = (IR(2) & (((IR(0))))) # (!IR(2) & ((IR(0) & (\MicroCode|Mux11~0_combout\)) # (!IR(0) & ((\MicroCode|Mux10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux11~0_combout\,
	datab => IR(2),
	datac => IR(0),
	datad => \MicroCode|Mux10~0_combout\,
	combout => \MicroCode|Mux64~0_combout\);

-- Location: LCCOMB_X13_Y10_N18
\MicroCode|Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux64~1_combout\ = (IR(2) & (\MicroCode|Mux31~0_combout\ & ((\MicroCode|Mux64~0_combout\) # (!MRC(0))))) # (!IR(2) & (((\MicroCode|Mux64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => \MicroCode|Mux31~0_combout\,
	datac => MRC(0),
	datad => \MicroCode|Mux64~0_combout\,
	combout => \MicroCode|Mux64~1_combout\);

-- Location: LCCOMB_X12_Y10_N0
\MicroCode|Mux64~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux64~2_combout\ = (\MicroCode|Mux63~0_combout\ & \MicroCode|Mux64~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Mux63~0_combout\,
	datad => \MicroCode|Mux64~1_combout\,
	combout => \MicroCode|Mux64~2_combout\);

-- Location: FF_X12_Y10_N1
\MicroCode|DE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux64~2_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|DE~q\);

-- Location: LCCOMB_X12_Y7_N10
\data_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~0_combout\ = (\Enable~input_o\ & (\MicroCode|Write~q\ & \MicroCode|DE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable~input_o\,
	datac => \MicroCode|Write~q\,
	datad => \MicroCode|DE~q\,
	combout => \data_out[0]~0_combout\);

-- Location: FF_X11_Y7_N5
\data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux115~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(0));

-- Location: FF_X9_Y5_N1
\Z[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux116~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(14));

-- Location: LCCOMB_X9_Y6_N4
\Mux116~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~5_combout\ = (!\MicroCode|Set_D\(1) & (\MicroCode|Set_D\(0) & Z(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(0),
	datad => Z(14),
	combout => \Mux116~5_combout\);

-- Location: LCCOMB_X13_Y7_N2
\IR~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~10_combout\ = (\Data[14]~input_o\ & (((!\MPI~q\ & \process_6~0_combout\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MPI~q\,
	datab => \process_6~0_combout\,
	datac => \Data[14]~input_o\,
	datad => \IR~0_combout\,
	combout => \IR~10_combout\);

-- Location: FF_X13_Y7_N3
\IR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(14));

-- Location: FF_X10_Y7_N29
\X[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux116~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(14));

-- Location: LCCOMB_X10_Y7_N28
\Mux116~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~6_combout\ = (\MicroCode|Set_D\(0) & (!X(14))) # (!\MicroCode|Set_D\(0) & ((!PC(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(0),
	datac => X(14),
	datad => PC(14),
	combout => \Mux116~6_combout\);

-- Location: LCCOMB_X10_Y7_N10
\Mux116~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~7_combout\ = (\MicroCode|Set_D\(1) & (((\Mux116~6_combout\)))) # (!\MicroCode|Set_D\(1) & (((!IR(14))) # (!\MicroCode|Set_D\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(0),
	datac => IR(14),
	datad => \Mux116~6_combout\,
	combout => \Mux116~7_combout\);

-- Location: LCCOMB_X9_Y5_N2
\Y[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[14]~feeder_combout\ = \Mux116~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux116~10_combout\,
	combout => \Y[14]~feeder_combout\);

-- Location: FF_X9_Y5_N3
\Y[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Y[14]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(14));

-- Location: LCCOMB_X9_Y5_N22
\Mux116~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~11_combout\ = (\MicroCode|Set_D\(3) & ((!Y(14)))) # (!\MicroCode|Set_D\(3) & (!\MicroCode|Set_D\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(3),
	datac => \MicroCode|Set_D\(2),
	datad => Y(14),
	combout => \Mux116~11_combout\);

-- Location: LCCOMB_X10_Y7_N4
\Mux116~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~8_combout\ = (\Mux116~11_combout\) # ((\Mux120~3_combout\ & ((!\Mux120~2_combout\))) # (!\Mux120~3_combout\ & (\Mux116~7_combout\ & \Mux120~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux116~7_combout\,
	datab => \Mux120~3_combout\,
	datac => \Mux116~11_combout\,
	datad => \Mux120~2_combout\,
	combout => \Mux116~8_combout\);

-- Location: LCCOMB_X10_Y7_N26
\Mux116~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~9_combout\ = (\Mux120~0_combout\ & (\Mux116~5_combout\ & ((!\MicroCode|Set_D\(4))))) # (!\Mux120~0_combout\ & (((\MicroCode|Set_D\(4)) # (!\Mux116~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux116~5_combout\,
	datab => \Mux120~0_combout\,
	datac => \Mux116~8_combout\,
	datad => \MicroCode|Set_D\(4),
	combout => \Mux116~9_combout\);

-- Location: LCCOMB_X11_Y8_N28
\Mux116~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~2_combout\ = (\MicroCode|Set_D\(0) & (((DI(14)) # (\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (SI(14) & ((!\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SI(14),
	datab => \MicroCode|Set_D\(0),
	datac => DI(14),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux116~2_combout\);

-- Location: LCCOMB_X11_Y8_N20
\Mux116~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~3_combout\ = (\MicroCode|Set_D\(3) & ((\Mux116~2_combout\ & (!EIR(30))) # (!\Mux116~2_combout\ & ((!EIR(14)))))) # (!\MicroCode|Set_D\(3) & (((\Mux116~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(30),
	datab => \MicroCode|Set_D\(3),
	datac => EIR(14),
	datad => \Mux116~2_combout\,
	combout => \Mux116~3_combout\);

-- Location: LCCOMB_X11_Y8_N22
\Mux116~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~4_combout\ = (\MicroCode|Set_D\(1) & \Mux116~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datad => \Mux116~3_combout\,
	combout => \Mux116~4_combout\);

-- Location: LCCOMB_X10_Y7_N16
\Mux116~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~10_combout\ = (\Mux120~1_combout\ & ((\Mux116~9_combout\ & ((\Mux116~4_combout\))) # (!\Mux116~9_combout\ & (\Data[14]~input_o\)))) # (!\Mux120~1_combout\ & (((\Mux116~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[14]~input_o\,
	datab => \Mux120~1_combout\,
	datac => \Mux116~9_combout\,
	datad => \Mux116~4_combout\,
	combout => \Mux116~10_combout\);

-- Location: LCCOMB_X12_Y7_N4
\data_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~feeder_combout\ = \Mux116~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux116~10_combout\,
	combout => \data_out[1]~feeder_combout\);

-- Location: FF_X12_Y7_N5
\data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[1]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(1));

-- Location: LCCOMB_X8_Y6_N12
\Mux117~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~8_combout\ = ((\MicroCode|Set_D\(2) & (!\MicroCode|Set_D\(3) & !\MicroCode|Set_D\(4)))) # (!\MicroCode|Set_D\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \MicroCode|Set_D\(1),
	datac => \MicroCode|Set_D\(3),
	datad => \MicroCode|Set_D\(4),
	combout => \Mux117~8_combout\);

-- Location: LCCOMB_X8_Y6_N30
\Mux117~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~9_combout\ = (!\MicroCode|Set_D\(2) & (\MicroCode|Set_D\(1) & ((\MicroCode|Set_D\(3)) # (\MicroCode|Set_D\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \MicroCode|Set_D\(1),
	datac => \MicroCode|Set_D\(3),
	datad => \MicroCode|Set_D\(4),
	combout => \Mux117~9_combout\);

-- Location: LCCOMB_X10_Y5_N0
\X[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \X[13]~feeder_combout\ = \Mux117~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux117~10_combout\,
	combout => \X[13]~feeder_combout\);

-- Location: FF_X10_Y5_N1
\X[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \X[13]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(13));

-- Location: LCCOMB_X9_Y6_N12
\Mux128~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~2_combout\ = (\MicroCode|Set_D\(0) & (!\MicroCode|Set_D\(4) & !\MicroCode|Set_D\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(0),
	datac => \MicroCode|Set_D\(4),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux128~2_combout\);

-- Location: LCCOMB_X9_Y6_N26
\Mux127~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~2_combout\ = (\MicroCode|Set_D\(2) & ((\MicroCode|Set_D\(0)) # (!\MicroCode|Set_D\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(2),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux127~2_combout\);

-- Location: LCCOMB_X9_Y6_N6
\Mux121~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~3_combout\ = (\MicroCode|Set_D\(1) & \MicroCode|Set_D\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datad => \MicroCode|Set_D\(2),
	combout => \Mux121~3_combout\);

-- Location: LCCOMB_X9_Y6_N22
\Mux117~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~6_combout\ = (\Mux127~2_combout\ & (((\Mux121~3_combout\)))) # (!\Mux127~2_combout\ & ((\Mux121~3_combout\ & ((PC(13)))) # (!\Mux121~3_combout\ & (\Mux128~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~2_combout\,
	datab => PC(13),
	datac => \Mux127~2_combout\,
	datad => \Mux121~3_combout\,
	combout => \Mux117~6_combout\);

-- Location: LCCOMB_X9_Y8_N28
\IR~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~11_combout\ = (\Data[13]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \Data[13]~input_o\,
	datac => \MPI~q\,
	datad => \IR~0_combout\,
	combout => \IR~11_combout\);

-- Location: FF_X9_Y8_N29
\IR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~11_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(13));

-- Location: LCCOMB_X9_Y6_N8
\Mux121~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~2_combout\ = (\MicroCode|Set_D\(3) & ((!\MicroCode|Set_D\(4)) # (!\MicroCode|Set_D\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(0),
	datad => \MicroCode|Set_D\(4),
	combout => \Mux121~2_combout\);

-- Location: LCCOMB_X9_Y6_N30
\Mux121~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~1_combout\ = (\MicroCode|Set_D\(4)) # ((!\MicroCode|Set_D\(3) & \MicroCode|Set_D\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(0),
	datad => \MicroCode|Set_D\(4),
	combout => \Mux121~1_combout\);

-- Location: LCCOMB_X10_Y5_N28
\Z[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z[13]~feeder_combout\ = \Mux117~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux117~10_combout\,
	combout => \Z[13]~feeder_combout\);

-- Location: FF_X10_Y5_N29
\Z[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Z[13]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(13));

-- Location: LCCOMB_X10_Y5_N18
\Mux117~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~3_combout\ = (\MicroCode|Set_D\(0) & Z(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_D\(0),
	datad => Z(13),
	combout => \Mux117~3_combout\);

-- Location: LCCOMB_X9_Y6_N2
\Mux117~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~4_combout\ = (\Mux121~2_combout\ & ((\Mux121~1_combout\ & (\Data[13]~input_o\)) # (!\Mux121~1_combout\ & ((\Mux117~3_combout\))))) # (!\Mux121~2_combout\ & (((!\Mux121~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[13]~input_o\,
	datab => \Mux121~2_combout\,
	datac => \Mux121~1_combout\,
	datad => \Mux117~3_combout\,
	combout => \Mux117~4_combout\);

-- Location: LCCOMB_X9_Y6_N0
\Mux117~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~5_combout\ = (\MicroCode|Set_D\(3) & (((\Mux117~4_combout\)))) # (!\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(4) & ((\Mux117~4_combout\))) # (!\MicroCode|Set_D\(4) & (IR(13) & !\Mux117~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(4),
	datac => IR(13),
	datad => \Mux117~4_combout\,
	combout => \Mux117~5_combout\);

-- Location: LCCOMB_X9_Y6_N28
\Mux117~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~7_combout\ = (\Mux117~6_combout\ & ((X(13)) # ((!\Mux127~2_combout\)))) # (!\Mux117~6_combout\ & (((\Mux127~2_combout\ & \Mux117~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => X(13),
	datab => \Mux117~6_combout\,
	datac => \Mux127~2_combout\,
	datad => \Mux117~5_combout\,
	combout => \Mux117~7_combout\);

-- Location: LCCOMB_X9_Y5_N16
\Y[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[13]~feeder_combout\ = \Mux117~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux117~10_combout\,
	combout => \Y[13]~feeder_combout\);

-- Location: FF_X9_Y5_N17
\Y[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Y[13]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(13));

-- Location: LCCOMB_X9_Y5_N0
\Mux121~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~0_combout\ = (\MicroCode|Set_D\(4)) # ((!\MicroCode|Set_D\(0) & \MicroCode|Set_D\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(3),
	datad => \MicroCode|Set_D\(4),
	combout => \Mux121~0_combout\);

-- Location: LCCOMB_X16_Y8_N12
\Mux117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~0_combout\ = (\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(3)) # ((DI(13))))) # (!\MicroCode|Set_D\(0) & (!\MicroCode|Set_D\(3) & ((SI(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(3),
	datac => DI(13),
	datad => SI(13),
	combout => \Mux117~0_combout\);

-- Location: LCCOMB_X16_Y8_N26
\Mux117~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~1_combout\ = (\MicroCode|Set_D\(3) & ((\Mux117~0_combout\ & (!EIR(29))) # (!\Mux117~0_combout\ & ((!EIR(13)))))) # (!\MicroCode|Set_D\(3) & (((\Mux117~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => EIR(29),
	datac => EIR(13),
	datad => \Mux117~0_combout\,
	combout => \Mux117~1_combout\);

-- Location: LCCOMB_X9_Y5_N14
\Mux117~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~2_combout\ = (\Mux121~1_combout\ & (((\Mux117~1_combout\) # (!\Mux121~0_combout\)))) # (!\Mux121~1_combout\ & (Y(13) & (\Mux121~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux121~1_combout\,
	datab => Y(13),
	datac => \Mux121~0_combout\,
	datad => \Mux117~1_combout\,
	combout => \Mux117~2_combout\);

-- Location: LCCOMB_X10_Y5_N6
\Mux117~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~10_combout\ = (\Mux117~8_combout\ & ((\Mux117~7_combout\) # ((\Mux117~9_combout\ & \Mux117~2_combout\)))) # (!\Mux117~8_combout\ & (\Mux117~9_combout\ & ((\Mux117~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux117~8_combout\,
	datab => \Mux117~9_combout\,
	datac => \Mux117~7_combout\,
	datad => \Mux117~2_combout\,
	combout => \Mux117~10_combout\);

-- Location: FF_X11_Y5_N27
\data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux117~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(2));

-- Location: LCCOMB_X10_Y4_N24
\Mux118~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~11_combout\ = (\MicroCode|Set_D\(2) & \MicroCode|Set_D\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datad => \MicroCode|Set_D\(4),
	combout => \Mux118~11_combout\);

-- Location: LCCOMB_X9_Y5_N20
\Mux126~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~0_combout\ = (!\MicroCode|Set_D\(1) & (\MicroCode|Set_D\(2) & (\Mux130~4_combout\ & \MicroCode|Set_D\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(2),
	datac => \Mux130~4_combout\,
	datad => \MicroCode|Set_D\(4),
	combout => \Mux126~0_combout\);

-- Location: FF_X9_Y5_N11
\Z[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux118~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(12));

-- Location: LCCOMB_X12_Y4_N0
\Y[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[12]~feeder_combout\ = \Mux118~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux118~12_combout\,
	combout => \Y[12]~feeder_combout\);

-- Location: FF_X12_Y4_N1
\Y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Y[12]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(12));

-- Location: LCCOMB_X12_Y4_N18
\Mux118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~0_combout\ = (!\MicroCode|Set_D\(0) & (\MicroCode|Set_D\(1) & Y(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(1),
	datad => Y(12),
	combout => \Mux118~0_combout\);

-- Location: LCCOMB_X12_Y5_N26
\Mux118~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~1_combout\ = (\MicroCode|Set_D\(3) & !\MicroCode|Set_D\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_D\(3),
	datad => \MicroCode|Set_D\(4),
	combout => \Mux118~1_combout\);

-- Location: LCCOMB_X12_Y4_N22
\Mux118~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~2_combout\ = (\MicroCode|Set_D\(4)) # ((\MicroCode|Set_D\(3) & \MicroCode|Set_D\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(4),
	datac => \MicroCode|Set_D\(3),
	datad => \MicroCode|Set_D\(2),
	combout => \Mux118~2_combout\);

-- Location: LCCOMB_X13_Y4_N8
\Mux118~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~3_combout\ = (\Mux118~1_combout\ & (((!\MicroCode|Set_D\(1) & \MicroCode|Set_D\(0))) # (!\Mux118~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux118~1_combout\,
	datab => \MicroCode|Set_D\(1),
	datac => \MicroCode|Set_D\(0),
	datad => \Mux118~2_combout\,
	combout => \Mux118~3_combout\);

-- Location: LCCOMB_X10_Y8_N30
\Mux118~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~5_combout\ = (\MicroCode|Set_D\(0) & ((DI(12)))) # (!\MicroCode|Set_D\(0) & (SI(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => SI(12),
	datad => DI(12),
	combout => \Mux118~5_combout\);

-- Location: LCCOMB_X17_Y8_N24
\Mux118~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~4_combout\ = (\MicroCode|Set_D\(0) & (!EIR(28))) # (!\MicroCode|Set_D\(0) & ((!EIR(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => EIR(28),
	datac => EIR(12),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux118~4_combout\);

-- Location: LCCOMB_X13_Y4_N14
\Mux118~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~6_combout\ = (\MicroCode|Set_D\(1) & ((\MicroCode|Set_D\(3) & ((\Mux118~4_combout\))) # (!\MicroCode|Set_D\(3) & (\Mux118~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(3),
	datac => \Mux118~5_combout\,
	datad => \Mux118~4_combout\,
	combout => \Mux118~6_combout\);

-- Location: FF_X10_Y4_N25
\X[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux118~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(12));

-- Location: LCCOMB_X10_Y4_N2
\Mux118~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~7_combout\ = (\MicroCode|Set_D\(1) & ((\MicroCode|Set_D\(0) & (X(12))) # (!\MicroCode|Set_D\(0) & ((PC(12)))))) # (!\MicroCode|Set_D\(1) & (((\MicroCode|Set_D\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => X(12),
	datac => \MicroCode|Set_D\(0),
	datad => PC(12),
	combout => \Mux118~7_combout\);

-- Location: LCCOMB_X10_Y4_N8
\Mux118~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~8_combout\ = (\MicroCode|Set_D\(2) & (\Mux118~7_combout\ & ((\MicroCode|Set_D\(1)) # (IR(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \MicroCode|Set_D\(1),
	datac => IR(12),
	datad => \Mux118~7_combout\,
	combout => \Mux118~8_combout\);

-- Location: LCCOMB_X13_Y4_N28
\Mux118~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~9_combout\ = (\Mux118~1_combout\ & (!\Mux118~2_combout\)) # (!\Mux118~1_combout\ & ((\Mux118~2_combout\ & (\Mux118~6_combout\)) # (!\Mux118~2_combout\ & ((\Mux118~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux118~1_combout\,
	datab => \Mux118~2_combout\,
	datac => \Mux118~6_combout\,
	datad => \Mux118~8_combout\,
	combout => \Mux118~9_combout\);

-- Location: LCCOMB_X13_Y4_N18
\Mux118~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~10_combout\ = (\Mux118~3_combout\ & ((\Mux118~9_combout\ & ((\Mux118~0_combout\))) # (!\Mux118~9_combout\ & (Z(12))))) # (!\Mux118~3_combout\ & (((\Mux118~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Z(12),
	datab => \Mux118~0_combout\,
	datac => \Mux118~3_combout\,
	datad => \Mux118~9_combout\,
	combout => \Mux118~10_combout\);

-- Location: LCCOMB_X13_Y4_N0
\Mux118~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~12_combout\ = (\Mux118~11_combout\ & (\Data[12]~input_o\ & (\Mux126~0_combout\))) # (!\Mux118~11_combout\ & ((\Mux118~10_combout\) # ((\Data[12]~input_o\ & \Mux126~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux118~11_combout\,
	datab => \Data[12]~input_o\,
	datac => \Mux126~0_combout\,
	datad => \Mux118~10_combout\,
	combout => \Mux118~12_combout\);

-- Location: LCCOMB_X12_Y4_N4
\data_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[3]~feeder_combout\ = \Mux118~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux118~12_combout\,
	combout => \data_out[3]~feeder_combout\);

-- Location: FF_X12_Y4_N5
\data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[3]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(3));

-- Location: LCCOMB_X12_Y4_N12
\Y[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[11]~feeder_combout\ = \Mux119~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux119~8_combout\,
	combout => \Y[11]~feeder_combout\);

-- Location: FF_X12_Y4_N13
\Y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Y[11]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(11));

-- Location: LCCOMB_X12_Y4_N14
\Mux119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~0_combout\ = (Y(11) & (\MicroCode|Set_D\(1) & !\MicroCode|Set_D\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Y(11),
	datac => \MicroCode|Set_D\(1),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux119~0_combout\);

-- Location: FF_X13_Y4_N7
\Z[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux119~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(11));

-- Location: FF_X10_Y7_N23
\X[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux119~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(11));

-- Location: LCCOMB_X13_Y4_N24
\Mux119~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~4_combout\ = (\MicroCode|Set_D\(0) & (((X(11))) # (!\MicroCode|Set_D\(1)))) # (!\MicroCode|Set_D\(0) & (\MicroCode|Set_D\(1) & (PC(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(1),
	datac => PC(11),
	datad => X(11),
	combout => \Mux119~4_combout\);

-- Location: LCCOMB_X13_Y4_N22
\Mux119~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~5_combout\ = (\MicroCode|Set_D\(2) & (\Mux119~4_combout\ & ((\MicroCode|Set_D\(1)) # (IR(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(2),
	datac => IR(11),
	datad => \Mux119~4_combout\,
	combout => \Mux119~5_combout\);

-- Location: LCCOMB_X16_Y5_N30
\Mux119~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~1_combout\ = (\MicroCode|Set_D\(3) & (((\MicroCode|Set_D\(0))))) # (!\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0) & (DI(11))) # (!\MicroCode|Set_D\(0) & ((SI(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(11),
	datab => SI(11),
	datac => \MicroCode|Set_D\(3),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux119~1_combout\);

-- Location: LCCOMB_X13_Y4_N12
\Mux119~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~2_combout\ = (\MicroCode|Set_D\(3) & ((\Mux119~1_combout\ & ((!EIR(27)))) # (!\Mux119~1_combout\ & (!EIR(11))))) # (!\MicroCode|Set_D\(3) & (((\Mux119~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(11),
	datab => \MicroCode|Set_D\(3),
	datac => \Mux119~1_combout\,
	datad => EIR(27),
	combout => \Mux119~2_combout\);

-- Location: LCCOMB_X13_Y4_N10
\Mux119~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~3_combout\ = (\MicroCode|Set_D\(1) & \Mux119~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_D\(1),
	datad => \Mux119~2_combout\,
	combout => \Mux119~3_combout\);

-- Location: LCCOMB_X13_Y4_N20
\Mux119~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~6_combout\ = (\Mux118~1_combout\ & (!\Mux118~2_combout\)) # (!\Mux118~1_combout\ & ((\Mux118~2_combout\ & ((\Mux119~3_combout\))) # (!\Mux118~2_combout\ & (\Mux119~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux118~1_combout\,
	datab => \Mux118~2_combout\,
	datac => \Mux119~5_combout\,
	datad => \Mux119~3_combout\,
	combout => \Mux119~6_combout\);

-- Location: LCCOMB_X13_Y4_N6
\Mux119~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~7_combout\ = (\Mux118~3_combout\ & ((\Mux119~6_combout\ & (\Mux119~0_combout\)) # (!\Mux119~6_combout\ & ((Z(11)))))) # (!\Mux118~3_combout\ & (((\Mux119~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux119~0_combout\,
	datab => \Mux118~3_combout\,
	datac => Z(11),
	datad => \Mux119~6_combout\,
	combout => \Mux119~7_combout\);

-- Location: LCCOMB_X13_Y4_N30
\Mux119~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~8_combout\ = (\Data[11]~input_o\ & ((\Mux126~0_combout\) # ((!\Mux118~11_combout\ & \Mux119~7_combout\)))) # (!\Data[11]~input_o\ & (((!\Mux118~11_combout\ & \Mux119~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[11]~input_o\,
	datab => \Mux126~0_combout\,
	datac => \Mux118~11_combout\,
	datad => \Mux119~7_combout\,
	combout => \Mux119~8_combout\);

-- Location: FF_X12_Y4_N19
\data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux119~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(4));

-- Location: LCCOMB_X8_Y7_N20
\Z[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z[10]~feeder_combout\ = \Mux120~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux120~13_combout\,
	combout => \Z[10]~feeder_combout\);

-- Location: FF_X8_Y7_N21
\Z[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Z[10]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(10));

-- Location: LCCOMB_X8_Y7_N14
\Mux120~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~7_combout\ = (Z(10) & (\MicroCode|Set_D\(0) & !\MicroCode|Set_D\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Z(10),
	datac => \MicroCode|Set_D\(0),
	datad => \MicroCode|Set_D\(1),
	combout => \Mux120~7_combout\);

-- Location: FF_X11_Y7_N7
\Y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux120~13_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(10));

-- Location: FF_X10_Y7_N15
\X[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux120~13_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(10));

-- Location: LCCOMB_X10_Y7_N14
\Mux120~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~8_combout\ = (\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(1) & (X(10))) # (!\MicroCode|Set_D\(1) & ((IR(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(0),
	datac => X(10),
	datad => IR(10),
	combout => \Mux120~8_combout\);

-- Location: LCCOMB_X11_Y7_N28
\Mux120~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~9_combout\ = (\Mux120~8_combout\) # ((PC(10) & (\MicroCode|Set_D\(1) & !\MicroCode|Set_D\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(10),
	datab => \MicroCode|Set_D\(1),
	datac => \MicroCode|Set_D\(0),
	datad => \Mux120~8_combout\,
	combout => \Mux120~9_combout\);

-- Location: LCCOMB_X11_Y7_N6
\Mux120~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~10_combout\ = (\Mux120~2_combout\ & ((\Mux120~3_combout\ & (Y(10))) # (!\Mux120~3_combout\ & ((\Mux120~9_combout\))))) # (!\Mux120~2_combout\ & (!\Mux120~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~2_combout\,
	datab => \Mux120~3_combout\,
	datac => Y(10),
	datad => \Mux120~9_combout\,
	combout => \Mux120~10_combout\);

-- Location: LCCOMB_X11_Y7_N10
\Mux120~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~11_combout\ = ((!\MicroCode|Set_D\(3) & !\MicroCode|Set_D\(2))) # (!\Mux120~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(2),
	datad => \Mux120~10_combout\,
	combout => \Mux120~11_combout\);

-- Location: LCCOMB_X11_Y7_N30
\Mux120~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~12_combout\ = (\MicroCode|Set_D\(4) & (((!\Mux120~0_combout\)))) # (!\MicroCode|Set_D\(4) & ((\Mux120~0_combout\ & (\Mux120~7_combout\)) # (!\Mux120~0_combout\ & ((!\Mux120~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~7_combout\,
	datab => \MicroCode|Set_D\(4),
	datac => \Mux120~0_combout\,
	datad => \Mux120~11_combout\,
	combout => \Mux120~12_combout\);

-- Location: LCCOMB_X16_Y5_N28
\Mux120~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~4_combout\ = (\MicroCode|Set_D\(3) & (((\MicroCode|Set_D\(0))))) # (!\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0) & ((DI(10)))) # (!\MicroCode|Set_D\(0) & (SI(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SI(10),
	datab => \MicroCode|Set_D\(3),
	datac => DI(10),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux120~4_combout\);

-- Location: LCCOMB_X16_Y5_N18
\Mux120~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~5_combout\ = (\MicroCode|Set_D\(3) & ((\Mux120~4_combout\ & (!EIR(26))) # (!\Mux120~4_combout\ & ((!EIR(10)))))) # (!\MicroCode|Set_D\(3) & (((\Mux120~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => EIR(26),
	datac => EIR(10),
	datad => \Mux120~4_combout\,
	combout => \Mux120~5_combout\);

-- Location: LCCOMB_X16_Y5_N8
\Mux120~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~6_combout\ = (\MicroCode|Set_D\(1) & \Mux120~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datad => \Mux120~5_combout\,
	combout => \Mux120~6_combout\);

-- Location: LCCOMB_X11_Y7_N12
\Mux120~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~13_combout\ = (\Mux120~1_combout\ & ((\Mux120~12_combout\ & ((\Mux120~6_combout\))) # (!\Mux120~12_combout\ & (\Data[10]~input_o\)))) # (!\Mux120~1_combout\ & (((\Mux120~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~1_combout\,
	datab => \Data[10]~input_o\,
	datac => \Mux120~12_combout\,
	datad => \Mux120~6_combout\,
	combout => \Mux120~13_combout\);

-- Location: FF_X11_Y7_N11
\data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux120~13_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(5));

-- Location: LCCOMB_X9_Y6_N20
\Mux121~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~7_combout\ = (\Mux121~3_combout\ & ((PC(9)) # ((\Mux127~2_combout\)))) # (!\Mux121~3_combout\ & (((!\Mux127~2_combout\ & \Mux128~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux121~3_combout\,
	datab => PC(9),
	datac => \Mux127~2_combout\,
	datad => \Mux128~2_combout\,
	combout => \Mux121~7_combout\);

-- Location: LCCOMB_X9_Y6_N10
\Z[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z[9]~feeder_combout\ = \Mux121~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux121~12_combout\,
	combout => \Z[9]~feeder_combout\);

-- Location: FF_X9_Y6_N11
\Z[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Z[9]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(9));

-- Location: LCCOMB_X9_Y6_N24
\Mux121~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~4_combout\ = (\MicroCode|Set_D\(0) & Z(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(0),
	datad => Z(9),
	combout => \Mux121~4_combout\);

-- Location: LCCOMB_X9_Y6_N16
\Mux121~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~5_combout\ = (\Mux121~2_combout\ & ((\Mux121~1_combout\ & (\Data[9]~input_o\)) # (!\Mux121~1_combout\ & ((\Mux121~4_combout\))))) # (!\Mux121~2_combout\ & (((!\Mux121~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[9]~input_o\,
	datab => \Mux121~2_combout\,
	datac => \Mux121~1_combout\,
	datad => \Mux121~4_combout\,
	combout => \Mux121~5_combout\);

-- Location: LCCOMB_X9_Y6_N14
\Mux121~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~6_combout\ = (\MicroCode|Set_D\(3) & (((\Mux121~5_combout\)))) # (!\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(4) & ((\Mux121~5_combout\))) # (!\MicroCode|Set_D\(4) & (IR(9) & !\Mux121~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(4),
	datac => IR(9),
	datad => \Mux121~5_combout\,
	combout => \Mux121~6_combout\);

-- Location: FF_X8_Y6_N5
\X[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux121~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(9));

-- Location: LCCOMB_X8_Y6_N4
\Mux121~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~8_combout\ = (\Mux121~7_combout\ & (((X(9)) # (!\Mux127~2_combout\)))) # (!\Mux121~7_combout\ & (\Mux121~6_combout\ & ((\Mux127~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux121~7_combout\,
	datab => \Mux121~6_combout\,
	datac => X(9),
	datad => \Mux127~2_combout\,
	combout => \Mux121~8_combout\);

-- Location: FF_X8_Y6_N7
\Y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux121~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(9));

-- Location: LCCOMB_X12_Y6_N18
\Mux121~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~9_combout\ = (\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(3)) # ((DI(9))))) # (!\MicroCode|Set_D\(0) & (!\MicroCode|Set_D\(3) & ((SI(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(3),
	datac => DI(9),
	datad => SI(9),
	combout => \Mux121~9_combout\);

-- Location: LCCOMB_X8_Y6_N0
\Mux121~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~10_combout\ = (\MicroCode|Set_D\(3) & ((\Mux121~9_combout\ & ((!EIR(25)))) # (!\Mux121~9_combout\ & (!EIR(9))))) # (!\MicroCode|Set_D\(3) & (((\Mux121~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(9),
	datab => \MicroCode|Set_D\(3),
	datac => EIR(25),
	datad => \Mux121~9_combout\,
	combout => \Mux121~10_combout\);

-- Location: LCCOMB_X8_Y6_N6
\Mux121~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~11_combout\ = (\Mux121~1_combout\ & (((\Mux121~10_combout\)) # (!\Mux121~0_combout\))) # (!\Mux121~1_combout\ & (\Mux121~0_combout\ & (Y(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux121~1_combout\,
	datab => \Mux121~0_combout\,
	datac => Y(9),
	datad => \Mux121~10_combout\,
	combout => \Mux121~11_combout\);

-- Location: LCCOMB_X8_Y6_N26
\Mux121~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~12_combout\ = (\Mux117~8_combout\ & ((\Mux121~8_combout\) # ((\Mux117~9_combout\ & \Mux121~11_combout\)))) # (!\Mux117~8_combout\ & (((\Mux117~9_combout\ & \Mux121~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux117~8_combout\,
	datab => \Mux121~8_combout\,
	datac => \Mux117~9_combout\,
	datad => \Mux121~11_combout\,
	combout => \Mux121~12_combout\);

-- Location: FF_X9_Y6_N25
\data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux121~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(6));

-- Location: LCCOMB_X16_Y5_N26
\Mux122~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~0_combout\ = (\MicroCode|Set_D\(0) & ((DI(8)) # ((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (((SI(8) & !\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(8),
	datab => SI(8),
	datac => \MicroCode|Set_D\(0),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux122~0_combout\);

-- Location: LCCOMB_X16_Y5_N0
\Mux122~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~1_combout\ = (\Mux122~0_combout\ & (((!\MicroCode|Set_D\(3))) # (!EIR(24)))) # (!\Mux122~0_combout\ & (((!EIR(8) & \MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux122~0_combout\,
	datab => EIR(24),
	datac => EIR(8),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux122~1_combout\);

-- Location: LCCOMB_X12_Y7_N20
\Mux122~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~2_combout\ = (\MicroCode|Set_D\(1) & \Mux122~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datad => \Mux122~1_combout\,
	combout => \Mux122~2_combout\);

-- Location: LCCOMB_X8_Y7_N24
\Z[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z[8]~feeder_combout\ = \Mux122~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux122~9_combout\,
	combout => \Z[8]~feeder_combout\);

-- Location: FF_X8_Y7_N25
\Z[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Z[8]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(8));

-- Location: LCCOMB_X8_Y7_N22
\Mux122~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~3_combout\ = (Z(8) & (\MicroCode|Set_D\(0) & !\MicroCode|Set_D\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Z(8),
	datac => \MicroCode|Set_D\(0),
	datad => \MicroCode|Set_D\(1),
	combout => \Mux122~3_combout\);

-- Location: FF_X11_Y7_N19
\Y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux122~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(8));

-- Location: FF_X10_Y7_N13
\X[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux122~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(8));

-- Location: LCCOMB_X10_Y7_N12
\Mux122~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~4_combout\ = (\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(1) & (X(8))) # (!\MicroCode|Set_D\(1) & ((IR(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(0),
	datac => X(8),
	datad => IR(8),
	combout => \Mux122~4_combout\);

-- Location: LCCOMB_X11_Y7_N0
\Mux122~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~5_combout\ = (\Mux122~4_combout\) # ((PC(8) & (\MicroCode|Set_D\(1) & !\MicroCode|Set_D\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(8),
	datab => \MicroCode|Set_D\(1),
	datac => \MicroCode|Set_D\(0),
	datad => \Mux122~4_combout\,
	combout => \Mux122~5_combout\);

-- Location: LCCOMB_X11_Y7_N18
\Mux122~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~6_combout\ = (\Mux120~2_combout\ & ((\Mux120~3_combout\ & (Y(8))) # (!\Mux120~3_combout\ & ((\Mux122~5_combout\))))) # (!\Mux120~2_combout\ & (!\Mux120~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~2_combout\,
	datab => \Mux120~3_combout\,
	datac => Y(8),
	datad => \Mux122~5_combout\,
	combout => \Mux122~6_combout\);

-- Location: LCCOMB_X11_Y7_N2
\Mux122~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~7_combout\ = ((!\MicroCode|Set_D\(3) & !\MicroCode|Set_D\(2))) # (!\Mux122~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(2),
	datad => \Mux122~6_combout\,
	combout => \Mux122~7_combout\);

-- Location: LCCOMB_X11_Y7_N24
\Mux122~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~8_combout\ = (\MicroCode|Set_D\(4) & (((!\Mux120~0_combout\)))) # (!\MicroCode|Set_D\(4) & ((\Mux120~0_combout\ & (\Mux122~3_combout\)) # (!\Mux120~0_combout\ & ((!\Mux122~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux122~3_combout\,
	datab => \MicroCode|Set_D\(4),
	datac => \Mux120~0_combout\,
	datad => \Mux122~7_combout\,
	combout => \Mux122~8_combout\);

-- Location: LCCOMB_X11_Y7_N14
\Mux122~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~9_combout\ = (\Mux120~1_combout\ & ((\Mux122~8_combout\ & ((\Mux122~2_combout\))) # (!\Mux122~8_combout\ & (\Data[8]~input_o\)))) # (!\Mux120~1_combout\ & (((\Mux122~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~1_combout\,
	datab => \Data[8]~input_o\,
	datac => \Mux122~2_combout\,
	datad => \Mux122~8_combout\,
	combout => \Mux122~9_combout\);

-- Location: FF_X11_Y7_N9
\data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux122~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(7));

-- Location: LCCOMB_X12_Y6_N28
\Mux123~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~0_combout\ = (\MicroCode|Set_D\(0) & ((DI(7)) # ((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (((SI(7) & !\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(7),
	datab => \MicroCode|Set_D\(0),
	datac => SI(7),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux123~0_combout\);

-- Location: LCCOMB_X12_Y6_N2
\Mux123~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~1_combout\ = (\MicroCode|Set_D\(3) & ((\Mux123~0_combout\ & ((!EIR(23)))) # (!\Mux123~0_combout\ & (!EIR(7))))) # (!\MicroCode|Set_D\(3) & (((\Mux123~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(7),
	datab => \MicroCode|Set_D\(3),
	datac => EIR(23),
	datad => \Mux123~0_combout\,
	combout => \Mux123~1_combout\);

-- Location: LCCOMB_X11_Y6_N4
\Mux123~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~2_combout\ = (\MicroCode|Set_D\(1) & \Mux123~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(1),
	datad => \Mux123~1_combout\,
	combout => \Mux123~2_combout\);

-- Location: LCCOMB_X10_Y6_N2
\Mux127~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~4_combout\ = (\MicroCode|Set_D\(3) & (!\MicroCode|Set_D\(1) & !\MicroCode|Set_D\(2))) # (!\MicroCode|Set_D\(3) & (\MicroCode|Set_D\(1) & \MicroCode|Set_D\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(3),
	datac => \MicroCode|Set_D\(1),
	datad => \MicroCode|Set_D\(2),
	combout => \Mux127~4_combout\);

-- Location: LCCOMB_X11_Y6_N30
\Mux127~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~19_combout\ = (\MicroCode|Set_D\(4) & (((\MicroCode|Set_D\(2))))) # (!\MicroCode|Set_D\(4) & (\MicroCode|Set_D\(0) & ((\Mux127~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(2),
	datac => \MicroCode|Set_D\(4),
	datad => \Mux127~4_combout\,
	combout => \Mux127~19_combout\);

-- Location: LCCOMB_X11_Y6_N26
\Mux127~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~5_combout\ = (\MicroCode|Set_D\(4) & (((\Mux130~4_combout\ & !\MicroCode|Set_D\(1))) # (!\Mux127~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~19_combout\,
	datab => \MicroCode|Set_D\(4),
	datac => \Mux130~4_combout\,
	datad => \MicroCode|Set_D\(1),
	combout => \Mux127~5_combout\);

-- Location: FF_X11_Y6_N21
\X[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux123~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(7));

-- Location: LCCOMB_X10_Y6_N0
\Mux127~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~6_combout\ = (\MicroCode|Set_D\(2) & ((\MicroCode|Set_D\(0)) # (!\MicroCode|Set_D\(1)))) # (!\MicroCode|Set_D\(2) & (\MicroCode|Set_D\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(2),
	datac => \MicroCode|Set_D\(1),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux127~6_combout\);

-- Location: FF_X10_Y7_N31
\Z[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux123~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(7));

-- Location: LCCOMB_X10_Y7_N2
\Mux123~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~3_combout\ = (\MicroCode|Set_D\(2) & (((Z(15)) # (\Mux127~6_combout\)))) # (!\MicroCode|Set_D\(2) & (X(15) & ((!\Mux127~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => X(15),
	datac => Z(15),
	datad => \Mux127~6_combout\,
	combout => \Mux123~3_combout\);

-- Location: LCCOMB_X10_Y7_N30
\Mux123~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~4_combout\ = (\Mux127~6_combout\ & ((\Mux123~3_combout\ & ((Z(7)))) # (!\Mux123~3_combout\ & (Y(15))))) # (!\Mux127~6_combout\ & (((\Mux123~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Y(15),
	datab => \Mux127~6_combout\,
	datac => Z(7),
	datad => \Mux123~3_combout\,
	combout => \Mux123~4_combout\);

-- Location: FF_X11_Y6_N11
\Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux123~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(7));

-- Location: LCCOMB_X11_Y6_N24
\Mux127~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~7_combout\ = (\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0)) # (\MicroCode|Set_D\(1) $ (!\MicroCode|Set_D\(2))))) # (!\MicroCode|Set_D\(3) & (((\MicroCode|Set_D\(2)) # (!\MicroCode|Set_D\(0))) # (!\MicroCode|Set_D\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(1),
	datac => \MicroCode|Set_D\(0),
	datad => \MicroCode|Set_D\(2),
	combout => \Mux127~7_combout\);

-- Location: LCCOMB_X10_Y8_N6
\Mux123~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~5_combout\ = (\MicroCode|Set_D\(1) & (((PC(7))))) # (!\MicroCode|Set_D\(1) & (\MicroCode|Set_D\(0) & (IR(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(0),
	datac => IR(7),
	datad => PC(7),
	combout => \Mux123~5_combout\);

-- Location: LCCOMB_X11_Y6_N2
\Mux123~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~6_combout\ = (\Mux127~7_combout\ & ((\MicroCode|Set_D\(3)) # ((\MicroCode|Set_D\(2) & \Mux123~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \Mux127~7_combout\,
	datac => \MicroCode|Set_D\(3),
	datad => \Mux123~5_combout\,
	combout => \Mux123~6_combout\);

-- Location: LCCOMB_X11_Y6_N10
\Mux123~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~7_combout\ = (\MicroCode|Set_D\(3) & ((\Mux123~6_combout\ & (\Mux123~4_combout\)) # (!\Mux123~6_combout\ & ((Y(7)))))) # (!\MicroCode|Set_D\(3) & (((\Mux123~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \Mux123~4_combout\,
	datac => Y(7),
	datad => \Mux123~6_combout\,
	combout => \Mux123~7_combout\);

-- Location: LCCOMB_X11_Y6_N20
\Mux123~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~8_combout\ = (\Mux127~19_combout\ & (!\MicroCode|Set_D\(4) & (X(7)))) # (!\Mux127~19_combout\ & ((\MicroCode|Set_D\(4)) # ((\Mux123~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~19_combout\,
	datab => \MicroCode|Set_D\(4),
	datac => X(7),
	datad => \Mux123~7_combout\,
	combout => \Mux123~8_combout\);

-- Location: LCCOMB_X11_Y6_N28
\Mux123~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~9_combout\ = (\Mux127~5_combout\ & ((\Mux123~8_combout\ & ((\Mux123~2_combout\))) # (!\Mux123~8_combout\ & (\Data[7]~input_o\)))) # (!\Mux127~5_combout\ & (((\Mux123~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[7]~input_o\,
	datab => \Mux123~2_combout\,
	datac => \Mux127~5_combout\,
	datad => \Mux123~8_combout\,
	combout => \Mux123~9_combout\);

-- Location: FF_X9_Y6_N7
\data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux123~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(8));

-- Location: LCCOMB_X10_Y4_N4
\Mux126~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~1_combout\ = (\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(2) & (\MicroCode|Set_D\(1) & !\MicroCode|Set_D\(3))) # (!\MicroCode|Set_D\(2) & (!\MicroCode|Set_D\(1) & \MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \MicroCode|Set_D\(1),
	datac => \MicroCode|Set_D\(0),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux126~1_combout\);

-- Location: LCCOMB_X10_Y4_N26
\Mux126~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~2_combout\ = (!\Mux126~1_combout\ & !\MicroCode|Set_D\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux126~1_combout\,
	datad => \MicroCode|Set_D\(4),
	combout => \Mux126~2_combout\);

-- Location: LCCOMB_X9_Y5_N4
\Mux124~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~0_combout\ = (!\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(2)) # (!\MicroCode|Set_D\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(3),
	datac => \MicroCode|Set_D\(2),
	combout => \Mux124~0_combout\);

-- Location: FF_X9_Y5_N9
\Z[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux124~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(6));

-- Location: LCCOMB_X9_Y5_N18
\Mux124~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~1_combout\ = (\MicroCode|Set_D\(2) & ((Z(14)) # ((\Mux127~6_combout\)))) # (!\MicroCode|Set_D\(2) & (((!\Mux127~6_combout\ & X(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => Z(14),
	datac => \Mux127~6_combout\,
	datad => X(14),
	combout => \Mux124~1_combout\);

-- Location: LCCOMB_X9_Y5_N8
\Mux124~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~2_combout\ = (\Mux127~6_combout\ & ((\Mux124~1_combout\ & ((Z(6)))) # (!\Mux124~1_combout\ & (Y(14))))) # (!\Mux127~6_combout\ & (((\Mux124~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~6_combout\,
	datab => Y(14),
	datac => Z(6),
	datad => \Mux124~1_combout\,
	combout => \Mux124~2_combout\);

-- Location: LCCOMB_X9_Y5_N24
\Mux124~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~9_combout\ = (\MicroCode|Set_D\(1) & (((PC(6))))) # (!\MicroCode|Set_D\(1) & (\MicroCode|Set_D\(0) & ((IR(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(0),
	datac => PC(6),
	datad => IR(6),
	combout => \Mux124~9_combout\);

-- Location: LCCOMB_X9_Y5_N6
\Mux124~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~10_combout\ = (\MicroCode|Set_D\(2) & (((\Mux124~9_combout\)))) # (!\MicroCode|Set_D\(2) & (\MicroCode|Set_D\(0) & (FR(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => FR(2),
	datac => \MicroCode|Set_D\(2),
	datad => \Mux124~9_combout\,
	combout => \Mux124~10_combout\);

-- Location: LCCOMB_X9_Y5_N30
\Mux124~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~3_combout\ = (\MicroCode|Set_D\(3) & ((\Mux124~2_combout\) # ((\Mux124~0_combout\ & \Mux124~10_combout\)))) # (!\MicroCode|Set_D\(3) & (\Mux124~0_combout\ & ((\Mux124~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \Mux124~0_combout\,
	datac => \Mux124~2_combout\,
	datad => \Mux124~10_combout\,
	combout => \Mux124~3_combout\);

-- Location: FF_X10_Y4_N19
\Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux124~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(6));

-- Location: LCCOMB_X10_Y4_N30
\Mux126~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~4_combout\ = \MicroCode|Set_D\(2) $ (\MicroCode|Set_D\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_D\(2),
	datad => \MicroCode|Set_D\(1),
	combout => \Mux126~4_combout\);

-- Location: LCCOMB_X10_Y4_N12
\Mux126~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~5_combout\ = (\MicroCode|Set_D\(4)) # ((\Mux126~4_combout\ & (\MicroCode|Set_D\(3) & !\MicroCode|Set_D\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~4_combout\,
	datab => \MicroCode|Set_D\(3),
	datac => \MicroCode|Set_D\(0),
	datad => \MicroCode|Set_D\(4),
	combout => \Mux126~5_combout\);

-- Location: LCCOMB_X10_Y4_N0
\Mux126~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~3_combout\ = (\MicroCode|Set_D\(4) & (\MicroCode|Set_D\(1))) # (!\MicroCode|Set_D\(4) & ((\Mux126~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(1),
	datac => \Mux126~1_combout\,
	datad => \MicroCode|Set_D\(4),
	combout => \Mux126~3_combout\);

-- Location: FF_X10_Y4_N7
\X[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux124~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(6));

-- Location: LCCOMB_X10_Y8_N26
\Mux124~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~4_combout\ = (\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(3)) # ((DI(6))))) # (!\MicroCode|Set_D\(0) & (!\MicroCode|Set_D\(3) & (SI(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(3),
	datac => SI(6),
	datad => DI(6),
	combout => \Mux124~4_combout\);

-- Location: LCCOMB_X10_Y4_N28
\Mux124~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~5_combout\ = (\MicroCode|Set_D\(3) & ((\Mux124~4_combout\ & (!EIR(22))) # (!\Mux124~4_combout\ & ((!EIR(6)))))) # (!\MicroCode|Set_D\(3) & (((\Mux124~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(22),
	datab => \MicroCode|Set_D\(3),
	datac => \Mux124~4_combout\,
	datad => EIR(6),
	combout => \Mux124~5_combout\);

-- Location: LCCOMB_X10_Y4_N6
\Mux124~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~6_combout\ = (\Mux126~5_combout\ & (\Mux126~3_combout\ & ((\Mux124~5_combout\)))) # (!\Mux126~5_combout\ & (((X(6))) # (!\Mux126~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~5_combout\,
	datab => \Mux126~3_combout\,
	datac => X(6),
	datad => \Mux124~5_combout\,
	combout => \Mux124~6_combout\);

-- Location: LCCOMB_X10_Y4_N18
\Mux124~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~7_combout\ = (\Mux126~2_combout\ & ((\Mux124~6_combout\ & (\Mux124~3_combout\)) # (!\Mux124~6_combout\ & ((Y(6)))))) # (!\Mux126~2_combout\ & (((\Mux124~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~2_combout\,
	datab => \Mux124~3_combout\,
	datac => Y(6),
	datad => \Mux124~6_combout\,
	combout => \Mux124~7_combout\);

-- Location: LCCOMB_X10_Y4_N22
\Mux124~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~8_combout\ = (\Data[6]~input_o\ & ((\Mux126~0_combout\) # ((!\Mux118~11_combout\ & \Mux124~7_combout\)))) # (!\Data[6]~input_o\ & (((!\Mux118~11_combout\ & \Mux124~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[6]~input_o\,
	datab => \Mux126~0_combout\,
	datac => \Mux118~11_combout\,
	datad => \Mux124~7_combout\,
	combout => \Mux124~8_combout\);

-- Location: LCCOMB_X9_Y4_N28
\data_out[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[9]~feeder_combout\ = \Mux124~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux124~8_combout\,
	combout => \data_out[9]~feeder_combout\);

-- Location: FF_X9_Y4_N29
\data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[9]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(9));

-- Location: FF_X11_Y6_N15
\X[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux125~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(5));

-- Location: FF_X10_Y5_N23
\Z[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux125~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(5));

-- Location: LCCOMB_X10_Y5_N12
\Mux125~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~3_combout\ = (\MicroCode|Set_D\(2) & (((Z(13)) # (\Mux127~6_combout\)))) # (!\MicroCode|Set_D\(2) & (X(13) & ((!\Mux127~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => X(13),
	datab => Z(13),
	datac => \MicroCode|Set_D\(2),
	datad => \Mux127~6_combout\,
	combout => \Mux125~3_combout\);

-- Location: LCCOMB_X10_Y5_N22
\Mux125~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~4_combout\ = (\Mux127~6_combout\ & ((\Mux125~3_combout\ & ((Z(5)))) # (!\Mux125~3_combout\ & (Y(13))))) # (!\Mux127~6_combout\ & (((\Mux125~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Y(13),
	datab => \Mux127~6_combout\,
	datac => Z(5),
	datad => \Mux125~3_combout\,
	combout => \Mux125~4_combout\);

-- Location: FF_X11_Y6_N17
\Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux125~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(5));

-- Location: LCCOMB_X10_Y8_N4
\Mux125~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~5_combout\ = (\MicroCode|Set_D\(1) & (((PC(5))))) # (!\MicroCode|Set_D\(1) & (\MicroCode|Set_D\(0) & (IR(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(0),
	datac => IR(5),
	datad => PC(5),
	combout => \Mux125~5_combout\);

-- Location: LCCOMB_X11_Y6_N18
\Mux125~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~6_combout\ = (\Mux127~7_combout\ & ((\MicroCode|Set_D\(3)) # ((\MicroCode|Set_D\(2) & \Mux125~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \Mux127~7_combout\,
	datac => \MicroCode|Set_D\(3),
	datad => \Mux125~5_combout\,
	combout => \Mux125~6_combout\);

-- Location: LCCOMB_X11_Y6_N16
\Mux125~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~7_combout\ = (\MicroCode|Set_D\(3) & ((\Mux125~6_combout\ & (\Mux125~4_combout\)) # (!\Mux125~6_combout\ & ((Y(5)))))) # (!\MicroCode|Set_D\(3) & (((\Mux125~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \Mux125~4_combout\,
	datac => Y(5),
	datad => \Mux125~6_combout\,
	combout => \Mux125~7_combout\);

-- Location: LCCOMB_X11_Y6_N14
\Mux125~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~8_combout\ = (\Mux127~19_combout\ & (!\MicroCode|Set_D\(4) & (X(5)))) # (!\Mux127~19_combout\ & ((\MicroCode|Set_D\(4)) # ((\Mux125~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~19_combout\,
	datab => \MicroCode|Set_D\(4),
	datac => X(5),
	datad => \Mux125~7_combout\,
	combout => \Mux125~8_combout\);

-- Location: LCCOMB_X14_Y6_N22
\Mux125~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~0_combout\ = (\MicroCode|Set_D\(3) & (\MicroCode|Set_D\(0))) # (!\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0) & ((DI(5)))) # (!\MicroCode|Set_D\(0) & (SI(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(0),
	datac => SI(5),
	datad => DI(5),
	combout => \Mux125~0_combout\);

-- Location: LCCOMB_X14_Y6_N10
\Mux125~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~1_combout\ = (\MicroCode|Set_D\(3) & ((\Mux125~0_combout\ & ((!EIR(21)))) # (!\Mux125~0_combout\ & (!EIR(5))))) # (!\MicroCode|Set_D\(3) & (((\Mux125~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => EIR(5),
	datac => EIR(21),
	datad => \Mux125~0_combout\,
	combout => \Mux125~1_combout\);

-- Location: LCCOMB_X14_Y6_N12
\Mux125~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~2_combout\ = (\MicroCode|Set_D\(1) & \Mux125~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_D\(1),
	datad => \Mux125~1_combout\,
	combout => \Mux125~2_combout\);

-- Location: LCCOMB_X11_Y6_N8
\Mux125~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~9_combout\ = (\Mux127~5_combout\ & ((\Mux125~8_combout\ & ((\Mux125~2_combout\))) # (!\Mux125~8_combout\ & (\Data[5]~input_o\)))) # (!\Mux127~5_combout\ & (((\Mux125~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~5_combout\,
	datab => \Data[5]~input_o\,
	datac => \Mux125~8_combout\,
	datad => \Mux125~2_combout\,
	combout => \Mux125~9_combout\);

-- Location: LCCOMB_X11_Y5_N4
\data_out[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[10]~feeder_combout\ = \Mux125~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux125~9_combout\,
	combout => \data_out[10]~feeder_combout\);

-- Location: FF_X11_Y5_N5
\data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[10]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(10));

-- Location: FF_X10_Y4_N17
\X[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux126~15_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(4));

-- Location: LCCOMB_X10_Y8_N12
\Mux126~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~11_combout\ = (\MicroCode|Set_D\(0) & ((DI(4)) # ((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (((SI(4) & !\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(4),
	datab => \MicroCode|Set_D\(0),
	datac => SI(4),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux126~11_combout\);

-- Location: LCCOMB_X10_Y4_N10
\Mux126~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~12_combout\ = (\MicroCode|Set_D\(3) & ((\Mux126~11_combout\ & ((!EIR(20)))) # (!\Mux126~11_combout\ & (!EIR(4))))) # (!\MicroCode|Set_D\(3) & (((\Mux126~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(4),
	datab => \MicroCode|Set_D\(3),
	datac => EIR(20),
	datad => \Mux126~11_combout\,
	combout => \Mux126~12_combout\);

-- Location: LCCOMB_X10_Y4_N16
\Mux126~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~13_combout\ = (\Mux126~5_combout\ & (\Mux126~3_combout\ & ((\Mux126~12_combout\)))) # (!\Mux126~5_combout\ & (((X(4))) # (!\Mux126~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~5_combout\,
	datab => \Mux126~3_combout\,
	datac => X(4),
	datad => \Mux126~12_combout\,
	combout => \Mux126~13_combout\);

-- Location: FF_X10_Y4_N21
\Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux126~15_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(4));

-- Location: LCCOMB_X9_Y4_N14
\Z[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Z[4]~feeder_combout\ = \Mux126~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux126~15_combout\,
	combout => \Z[4]~feeder_combout\);

-- Location: FF_X9_Y4_N15
\Z[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Z[4]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(4));

-- Location: LCCOMB_X9_Y5_N10
\Mux126~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~8_combout\ = (\Mux127~6_combout\ & (\MicroCode|Set_D\(2))) # (!\Mux127~6_combout\ & ((\MicroCode|Set_D\(2) & (Z(12))) # (!\MicroCode|Set_D\(2) & ((X(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~6_combout\,
	datab => \MicroCode|Set_D\(2),
	datac => Z(12),
	datad => X(12),
	combout => \Mux126~8_combout\);

-- Location: LCCOMB_X9_Y5_N26
\Mux126~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~9_combout\ = (\Mux127~6_combout\ & ((\Mux126~8_combout\ & ((Z(4)))) # (!\Mux126~8_combout\ & (Y(12))))) # (!\Mux127~6_combout\ & (((\Mux126~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~6_combout\,
	datab => Y(12),
	datac => Z(4),
	datad => \Mux126~8_combout\,
	combout => \Mux126~9_combout\);

-- Location: LCCOMB_X10_Y6_N6
\Mux126~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~6_combout\ = (\MicroCode|Set_D\(2) & ((\MicroCode|Set_D\(1) & (PC(4))) # (!\MicroCode|Set_D\(1) & ((\MicroCode|Set_D\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(2),
	datac => PC(4),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux126~6_combout\);

-- Location: LCCOMB_X9_Y5_N28
\Mux126~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~7_combout\ = (\Mux126~6_combout\ & ((\MicroCode|Set_D\(1)) # ((IR(4)) # (!\MicroCode|Set_D\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(2),
	datac => IR(4),
	datad => \Mux126~6_combout\,
	combout => \Mux126~7_combout\);

-- Location: LCCOMB_X9_Y5_N12
\Mux126~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~10_combout\ = (\Mux126~9_combout\ & ((\MicroCode|Set_D\(3)) # ((\Mux124~0_combout\ & \Mux126~7_combout\)))) # (!\Mux126~9_combout\ & (((\Mux124~0_combout\ & \Mux126~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~9_combout\,
	datab => \MicroCode|Set_D\(3),
	datac => \Mux124~0_combout\,
	datad => \Mux126~7_combout\,
	combout => \Mux126~10_combout\);

-- Location: LCCOMB_X10_Y4_N20
\Mux126~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~14_combout\ = (\Mux126~2_combout\ & ((\Mux126~13_combout\ & ((\Mux126~10_combout\))) # (!\Mux126~13_combout\ & (Y(4))))) # (!\Mux126~2_combout\ & (\Mux126~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~2_combout\,
	datab => \Mux126~13_combout\,
	datac => Y(4),
	datad => \Mux126~10_combout\,
	combout => \Mux126~14_combout\);

-- Location: LCCOMB_X10_Y4_N14
\Mux126~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~15_combout\ = (\Mux118~11_combout\ & (\Data[4]~input_o\ & (\Mux126~0_combout\))) # (!\Mux118~11_combout\ & ((\Mux126~14_combout\) # ((\Data[4]~input_o\ & \Mux126~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux118~11_combout\,
	datab => \Data[4]~input_o\,
	datac => \Mux126~0_combout\,
	datad => \Mux126~14_combout\,
	combout => \Mux126~15_combout\);

-- Location: LCCOMB_X11_Y4_N4
\data_out[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[11]~feeder_combout\ = \Mux126~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux126~15_combout\,
	combout => \data_out[11]~feeder_combout\);

-- Location: FF_X11_Y4_N5
\data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[11]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(11));

-- Location: FF_X11_Y6_N23
\X[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux127~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(3));

-- Location: FF_X10_Y7_N19
\Z[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux127~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(3));

-- Location: LCCOMB_X10_Y7_N20
\Mux127~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~14_combout\ = (\Mux127~6_combout\ & (((\MicroCode|Set_D\(2))))) # (!\Mux127~6_combout\ & ((\MicroCode|Set_D\(2) & ((Z(11)))) # (!\MicroCode|Set_D\(2) & (X(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => X(11),
	datab => \Mux127~6_combout\,
	datac => \MicroCode|Set_D\(2),
	datad => Z(11),
	combout => \Mux127~14_combout\);

-- Location: LCCOMB_X10_Y7_N18
\Mux127~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~15_combout\ = (\Mux127~6_combout\ & ((\Mux127~14_combout\ & ((Z(3)))) # (!\Mux127~14_combout\ & (Y(11))))) # (!\Mux127~6_combout\ & (((\Mux127~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Y(11),
	datab => \Mux127~6_combout\,
	datac => Z(3),
	datad => \Mux127~14_combout\,
	combout => \Mux127~15_combout\);

-- Location: FF_X11_Y6_N13
\Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux127~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(3));

-- Location: LCCOMB_X10_Y6_N16
\Mux127~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~11_combout\ = (\MicroCode|Set_D\(1) & ((PC(3)))) # (!\MicroCode|Set_D\(1) & (IR(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datac => IR(3),
	datad => PC(3),
	combout => \Mux127~11_combout\);

-- Location: LCCOMB_X10_Y6_N18
\Mux127~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~12_combout\ = (\MicroCode|Set_D\(2) & (\Mux127~11_combout\ & ((\MicroCode|Set_D\(0)) # (\MicroCode|Set_D\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \MicroCode|Set_D\(0),
	datac => \MicroCode|Set_D\(1),
	datad => \Mux127~11_combout\,
	combout => \Mux127~12_combout\);

-- Location: LCCOMB_X11_Y6_N12
\Mux127~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~13_combout\ = (\MicroCode|Set_D\(3) & (!\Mux127~7_combout\ & (Y(3)))) # (!\MicroCode|Set_D\(3) & (\Mux127~7_combout\ & ((\Mux127~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \Mux127~7_combout\,
	datac => Y(3),
	datad => \Mux127~12_combout\,
	combout => \Mux127~13_combout\);

-- Location: LCCOMB_X11_Y6_N6
\Mux127~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~16_combout\ = (\Mux127~13_combout\) # ((\MicroCode|Set_D\(3) & (\Mux127~7_combout\ & \Mux127~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \Mux127~7_combout\,
	datac => \Mux127~15_combout\,
	datad => \Mux127~13_combout\,
	combout => \Mux127~16_combout\);

-- Location: LCCOMB_X11_Y6_N22
\Mux127~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~17_combout\ = (\Mux127~19_combout\ & (!\MicroCode|Set_D\(4) & (X(3)))) # (!\Mux127~19_combout\ & ((\MicroCode|Set_D\(4)) # ((\Mux127~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~19_combout\,
	datab => \MicroCode|Set_D\(4),
	datac => X(3),
	datad => \Mux127~16_combout\,
	combout => \Mux127~17_combout\);

-- Location: LCCOMB_X16_Y6_N6
\Mux127~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~8_combout\ = (\MicroCode|Set_D\(3) & (((\MicroCode|Set_D\(0))))) # (!\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0) & (DI(3))) # (!\MicroCode|Set_D\(0) & ((SI(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => DI(3),
	datac => SI(3),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux127~8_combout\);

-- Location: LCCOMB_X16_Y6_N16
\Mux127~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~9_combout\ = (\Mux127~8_combout\ & (((!\MicroCode|Set_D\(3))) # (!EIR(19)))) # (!\Mux127~8_combout\ & (((\MicroCode|Set_D\(3) & !EIR(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~8_combout\,
	datab => EIR(19),
	datac => \MicroCode|Set_D\(3),
	datad => EIR(3),
	combout => \Mux127~9_combout\);

-- Location: LCCOMB_X16_Y6_N10
\Mux127~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~10_combout\ = (\MicroCode|Set_D\(1) & \Mux127~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_D\(1),
	datad => \Mux127~9_combout\,
	combout => \Mux127~10_combout\);

-- Location: LCCOMB_X11_Y6_N0
\Mux127~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~18_combout\ = (\Mux127~5_combout\ & ((\Mux127~17_combout\ & ((\Mux127~10_combout\))) # (!\Mux127~17_combout\ & (\Data[3]~input_o\)))) # (!\Mux127~5_combout\ & (((\Mux127~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~5_combout\,
	datab => \Data[3]~input_o\,
	datac => \Mux127~17_combout\,
	datad => \Mux127~10_combout\,
	combout => \Mux127~18_combout\);

-- Location: LCCOMB_X11_Y4_N26
\data_out[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[12]~feeder_combout\ = \Mux127~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux127~18_combout\,
	combout => \data_out[12]~feeder_combout\);

-- Location: FF_X11_Y4_N27
\data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[12]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(12));

-- Location: FF_X8_Y7_N19
\Z[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux128~11_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(2));

-- Location: FF_X8_Y7_N17
\X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux128~11_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(2));

-- Location: LCCOMB_X8_Y7_N16
\Mux130~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~7_combout\ = (\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(3)) # ((X(2))))) # (!\MicroCode|Set_D\(0) & (!\MicroCode|Set_D\(3) & ((PC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(3),
	datac => X(2),
	datad => PC(2),
	combout => \Mux130~7_combout\);

-- Location: LCCOMB_X8_Y7_N18
\Mux130~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~8_combout\ = (\MicroCode|Set_D\(3) & ((\Mux130~7_combout\ & ((Z(2)))) # (!\Mux130~7_combout\ & (Z(10))))) # (!\MicroCode|Set_D\(3) & (((\Mux130~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Z(10),
	datab => \MicroCode|Set_D\(3),
	datac => Z(2),
	datad => \Mux130~7_combout\,
	combout => \Mux130~8_combout\);

-- Location: LCCOMB_X8_Y7_N8
\Mux128~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~10_combout\ = (\MicroCode|Set_D\(4) & (\MicroCode|Set_D\(0) & (!\MicroCode|Set_D\(3)))) # (!\MicroCode|Set_D\(4) & (((\Mux130~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(4),
	datac => \MicroCode|Set_D\(3),
	datad => \Mux130~8_combout\,
	combout => \Mux128~10_combout\);

-- Location: LCCOMB_X9_Y7_N20
\Mux128~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~3_combout\ = (\MicroCode|Set_D\(3) & ((Z(2)))) # (!\MicroCode|Set_D\(3) & (IR(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datac => IR(2),
	datad => Z(2),
	combout => \Mux128~3_combout\);

-- Location: FF_X9_Y7_N31
\Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux128~11_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(2));

-- Location: LCCOMB_X8_Y7_N12
\Mux128~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~4_combout\ = (\MicroCode|Set_D\(4) & (\Data[2]~input_o\)) # (!\MicroCode|Set_D\(4) & ((Y(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data[2]~input_o\,
	datac => \MicroCode|Set_D\(4),
	datad => Y(2),
	combout => \Mux128~4_combout\);

-- Location: LCCOMB_X8_Y7_N4
\Mux127~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~3_combout\ = (\MicroCode|Set_D\(0) & !\MicroCode|Set_D\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_D\(0),
	datad => \MicroCode|Set_D\(4),
	combout => \Mux127~3_combout\);

-- Location: LCCOMB_X8_Y7_N30
\Mux128~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~5_combout\ = (\Mux128~3_combout\ & ((\Mux127~3_combout\) # ((\Mux128~4_combout\ & \Mux130~4_combout\)))) # (!\Mux128~3_combout\ & (\Mux128~4_combout\ & ((\Mux130~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~3_combout\,
	datab => \Mux128~4_combout\,
	datac => \Mux127~3_combout\,
	datad => \Mux130~4_combout\,
	combout => \Mux128~5_combout\);

-- Location: LCCOMB_X8_Y7_N26
\Mux128~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~7_combout\ = (\MicroCode|Set_D\(4)) # ((\MicroCode|Set_D\(0) & ((X(2)))) # (!\MicroCode|Set_D\(0) & (X(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => X(10),
	datab => \MicroCode|Set_D\(4),
	datac => \MicroCode|Set_D\(0),
	datad => X(2),
	combout => \Mux128~7_combout\);

-- Location: LCCOMB_X8_Y7_N28
\Mux128~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~8_combout\ = (\MicroCode|Set_D\(3) & (\Mux128~7_combout\)) # (!\MicroCode|Set_D\(3) & (((\Mux127~3_combout\ & FR(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~7_combout\,
	datab => \MicroCode|Set_D\(3),
	datac => \Mux127~3_combout\,
	datad => FR(2),
	combout => \Mux128~8_combout\);

-- Location: LCCOMB_X9_Y7_N30
\Mux128~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~6_combout\ = (\MicroCode|Set_D\(0) & ((Y(10)))) # (!\MicroCode|Set_D\(0) & (Y(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datac => Y(2),
	datad => Y(10),
	combout => \Mux128~6_combout\);

-- Location: LCCOMB_X10_Y8_N22
\Mux130~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~5_combout\ = (\MicroCode|Set_D\(3) & (((\MicroCode|Set_D\(0)) # (!EIR(2))))) # (!\MicroCode|Set_D\(3) & (SI(2) & (!\MicroCode|Set_D\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SI(2),
	datab => \MicroCode|Set_D\(3),
	datac => \MicroCode|Set_D\(0),
	datad => EIR(2),
	combout => \Mux130~5_combout\);

-- Location: LCCOMB_X11_Y8_N30
\Mux130~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~6_combout\ = (\MicroCode|Set_D\(0) & ((\Mux130~5_combout\ & (!EIR(18))) # (!\Mux130~5_combout\ & ((DI(2)))))) # (!\MicroCode|Set_D\(0) & (((\Mux130~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => EIR(18),
	datac => DI(2),
	datad => \Mux130~5_combout\,
	combout => \Mux130~6_combout\);

-- Location: LCCOMB_X8_Y7_N0
\Mux128~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~12_combout\ = (\MicroCode|Set_D\(4) & (((\Mux130~6_combout\)))) # (!\MicroCode|Set_D\(4) & (\Mux128~6_combout\ & (\MicroCode|Set_D\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~6_combout\,
	datab => \MicroCode|Set_D\(3),
	datac => \MicroCode|Set_D\(4),
	datad => \Mux130~6_combout\,
	combout => \Mux128~12_combout\);

-- Location: LCCOMB_X8_Y7_N2
\Mux128~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~9_combout\ = (\MicroCode|Set_D\(1) & (((\MicroCode|Set_D\(2)) # (\Mux128~12_combout\)))) # (!\MicroCode|Set_D\(1) & (\Mux128~8_combout\ & (!\MicroCode|Set_D\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \Mux128~8_combout\,
	datac => \MicroCode|Set_D\(2),
	datad => \Mux128~12_combout\,
	combout => \Mux128~9_combout\);

-- Location: LCCOMB_X8_Y7_N6
\Mux128~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~11_combout\ = (\MicroCode|Set_D\(2) & ((\Mux128~9_combout\ & (\Mux128~10_combout\)) # (!\Mux128~9_combout\ & ((\Mux128~5_combout\))))) # (!\MicroCode|Set_D\(2) & (((\Mux128~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \Mux128~10_combout\,
	datac => \Mux128~5_combout\,
	datad => \Mux128~9_combout\,
	combout => \Mux128~11_combout\);

-- Location: LCCOMB_X9_Y7_N28
\data_out[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[13]~feeder_combout\ = \Mux128~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux128~11_combout\,
	combout => \data_out[13]~feeder_combout\);

-- Location: FF_X9_Y7_N29
\data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[13]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(13));

-- Location: FF_X7_Y6_N15
\Z[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux129~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(1));

-- Location: FF_X8_Y6_N23
\X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux129~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(1));

-- Location: LCCOMB_X9_Y6_N18
\Mux130~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~14_combout\ = (\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0)) # ((Z(9))))) # (!\MicroCode|Set_D\(3) & (!\MicroCode|Set_D\(0) & (PC(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(0),
	datac => PC(1),
	datad => Z(9),
	combout => \Mux130~14_combout\);

-- Location: LCCOMB_X8_Y6_N18
\Mux130~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~15_combout\ = (\MicroCode|Set_D\(0) & ((\Mux130~14_combout\ & (Z(1))) # (!\Mux130~14_combout\ & ((X(1)))))) # (!\MicroCode|Set_D\(0) & (((\Mux130~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Z(1),
	datab => \MicroCode|Set_D\(0),
	datac => X(1),
	datad => \Mux130~14_combout\,
	combout => \Mux130~15_combout\);

-- Location: LCCOMB_X8_Y6_N22
\Mux130~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~13_combout\ = (\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0) & ((X(1)))) # (!\MicroCode|Set_D\(0) & (X(9))))) # (!\MicroCode|Set_D\(3) & (((\MicroCode|Set_D\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => X(9),
	datab => \MicroCode|Set_D\(3),
	datac => X(1),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux130~13_combout\);

-- Location: FF_X8_Y6_N21
\Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux129~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(1));

-- Location: LCCOMB_X8_Y6_N20
\Mux130~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~12_combout\ = (\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0) & (Y(9))) # (!\MicroCode|Set_D\(0) & ((Y(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Y(9),
	datab => \MicroCode|Set_D\(3),
	datac => Y(1),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux130~12_combout\);

-- Location: LCCOMB_X8_Y6_N8
\Mux129~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux129~4_combout\ = (\MicroCode|Set_D\(2) & (\MicroCode|Set_D\(1))) # (!\MicroCode|Set_D\(2) & ((\MicroCode|Set_D\(1) & ((\Mux130~12_combout\))) # (!\MicroCode|Set_D\(1) & (\Mux130~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \MicroCode|Set_D\(1),
	datac => \Mux130~13_combout\,
	datad => \Mux130~12_combout\,
	combout => \Mux129~4_combout\);

-- Location: LCCOMB_X7_Y6_N14
\Mux130~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~11_combout\ = (\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(3) & ((Z(1)))) # (!\MicroCode|Set_D\(3) & (IR(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => IR(1),
	datac => Z(1),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux130~11_combout\);

-- Location: LCCOMB_X8_Y6_N24
\Mux130~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~29_combout\ = (\Mux130~11_combout\) # ((Y(1) & (!\MicroCode|Set_D\(0) & \MicroCode|Set_D\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Y(1),
	datab => \MicroCode|Set_D\(0),
	datac => \MicroCode|Set_D\(3),
	datad => \Mux130~11_combout\,
	combout => \Mux130~29_combout\);

-- Location: LCCOMB_X8_Y6_N16
\Mux129~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux129~5_combout\ = (\MicroCode|Set_D\(2) & ((\Mux129~4_combout\ & (\Mux130~15_combout\)) # (!\Mux129~4_combout\ & ((\Mux130~29_combout\))))) # (!\MicroCode|Set_D\(2) & (((\Mux129~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \Mux130~15_combout\,
	datac => \Mux129~4_combout\,
	datad => \Mux130~29_combout\,
	combout => \Mux129~5_combout\);

-- Location: LCCOMB_X7_Y7_N12
\Mux130~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~10_combout\ = (\MicroCode|Set_D\(3)) # (\MicroCode|Set_D\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_D\(3),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux130~10_combout\);

-- Location: LCCOMB_X8_Y6_N28
\Mux130~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~9_combout\ = (\MicroCode|Set_D\(3) & (\Data[1]~input_o\ & !\MicroCode|Set_D\(0))) # (!\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data[1]~input_o\,
	datac => \MicroCode|Set_D\(3),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux130~9_combout\);

-- Location: LCCOMB_X10_Y8_N24
\Mux129~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux129~0_combout\ = (\MicroCode|Set_D\(0) & (\MicroCode|Set_D\(3))) # (!\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(3) & ((!EIR(1)))) # (!\MicroCode|Set_D\(3) & (SI(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(3),
	datac => SI(1),
	datad => EIR(1),
	combout => \Mux129~0_combout\);

-- Location: LCCOMB_X12_Y6_N6
\Mux129~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux129~1_combout\ = (\MicroCode|Set_D\(2) & (((!\Mux129~0_combout\)))) # (!\MicroCode|Set_D\(2) & (\MicroCode|Set_D\(0) & ((DI(1)) # (\Mux129~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(2),
	datac => DI(1),
	datad => \Mux129~0_combout\,
	combout => \Mux129~1_combout\);

-- Location: LCCOMB_X12_Y6_N4
\Mux129~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux129~2_combout\ = (\MicroCode|Set_D\(1) & ((\Mux129~0_combout\ & ((!\Mux129~1_combout\) # (!EIR(17)))) # (!\Mux129~0_combout\ & ((\Mux129~1_combout\))))) # (!\MicroCode|Set_D\(1) & (\Mux129~0_combout\ & ((\Mux129~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \Mux129~0_combout\,
	datac => EIR(17),
	datad => \Mux129~1_combout\,
	combout => \Mux129~2_combout\);

-- Location: LCCOMB_X8_Y6_N10
\Mux129~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux129~3_combout\ = (\MicroCode|Set_D\(2) & ((\Mux129~2_combout\ & (!\Mux130~10_combout\)) # (!\Mux129~2_combout\ & ((\Mux130~9_combout\))))) # (!\MicroCode|Set_D\(2) & (((\Mux129~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \Mux130~10_combout\,
	datac => \Mux130~9_combout\,
	datad => \Mux129~2_combout\,
	combout => \Mux129~3_combout\);

-- Location: LCCOMB_X8_Y6_N14
\Mux129~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux129~6_combout\ = (\MicroCode|Set_D\(4) & ((\Mux129~3_combout\))) # (!\MicroCode|Set_D\(4) & (\Mux129~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux129~5_combout\,
	datac => \MicroCode|Set_D\(4),
	datad => \Mux129~3_combout\,
	combout => \Mux129~6_combout\);

-- Location: LCCOMB_X7_Y6_N28
\data_out[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[14]~feeder_combout\ = \Mux129~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux129~6_combout\,
	combout => \data_out[14]~feeder_combout\);

-- Location: FF_X7_Y6_N29
\data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[14]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(14));

-- Location: FF_X7_Y7_N17
\X[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux130~28_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(0));

-- Location: LCCOMB_X7_Y7_N16
\Mux130~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~23_combout\ = (\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0) & (X(0))) # (!\MicroCode|Set_D\(0) & ((X(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(3),
	datac => X(0),
	datad => X(8),
	combout => \Mux130~23_combout\);

-- Location: FF_X6_Y7_N27
\Y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux130~28_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(0));

-- Location: LCCOMB_X6_Y7_N26
\Mux130~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~22_combout\ = (\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0) & ((Y(8)))) # (!\MicroCode|Set_D\(0) & (Y(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(3),
	datac => Y(0),
	datad => Y(8),
	combout => \Mux130~22_combout\);

-- Location: LCCOMB_X7_Y7_N10
\Mux130~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~24_combout\ = (\MicroCode|Set_D\(2) & (((\MicroCode|Set_D\(1))))) # (!\MicroCode|Set_D\(2) & ((\MicroCode|Set_D\(1) & ((\Mux130~22_combout\))) # (!\MicroCode|Set_D\(1) & (\Mux130~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux130~23_combout\,
	datab => \MicroCode|Set_D\(2),
	datac => \MicroCode|Set_D\(1),
	datad => \Mux130~22_combout\,
	combout => \Mux130~24_combout\);

-- Location: FF_X7_Y7_N19
\Z[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux130~28_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(0));

-- Location: LCCOMB_X7_Y7_N0
\Mux130~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~25_combout\ = (\MicroCode|Set_D\(0) & (((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(3) & (Z(8))) # (!\MicroCode|Set_D\(3) & ((PC(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => Z(8),
	datac => \MicroCode|Set_D\(3),
	datad => PC(0),
	combout => \Mux130~25_combout\);

-- Location: LCCOMB_X7_Y7_N22
\Mux130~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~26_combout\ = (\MicroCode|Set_D\(0) & ((\Mux130~25_combout\ & ((Z(0)))) # (!\Mux130~25_combout\ & (X(0))))) # (!\MicroCode|Set_D\(0) & (((\Mux130~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => X(0),
	datac => Z(0),
	datad => \Mux130~25_combout\,
	combout => \Mux130~26_combout\);

-- Location: LCCOMB_X7_Y7_N18
\Mux130~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~21_combout\ = (\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(3) & (Z(0))) # (!\MicroCode|Set_D\(3) & ((IR(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(3),
	datac => Z(0),
	datad => IR(0),
	combout => \Mux130~21_combout\);

-- Location: LCCOMB_X7_Y7_N28
\Mux130~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~30_combout\ = (\Mux130~21_combout\) # ((Y(0) & (!\MicroCode|Set_D\(0) & \MicroCode|Set_D\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Y(0),
	datab => \MicroCode|Set_D\(0),
	datac => \MicroCode|Set_D\(3),
	datad => \Mux130~21_combout\,
	combout => \Mux130~30_combout\);

-- Location: LCCOMB_X7_Y7_N4
\Mux130~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~27_combout\ = (\Mux130~24_combout\ & (((\Mux130~26_combout\)) # (!\MicroCode|Set_D\(2)))) # (!\Mux130~24_combout\ & (\MicroCode|Set_D\(2) & ((\Mux130~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux130~24_combout\,
	datab => \MicroCode|Set_D\(2),
	datac => \Mux130~26_combout\,
	datad => \Mux130~30_combout\,
	combout => \Mux130~27_combout\);

-- Location: LCCOMB_X7_Y7_N24
\Mux130~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~18_combout\ = (!\MicroCode|Set_D\(0) & ((\Data[0]~input_o\) # (!\MicroCode|Set_D\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[0]~input_o\,
	datac => \MicroCode|Set_D\(3),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux130~18_combout\);

-- Location: LCCOMB_X7_Y7_N26
\Mux130~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~19_combout\ = (\MicroCode|Set_D\(1) & (\MicroCode|Set_D\(2))) # (!\MicroCode|Set_D\(1) & ((\MicroCode|Set_D\(2) & (\Mux130~18_combout\)) # (!\MicroCode|Set_D\(2) & ((\Mux130~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(2),
	datac => \Mux130~18_combout\,
	datad => \Mux130~4_combout\,
	combout => \Mux130~19_combout\);

-- Location: LCCOMB_X16_Y5_N24
\Mux130~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~16_combout\ = (\MicroCode|Set_D\(3) & (((\MicroCode|Set_D\(0))))) # (!\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0) & ((DI(0)))) # (!\MicroCode|Set_D\(0) & (SI(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SI(0),
	datab => \MicroCode|Set_D\(3),
	datac => DI(0),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux130~16_combout\);

-- Location: LCCOMB_X7_Y7_N2
\Mux130~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~17_combout\ = (\MicroCode|Set_D\(3) & ((\Mux130~16_combout\ & (!EIR(16))) # (!\Mux130~16_combout\ & ((!EIR(0)))))) # (!\MicroCode|Set_D\(3) & (((\Mux130~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(16),
	datab => EIR(0),
	datac => \MicroCode|Set_D\(3),
	datad => \Mux130~16_combout\,
	combout => \Mux130~17_combout\);

-- Location: LCCOMB_X7_Y7_N20
\Mux130~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~20_combout\ = (\Mux130~19_combout\ & (((!\MicroCode|Set_D\(1))) # (!\Mux130~10_combout\))) # (!\Mux130~19_combout\ & (((\MicroCode|Set_D\(1) & \Mux130~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux130~19_combout\,
	datab => \Mux130~10_combout\,
	datac => \MicroCode|Set_D\(1),
	datad => \Mux130~17_combout\,
	combout => \Mux130~20_combout\);

-- Location: LCCOMB_X7_Y7_N30
\Mux130~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~28_combout\ = (\MicroCode|Set_D\(4) & ((\Mux130~20_combout\))) # (!\MicroCode|Set_D\(4) & (\Mux130~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(4),
	datac => \Mux130~27_combout\,
	datad => \Mux130~20_combout\,
	combout => \Mux130~28_combout\);

-- Location: LCCOMB_X6_Y7_N28
\data_out[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[15]~feeder_combout\ = \Mux130~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux130~28_combout\,
	combout => \data_out[15]~feeder_combout\);

-- Location: FF_X6_Y7_N29
\data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[15]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(15));

-- Location: LCCOMB_X17_Y7_N18
\SI[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SI[16]~feeder_combout\ = \Address[16]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Address[16]~0_combout\,
	combout => \SI[16]~feeder_combout\);

-- Location: FF_X17_Y7_N19
\SI[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SI[16]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(16));

-- Location: LCCOMB_X17_Y8_N30
\Mux138~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~2_combout\ = (\MicroCode|Set_A\(0)) # (!\MicroCode|Set_A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_A\(1),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux138~2_combout\);

-- Location: LCCOMB_X13_Y5_N8
\PC[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[16]~56_combout\ = (PC(16) & (\PC[15]~55\ $ (GND))) # (!PC(16) & (!\PC[15]~55\ & VCC))
-- \PC[16]~57\ = CARRY((PC(16) & !\PC[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(16),
	datad => VCC,
	cin => \PC[15]~55\,
	combout => \PC[16]~56_combout\,
	cout => \PC[16]~57\);

-- Location: FF_X13_Y5_N9
\PC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[16]~56_combout\,
	asdata => \Address[16]~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(16));

-- Location: LCCOMB_X17_Y7_N24
\Mux138~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~3_combout\ = (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(2)) # ((PC(16) & \MicroCode|Set_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(16),
	datab => \MicroCode|Set_A\(1),
	datac => \MicroCode|Set_A\(2),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux138~3_combout\);

-- Location: LCCOMB_X17_Y7_N8
\Mux138~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~4_combout\ = (\MicroCode|Set_A\(2) & ((\Mux138~2_combout\ & (SI(16) & !\Mux138~3_combout\)) # (!\Mux138~2_combout\ & ((\Mux138~3_combout\))))) # (!\MicroCode|Set_A\(2) & (((\Mux138~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => SI(16),
	datac => \Mux138~2_combout\,
	datad => \Mux138~3_combout\,
	combout => \Mux138~4_combout\);

-- Location: FF_X17_Y7_N7
\DI[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Address[16]~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(16));

-- Location: LCCOMB_X17_Y7_N6
\Mux138~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~5_combout\ = (DI(16)) # (\MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => DI(16),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux138~5_combout\);

-- Location: LCCOMB_X12_Y8_N26
\EIR[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[40]~feeder_combout\ = \EIR~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EIR~40_combout\,
	combout => \EIR[40]~feeder_combout\);

-- Location: FF_X12_Y8_N27
\EIR[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR[40]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(40));

-- Location: LCCOMB_X12_Y8_N28
\Mux138~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~7_combout\ = (\MicroCode|Set_A\(1) & (((\MicroCode|Set_A\(0))))) # (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0) & (!EIR(40))) # (!\MicroCode|Set_A\(0) & ((!EIR(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(40),
	datab => \MicroCode|Set_A\(1),
	datac => \MicroCode|Set_A\(0),
	datad => EIR(16),
	combout => \Mux138~7_combout\);

-- Location: LCCOMB_X12_Y8_N30
\Mux138~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~8_combout\ = (\MicroCode|Set_A\(1) & ((\Mux138~7_combout\ & ((\Address[16]~reg0_q\))) # (!\Mux138~7_combout\ & (!EIR(32))))) # (!\MicroCode|Set_A\(1) & (((\Mux138~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(32),
	datab => \MicroCode|Set_A\(1),
	datac => \Address[16]~reg0_q\,
	datad => \Mux138~7_combout\,
	combout => \Mux138~8_combout\);

-- Location: LCCOMB_X13_Y7_N26
\Mux138~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~9_combout\ = (\MicroCode|Set_A\(2) & (((\Mux138~8_combout\)))) # (!\MicroCode|Set_A\(2) & (!\MicroCode|Set_A\(1) & (\Mux138~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => \MicroCode|Set_A\(1),
	datac => \Mux138~5_combout\,
	datad => \Mux138~8_combout\,
	combout => \Mux138~9_combout\);

-- Location: LCCOMB_X17_Y7_N12
\Address[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[16]~0_combout\ = (\MicroCode|Set_A\(3) & ((\Mux138~9_combout\))) # (!\MicroCode|Set_A\(3) & (\Mux138~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datac => \Mux138~4_combout\,
	datad => \Mux138~9_combout\,
	combout => \Address[16]~0_combout\);

-- Location: LCCOMB_X18_Y7_N0
\Address[16]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[16]~reg0feeder_combout\ = \Address[16]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Address[16]~0_combout\,
	combout => \Address[16]~reg0feeder_combout\);

-- Location: FF_X18_Y7_N1
\Address[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[16]~reg0feeder_combout\,
	asdata => PC(16),
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|ALT_INV_AE~q\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[16]~reg0_q\);

-- Location: LCCOMB_X14_Y5_N20
\Mux138~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~6_combout\ = (!\MicroCode|Set_A\(1) & !\MicroCode|Set_A\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_A\(1),
	datad => \MicroCode|Set_A\(2),
	combout => \Mux138~6_combout\);

-- Location: LCCOMB_X13_Y5_N10
\PC[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[17]~58_combout\ = (PC(17) & (!\PC[16]~57\)) # (!PC(17) & ((\PC[16]~57\) # (GND)))
-- \PC[17]~59\ = CARRY((!\PC[16]~57\) # (!PC(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(17),
	datad => VCC,
	cin => \PC[16]~57\,
	combout => \PC[17]~58_combout\,
	cout => \PC[17]~59\);

-- Location: FF_X13_Y5_N11
\PC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[17]~58_combout\,
	asdata => \Address[17]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(17));

-- Location: LCCOMB_X14_Y5_N26
\DI[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DI[17]~feeder_combout\ = \Address[17]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Address[17]~1_combout\,
	combout => \DI[17]~feeder_combout\);

-- Location: FF_X14_Y5_N27
\DI[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DI[17]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(17));

-- Location: LCCOMB_X13_Y5_N28
\Mux137~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux137~0_combout\ = (\MicroCode|Set_A\(3) & (((DI(17)) # (\MicroCode|Set_A\(0))))) # (!\MicroCode|Set_A\(3) & (PC(17) & ((\MicroCode|Set_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(17),
	datab => \MicroCode|Set_A\(3),
	datac => DI(17),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux137~0_combout\);

-- Location: LCCOMB_X13_Y9_N4
\Mux152~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~8_combout\ = (!\MicroCode|Set_A\(0) & !\MicroCode|Set_A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_A\(0),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux152~8_combout\);

-- Location: FF_X13_Y9_N15
\SI[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Address[17]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(17));

-- Location: LCCOMB_X13_Y9_N24
\Mux133~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux133~0_combout\ = (\MicroCode|Set_A\(1) & ((!\MicroCode|Set_A\(0)))) # (!\MicroCode|Set_A\(1) & (\MicroCode|Set_A\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(3),
	datac => \MicroCode|Set_A\(0),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux133~0_combout\);

-- Location: FF_X14_Y8_N25
\EIR[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~44_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(41));

-- Location: LCCOMB_X13_Y9_N10
\Mux137~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux137~1_combout\ = (\Mux151~2_combout\ & (((\Mux153~8_combout\)) # (!\Mux133~0_combout\))) # (!\Mux151~2_combout\ & (\Mux133~0_combout\ & (!EIR(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~2_combout\,
	datab => \Mux133~0_combout\,
	datac => EIR(41),
	datad => \Mux153~8_combout\,
	combout => \Mux137~1_combout\);

-- Location: LCCOMB_X13_Y9_N14
\Mux137~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux137~2_combout\ = (\Mux151~0_combout\ & ((\Mux137~1_combout\ & (\Address[17]~reg0_q\)) # (!\Mux137~1_combout\ & ((SI(17)))))) # (!\Mux151~0_combout\ & (((\Mux137~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~0_combout\,
	datab => \Address[17]~reg0_q\,
	datac => SI(17),
	datad => \Mux137~1_combout\,
	combout => \Mux137~2_combout\);

-- Location: LCCOMB_X14_Y9_N22
\Mux137~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux137~3_combout\ = (\MicroCode|Set_A\(3) & !EIR(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_A\(3),
	datad => EIR(17),
	combout => \Mux137~3_combout\);

-- Location: LCCOMB_X13_Y9_N0
\Mux137~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux137~4_combout\ = (\MicroCode|Set_A\(2) & ((\Mux152~8_combout\ & ((\Mux137~3_combout\))) # (!\Mux152~8_combout\ & (\Mux137~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => \Mux152~8_combout\,
	datac => \Mux137~2_combout\,
	datad => \Mux137~3_combout\,
	combout => \Mux137~4_combout\);

-- Location: LCCOMB_X13_Y9_N8
\Address[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[17]~1_combout\ = (\Mux138~6_combout\ & (\Mux137~0_combout\)) # (!\Mux138~6_combout\ & ((\Mux137~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux138~6_combout\,
	datac => \Mux137~0_combout\,
	datad => \Mux137~4_combout\,
	combout => \Address[17]~1_combout\);

-- Location: LCCOMB_X14_Y5_N16
\Address[17]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[17]~reg0feeder_combout\ = \Address[17]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Address[17]~1_combout\,
	combout => \Address[17]~reg0feeder_combout\);

-- Location: FF_X14_Y5_N17
\Address[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[17]~reg0feeder_combout\,
	asdata => PC(17),
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|ALT_INV_AE~q\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[17]~reg0_q\);

-- Location: LCCOMB_X17_Y7_N4
\SI[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SI[18]~feeder_combout\ = \Address[18]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Address[18]~2_combout\,
	combout => \SI[18]~feeder_combout\);

-- Location: FF_X17_Y7_N5
\SI[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SI[18]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(18));

-- Location: LCCOMB_X13_Y5_N12
\PC[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[18]~60_combout\ = (PC(18) & (\PC[17]~59\ $ (GND))) # (!PC(18) & (!\PC[17]~59\ & VCC))
-- \PC[18]~61\ = CARRY((PC(18) & !\PC[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(18),
	datad => VCC,
	cin => \PC[17]~59\,
	combout => \PC[18]~60_combout\,
	cout => \PC[18]~61\);

-- Location: FF_X13_Y5_N13
\PC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[18]~60_combout\,
	asdata => \Address[18]~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(18));

-- Location: LCCOMB_X13_Y5_N30
\Mux136~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux136~2_combout\ = (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(2)) # ((\MicroCode|Set_A\(0) & PC(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(1),
	datac => \MicroCode|Set_A\(2),
	datad => PC(18),
	combout => \Mux136~2_combout\);

-- Location: LCCOMB_X17_Y7_N22
\Mux136~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux136~3_combout\ = (\Mux138~2_combout\ & ((\MicroCode|Set_A\(2) & (SI(18) & !\Mux136~2_combout\)) # (!\MicroCode|Set_A\(2) & ((\Mux136~2_combout\))))) # (!\Mux138~2_combout\ & (((\Mux136~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux138~2_combout\,
	datab => SI(18),
	datac => \MicroCode|Set_A\(2),
	datad => \Mux136~2_combout\,
	combout => \Mux136~3_combout\);

-- Location: FF_X17_Y7_N29
\DI[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Address[18]~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(18));

-- Location: LCCOMB_X17_Y7_N28
\Mux136~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux136~4_combout\ = (DI(18)) # (\MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => DI(18),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux136~4_combout\);

-- Location: FF_X13_Y8_N31
\EIR[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~46_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(42));

-- Location: LCCOMB_X17_Y7_N10
\Mux136~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux136~5_combout\ = (\MicroCode|Set_A\(1) & (\MicroCode|Set_A\(0))) # (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0) & (!EIR(42))) # (!\MicroCode|Set_A\(0) & ((!EIR(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \MicroCode|Set_A\(0),
	datac => EIR(42),
	datad => EIR(18),
	combout => \Mux136~5_combout\);

-- Location: LCCOMB_X17_Y7_N20
\Mux136~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux136~6_combout\ = (\MicroCode|Set_A\(1) & ((\Mux136~5_combout\ & ((\Address[18]~reg0_q\))) # (!\Mux136~5_combout\ & (!EIR(34))))) # (!\MicroCode|Set_A\(1) & (((\Mux136~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(34),
	datab => \MicroCode|Set_A\(1),
	datac => \Address[18]~reg0_q\,
	datad => \Mux136~5_combout\,
	combout => \Mux136~6_combout\);

-- Location: LCCOMB_X17_Y7_N16
\Mux136~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux136~7_combout\ = (\MicroCode|Set_A\(2) & (((\Mux136~6_combout\)))) # (!\MicroCode|Set_A\(2) & (!\MicroCode|Set_A\(1) & (\Mux136~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \Mux136~4_combout\,
	datac => \MicroCode|Set_A\(2),
	datad => \Mux136~6_combout\,
	combout => \Mux136~7_combout\);

-- Location: LCCOMB_X17_Y7_N26
\Address[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[18]~2_combout\ = (\MicroCode|Set_A\(3) & ((\Mux136~7_combout\))) # (!\MicroCode|Set_A\(3) & (\Mux136~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datac => \Mux136~3_combout\,
	datad => \Mux136~7_combout\,
	combout => \Address[18]~2_combout\);

-- Location: LCCOMB_X14_Y5_N22
\Address[18]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[18]~reg0feeder_combout\ = \Address[18]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Address[18]~2_combout\,
	combout => \Address[18]~reg0feeder_combout\);

-- Location: FF_X14_Y5_N23
\Address[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[18]~reg0feeder_combout\,
	asdata => PC(18),
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|ALT_INV_AE~q\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[18]~reg0_q\);

-- Location: LCCOMB_X16_Y7_N26
\Address[19]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[19]~68_combout\ = (((\Address[19]~reg0_q\) # (!\MicroCode|Set_A\(1))) # (!\MicroCode|Set_A\(3))) # (!\MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(3),
	datac => \MicroCode|Set_A\(1),
	datad => \Address[19]~reg0_q\,
	combout => \Address[19]~68_combout\);

-- Location: LCCOMB_X16_Y7_N20
\Address[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[19]~66_combout\ = (!\MicroCode|Set_A\(1) & ((!\MicroCode|Set_A\(0)) # (!\MicroCode|Set_A\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(2),
	datac => \MicroCode|Set_A\(1),
	datad => \MicroCode|Set_A\(0),
	combout => \Address[19]~66_combout\);

-- Location: FF_X13_Y8_N9
\EIR[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~48_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(43));

-- Location: LCCOMB_X16_Y8_N24
\Mux151~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~9_combout\ = (\MicroCode|Set_A\(3) & !EIR(35))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(3),
	datad => EIR(35),
	combout => \Mux151~9_combout\);

-- Location: FF_X16_Y7_N13
\SI[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Address[19]~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(19));

-- Location: LCCOMB_X16_Y7_N12
\Address[19]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[19]~57_combout\ = (\Mux151~0_combout\ & ((SI(19)) # ((\Mux151~9_combout\ & \Mux151~2_combout\)))) # (!\Mux151~0_combout\ & (\Mux151~9_combout\ & ((\Mux151~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~0_combout\,
	datab => \Mux151~9_combout\,
	datac => SI(19),
	datad => \Mux151~2_combout\,
	combout => \Address[19]~57_combout\);

-- Location: LCCOMB_X16_Y7_N4
\Address[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[19]~64_combout\ = (\Address[19]~57_combout\) # ((\Mux151~2_combout\ & ((!\Mux133~0_combout\))) # (!\Mux151~2_combout\ & (!EIR(43) & \Mux133~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(43),
	datab => \Mux151~2_combout\,
	datac => \Mux133~0_combout\,
	datad => \Address[19]~57_combout\,
	combout => \Address[19]~64_combout\);

-- Location: LCCOMB_X16_Y7_N10
\Address[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[19]~58_combout\ = (\MicroCode|Set_A\(2) & (((!EIR(19) & \MicroCode|Set_A\(3))) # (!\Mux152~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(19),
	datab => \MicroCode|Set_A\(2),
	datac => \Mux152~8_combout\,
	datad => \MicroCode|Set_A\(3),
	combout => \Address[19]~58_combout\);

-- Location: FF_X16_Y7_N29
\DI[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Address[19]~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(19));

-- Location: LCCOMB_X13_Y5_N14
\PC[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[19]~62_combout\ = (PC(19) & (!\PC[18]~61\)) # (!PC(19) & ((\PC[18]~61\) # (GND)))
-- \PC[19]~63\ = CARRY((!\PC[18]~61\) # (!PC(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(19),
	datad => VCC,
	cin => \PC[18]~61\,
	combout => \PC[19]~62_combout\,
	cout => \PC[19]~63\);

-- Location: FF_X13_Y5_N15
\PC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[19]~62_combout\,
	asdata => \Address[19]~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(19));

-- Location: LCCOMB_X16_Y7_N28
\Address[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[19]~59_combout\ = (\MicroCode|Set_A\(0) & ((\MicroCode|Set_A\(3)) # ((PC(19))))) # (!\MicroCode|Set_A\(0) & (\MicroCode|Set_A\(3) & (DI(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(3),
	datac => DI(19),
	datad => PC(19),
	combout => \Address[19]~59_combout\);

-- Location: LCCOMB_X16_Y7_N18
\Address[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[19]~65_combout\ = (\MicroCode|Set_A\(2) & (\Address[19]~58_combout\)) # (!\MicroCode|Set_A\(2) & ((\MicroCode|Set_A\(1) & (\Address[19]~58_combout\)) # (!\MicroCode|Set_A\(1) & ((\Address[19]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[19]~58_combout\,
	datab => \MicroCode|Set_A\(2),
	datac => \MicroCode|Set_A\(1),
	datad => \Address[19]~59_combout\,
	combout => \Address[19]~65_combout\);

-- Location: LCCOMB_X16_Y7_N8
\Address[19]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[19]~3_combout\ = (\Address[19]~65_combout\ & ((\Address[19]~66_combout\) # ((\Address[19]~68_combout\ & \Address[19]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[19]~68_combout\,
	datab => \Address[19]~66_combout\,
	datac => \Address[19]~64_combout\,
	datad => \Address[19]~65_combout\,
	combout => \Address[19]~3_combout\);

-- Location: LCCOMB_X14_Y5_N28
\Address[19]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[19]~reg0feeder_combout\ = \Address[19]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Address[19]~3_combout\,
	combout => \Address[19]~reg0feeder_combout\);

-- Location: FF_X14_Y5_N29
\Address[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[19]~reg0feeder_combout\,
	asdata => PC(19),
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|ALT_INV_AE~q\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[19]~reg0_q\);

-- Location: LCCOMB_X16_Y7_N6
\SI[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SI[20]~feeder_combout\ = \Address[20]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Address[20]~4_combout\,
	combout => \SI[20]~feeder_combout\);

-- Location: FF_X16_Y7_N7
\SI[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SI[20]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(20));

-- Location: LCCOMB_X13_Y5_N16
\PC[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[20]~64_combout\ = (PC(20) & (\PC[19]~63\ $ (GND))) # (!PC(20) & (!\PC[19]~63\ & VCC))
-- \PC[20]~65\ = CARRY((PC(20) & !\PC[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(20),
	datad => VCC,
	cin => \PC[19]~63\,
	combout => \PC[20]~64_combout\,
	cout => \PC[20]~65\);

-- Location: FF_X13_Y5_N17
\PC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[20]~64_combout\,
	asdata => \Address[20]~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(20));

-- Location: LCCOMB_X17_Y8_N16
\Mux134~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux134~2_combout\ = (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(2)) # ((\MicroCode|Set_A\(0) & PC(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(1),
	datac => \MicroCode|Set_A\(2),
	datad => PC(20),
	combout => \Mux134~2_combout\);

-- Location: LCCOMB_X17_Y8_N22
\Mux134~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux134~3_combout\ = (\MicroCode|Set_A\(2) & ((\Mux138~2_combout\ & (SI(20) & !\Mux134~2_combout\)) # (!\Mux138~2_combout\ & ((\Mux134~2_combout\))))) # (!\MicroCode|Set_A\(2) & (((\Mux134~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SI(20),
	datab => \MicroCode|Set_A\(2),
	datac => \Mux138~2_combout\,
	datad => \Mux134~2_combout\,
	combout => \Mux134~3_combout\);

-- Location: FF_X16_Y7_N1
\DI[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Address[20]~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(20));

-- Location: LCCOMB_X16_Y7_N0
\Mux134~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux134~4_combout\ = (DI(20)) # (\MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => DI(20),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux134~4_combout\);

-- Location: FF_X14_Y8_N31
\EIR[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~49_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(44));

-- Location: LCCOMB_X17_Y8_N12
\Mux134~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux134~5_combout\ = (\MicroCode|Set_A\(0) & ((\MicroCode|Set_A\(1)) # ((!EIR(44))))) # (!\MicroCode|Set_A\(0) & (!\MicroCode|Set_A\(1) & ((!EIR(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(1),
	datac => EIR(44),
	datad => EIR(20),
	combout => \Mux134~5_combout\);

-- Location: LCCOMB_X17_Y8_N18
\Mux134~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux134~6_combout\ = (\MicroCode|Set_A\(1) & ((\Mux134~5_combout\ & (\Address[20]~reg0_q\)) # (!\Mux134~5_combout\ & ((!EIR(36)))))) # (!\MicroCode|Set_A\(1) & (((\Mux134~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[20]~reg0_q\,
	datab => EIR(36),
	datac => \MicroCode|Set_A\(1),
	datad => \Mux134~5_combout\,
	combout => \Mux134~6_combout\);

-- Location: LCCOMB_X17_Y8_N6
\Mux134~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux134~7_combout\ = (\MicroCode|Set_A\(2) & (((\Mux134~6_combout\)))) # (!\MicroCode|Set_A\(2) & (!\MicroCode|Set_A\(1) & (\Mux134~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => \MicroCode|Set_A\(1),
	datac => \Mux134~4_combout\,
	datad => \Mux134~6_combout\,
	combout => \Mux134~7_combout\);

-- Location: LCCOMB_X17_Y8_N8
\Address[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[20]~4_combout\ = (\MicroCode|Set_A\(3) & ((\Mux134~7_combout\))) # (!\MicroCode|Set_A\(3) & (\Mux134~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(3),
	datac => \Mux134~3_combout\,
	datad => \Mux134~7_combout\,
	combout => \Address[20]~4_combout\);

-- Location: LCCOMB_X14_Y5_N14
\Address[20]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[20]~reg0feeder_combout\ = \Address[20]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Address[20]~4_combout\,
	combout => \Address[20]~reg0feeder_combout\);

-- Location: FF_X14_Y5_N15
\Address[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[20]~reg0feeder_combout\,
	asdata => PC(20),
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|ALT_INV_AE~q\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[20]~reg0_q\);

-- Location: LCCOMB_X14_Y5_N12
\DI[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DI[21]~feeder_combout\ = \Address[21]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Address[21]~5_combout\,
	combout => \DI[21]~feeder_combout\);

-- Location: FF_X14_Y5_N13
\DI[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DI[21]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(21));

-- Location: LCCOMB_X13_Y5_N18
\PC[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[21]~66_combout\ = (PC(21) & (!\PC[20]~65\)) # (!PC(21) & ((\PC[20]~65\) # (GND)))
-- \PC[21]~67\ = CARRY((!\PC[20]~65\) # (!PC(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(21),
	datad => VCC,
	cin => \PC[20]~65\,
	combout => \PC[21]~66_combout\,
	cout => \PC[21]~67\);

-- Location: FF_X13_Y5_N19
\PC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[21]~66_combout\,
	asdata => \Address[21]~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(21));

-- Location: LCCOMB_X14_Y5_N6
\Mux133~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux133~1_combout\ = (\MicroCode|Set_A\(3) & ((DI(21)) # ((\MicroCode|Set_A\(0))))) # (!\MicroCode|Set_A\(3) & (((\MicroCode|Set_A\(0) & PC(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(21),
	datab => \MicroCode|Set_A\(3),
	datac => \MicroCode|Set_A\(0),
	datad => PC(21),
	combout => \Mux133~1_combout\);

-- Location: FF_X13_Y9_N3
\SI[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Address[21]~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(21));

-- Location: FF_X14_Y8_N21
\EIR[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~51_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(45));

-- Location: LCCOMB_X13_Y9_N28
\Mux133~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux133~2_combout\ = (\Mux151~2_combout\ & (((\Mux149~6_combout\)) # (!\Mux133~0_combout\))) # (!\Mux151~2_combout\ & (\Mux133~0_combout\ & ((!EIR(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~2_combout\,
	datab => \Mux133~0_combout\,
	datac => \Mux149~6_combout\,
	datad => EIR(45),
	combout => \Mux133~2_combout\);

-- Location: LCCOMB_X13_Y9_N2
\Mux133~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux133~3_combout\ = (\Mux151~0_combout\ & ((\Mux133~2_combout\ & (\Address[21]~reg0_q\)) # (!\Mux133~2_combout\ & ((SI(21)))))) # (!\Mux151~0_combout\ & (((\Mux133~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[21]~reg0_q\,
	datab => \Mux151~0_combout\,
	datac => SI(21),
	datad => \Mux133~2_combout\,
	combout => \Mux133~3_combout\);

-- Location: LCCOMB_X14_Y5_N24
\Mux133~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux133~4_combout\ = (\MicroCode|Set_A\(2) & ((\Mux152~8_combout\ & (\MicroCode|Set_A\(3))) # (!\Mux152~8_combout\ & ((\Mux133~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => \MicroCode|Set_A\(3),
	datac => \Mux152~8_combout\,
	datad => \Mux133~3_combout\,
	combout => \Mux133~4_combout\);

-- Location: LCCOMB_X14_Y5_N18
\Mux133~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux133~5_combout\ = (\Mux133~4_combout\ & (((!EIR(21)) # (!\Mux152~8_combout\)) # (!\MicroCode|Set_A\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => \Mux152~8_combout\,
	datac => EIR(21),
	datad => \Mux133~4_combout\,
	combout => \Mux133~5_combout\);

-- Location: LCCOMB_X14_Y5_N0
\Address[21]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[21]~5_combout\ = (\Mux138~6_combout\ & (\Mux133~1_combout\)) # (!\Mux138~6_combout\ & ((\Mux133~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux133~1_combout\,
	datab => \Mux138~6_combout\,
	datad => \Mux133~5_combout\,
	combout => \Address[21]~5_combout\);

-- Location: LCCOMB_X14_Y5_N8
\Address[21]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[21]~reg0feeder_combout\ = \Address[21]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Address[21]~5_combout\,
	combout => \Address[21]~reg0feeder_combout\);

-- Location: FF_X14_Y5_N9
\Address[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[21]~reg0feeder_combout\,
	asdata => PC(21),
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|ALT_INV_AE~q\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[21]~reg0_q\);

-- Location: FF_X16_Y9_N5
\DI[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Address[22]~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(22));

-- Location: LCCOMB_X16_Y9_N4
\Mux132~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux132~2_combout\ = (!\MicroCode|Set_A\(2) & (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0)) # (DI(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(2),
	datac => DI(22),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux132~2_combout\);

-- Location: FF_X14_Y8_N15
\EIR[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~52_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(46));

-- Location: LCCOMB_X17_Y8_N10
\Mux132~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux132~3_combout\ = (\MicroCode|Set_A\(0) & ((\MicroCode|Set_A\(1)) # ((!EIR(46))))) # (!\MicroCode|Set_A\(0) & (!\MicroCode|Set_A\(1) & ((!EIR(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(1),
	datac => EIR(46),
	datad => EIR(22),
	combout => \Mux132~3_combout\);

-- Location: LCCOMB_X17_Y8_N20
\Mux132~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux132~4_combout\ = (\MicroCode|Set_A\(1) & ((\Mux132~3_combout\ & ((\Address[22]~reg0_q\))) # (!\Mux132~3_combout\ & (!EIR(38))))) # (!\MicroCode|Set_A\(1) & (((\Mux132~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(38),
	datab => \Address[22]~reg0_q\,
	datac => \MicroCode|Set_A\(1),
	datad => \Mux132~3_combout\,
	combout => \Mux132~4_combout\);

-- Location: LCCOMB_X17_Y8_N14
\Mux132~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux132~5_combout\ = (\Mux132~2_combout\) # ((\MicroCode|Set_A\(2) & \Mux132~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux132~2_combout\,
	datac => \MicroCode|Set_A\(2),
	datad => \Mux132~4_combout\,
	combout => \Mux132~5_combout\);

-- Location: LCCOMB_X17_Y7_N30
\SI[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SI[22]~feeder_combout\ = \Address[22]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Address[22]~6_combout\,
	combout => \SI[22]~feeder_combout\);

-- Location: FF_X17_Y7_N31
\SI[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SI[22]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(22));

-- Location: LCCOMB_X13_Y5_N20
\PC[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[22]~68_combout\ = (PC(22) & (\PC[21]~67\ $ (GND))) # (!PC(22) & (!\PC[21]~67\ & VCC))
-- \PC[22]~69\ = CARRY((PC(22) & !\PC[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(22),
	datad => VCC,
	cin => \PC[21]~67\,
	combout => \PC[22]~68_combout\,
	cout => \PC[22]~69\);

-- Location: FF_X13_Y5_N21
\PC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[22]~68_combout\,
	asdata => \Address[22]~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(22));

-- Location: LCCOMB_X13_Y5_N24
\Mux132~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux132~0_combout\ = (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(2)) # ((\MicroCode|Set_A\(0) & PC(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => PC(22),
	datac => \MicroCode|Set_A\(2),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux132~0_combout\);

-- Location: LCCOMB_X17_Y8_N0
\Mux132~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux132~1_combout\ = (\MicroCode|Set_A\(2) & ((\Mux138~2_combout\ & (SI(22) & !\Mux132~0_combout\)) # (!\Mux138~2_combout\ & ((\Mux132~0_combout\))))) # (!\MicroCode|Set_A\(2) & (((\Mux132~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SI(22),
	datab => \MicroCode|Set_A\(2),
	datac => \Mux138~2_combout\,
	datad => \Mux132~0_combout\,
	combout => \Mux132~1_combout\);

-- Location: LCCOMB_X17_Y8_N26
\Address[22]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[22]~6_combout\ = (\MicroCode|Set_A\(3) & (\Mux132~5_combout\)) # (!\MicroCode|Set_A\(3) & ((\Mux132~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux132~5_combout\,
	datac => \MicroCode|Set_A\(3),
	datad => \Mux132~1_combout\,
	combout => \Address[22]~6_combout\);

-- Location: LCCOMB_X18_Y8_N24
\Address[22]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[22]~reg0feeder_combout\ = \Address[22]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[22]~6_combout\,
	combout => \Address[22]~reg0feeder_combout\);

-- Location: FF_X18_Y8_N25
\Address[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[22]~reg0feeder_combout\,
	asdata => PC(22),
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|ALT_INV_AE~q\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[22]~reg0_q\);

-- Location: FF_X16_Y5_N21
\DI[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Address[23]~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(23));

-- Location: LCCOMB_X13_Y5_N22
\PC[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[23]~70_combout\ = PC(23) $ (\PC[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(23),
	cin => \PC[22]~69\,
	combout => \PC[23]~70_combout\);

-- Location: FF_X13_Y5_N23
\PC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[23]~70_combout\,
	asdata => \Address[23]~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(23));

-- Location: LCCOMB_X16_Y5_N20
\Address[23]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[23]~63_combout\ = (\MicroCode|Set_A\(3) & ((\MicroCode|Set_A\(0)) # ((DI(23))))) # (!\MicroCode|Set_A\(3) & (\MicroCode|Set_A\(0) & ((PC(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \MicroCode|Set_A\(0),
	datac => DI(23),
	datad => PC(23),
	combout => \Address[23]~63_combout\);

-- Location: LCCOMB_X16_Y5_N2
\Address[23]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[23]~67_combout\ = (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(2) & (!\MicroCode|Set_A\(0))) # (!\MicroCode|Set_A\(2) & ((\Address[23]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => \MicroCode|Set_A\(1),
	datac => \MicroCode|Set_A\(0),
	datad => \Address[23]~63_combout\,
	combout => \Address[23]~67_combout\);

-- Location: LCCOMB_X14_Y5_N4
\Address[23]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[23]~60_combout\ = (\MicroCode|Set_A\(2) & (((!EIR(23) & \MicroCode|Set_A\(3))) # (!\Mux152~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => \Mux152~8_combout\,
	datac => EIR(23),
	datad => \MicroCode|Set_A\(3),
	combout => \Address[23]~60_combout\);

-- Location: LCCOMB_X13_Y5_N26
\SI[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SI[23]~feeder_combout\ = \Address[23]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Address[23]~7_combout\,
	combout => \SI[23]~feeder_combout\);

-- Location: FF_X13_Y5_N27
\SI[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SI[23]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(23));

-- Location: FF_X16_Y8_N31
\EIR[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EIR~54_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(47));

-- Location: LCCOMB_X16_Y7_N2
\Address[23]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[23]~61_combout\ = (\Mux151~2_combout\ & (((\Mux147~6_combout\) # (!\Mux133~0_combout\)))) # (!\Mux151~2_combout\ & (!EIR(47) & (\Mux133~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(47),
	datab => \Mux151~2_combout\,
	datac => \Mux133~0_combout\,
	datad => \Mux147~6_combout\,
	combout => \Address[23]~61_combout\);

-- Location: LCCOMB_X14_Y5_N2
\Address[23]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[23]~62_combout\ = (\Mux151~0_combout\ & ((\Address[23]~61_combout\ & ((\Address[23]~reg0_q\))) # (!\Address[23]~61_combout\ & (SI(23))))) # (!\Mux151~0_combout\ & (((\Address[23]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SI(23),
	datab => \Mux151~0_combout\,
	datac => \Address[23]~reg0_q\,
	datad => \Address[23]~61_combout\,
	combout => \Address[23]~62_combout\);

-- Location: LCCOMB_X14_Y5_N10
\Address[23]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[23]~7_combout\ = (\Mux138~6_combout\ & (\Address[23]~67_combout\)) # (!\Mux138~6_combout\ & (\Address[23]~60_combout\ & ((\Address[23]~67_combout\) # (\Address[23]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[23]~67_combout\,
	datab => \Mux138~6_combout\,
	datac => \Address[23]~60_combout\,
	datad => \Address[23]~62_combout\,
	combout => \Address[23]~7_combout\);

-- Location: LCCOMB_X14_Y5_N30
\Address[23]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[23]~reg0feeder_combout\ = \Address[23]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Address[23]~7_combout\,
	combout => \Address[23]~reg0feeder_combout\);

-- Location: FF_X14_Y5_N31
\Address[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[23]~reg0feeder_combout\,
	asdata => PC(23),
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|ALT_INV_AE~q\,
	ena => \Address[0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[23]~reg0_q\);

ww_Sync <= \Sync~output_o\;

ww_RW <= \RW~output_o\;

ww_Address(0) <= \Address[0]~output_o\;

ww_Address(1) <= \Address[1]~output_o\;

ww_Address(2) <= \Address[2]~output_o\;

ww_Address(3) <= \Address[3]~output_o\;

ww_Address(4) <= \Address[4]~output_o\;

ww_Address(5) <= \Address[5]~output_o\;

ww_Address(6) <= \Address[6]~output_o\;

ww_Address(7) <= \Address[7]~output_o\;

ww_Address(8) <= \Address[8]~output_o\;

ww_Address(9) <= \Address[9]~output_o\;

ww_Address(10) <= \Address[10]~output_o\;

ww_Address(11) <= \Address[11]~output_o\;

ww_Address(12) <= \Address[12]~output_o\;

ww_Address(13) <= \Address[13]~output_o\;

ww_Address(14) <= \Address[14]~output_o\;

ww_Address(15) <= \Address[15]~output_o\;

ww_Address(16) <= \Address[16]~output_o\;

ww_Address(17) <= \Address[17]~output_o\;

ww_Address(18) <= \Address[18]~output_o\;

ww_Address(19) <= \Address[19]~output_o\;

ww_Address(20) <= \Address[20]~output_o\;

ww_Address(21) <= \Address[21]~output_o\;

ww_Address(22) <= \Address[22]~output_o\;

ww_Address(23) <= \Address[23]~output_o\;

ww_DataO(0) <= \DataO[0]~output_o\;

ww_DataO(1) <= \DataO[1]~output_o\;

ww_DataO(2) <= \DataO[2]~output_o\;

ww_DataO(3) <= \DataO[3]~output_o\;

ww_DataO(4) <= \DataO[4]~output_o\;

ww_DataO(5) <= \DataO[5]~output_o\;

ww_DataO(6) <= \DataO[6]~output_o\;

ww_DataO(7) <= \DataO[7]~output_o\;

ww_DataO(8) <= \DataO[8]~output_o\;

ww_DataO(9) <= \DataO[9]~output_o\;

ww_DataO(10) <= \DataO[10]~output_o\;

ww_DataO(11) <= \DataO[11]~output_o\;

ww_DataO(12) <= \DataO[12]~output_o\;

ww_DataO(13) <= \DataO[13]~output_o\;

ww_DataO(14) <= \DataO[14]~output_o\;

ww_DataO(15) <= \DataO[15]~output_o\;

Data(0) <= \Data[0]~output_o\;

Data(1) <= \Data[1]~output_o\;

Data(2) <= \Data[2]~output_o\;

Data(3) <= \Data[3]~output_o\;

Data(4) <= \Data[4]~output_o\;

Data(5) <= \Data[5]~output_o\;

Data(6) <= \Data[6]~output_o\;

Data(7) <= \Data[7]~output_o\;

Data(8) <= \Data[8]~output_o\;

Data(9) <= \Data[9]~output_o\;

Data(10) <= \Data[10]~output_o\;

Data(11) <= \Data[11]~output_o\;

Data(12) <= \Data[12]~output_o\;

Data(13) <= \Data[13]~output_o\;

Data(14) <= \Data[14]~output_o\;

Data(15) <= \Data[15]~output_o\;
END structure;


