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

-- DATE "10/15/2020 00:56:48"

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
	Address : OUT std_logic_vector(31 DOWNTO 0);
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
-- Address[24]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[25]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[26]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[27]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[28]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[29]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[30]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[31]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[0]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[1]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[2]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[3]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[4]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[5]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[6]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[7]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[8]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[9]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[10]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[11]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[12]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[13]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[14]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataO[15]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- MPI_p	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HPI_p	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_Address : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DataO : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_HPI_p : std_logic;
SIGNAL ww_MPI_p : std_logic;
SIGNAL ww_LPI_p : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mClk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Data[8]~input_o\ : std_logic;
SIGNAL \Data[9]~input_o\ : std_logic;
SIGNAL \Data[10]~input_o\ : std_logic;
SIGNAL \Data[11]~input_o\ : std_logic;
SIGNAL \Data[12]~input_o\ : std_logic;
SIGNAL \Data[13]~input_o\ : std_logic;
SIGNAL \Data[14]~input_o\ : std_logic;
SIGNAL \Data[15]~input_o\ : std_logic;
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
SIGNAL \Address[24]~output_o\ : std_logic;
SIGNAL \Address[25]~output_o\ : std_logic;
SIGNAL \Address[26]~output_o\ : std_logic;
SIGNAL \Address[27]~output_o\ : std_logic;
SIGNAL \Address[28]~output_o\ : std_logic;
SIGNAL \Address[29]~output_o\ : std_logic;
SIGNAL \Address[30]~output_o\ : std_logic;
SIGNAL \Address[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \mClk~input_o\ : std_logic;
SIGNAL \mClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Data[7]~input_o\ : std_logic;
SIGNAL \MPI_p~input_o\ : std_logic;
SIGNAL \LPI_p~input_o\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \HPI_p~input_o\ : std_logic;
SIGNAL \HPIO~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \HPIO~q\ : std_logic;
SIGNAL \process_6~2_combout\ : std_logic;
SIGNAL \HPI~0_combout\ : std_logic;
SIGNAL \HPI~q\ : std_logic;
SIGNAL \LPI~0_combout\ : std_logic;
SIGNAL \LPIO~0_combout\ : std_logic;
SIGNAL \LPIO~q\ : std_logic;
SIGNAL \LPI~1_combout\ : std_logic;
SIGNAL \LPI~2_combout\ : std_logic;
SIGNAL \LPI~q\ : std_logic;
SIGNAL \process_6~0_combout\ : std_logic;
SIGNAL \process_6~3_combout\ : std_logic;
SIGNAL \MPIO~0_combout\ : std_logic;
SIGNAL \MPIO~q\ : std_logic;
SIGNAL \process_6~1_combout\ : std_logic;
SIGNAL \MPI~0_combout\ : std_logic;
SIGNAL \MPI~q\ : std_logic;
SIGNAL \AIE[0]~3_combout\ : std_logic;
SIGNAL \RstComplete~feeder_combout\ : std_logic;
SIGNAL \AIE[1]~0_combout\ : std_logic;
SIGNAL \RstComplete~q\ : std_logic;
SIGNAL \AIE[1]~2_combout\ : std_logic;
SIGNAL \AIE[1]~4_combout\ : std_logic;
SIGNAL \AIE[1]~1_combout\ : std_logic;
SIGNAL \IR~0_combout\ : std_logic;
SIGNAL \Data[5]~input_o\ : std_logic;
SIGNAL \IR~2_combout\ : std_logic;
SIGNAL \Data[6]~input_o\ : std_logic;
SIGNAL \IR~1_combout\ : std_logic;
SIGNAL \Data[4]~input_o\ : std_logic;
SIGNAL \IR~3_combout\ : std_logic;
SIGNAL \Data[0]~input_o\ : std_logic;
SIGNAL \IR~4_combout\ : std_logic;
SIGNAL \Data[1]~input_o\ : std_logic;
SIGNAL \IR~5_combout\ : std_logic;
SIGNAL \Data[2]~input_o\ : std_logic;
SIGNAL \IR~6_combout\ : std_logic;
SIGNAL \Data[3]~input_o\ : std_logic;
SIGNAL \IR~7_combout\ : std_logic;
SIGNAL \MicroCode|Mux1~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux1~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux2~0_combout\ : std_logic;
SIGNAL \MRC~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux2~1_combout\ : std_logic;
SIGNAL \CIR~2_combout\ : std_logic;
SIGNAL \CIR~3_combout\ : std_logic;
SIGNAL \CIR~4_combout\ : std_logic;
SIGNAL \CIR~q\ : std_logic;
SIGNAL \IC[0]~3_combout\ : std_logic;
SIGNAL \IC[1]~1_combout\ : std_logic;
SIGNAL \IC[0]~4_combout\ : std_logic;
SIGNAL \IC[1]~0_combout\ : std_logic;
SIGNAL \IC[1]~2_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \MRC[3]~6_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \MRC~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \MRC~5_combout\ : std_logic;
SIGNAL \MRC~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \MicroCode|process_0~0_combout\ : std_logic;
SIGNAL \MicroCode|process_0~1_combout\ : std_logic;
SIGNAL \MicroCode|PC_inc~q\ : std_logic;
SIGNAL \PC[0]~31_combout\ : std_logic;
SIGNAL \PC[0]~feeder_combout\ : std_logic;
SIGNAL \Address[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[0]~0_combout\ : std_logic;
SIGNAL \Address[0]~1_combout\ : std_logic;
SIGNAL \Address[0]~reg0_q\ : std_logic;
SIGNAL \PC[1]~32_combout\ : std_logic;
SIGNAL \PC[0]~34_combout\ : std_logic;
SIGNAL \Address[1]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[1]~reg0_q\ : std_logic;
SIGNAL \PC[1]~33\ : std_logic;
SIGNAL \PC[2]~35_combout\ : std_logic;
SIGNAL \Address[2]~reg0_q\ : std_logic;
SIGNAL \PC[2]~36\ : std_logic;
SIGNAL \PC[3]~37_combout\ : std_logic;
SIGNAL \Address[3]~reg0_q\ : std_logic;
SIGNAL \PC[3]~38\ : std_logic;
SIGNAL \PC[4]~39_combout\ : std_logic;
SIGNAL \Address[4]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[4]~reg0_q\ : std_logic;
SIGNAL \PC[4]~40\ : std_logic;
SIGNAL \PC[5]~41_combout\ : std_logic;
SIGNAL \Address[5]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[5]~reg0_q\ : std_logic;
SIGNAL \PC[5]~42\ : std_logic;
SIGNAL \PC[6]~43_combout\ : std_logic;
SIGNAL \Address[6]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[6]~reg0_q\ : std_logic;
SIGNAL \PC[6]~44\ : std_logic;
SIGNAL \PC[7]~45_combout\ : std_logic;
SIGNAL \Address[7]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[7]~reg0_q\ : std_logic;
SIGNAL \PC[7]~46\ : std_logic;
SIGNAL \PC[8]~47_combout\ : std_logic;
SIGNAL \Address[8]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[8]~reg0_q\ : std_logic;
SIGNAL \PC[8]~48\ : std_logic;
SIGNAL \PC[9]~49_combout\ : std_logic;
SIGNAL \Address[9]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[9]~reg0_q\ : std_logic;
SIGNAL \PC[9]~50\ : std_logic;
SIGNAL \PC[10]~51_combout\ : std_logic;
SIGNAL \Address[10]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[10]~reg0_q\ : std_logic;
SIGNAL \PC[10]~52\ : std_logic;
SIGNAL \PC[11]~53_combout\ : std_logic;
SIGNAL \Address[11]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[11]~reg0_q\ : std_logic;
SIGNAL \PC[11]~54\ : std_logic;
SIGNAL \PC[12]~55_combout\ : std_logic;
SIGNAL \Address[12]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[12]~reg0_q\ : std_logic;
SIGNAL \PC[12]~56\ : std_logic;
SIGNAL \PC[13]~57_combout\ : std_logic;
SIGNAL \Address[13]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[13]~reg0_q\ : std_logic;
SIGNAL \PC[13]~58\ : std_logic;
SIGNAL \PC[14]~59_combout\ : std_logic;
SIGNAL \Address[14]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[14]~reg0_q\ : std_logic;
SIGNAL \PC[14]~60\ : std_logic;
SIGNAL \PC[15]~61_combout\ : std_logic;
SIGNAL \Address[15]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[15]~reg0_q\ : std_logic;
SIGNAL \PC[15]~62\ : std_logic;
SIGNAL \PC[16]~63_combout\ : std_logic;
SIGNAL \Address[16]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[16]~reg0_q\ : std_logic;
SIGNAL \PC[16]~64\ : std_logic;
SIGNAL \PC[17]~65_combout\ : std_logic;
SIGNAL \Address[17]~reg0_q\ : std_logic;
SIGNAL \PC[17]~66\ : std_logic;
SIGNAL \PC[18]~67_combout\ : std_logic;
SIGNAL \Address[18]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[18]~reg0_q\ : std_logic;
SIGNAL \PC[18]~68\ : std_logic;
SIGNAL \PC[19]~69_combout\ : std_logic;
SIGNAL \Address[19]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[19]~reg0_q\ : std_logic;
SIGNAL \PC[19]~70\ : std_logic;
SIGNAL \PC[20]~71_combout\ : std_logic;
SIGNAL \Address[20]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[20]~reg0_q\ : std_logic;
SIGNAL \PC[20]~72\ : std_logic;
SIGNAL \PC[21]~73_combout\ : std_logic;
SIGNAL \Address[21]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[21]~reg0_q\ : std_logic;
SIGNAL \PC[21]~74\ : std_logic;
SIGNAL \PC[22]~75_combout\ : std_logic;
SIGNAL \Address[22]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[22]~reg0_q\ : std_logic;
SIGNAL \PC[22]~76\ : std_logic;
SIGNAL \PC[23]~77_combout\ : std_logic;
SIGNAL \Address[23]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[23]~reg0_q\ : std_logic;
SIGNAL \PC[23]~78\ : std_logic;
SIGNAL \PC[24]~79_combout\ : std_logic;
SIGNAL \Address[24]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[24]~reg0_q\ : std_logic;
SIGNAL \PC[24]~80\ : std_logic;
SIGNAL \PC[25]~81_combout\ : std_logic;
SIGNAL \Address[25]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[25]~reg0_q\ : std_logic;
SIGNAL \PC[25]~82\ : std_logic;
SIGNAL \PC[26]~83_combout\ : std_logic;
SIGNAL \Address[26]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[26]~reg0_q\ : std_logic;
SIGNAL \PC[26]~84\ : std_logic;
SIGNAL \PC[27]~85_combout\ : std_logic;
SIGNAL \Address[27]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[27]~reg0_q\ : std_logic;
SIGNAL \PC[27]~86\ : std_logic;
SIGNAL \PC[28]~87_combout\ : std_logic;
SIGNAL \Address[28]~reg0_q\ : std_logic;
SIGNAL \PC[28]~88\ : std_logic;
SIGNAL \PC[29]~89_combout\ : std_logic;
SIGNAL \Address[29]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[29]~reg0_q\ : std_logic;
SIGNAL \PC[29]~90\ : std_logic;
SIGNAL \PC[30]~91_combout\ : std_logic;
SIGNAL \Address[30]~reg0_q\ : std_logic;
SIGNAL \PC[30]~92\ : std_logic;
SIGNAL \PC[31]~93_combout\ : std_logic;
SIGNAL \Address[31]~reg0_q\ : std_logic;
SIGNAL PC : std_logic_vector(31 DOWNTO 0);
SIGNAL MRC : std_logic_vector(3 DOWNTO 0);
SIGNAL IC : std_logic_vector(1 DOWNTO 0);
SIGNAL \MicroCode|LMRC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL AIE : std_logic_vector(1 DOWNTO 0);
SIGNAL \MicroCode|LIC\ : std_logic_vector(1 DOWNTO 0);
SIGNAL IR : std_logic_vector(15 DOWNTO 0);

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

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\mClk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mClk~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y17_N2
\DataO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DataO[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\DataO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DataO[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\DataO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DataO[2]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\DataO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DataO[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\DataO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DataO[4]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\DataO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DataO[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\DataO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DataO[6]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\DataO[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DataO[7]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\DataO[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DataO[8]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\DataO[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DataO[9]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\DataO[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DataO[10]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\DataO[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DataO[11]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\DataO[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DataO[12]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\DataO[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DataO[13]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\DataO[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DataO[14]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\DataO[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
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
	i => GND,
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

-- Location: IOOBUF_X16_Y24_N2
\Address[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[24]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[24]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\Address[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[25]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[25]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\Address[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[26]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[26]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\Address[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[27]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[27]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\Address[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[28]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[28]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\Address[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[29]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[29]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\Address[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[30]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[30]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\Address[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address[31]~reg0_q\,
	devoe => ww_devoe,
	o => \Address[31]~output_o\);

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

-- Location: LCCOMB_X10_Y16_N22
\HPIO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HPIO~0_combout\ = (\HPI_p~input_o\ & ((\HPIO~q\) # ((!\LPI~q\ & !\MPI~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LPI~q\,
	datab => \HPI_p~input_o\,
	datac => \HPIO~q\,
	datad => \MPI~q\,
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

-- Location: FF_X10_Y16_N23
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

-- Location: LCCOMB_X10_Y16_N16
\process_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_6~2_combout\ = (!\LPI~q\ & (\HPI_p~input_o\ & (!\HPIO~q\ & !\MPI~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LPI~q\,
	datab => \HPI_p~input_o\,
	datac => \HPIO~q\,
	datad => \MPI~q\,
	combout => \process_6~2_combout\);

-- Location: LCCOMB_X10_Y16_N20
\HPI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HPI~0_combout\ = (\HPI~q\) # ((\Enable~input_o\ & \process_6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable~input_o\,
	datac => \HPI~q\,
	datad => \process_6~2_combout\,
	combout => \HPI~0_combout\);

-- Location: FF_X10_Y16_N21
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

-- Location: LCCOMB_X10_Y16_N18
\LPI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPI~0_combout\ = (!\process_6~1_combout\ & (!\HPI~q\ & (!\MPI~q\ & !\process_6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~1_combout\,
	datab => \HPI~q\,
	datac => \MPI~q\,
	datad => \process_6~2_combout\,
	combout => \LPI~0_combout\);

-- Location: LCCOMB_X10_Y16_N8
\LPIO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPIO~0_combout\ = (\LPI_p~input_o\ & ((\LPIO~q\) # (\LPI~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LPI_p~input_o\,
	datac => \LPIO~q\,
	datad => \LPI~0_combout\,
	combout => \LPIO~0_combout\);

-- Location: FF_X10_Y16_N9
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

-- Location: LCCOMB_X10_Y16_N30
\LPI~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPI~1_combout\ = (!\LPIO~q\ & (\LPI_p~input_o\ & \Enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LPIO~q\,
	datac => \LPI_p~input_o\,
	datad => \Enable~input_o\,
	combout => \LPI~1_combout\);

-- Location: LCCOMB_X10_Y16_N26
\LPI~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPI~2_combout\ = (\LPI~q\) # ((\LPI~1_combout\ & \LPI~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LPI~1_combout\,
	datac => \LPI~q\,
	datad => \LPI~0_combout\,
	combout => \LPI~2_combout\);

-- Location: FF_X10_Y16_N27
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

-- Location: LCCOMB_X10_Y16_N28
\process_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_6~0_combout\ = (!\LPI~q\ & !\HPI~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LPI~q\,
	datad => \HPI~q\,
	combout => \process_6~0_combout\);

-- Location: LCCOMB_X10_Y16_N12
\process_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_6~3_combout\ = (!\HPIO~q\ & (\HPI_p~input_o\ & !\MPI~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HPIO~q\,
	datac => \HPI_p~input_o\,
	datad => \MPI~q\,
	combout => \process_6~3_combout\);

-- Location: LCCOMB_X10_Y16_N14
\MPIO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MPIO~0_combout\ = (\MPI_p~input_o\ & ((\MPIO~q\) # ((\process_6~0_combout\ & !\process_6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MPI_p~input_o\,
	datab => \process_6~0_combout\,
	datac => \MPIO~q\,
	datad => \process_6~3_combout\,
	combout => \MPIO~0_combout\);

-- Location: FF_X10_Y16_N15
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

-- Location: LCCOMB_X10_Y16_N24
\process_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_6~1_combout\ = (\MPI_p~input_o\ & (!\MPIO~q\ & (!\LPI~q\ & !\HPI~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MPI_p~input_o\,
	datab => \MPIO~q\,
	datac => \LPI~q\,
	datad => \HPI~q\,
	combout => \process_6~1_combout\);

-- Location: LCCOMB_X16_Y16_N26
\MPI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MPI~0_combout\ = (\MPI~q\) # ((\process_6~1_combout\ & (\Enable~input_o\ & !\process_6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~1_combout\,
	datab => \Enable~input_o\,
	datac => \MPI~q\,
	datad => \process_6~2_combout\,
	combout => \MPI~0_combout\);

-- Location: FF_X16_Y16_N27
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

-- Location: LCCOMB_X16_Y16_N10
\AIE[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AIE[0]~3_combout\ = (\LPI~q\) # (!\MPI~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MPI~q\,
	datad => \LPI~q\,
	combout => \AIE[0]~3_combout\);

-- Location: LCCOMB_X12_Y17_N24
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

-- Location: LCCOMB_X12_Y17_N2
\AIE[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AIE[1]~0_combout\ = (\Enable~input_o\ & ((!\LessThan0~1_combout\) # (!\RstComplete~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RstComplete~q\,
	datac => \Enable~input_o\,
	datad => \LessThan0~1_combout\,
	combout => \AIE[1]~0_combout\);

-- Location: FF_X12_Y17_N25
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
	ena => \AIE[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RstComplete~q\);

-- Location: LCCOMB_X16_Y16_N14
\AIE[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AIE[1]~2_combout\ = (\Enable~input_o\ & (\AIE[1]~1_combout\ & ((!\LessThan0~1_combout\) # (!\RstComplete~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RstComplete~q\,
	datab => \Enable~input_o\,
	datac => \AIE[1]~1_combout\,
	datad => \LessThan0~1_combout\,
	combout => \AIE[1]~2_combout\);

-- Location: FF_X16_Y16_N11
\AIE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AIE[0]~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AIE(0));

-- Location: LCCOMB_X16_Y16_N0
\AIE[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AIE[1]~4_combout\ = !\LPI~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LPI~q\,
	combout => \AIE[1]~4_combout\);

-- Location: FF_X16_Y16_N1
\AIE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AIE[1]~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AIE(1));

-- Location: LCCOMB_X16_Y16_N8
\AIE[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AIE[1]~1_combout\ = (!AIE(0) & (!AIE(1) & ((\MPI~q\) # (!\process_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AIE(0),
	datab => AIE(1),
	datac => \MPI~q\,
	datad => \process_6~0_combout\,
	combout => \AIE[1]~1_combout\);

-- Location: LCCOMB_X12_Y17_N30
\IR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~0_combout\ = (\Data[7]~input_o\ & !\AIE[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Data[7]~input_o\,
	datad => \AIE[1]~1_combout\,
	combout => \IR~0_combout\);

-- Location: FF_X12_Y17_N31
\IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(7));

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

-- Location: LCCOMB_X12_Y17_N22
\IR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~2_combout\ = (\Data[5]~input_o\ & !\AIE[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Data[5]~input_o\,
	datad => \AIE[1]~1_combout\,
	combout => \IR~2_combout\);

-- Location: FF_X12_Y17_N23
\IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(5));

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

-- Location: LCCOMB_X12_Y17_N28
\IR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~1_combout\ = (\Data[6]~input_o\ & !\AIE[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Data[6]~input_o\,
	datad => \AIE[1]~1_combout\,
	combout => \IR~1_combout\);

-- Location: FF_X12_Y17_N29
\IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(6));

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

-- Location: LCCOMB_X12_Y17_N4
\IR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~3_combout\ = (\Data[4]~input_o\ & !\AIE[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Data[4]~input_o\,
	datad => \AIE[1]~1_combout\,
	combout => \IR~3_combout\);

-- Location: FF_X12_Y17_N5
\IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(4));

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

-- Location: LCCOMB_X12_Y17_N26
\IR~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~4_combout\ = (\Data[0]~input_o\ & !\AIE[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Data[0]~input_o\,
	datad => \AIE[1]~1_combout\,
	combout => \IR~4_combout\);

-- Location: FF_X12_Y17_N27
\IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[1]~0_combout\,
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

-- Location: LCCOMB_X12_Y17_N8
\IR~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~5_combout\ = (\Data[1]~input_o\ & !\AIE[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Data[1]~input_o\,
	datad => \AIE[1]~1_combout\,
	combout => \IR~5_combout\);

-- Location: FF_X12_Y17_N9
\IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[1]~0_combout\,
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

-- Location: LCCOMB_X12_Y17_N14
\IR~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~6_combout\ = (\Data[2]~input_o\ & !\AIE[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Data[2]~input_o\,
	datad => \AIE[1]~1_combout\,
	combout => \IR~6_combout\);

-- Location: FF_X12_Y17_N15
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
	ena => \AIE[1]~0_combout\,
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

-- Location: LCCOMB_X12_Y17_N12
\IR~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~7_combout\ = (\Data[3]~input_o\ & !\AIE[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Data[3]~input_o\,
	datad => \AIE[1]~1_combout\,
	combout => \IR~7_combout\);

-- Location: FF_X12_Y17_N13
\IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AIE[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(3));

-- Location: LCCOMB_X12_Y17_N10
\MicroCode|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux1~0_combout\ = (IR(3) & ((IR(0)) # ((IR(1)) # (IR(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => IR(1),
	datac => IR(2),
	datad => IR(3),
	combout => \MicroCode|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y17_N20
\MicroCode|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux1~1_combout\ = (IR(6) & ((IR(5)) # ((IR(4)) # (\MicroCode|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(5),
	datab => IR(6),
	datac => IR(4),
	datad => \MicroCode|Mux1~0_combout\,
	combout => \MicroCode|Mux1~1_combout\);

-- Location: LCCOMB_X12_Y16_N28
\MicroCode|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux2~0_combout\ = (IR(7)) # (\MicroCode|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datac => \MicroCode|Mux1~1_combout\,
	combout => \MicroCode|Mux2~0_combout\);

-- Location: FF_X12_Y16_N29
\MicroCode|LMRC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux2~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|LMRC\(0));

-- Location: LCCOMB_X13_Y16_N18
\MRC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MRC~2_combout\ = (!MRC(0) & ((\Equal0~1_combout\) # (\MicroCode|LMRC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => MRC(0),
	datad => \MicroCode|LMRC\(0),
	combout => \MRC~2_combout\);

-- Location: LCCOMB_X14_Y16_N18
\MicroCode|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux2~1_combout\ = (\Equal0~0_combout\ & ((IR(7)) # (\MicroCode|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => IR(7),
	datad => \MicroCode|Mux1~1_combout\,
	combout => \MicroCode|Mux2~1_combout\);

-- Location: FF_X14_Y16_N19
\MicroCode|LIC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux2~1_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|LIC\(0));

-- Location: LCCOMB_X16_Y16_N4
\CIR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CIR~2_combout\ = (AIE(0)) # ((AIE(1)) # ((\Equal0~0_combout\) # (\CIR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AIE(0),
	datab => AIE(1),
	datac => \Equal0~0_combout\,
	datad => \CIR~q\,
	combout => \CIR~2_combout\);

-- Location: LCCOMB_X16_Y16_N28
\CIR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CIR~3_combout\ = (!\process_2~0_combout\ & (\CIR~2_combout\ & \LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_2~0_combout\,
	datac => \CIR~2_combout\,
	datad => \LessThan0~1_combout\,
	combout => \CIR~3_combout\);

-- Location: LCCOMB_X16_Y16_N16
\CIR~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CIR~4_combout\ = (\RstComplete~q\ & ((\Enable~input_o\ & ((\CIR~3_combout\))) # (!\Enable~input_o\ & (\CIR~q\)))) # (!\RstComplete~q\ & (((\CIR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RstComplete~q\,
	datab => \Enable~input_o\,
	datac => \CIR~q\,
	datad => \CIR~3_combout\,
	combout => \CIR~4_combout\);

-- Location: FF_X16_Y16_N17
CIR : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CIR~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CIR~q\);

-- Location: LCCOMB_X16_Y16_N2
\IC[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \IC[0]~3_combout\ = (\MicroCode|LIC\(0) & (\RstComplete~q\ & (\Enable~input_o\ & !\CIR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|LIC\(0),
	datab => \RstComplete~q\,
	datac => \Enable~input_o\,
	datad => \CIR~q\,
	combout => \IC[0]~3_combout\);

-- Location: LCCOMB_X16_Y16_N20
\IC[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IC[1]~1_combout\ = (\Enable~input_o\ & (((\process_2~0_combout\) # (!\LessThan0~1_combout\)) # (!\RstComplete~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RstComplete~q\,
	datab => \Enable~input_o\,
	datac => \process_2~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \IC[1]~1_combout\);

-- Location: LCCOMB_X16_Y16_N22
\IC[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \IC[0]~4_combout\ = (IC(0) & ((!\IC[1]~1_combout\))) # (!IC(0) & (\IC[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IC[0]~3_combout\,
	datac => IC(0),
	datad => \IC[1]~1_combout\,
	combout => \IC[0]~4_combout\);

-- Location: FF_X16_Y16_N23
\IC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IC[0]~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IC(0));

-- Location: LCCOMB_X16_Y16_N18
\IC[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IC[1]~0_combout\ = (\RstComplete~q\ & \process_2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RstComplete~q\,
	datad => \process_2~0_combout\,
	combout => \IC[1]~0_combout\);

-- Location: LCCOMB_X16_Y16_N24
\IC[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \IC[1]~2_combout\ = (\IC[1]~1_combout\ & (\IC[1]~0_combout\ & ((IC(0)) # (IC(1))))) # (!\IC[1]~1_combout\ & (((IC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IC(0),
	datab => \IC[1]~0_combout\,
	datac => IC(1),
	datad => \IC[1]~1_combout\,
	combout => \IC[1]~2_combout\);

-- Location: FF_X16_Y16_N25
\IC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IC[1]~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IC(1));

-- Location: LCCOMB_X14_Y16_N28
\process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (\MicroCode|LIC\(0) & (!\CIR~q\ & ((!IC(0)) # (!IC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IC(1),
	datab => \MicroCode|LIC\(0),
	datac => IC(0),
	datad => \CIR~q\,
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X13_Y16_N26
\MRC[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MRC[3]~6_combout\ = (\RstComplete~q\ & (\Enable~input_o\ & !\process_2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RstComplete~q\,
	datab => \Enable~input_o\,
	datad => \process_2~0_combout\,
	combout => \MRC[3]~6_combout\);

-- Location: FF_X13_Y16_N1
\MRC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MRC~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \MRC[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MRC(0));

-- Location: LCCOMB_X13_Y17_N16
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = MRC(3) $ (((MRC(1) & (MRC(0) & MRC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(1),
	datab => MRC(0),
	datac => MRC(2),
	datad => MRC(3),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X13_Y16_N2
\MRC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MRC~3_combout\ = (\LessThan0~1_combout\ & \Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~1_combout\,
	datac => \Add4~0_combout\,
	combout => \MRC~3_combout\);

-- Location: FF_X13_Y16_N3
\MRC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MRC~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \MRC[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MRC(3));

-- Location: LCCOMB_X13_Y16_N30
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!MRC(2) & (!MRC(1) & !MRC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(2),
	datab => MRC(1),
	datad => MRC(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X13_Y16_N16
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (MRC(2) & (MRC(1) & MRC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(2),
	datab => MRC(1),
	datad => MRC(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X13_Y16_N0
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\Equal0~1_combout\) # ((\MicroCode|LMRC\(0) & ((!MRC(0)) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => MRC(0),
	datad => \MicroCode|LMRC\(0),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X13_Y16_N14
\MRC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MRC~5_combout\ = (\LessThan0~1_combout\ & (MRC(1) $ (MRC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~1_combout\,
	datac => MRC(1),
	datad => MRC(0),
	combout => \MRC~5_combout\);

-- Location: FF_X13_Y16_N15
\MRC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MRC~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \MRC[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MRC(1));

-- Location: LCCOMB_X13_Y16_N12
\MRC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MRC~4_combout\ = (\LessThan0~1_combout\ & (MRC(2) $ (((MRC(1) & MRC(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(1),
	datab => \LessThan0~1_combout\,
	datac => MRC(2),
	datad => MRC(0),
	combout => \MRC~4_combout\);

-- Location: FF_X13_Y16_N13
\MRC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MRC~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \MRC[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MRC(2));

-- Location: LCCOMB_X13_Y16_N8
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!MRC(2) & (!MRC(0) & (!MRC(1) & !MRC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(2),
	datab => MRC(0),
	datac => MRC(1),
	datad => MRC(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X14_Y16_N6
\MicroCode|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|process_0~0_combout\ = (!IC(1) & (((\MicroCode|LIC\(0) & \Equal0~0_combout\)) # (!IC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IC(1),
	datab => \MicroCode|LIC\(0),
	datac => IC(0),
	datad => \Equal0~0_combout\,
	combout => \MicroCode|process_0~0_combout\);

-- Location: LCCOMB_X12_Y16_N18
\MicroCode|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|process_0~1_combout\ = (\LessThan0~0_combout\) # ((\MicroCode|process_0~0_combout\) # ((!\MicroCode|LMRC\(0) & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|LMRC\(0),
	datab => \LessThan0~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \MicroCode|process_0~0_combout\,
	combout => \MicroCode|process_0~1_combout\);

-- Location: FF_X12_Y16_N19
\MicroCode|PC_inc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|process_0~1_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|PC_inc~q\);

-- Location: LCCOMB_X12_Y16_N10
\PC[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[0]~31_combout\ = PC(0) $ (((\Enable~input_o\ & \MicroCode|PC_inc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => \Enable~input_o\,
	datad => \MicroCode|PC_inc~q\,
	combout => \PC[0]~31_combout\);

-- Location: LCCOMB_X11_Y16_N0
\PC[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[0]~feeder_combout\ = \PC[0]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC[0]~31_combout\,
	combout => \PC[0]~feeder_combout\);

-- Location: FF_X11_Y16_N1
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[0]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X12_Y16_N4
\Address[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[0]~reg0feeder_combout\ = PC(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(0),
	combout => \Address[0]~reg0feeder_combout\);

-- Location: LCCOMB_X13_Y16_N20
\Address[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[0]~0_combout\ = (\Enable~input_o\ & (MRC(2) $ (((!\MicroCode|LMRC\(0)) # (!MRC(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(2),
	datab => \Enable~input_o\,
	datac => MRC(1),
	datad => \MicroCode|LMRC\(0),
	combout => \Address[0]~0_combout\);

-- Location: LCCOMB_X13_Y16_N6
\Address[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[0]~1_combout\ = (\Address[0]~0_combout\ & ((MRC(2) & (MRC(3) & MRC(0))) # (!MRC(2) & (!MRC(3) & !MRC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(2),
	datab => MRC(3),
	datac => MRC(0),
	datad => \Address[0]~0_combout\,
	combout => \Address[0]~1_combout\);

-- Location: FF_X12_Y16_N5
\Address[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[0]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[0]~reg0_q\);

-- Location: LCCOMB_X11_Y16_N2
\PC[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[1]~32_combout\ = (PC(0) & (PC(1) $ (VCC))) # (!PC(0) & (PC(1) & VCC))
-- \PC[1]~33\ = CARRY((PC(0) & PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(1),
	datad => VCC,
	combout => \PC[1]~32_combout\,
	cout => \PC[1]~33\);

-- Location: LCCOMB_X12_Y16_N30
\PC[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[0]~34_combout\ = (\Enable~input_o\ & \MicroCode|PC_inc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable~input_o\,
	datad => \MicroCode|PC_inc~q\,
	combout => \PC[0]~34_combout\);

-- Location: FF_X11_Y16_N3
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[1]~32_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X12_Y16_N6
\Address[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[1]~reg0feeder_combout\ = PC(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(1),
	combout => \Address[1]~reg0feeder_combout\);

-- Location: FF_X12_Y16_N7
\Address[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[1]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[1]~reg0_q\);

-- Location: LCCOMB_X11_Y16_N4
\PC[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[2]~35_combout\ = (PC(2) & (!\PC[1]~33\)) # (!PC(2) & ((\PC[1]~33\) # (GND)))
-- \PC[2]~36\ = CARRY((!\PC[1]~33\) # (!PC(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(2),
	datad => VCC,
	cin => \PC[1]~33\,
	combout => \PC[2]~35_combout\,
	cout => \PC[2]~36\);

-- Location: FF_X11_Y16_N5
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[2]~35_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: FF_X13_Y16_N27
\Address[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	asdata => PC(2),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[2]~reg0_q\);

-- Location: LCCOMB_X11_Y16_N6
\PC[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[3]~37_combout\ = (PC(3) & (\PC[2]~36\ $ (GND))) # (!PC(3) & (!\PC[2]~36\ & VCC))
-- \PC[3]~38\ = CARRY((PC(3) & !\PC[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datad => VCC,
	cin => \PC[2]~36\,
	combout => \PC[3]~37_combout\,
	cout => \PC[3]~38\);

-- Location: FF_X11_Y16_N7
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[3]~37_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: FF_X13_Y16_N17
\Address[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	asdata => PC(3),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[3]~reg0_q\);

-- Location: LCCOMB_X11_Y16_N8
\PC[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[4]~39_combout\ = (PC(4) & (!\PC[3]~38\)) # (!PC(4) & ((\PC[3]~38\) # (GND)))
-- \PC[4]~40\ = CARRY((!\PC[3]~38\) # (!PC(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(4),
	datad => VCC,
	cin => \PC[3]~38\,
	combout => \PC[4]~39_combout\,
	cout => \PC[4]~40\);

-- Location: FF_X11_Y16_N9
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[4]~39_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: LCCOMB_X12_Y16_N20
\Address[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[4]~reg0feeder_combout\ = PC(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(4),
	combout => \Address[4]~reg0feeder_combout\);

-- Location: FF_X12_Y16_N21
\Address[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[4]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[4]~reg0_q\);

-- Location: LCCOMB_X11_Y16_N10
\PC[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[5]~41_combout\ = (PC(5) & (\PC[4]~40\ $ (GND))) # (!PC(5) & (!\PC[4]~40\ & VCC))
-- \PC[5]~42\ = CARRY((PC(5) & !\PC[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(5),
	datad => VCC,
	cin => \PC[4]~40\,
	combout => \PC[5]~41_combout\,
	cout => \PC[5]~42\);

-- Location: FF_X11_Y16_N11
\PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[5]~41_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(5));

-- Location: LCCOMB_X14_Y16_N20
\Address[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[5]~reg0feeder_combout\ = PC(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(5),
	combout => \Address[5]~reg0feeder_combout\);

-- Location: FF_X14_Y16_N21
\Address[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[5]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[5]~reg0_q\);

-- Location: LCCOMB_X11_Y16_N12
\PC[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[6]~43_combout\ = (PC(6) & (!\PC[5]~42\)) # (!PC(6) & ((\PC[5]~42\) # (GND)))
-- \PC[6]~44\ = CARRY((!\PC[5]~42\) # (!PC(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(6),
	datad => VCC,
	cin => \PC[5]~42\,
	combout => \PC[6]~43_combout\,
	cout => \PC[6]~44\);

-- Location: FF_X11_Y16_N13
\PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[6]~43_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(6));

-- Location: LCCOMB_X14_Y16_N30
\Address[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[6]~reg0feeder_combout\ = PC(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(6),
	combout => \Address[6]~reg0feeder_combout\);

-- Location: FF_X14_Y16_N31
\Address[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[6]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[6]~reg0_q\);

-- Location: LCCOMB_X11_Y16_N14
\PC[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[7]~45_combout\ = (PC(7) & (\PC[6]~44\ $ (GND))) # (!PC(7) & (!\PC[6]~44\ & VCC))
-- \PC[7]~46\ = CARRY((PC(7) & !\PC[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(7),
	datad => VCC,
	cin => \PC[6]~44\,
	combout => \PC[7]~45_combout\,
	cout => \PC[7]~46\);

-- Location: FF_X11_Y16_N15
\PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[7]~45_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(7));

-- Location: LCCOMB_X12_Y16_N26
\Address[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[7]~reg0feeder_combout\ = PC(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(7),
	combout => \Address[7]~reg0feeder_combout\);

-- Location: FF_X12_Y16_N27
\Address[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[7]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[7]~reg0_q\);

-- Location: LCCOMB_X11_Y16_N16
\PC[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[8]~47_combout\ = (PC(8) & (!\PC[7]~46\)) # (!PC(8) & ((\PC[7]~46\) # (GND)))
-- \PC[8]~48\ = CARRY((!\PC[7]~46\) # (!PC(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(8),
	datad => VCC,
	cin => \PC[7]~46\,
	combout => \PC[8]~47_combout\,
	cout => \PC[8]~48\);

-- Location: FF_X11_Y16_N17
\PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[8]~47_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(8));

-- Location: LCCOMB_X14_Y16_N4
\Address[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[8]~reg0feeder_combout\ = PC(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(8),
	combout => \Address[8]~reg0feeder_combout\);

-- Location: FF_X14_Y16_N5
\Address[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[8]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[8]~reg0_q\);

-- Location: LCCOMB_X11_Y16_N18
\PC[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[9]~49_combout\ = (PC(9) & (\PC[8]~48\ $ (GND))) # (!PC(9) & (!\PC[8]~48\ & VCC))
-- \PC[9]~50\ = CARRY((PC(9) & !\PC[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(9),
	datad => VCC,
	cin => \PC[8]~48\,
	combout => \PC[9]~49_combout\,
	cout => \PC[9]~50\);

-- Location: FF_X11_Y16_N19
\PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[9]~49_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(9));

-- Location: LCCOMB_X14_Y16_N14
\Address[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[9]~reg0feeder_combout\ = PC(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(9),
	combout => \Address[9]~reg0feeder_combout\);

-- Location: FF_X14_Y16_N15
\Address[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[9]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[9]~reg0_q\);

-- Location: LCCOMB_X11_Y16_N20
\PC[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[10]~51_combout\ = (PC(10) & (!\PC[9]~50\)) # (!PC(10) & ((\PC[9]~50\) # (GND)))
-- \PC[10]~52\ = CARRY((!\PC[9]~50\) # (!PC(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(10),
	datad => VCC,
	cin => \PC[9]~50\,
	combout => \PC[10]~51_combout\,
	cout => \PC[10]~52\);

-- Location: FF_X11_Y16_N21
\PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[10]~51_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(10));

-- Location: LCCOMB_X14_Y16_N8
\Address[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[10]~reg0feeder_combout\ = PC(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(10),
	combout => \Address[10]~reg0feeder_combout\);

-- Location: FF_X14_Y16_N9
\Address[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[10]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[10]~reg0_q\);

-- Location: LCCOMB_X11_Y16_N22
\PC[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[11]~53_combout\ = (PC(11) & (\PC[10]~52\ $ (GND))) # (!PC(11) & (!\PC[10]~52\ & VCC))
-- \PC[11]~54\ = CARRY((PC(11) & !\PC[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(11),
	datad => VCC,
	cin => \PC[10]~52\,
	combout => \PC[11]~53_combout\,
	cout => \PC[11]~54\);

-- Location: FF_X11_Y16_N23
\PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[11]~53_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(11));

-- Location: LCCOMB_X14_Y16_N22
\Address[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[11]~reg0feeder_combout\ = PC(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(11),
	combout => \Address[11]~reg0feeder_combout\);

-- Location: FF_X14_Y16_N23
\Address[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[11]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[11]~reg0_q\);

-- Location: LCCOMB_X11_Y16_N24
\PC[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[12]~55_combout\ = (PC(12) & (!\PC[11]~54\)) # (!PC(12) & ((\PC[11]~54\) # (GND)))
-- \PC[12]~56\ = CARRY((!\PC[11]~54\) # (!PC(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(12),
	datad => VCC,
	cin => \PC[11]~54\,
	combout => \PC[12]~55_combout\,
	cout => \PC[12]~56\);

-- Location: FF_X11_Y16_N25
\PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[12]~55_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(12));

-- Location: LCCOMB_X14_Y16_N12
\Address[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[12]~reg0feeder_combout\ = PC(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(12),
	combout => \Address[12]~reg0feeder_combout\);

-- Location: FF_X14_Y16_N13
\Address[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[12]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[12]~reg0_q\);

-- Location: LCCOMB_X11_Y16_N26
\PC[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[13]~57_combout\ = (PC(13) & (\PC[12]~56\ $ (GND))) # (!PC(13) & (!\PC[12]~56\ & VCC))
-- \PC[13]~58\ = CARRY((PC(13) & !\PC[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(13),
	datad => VCC,
	cin => \PC[12]~56\,
	combout => \PC[13]~57_combout\,
	cout => \PC[13]~58\);

-- Location: FF_X11_Y16_N27
\PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[13]~57_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(13));

-- Location: LCCOMB_X12_Y16_N0
\Address[13]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[13]~reg0feeder_combout\ = PC(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(13),
	combout => \Address[13]~reg0feeder_combout\);

-- Location: FF_X12_Y16_N1
\Address[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[13]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[13]~reg0_q\);

-- Location: LCCOMB_X11_Y16_N28
\PC[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[14]~59_combout\ = (PC(14) & (!\PC[13]~58\)) # (!PC(14) & ((\PC[13]~58\) # (GND)))
-- \PC[14]~60\ = CARRY((!\PC[13]~58\) # (!PC(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(14),
	datad => VCC,
	cin => \PC[13]~58\,
	combout => \PC[14]~59_combout\,
	cout => \PC[14]~60\);

-- Location: FF_X11_Y16_N29
\PC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[14]~59_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(14));

-- Location: LCCOMB_X12_Y16_N14
\Address[14]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[14]~reg0feeder_combout\ = PC(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(14),
	combout => \Address[14]~reg0feeder_combout\);

-- Location: FF_X12_Y16_N15
\Address[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[14]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[14]~reg0_q\);

-- Location: LCCOMB_X11_Y16_N30
\PC[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[15]~61_combout\ = (PC(15) & (\PC[14]~60\ $ (GND))) # (!PC(15) & (!\PC[14]~60\ & VCC))
-- \PC[15]~62\ = CARRY((PC(15) & !\PC[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(15),
	datad => VCC,
	cin => \PC[14]~60\,
	combout => \PC[15]~61_combout\,
	cout => \PC[15]~62\);

-- Location: FF_X11_Y16_N31
\PC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[15]~61_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(15));

-- Location: LCCOMB_X14_Y16_N10
\Address[15]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[15]~reg0feeder_combout\ = PC(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(15),
	combout => \Address[15]~reg0feeder_combout\);

-- Location: FF_X14_Y16_N11
\Address[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[15]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[15]~reg0_q\);

-- Location: LCCOMB_X11_Y15_N0
\PC[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[16]~63_combout\ = (PC(16) & (!\PC[15]~62\)) # (!PC(16) & ((\PC[15]~62\) # (GND)))
-- \PC[16]~64\ = CARRY((!\PC[15]~62\) # (!PC(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(16),
	datad => VCC,
	cin => \PC[15]~62\,
	combout => \PC[16]~63_combout\,
	cout => \PC[16]~64\);

-- Location: FF_X11_Y15_N1
\PC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[16]~63_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(16));

-- Location: LCCOMB_X12_Y16_N16
\Address[16]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[16]~reg0feeder_combout\ = PC(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(16),
	combout => \Address[16]~reg0feeder_combout\);

-- Location: FF_X12_Y16_N17
\Address[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[16]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[16]~reg0_q\);

-- Location: LCCOMB_X11_Y15_N2
\PC[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[17]~65_combout\ = (PC(17) & (\PC[16]~64\ $ (GND))) # (!PC(17) & (!\PC[16]~64\ & VCC))
-- \PC[17]~66\ = CARRY((PC(17) & !\PC[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(17),
	datad => VCC,
	cin => \PC[16]~64\,
	combout => \PC[17]~65_combout\,
	cout => \PC[17]~66\);

-- Location: FF_X11_Y15_N3
\PC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[17]~65_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(17));

-- Location: FF_X13_Y16_N19
\Address[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	asdata => PC(17),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[17]~reg0_q\);

-- Location: LCCOMB_X11_Y15_N4
\PC[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[18]~67_combout\ = (PC(18) & (!\PC[17]~66\)) # (!PC(18) & ((\PC[17]~66\) # (GND)))
-- \PC[18]~68\ = CARRY((!\PC[17]~66\) # (!PC(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(18),
	datad => VCC,
	cin => \PC[17]~66\,
	combout => \PC[18]~67_combout\,
	cout => \PC[18]~68\);

-- Location: FF_X11_Y15_N5
\PC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[18]~67_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(18));

-- Location: LCCOMB_X12_Y16_N22
\Address[18]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[18]~reg0feeder_combout\ = PC(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(18),
	combout => \Address[18]~reg0feeder_combout\);

-- Location: FF_X12_Y16_N23
\Address[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[18]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[18]~reg0_q\);

-- Location: LCCOMB_X11_Y15_N6
\PC[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[19]~69_combout\ = (PC(19) & (\PC[18]~68\ $ (GND))) # (!PC(19) & (!\PC[18]~68\ & VCC))
-- \PC[19]~70\ = CARRY((PC(19) & !\PC[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(19),
	datad => VCC,
	cin => \PC[18]~68\,
	combout => \PC[19]~69_combout\,
	cout => \PC[19]~70\);

-- Location: FF_X11_Y15_N7
\PC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[19]~69_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(19));

-- Location: LCCOMB_X13_Y16_N24
\Address[19]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[19]~reg0feeder_combout\ = PC(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(19),
	combout => \Address[19]~reg0feeder_combout\);

-- Location: FF_X13_Y16_N25
\Address[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[19]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[19]~reg0_q\);

-- Location: LCCOMB_X11_Y15_N8
\PC[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[20]~71_combout\ = (PC(20) & (!\PC[19]~70\)) # (!PC(20) & ((\PC[19]~70\) # (GND)))
-- \PC[20]~72\ = CARRY((!\PC[19]~70\) # (!PC(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(20),
	datad => VCC,
	cin => \PC[19]~70\,
	combout => \PC[20]~71_combout\,
	cout => \PC[20]~72\);

-- Location: FF_X11_Y15_N9
\PC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[20]~71_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(20));

-- Location: LCCOMB_X12_Y16_N8
\Address[20]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[20]~reg0feeder_combout\ = PC(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(20),
	combout => \Address[20]~reg0feeder_combout\);

-- Location: FF_X12_Y16_N9
\Address[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[20]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[20]~reg0_q\);

-- Location: LCCOMB_X11_Y15_N10
\PC[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[21]~73_combout\ = (PC(21) & (\PC[20]~72\ $ (GND))) # (!PC(21) & (!\PC[20]~72\ & VCC))
-- \PC[21]~74\ = CARRY((PC(21) & !\PC[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(21),
	datad => VCC,
	cin => \PC[20]~72\,
	combout => \PC[21]~73_combout\,
	cout => \PC[21]~74\);

-- Location: FF_X11_Y15_N11
\PC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[21]~73_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(21));

-- Location: LCCOMB_X13_Y16_N22
\Address[21]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[21]~reg0feeder_combout\ = PC(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(21),
	combout => \Address[21]~reg0feeder_combout\);

-- Location: FF_X13_Y16_N23
\Address[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[21]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[21]~reg0_q\);

-- Location: LCCOMB_X11_Y15_N12
\PC[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[22]~75_combout\ = (PC(22) & (!\PC[21]~74\)) # (!PC(22) & ((\PC[21]~74\) # (GND)))
-- \PC[22]~76\ = CARRY((!\PC[21]~74\) # (!PC(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(22),
	datad => VCC,
	cin => \PC[21]~74\,
	combout => \PC[22]~75_combout\,
	cout => \PC[22]~76\);

-- Location: FF_X11_Y15_N13
\PC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[22]~75_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(22));

-- Location: LCCOMB_X14_Y16_N24
\Address[22]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[22]~reg0feeder_combout\ = PC(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(22),
	combout => \Address[22]~reg0feeder_combout\);

-- Location: FF_X14_Y16_N25
\Address[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[22]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[22]~reg0_q\);

-- Location: LCCOMB_X11_Y15_N14
\PC[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[23]~77_combout\ = (PC(23) & (\PC[22]~76\ $ (GND))) # (!PC(23) & (!\PC[22]~76\ & VCC))
-- \PC[23]~78\ = CARRY((PC(23) & !\PC[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(23),
	datad => VCC,
	cin => \PC[22]~76\,
	combout => \PC[23]~77_combout\,
	cout => \PC[23]~78\);

-- Location: FF_X11_Y15_N15
\PC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[23]~77_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(23));

-- Location: LCCOMB_X13_Y16_N28
\Address[23]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[23]~reg0feeder_combout\ = PC(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(23),
	combout => \Address[23]~reg0feeder_combout\);

-- Location: FF_X13_Y16_N29
\Address[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[23]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[23]~reg0_q\);

-- Location: LCCOMB_X11_Y15_N16
\PC[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[24]~79_combout\ = (PC(24) & (!\PC[23]~78\)) # (!PC(24) & ((\PC[23]~78\) # (GND)))
-- \PC[24]~80\ = CARRY((!\PC[23]~78\) # (!PC(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(24),
	datad => VCC,
	cin => \PC[23]~78\,
	combout => \PC[24]~79_combout\,
	cout => \PC[24]~80\);

-- Location: FF_X11_Y15_N17
\PC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[24]~79_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(24));

-- Location: LCCOMB_X13_Y16_N10
\Address[24]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[24]~reg0feeder_combout\ = PC(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(24),
	combout => \Address[24]~reg0feeder_combout\);

-- Location: FF_X13_Y16_N11
\Address[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[24]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[24]~reg0_q\);

-- Location: LCCOMB_X11_Y15_N18
\PC[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[25]~81_combout\ = (PC(25) & (\PC[24]~80\ $ (GND))) # (!PC(25) & (!\PC[24]~80\ & VCC))
-- \PC[25]~82\ = CARRY((PC(25) & !\PC[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(25),
	datad => VCC,
	cin => \PC[24]~80\,
	combout => \PC[25]~81_combout\,
	cout => \PC[25]~82\);

-- Location: FF_X11_Y15_N19
\PC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[25]~81_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(25));

-- Location: LCCOMB_X13_Y16_N4
\Address[25]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[25]~reg0feeder_combout\ = PC(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(25),
	combout => \Address[25]~reg0feeder_combout\);

-- Location: FF_X13_Y16_N5
\Address[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[25]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[25]~reg0_q\);

-- Location: LCCOMB_X11_Y15_N20
\PC[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[26]~83_combout\ = (PC(26) & (!\PC[25]~82\)) # (!PC(26) & ((\PC[25]~82\) # (GND)))
-- \PC[26]~84\ = CARRY((!\PC[25]~82\) # (!PC(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(26),
	datad => VCC,
	cin => \PC[25]~82\,
	combout => \PC[26]~83_combout\,
	cout => \PC[26]~84\);

-- Location: FF_X11_Y15_N21
\PC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[26]~83_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(26));

-- Location: LCCOMB_X12_Y16_N2
\Address[26]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[26]~reg0feeder_combout\ = PC(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(26),
	combout => \Address[26]~reg0feeder_combout\);

-- Location: FF_X12_Y16_N3
\Address[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[26]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[26]~reg0_q\);

-- Location: LCCOMB_X11_Y15_N22
\PC[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[27]~85_combout\ = (PC(27) & (\PC[26]~84\ $ (GND))) # (!PC(27) & (!\PC[26]~84\ & VCC))
-- \PC[27]~86\ = CARRY((PC(27) & !\PC[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(27),
	datad => VCC,
	cin => \PC[26]~84\,
	combout => \PC[27]~85_combout\,
	cout => \PC[27]~86\);

-- Location: FF_X11_Y15_N23
\PC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[27]~85_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(27));

-- Location: LCCOMB_X12_Y16_N12
\Address[27]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[27]~reg0feeder_combout\ = PC(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(27),
	combout => \Address[27]~reg0feeder_combout\);

-- Location: FF_X12_Y16_N13
\Address[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[27]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[27]~reg0_q\);

-- Location: LCCOMB_X11_Y15_N24
\PC[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[28]~87_combout\ = (PC(28) & (!\PC[27]~86\)) # (!PC(28) & ((\PC[27]~86\) # (GND)))
-- \PC[28]~88\ = CARRY((!\PC[27]~86\) # (!PC(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(28),
	datad => VCC,
	cin => \PC[27]~86\,
	combout => \PC[28]~87_combout\,
	cout => \PC[28]~88\);

-- Location: FF_X11_Y15_N25
\PC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[28]~87_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(28));

-- Location: FF_X12_Y16_N11
\Address[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	asdata => PC(28),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[28]~reg0_q\);

-- Location: LCCOMB_X11_Y15_N26
\PC[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[29]~89_combout\ = (PC(29) & (\PC[28]~88\ $ (GND))) # (!PC(29) & (!\PC[28]~88\ & VCC))
-- \PC[29]~90\ = CARRY((PC(29) & !\PC[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(29),
	datad => VCC,
	cin => \PC[28]~88\,
	combout => \PC[29]~89_combout\,
	cout => \PC[29]~90\);

-- Location: FF_X11_Y15_N27
\PC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[29]~89_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(29));

-- Location: LCCOMB_X12_Y16_N24
\Address[29]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[29]~reg0feeder_combout\ = PC(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => PC(29),
	combout => \Address[29]~reg0feeder_combout\);

-- Location: FF_X12_Y16_N25
\Address[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[29]~reg0feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[29]~reg0_q\);

-- Location: LCCOMB_X11_Y15_N28
\PC[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[30]~91_combout\ = (PC(30) & (!\PC[29]~90\)) # (!PC(30) & ((\PC[29]~90\) # (GND)))
-- \PC[30]~92\ = CARRY((!\PC[29]~90\) # (!PC(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(30),
	datad => VCC,
	cin => \PC[29]~90\,
	combout => \PC[30]~91_combout\,
	cout => \PC[30]~92\);

-- Location: FF_X11_Y15_N29
\PC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[30]~91_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(30));

-- Location: FF_X13_Y16_N31
\Address[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	asdata => PC(30),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[30]~reg0_q\);

-- Location: LCCOMB_X11_Y15_N30
\PC[31]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[31]~93_combout\ = PC(31) $ (!\PC[30]~92\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(31),
	cin => \PC[30]~92\,
	combout => \PC[31]~93_combout\);

-- Location: FF_X11_Y15_N31
\PC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[31]~93_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \PC[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(31));

-- Location: FF_X12_Y16_N31
\Address[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	asdata => PC(31),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[31]~reg0_q\);

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

ww_Address(24) <= \Address[24]~output_o\;

ww_Address(25) <= \Address[25]~output_o\;

ww_Address(26) <= \Address[26]~output_o\;

ww_Address(27) <= \Address[27]~output_o\;

ww_Address(28) <= \Address[28]~output_o\;

ww_Address(29) <= \Address[29]~output_o\;

ww_Address(30) <= \Address[30]~output_o\;

ww_Address(31) <= \Address[31]~output_o\;

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


