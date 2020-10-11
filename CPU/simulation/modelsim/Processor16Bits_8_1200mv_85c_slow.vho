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

-- DATE "10/11/2020 02:08:50"

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
	clk : IN std_logic;
	mClk : IN std_logic;
	rst : IN std_logic;
	Enable : IN std_logic;
	Sync : OUT std_logic;
	RW : OUT std_logic;
	Address : OUT std_logic_vector(23 DOWNTO 0);
	Data : INOUT std_logic_vector(15 DOWNTO 0);
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
SIGNAL ww_HPI_p : std_logic;
SIGNAL ww_MPI_p : std_logic;
SIGNAL ww_LPI_p : std_logic;
SIGNAL \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mClk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \mClk~input_o\ : std_logic;
SIGNAL \mClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \HPI_p~input_o\ : std_logic;
SIGNAL \MPI_p~input_o\ : std_logic;
SIGNAL \process_6~3_combout\ : std_logic;
SIGNAL \MPIO~0_combout\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \MPIO~q\ : std_logic;
SIGNAL \LPI~0_combout\ : std_logic;
SIGNAL \LPI_p~input_o\ : std_logic;
SIGNAL \LPIO~0_combout\ : std_logic;
SIGNAL \LPIO~q\ : std_logic;
SIGNAL \LPI~1_combout\ : std_logic;
SIGNAL \LPI~2_combout\ : std_logic;
SIGNAL \LPI~q\ : std_logic;
SIGNAL \process_6~2_combout\ : std_logic;
SIGNAL \MPI~0_combout\ : std_logic;
SIGNAL \MPI~q\ : std_logic;
SIGNAL \HPIO~0_combout\ : std_logic;
SIGNAL \HPIO~q\ : std_logic;
SIGNAL \process_6~1_combout\ : std_logic;
SIGNAL \HPI~0_combout\ : std_logic;
SIGNAL \HPI~q\ : std_logic;
SIGNAL \process_6~0_combout\ : std_logic;
SIGNAL \Data[0]~input_o\ : std_logic;
SIGNAL \AIE[1]~3_combout\ : std_logic;
SIGNAL \RstComplete~feeder_combout\ : std_logic;
SIGNAL \RstComplete~q\ : std_logic;
SIGNAL \Data[1]~input_o\ : std_logic;
SIGNAL \IR~7_combout\ : std_logic;
SIGNAL \Data[2]~input_o\ : std_logic;
SIGNAL \IR~2_combout\ : std_logic;
SIGNAL \Data[3]~input_o\ : std_logic;
SIGNAL \IR~6_combout\ : std_logic;
SIGNAL \Data[4]~input_o\ : std_logic;
SIGNAL \IR~5_combout\ : std_logic;
SIGNAL \Data[5]~input_o\ : std_logic;
SIGNAL \IR~4_combout\ : std_logic;
SIGNAL \Data[6]~input_o\ : std_logic;
SIGNAL \IR~3_combout\ : std_logic;
SIGNAL \IR[6]~feeder_combout\ : std_logic;
SIGNAL \Data[7]~input_o\ : std_logic;
SIGNAL \IR~8_combout\ : std_logic;
SIGNAL \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \AIE[0]~0_combout\ : std_logic;
SIGNAL \AIE[0]~1_combout\ : std_logic;
SIGNAL \AIE[0]~2_combout\ : std_logic;
SIGNAL \IR~0_combout\ : std_logic;
SIGNAL \IR~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \MRC~4_combout\ : std_logic;
SIGNAL \EIR[0]~36_combout\ : std_logic;
SIGNAL \process_2~1_combout\ : std_logic;
SIGNAL \CIR~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \CIR~0_combout\ : std_logic;
SIGNAL \CIR~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \CIR~3_combout\ : std_logic;
SIGNAL \CIR~q\ : std_logic;
SIGNAL \IC~3_combout\ : std_logic;
SIGNAL \IC[1]~2_combout\ : std_logic;
SIGNAL \IC~0_combout\ : std_logic;
SIGNAL \IC~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux52~11_combout\ : std_logic;
SIGNAL \MicroCode|Mux52~8_combout\ : std_logic;
SIGNAL \MicroCode|Mux52~10_combout\ : std_logic;
SIGNAL \MicroCode|LIC[0]~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux57~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux56~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux52~9_combout\ : std_logic;
SIGNAL \MicroCode|Mux52~5_combout\ : std_logic;
SIGNAL \MicroCode|Mux52~6_combout\ : std_logic;
SIGNAL \MicroCode|Mux52~4_combout\ : std_logic;
SIGNAL \MicroCode|Mux52~7_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \MRC[3]~7_combout\ : std_logic;
SIGNAL \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \MRC~5_combout\ : std_logic;
SIGNAL \MRC~6_combout\ : std_logic;
SIGNAL \MRC~8_combout\ : std_logic;
SIGNAL \MicroCode|Mux33~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux19~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux58~3_combout\ : std_logic;
SIGNAL \Data[8]~input_o\ : std_logic;
SIGNAL \IR~9_combout\ : std_logic;
SIGNAL \MicroCode|Mux34~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux58~5_combout\ : std_logic;
SIGNAL \MicroCode|Mux8~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux61~3_combout\ : std_logic;
SIGNAL \MicroCode|Mux57~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux58~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux58~4_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux56~1_combout\ : std_logic;
SIGNAL \Data[11]~input_o\ : std_logic;
SIGNAL \IR~12_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~9_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~6_combout\ : std_logic;
SIGNAL \MicroCode|Mux17~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux31~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~7_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~8_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~14_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~4_combout\ : std_logic;
SIGNAL \MicroCode|Mux10~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux7~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~3_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~5_combout\ : std_logic;
SIGNAL \MicroCode|Mux55~0_combout\ : std_logic;
SIGNAL \Mux130~16_combout\ : std_logic;
SIGNAL \MicroCode|Mux18~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux57~3_combout\ : std_logic;
SIGNAL \Data[9]~input_o\ : std_logic;
SIGNAL \IR~10_combout\ : std_logic;
SIGNAL \MicroCode|Mux57~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux57~4_combout\ : std_logic;
SIGNAL \MicroCode|Mux57~5_combout\ : std_logic;
SIGNAL \MicroCode|Mux57~6_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~10_combout\ : std_logic;
SIGNAL \Data[12]~input_o\ : std_logic;
SIGNAL \IR~13_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~11_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~12_combout\ : std_logic;
SIGNAL \MicroCode|Mux54~13_combout\ : std_logic;
SIGNAL \MicroCode|Mux56~3_combout\ : std_logic;
SIGNAL \Data[10]~input_o\ : std_logic;
SIGNAL \IR~11_combout\ : std_logic;
SIGNAL \MicroCode|Mux31~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux56~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux56~4_combout\ : std_logic;
SIGNAL \MicroCode|Mux11~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux56~5_combout\ : std_logic;
SIGNAL \MicroCode|Mux56~6_combout\ : std_logic;
SIGNAL \Mux120~2_combout\ : std_logic;
SIGNAL \Mux120~3_combout\ : std_logic;
SIGNAL \Data[15]~input_o\ : std_logic;
SIGNAL \EIR~57_combout\ : std_logic;
SIGNAL \EIR~78_combout\ : std_logic;
SIGNAL \EIR[0]~63_combout\ : std_logic;
SIGNAL \EIR[0]~43_combout\ : std_logic;
SIGNAL \EIR~54_combout\ : std_logic;
SIGNAL \EIR[16]~38_combout\ : std_logic;
SIGNAL \EIR[24]~41_combout\ : std_logic;
SIGNAL \MicroCode|Mux62~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux62~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux63~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux23~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux6~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux62~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux62~3_combout\ : std_logic;
SIGNAL \MicroCode|Mux61~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux61~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux61~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux59~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux59~1_combout\ : std_logic;
SIGNAL \MicroCode|Add1~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux76~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux76~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux76~2_combout\ : std_logic;
SIGNAL \MicroCode|Add1~1_combout\ : std_logic;
SIGNAL \MicroCode|LessThan2~0_combout\ : std_logic;
SIGNAL \MicroCode|LessThan2~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux76~3_combout\ : std_logic;
SIGNAL \MicroCode|PC_inc~q\ : std_logic;
SIGNAL \PC[0]~24_combout\ : std_logic;
SIGNAL \MicroCode|Mux66~5_combout\ : std_logic;
SIGNAL \MicroCode|Set_A[3]~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux21~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux34~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux60~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux60~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux77~2_combout\ : std_logic;
SIGNAL \MicroCode|Aa_in~q\ : std_logic;
SIGNAL \MicroCode|Mux75~0_combout\ : std_logic;
SIGNAL \MicroCode|Z_in~q\ : std_logic;
SIGNAL \Z[8]~0_combout\ : std_logic;
SIGNAL \Mux115~5_combout\ : std_logic;
SIGNAL \Mux126~18_combout\ : std_logic;
SIGNAL \MicroCode|Mux78~0_combout\ : std_logic;
SIGNAL \MicroCode|Bs_in~q\ : std_logic;
SIGNAL \AB~45_combout\ : std_logic;
SIGNAL \AB~36_combout\ : std_logic;
SIGNAL \MicroCode|Mux68~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux68~1_combout\ : std_logic;
SIGNAL \MicroCode|Bd_in~q\ : std_logic;
SIGNAL \AB[24]~11_combout\ : std_logic;
SIGNAL \Mux120~5_combout\ : std_logic;
SIGNAL \Mux120~4_combout\ : std_logic;
SIGNAL \MicroCode|Mux74~0_combout\ : std_logic;
SIGNAL \MicroCode|Y_in~q\ : std_logic;
SIGNAL \Y[8]~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux65~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux65~1_combout\ : std_logic;
SIGNAL \MicroCode|X_in~q\ : std_logic;
SIGNAL \X[8]~0_combout\ : std_logic;
SIGNAL \IR~16_combout\ : std_logic;
SIGNAL \MicroCode|ALUOp[1]~feeder_combout\ : std_logic;
SIGNAL \MicroCode|ALUOp[0]~0_combout\ : std_logic;
SIGNAL \MicroCode|ALUOp[0]~1_combout\ : std_logic;
SIGNAL \MicroCode|ALUOp[0]~2_combout\ : std_logic;
SIGNAL \Mux115~6_combout\ : std_logic;
SIGNAL \Mux115~7_combout\ : std_logic;
SIGNAL \Mux115~8_combout\ : std_logic;
SIGNAL \Mux115~9_combout\ : std_logic;
SIGNAL \Mux115~10_combout\ : std_logic;
SIGNAL \Mux115~13_combout\ : std_logic;
SIGNAL \Mux115~11_combout\ : std_logic;
SIGNAL \AB~34_combout\ : std_logic;
SIGNAL \AB~35_combout\ : std_logic;
SIGNAL \MicroCode|Mux67~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux67~1_combout\ : std_logic;
SIGNAL \MicroCode|Ad_in~q\ : std_logic;
SIGNAL \AB[0]~12_combout\ : std_logic;
SIGNAL \Data[14]~input_o\ : std_logic;
SIGNAL \EIR~52_combout\ : std_logic;
SIGNAL \MicroCode|Mux80~0_combout\ : std_logic;
SIGNAL \MicroCode|DIa_in~q\ : std_logic;
SIGNAL \DI[0]~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux63~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux30~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux63~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux63~3_combout\ : std_logic;
SIGNAL \MicroCode|AE~q\ : std_logic;
SIGNAL \Address~31_combout\ : std_logic;
SIGNAL \Address[0]~13_combout\ : std_logic;
SIGNAL \Address[0]~14_combout\ : std_logic;
SIGNAL \Address[0]~15_combout\ : std_logic;
SIGNAL \Address[14]~reg0_q\ : std_logic;
SIGNAL \EIR~53_combout\ : std_logic;
SIGNAL \EIR[39]~55_combout\ : std_logic;
SIGNAL \EIR[32]~56_combout\ : std_logic;
SIGNAL \Mux140~0_combout\ : std_logic;
SIGNAL \Mux140~1_combout\ : std_logic;
SIGNAL \Mux140~5_combout\ : std_logic;
SIGNAL \Mux152~4_combout\ : std_logic;
SIGNAL \Mux152~1_combout\ : std_logic;
SIGNAL \AB~33_combout\ : std_logic;
SIGNAL \Mux140~2_combout\ : std_logic;
SIGNAL \Mux152~2_combout\ : std_logic;
SIGNAL \Mux152~3_combout\ : std_logic;
SIGNAL \Mux127~19_combout\ : std_logic;
SIGNAL \Mux121~9_combout\ : std_logic;
SIGNAL \Mux128~6_combout\ : std_logic;
SIGNAL \Mux127~18_combout\ : std_logic;
SIGNAL \Mux117~7_combout\ : std_logic;
SIGNAL \Data[13]~input_o\ : std_logic;
SIGNAL \IR~14_combout\ : std_logic;
SIGNAL \AB[13]~feeder_combout\ : std_logic;
SIGNAL \EIR~77_combout\ : std_logic;
SIGNAL \Mux151~0_combout\ : std_logic;
SIGNAL \Address~30_combout\ : std_logic;
SIGNAL \Address[13]~reg0_q\ : std_logic;
SIGNAL \EIR~51_combout\ : std_logic;
SIGNAL \Mux149~5_combout\ : std_logic;
SIGNAL \Mux151~5_combout\ : std_logic;
SIGNAL \EIR~60_combout\ : std_logic;
SIGNAL \Mux149~9_combout\ : std_logic;
SIGNAL \Mux151~3_combout\ : std_logic;
SIGNAL \MicroCode|Mux79~0_combout\ : std_logic;
SIGNAL \MicroCode|SIa_in~q\ : std_logic;
SIGNAL \SI[0]~0_combout\ : std_logic;
SIGNAL \Mux141~6_combout\ : std_logic;
SIGNAL \Mux141~7_combout\ : std_logic;
SIGNAL \Mux141~2_combout\ : std_logic;
SIGNAL \Mux141~3_combout\ : std_logic;
SIGNAL \Mux141~0_combout\ : std_logic;
SIGNAL \Mux141~1_combout\ : std_logic;
SIGNAL \Mux141~4_combout\ : std_logic;
SIGNAL \Mux141~5_combout\ : std_logic;
SIGNAL \Mux141~8_combout\ : std_logic;
SIGNAL \Mux118~15_combout\ : std_logic;
SIGNAL \Mux126~17_combout\ : std_logic;
SIGNAL \Mux118~5_combout\ : std_logic;
SIGNAL \Mux118~0_combout\ : std_logic;
SIGNAL \Mux118~1_combout\ : std_logic;
SIGNAL \Mux118~2_combout\ : std_logic;
SIGNAL \EIR~49_combout\ : std_logic;
SIGNAL \EIR~50_combout\ : std_logic;
SIGNAL \Mux142~0_combout\ : std_logic;
SIGNAL \Address~29_combout\ : std_logic;
SIGNAL \Address[12]~reg0_q\ : std_logic;
SIGNAL \Mux142~1_combout\ : std_logic;
SIGNAL \Mux142~5_combout\ : std_logic;
SIGNAL \AB[12]~feeder_combout\ : std_logic;
SIGNAL \Mux142~2_combout\ : std_logic;
SIGNAL \Mux119~10_combout\ : std_logic;
SIGNAL \Mux119~0_combout\ : std_logic;
SIGNAL \EIR~76_combout\ : std_logic;
SIGNAL \Address~28_combout\ : std_logic;
SIGNAL \Address[11]~reg0_q\ : std_logic;
SIGNAL \EIR~48_combout\ : std_logic;
SIGNAL \EIR[27]~feeder_combout\ : std_logic;
SIGNAL \Mux151~11_combout\ : std_logic;
SIGNAL \EIR~59_combout\ : std_logic;
SIGNAL \Mux151~15_combout\ : std_logic;
SIGNAL \Mux143~5_combout\ : std_logic;
SIGNAL \Mux143~6_combout\ : std_logic;
SIGNAL \AB~29_combout\ : std_logic;
SIGNAL \EIR~46_combout\ : std_logic;
SIGNAL \Address~27_combout\ : std_logic;
SIGNAL \Address[10]~reg0_q\ : std_logic;
SIGNAL \EIR~47_combout\ : std_logic;
SIGNAL \Mux144~0_combout\ : std_logic;
SIGNAL \Mux144~1_combout\ : std_logic;
SIGNAL \Mux144~5_combout\ : std_logic;
SIGNAL \AB~27_combout\ : std_logic;
SIGNAL \Mux144~2_combout\ : std_logic;
SIGNAL \AB[9]~feeder_combout\ : std_logic;
SIGNAL \Address~26_combout\ : std_logic;
SIGNAL \Address[9]~reg0_q\ : std_logic;
SIGNAL \EIR~58_combout\ : std_logic;
SIGNAL \Mux153~9_combout\ : std_logic;
SIGNAL \Mux145~5_combout\ : std_logic;
SIGNAL \EIR~45_combout\ : std_logic;
SIGNAL \EIR[25]~feeder_combout\ : std_logic;
SIGNAL \Mux153~5_combout\ : std_logic;
SIGNAL \Mux145~6_combout\ : std_logic;
SIGNAL \EIR~75_combout\ : std_logic;
SIGNAL \Mux145~0_combout\ : std_logic;
SIGNAL \DI[9]~feeder_combout\ : std_logic;
SIGNAL \Mux145~1_combout\ : std_logic;
SIGNAL \Mux145~2_combout\ : std_logic;
SIGNAL \Mux145~3_combout\ : std_logic;
SIGNAL \DI[8]~feeder_combout\ : std_logic;
SIGNAL \Mux146~5_combout\ : std_logic;
SIGNAL \EIR~40_combout\ : std_logic;
SIGNAL \Mux122~2_combout\ : std_logic;
SIGNAL \Mux122~3_combout\ : std_logic;
SIGNAL \Mux122~4_combout\ : std_logic;
SIGNAL \Mux122~5_combout\ : std_logic;
SIGNAL \EIR~37_combout\ : std_logic;
SIGNAL \EIR~74_combout\ : std_logic;
SIGNAL \EIR[16]~39_combout\ : std_logic;
SIGNAL \EIR~44_combout\ : std_logic;
SIGNAL \EIR~73_combout\ : std_logic;
SIGNAL \AB~22_combout\ : std_logic;
SIGNAL \Mux124~10_combout\ : std_logic;
SIGNAL \Mux127~17_combout\ : std_logic;
SIGNAL \Mux127~3_combout\ : std_logic;
SIGNAL \Mux126~12_combout\ : std_logic;
SIGNAL \EIR~72_combout\ : std_logic;
SIGNAL \Mux148~0_combout\ : std_logic;
SIGNAL \Address~22_combout\ : std_logic;
SIGNAL \Address[6]~reg0_q\ : std_logic;
SIGNAL \Mux148~1_combout\ : std_logic;
SIGNAL \Mux148~5_combout\ : std_logic;
SIGNAL \AB~21_combout\ : std_logic;
SIGNAL \Mux148~2_combout\ : std_logic;
SIGNAL \EIR~70_combout\ : std_logic;
SIGNAL \Address~21_combout\ : std_logic;
SIGNAL \Address[5]~reg0_q\ : std_logic;
SIGNAL \EIR~71_combout\ : std_logic;
SIGNAL \Mux151~4_combout\ : std_logic;
SIGNAL \Mux149~6_combout\ : std_logic;
SIGNAL \Mux149~7_combout\ : std_logic;
SIGNAL \Mux125~0_combout\ : std_logic;
SIGNAL \Mux125~1_combout\ : std_logic;
SIGNAL \Mux125~2_combout\ : std_logic;
SIGNAL \Mux127~4_combout\ : std_logic;
SIGNAL \Mux127~5_combout\ : std_logic;
SIGNAL \Mux127~9_combout\ : std_logic;
SIGNAL \Mux125~5_combout\ : std_logic;
SIGNAL \Mux127~11_combout\ : std_logic;
SIGNAL \Mux125~6_combout\ : std_logic;
SIGNAL \Y[13]~feeder_combout\ : std_logic;
SIGNAL \Mux125~7_combout\ : std_logic;
SIGNAL \Mux127~6_combout\ : std_logic;
SIGNAL \Mux125~3_combout\ : std_logic;
SIGNAL \Mux130~7_combout\ : std_logic;
SIGNAL \Mux126~16_combout\ : std_logic;
SIGNAL \Mux126~9_combout\ : std_logic;
SIGNAL \EIR[4]~feeder_combout\ : std_logic;
SIGNAL \EIR~69_combout\ : std_logic;
SIGNAL \Mux150~5_combout\ : std_logic;
SIGNAL \AB~18_combout\ : std_logic;
SIGNAL \Mux150~2_combout\ : std_logic;
SIGNAL \EIR~68_combout\ : std_logic;
SIGNAL \Address~18_combout\ : std_logic;
SIGNAL \Address[3]~reg0_q\ : std_logic;
SIGNAL \Mux151~12_combout\ : std_logic;
SIGNAL \Mux151~13_combout\ : std_logic;
SIGNAL \EIR~67_combout\ : std_logic;
SIGNAL \AB~17_combout\ : std_logic;
SIGNAL \Mux130~37_combout\ : std_logic;
SIGNAL \Mux130~38_combout\ : std_logic;
SIGNAL \Mux128~4_combout\ : std_logic;
SIGNAL \Address~17_combout\ : std_logic;
SIGNAL \Address[2]~reg0_q\ : std_logic;
SIGNAL \EIR~66_combout\ : std_logic;
SIGNAL \Mux152~5_combout\ : std_logic;
SIGNAL \Mux152~6_combout\ : std_logic;
SIGNAL \DI[2]~feeder_combout\ : std_logic;
SIGNAL \Mux152~10_combout\ : std_logic;
SIGNAL \Mux152~7_combout\ : std_logic;
SIGNAL \Mux152~8_combout\ : std_logic;
SIGNAL \Mux152~9_combout\ : std_logic;
SIGNAL \Mux152~11_combout\ : std_logic;
SIGNAL \Mux152~12_combout\ : std_logic;
SIGNAL \AB~15_combout\ : std_logic;
SIGNAL \Mux130~13_combout\ : std_logic;
SIGNAL \Mux130~26_combout\ : std_logic;
SIGNAL \Mux130~29_combout\ : std_logic;
SIGNAL \EIR~65_combout\ : std_logic;
SIGNAL \EIR~64_combout\ : std_logic;
SIGNAL \AB[1]~feeder_combout\ : std_logic;
SIGNAL \Mux153~0_combout\ : std_logic;
SIGNAL \Mux151~1_combout\ : std_logic;
SIGNAL \Mux153~1_combout\ : std_logic;
SIGNAL \Mux153~2_combout\ : std_logic;
SIGNAL \Mux153~3_combout\ : std_logic;
SIGNAL \Mux130~9_combout\ : std_logic;
SIGNAL \Mux130~10_combout\ : std_logic;
SIGNAL \Mux130~2_combout\ : std_logic;
SIGNAL \Mux130~3_combout\ : std_logic;
SIGNAL \Mux130~6_combout\ : std_logic;
SIGNAL \AB~10_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add1~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux23~0_combout\ : std_logic;
SIGNAL \Mux130~39_combout\ : std_logic;
SIGNAL \MicroCode|ALUOpL~q\ : std_logic;
SIGNAL \Mux138~7_combout\ : std_logic;
SIGNAL \EIR~62_combout\ : std_logic;
SIGNAL \Mux138~9_combout\ : std_logic;
SIGNAL \EIR~42_combout\ : std_logic;
SIGNAL \Address[16]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[16]~reg0_q\ : std_logic;
SIGNAL \Mux138~10_combout\ : std_logic;
SIGNAL \Mux138~11_combout\ : std_logic;
SIGNAL \Mux138~4_combout\ : std_logic;
SIGNAL \Mux138~2_combout\ : std_logic;
SIGNAL \Mux138~3_combout\ : std_logic;
SIGNAL \SI[16]~feeder_combout\ : std_logic;
SIGNAL \Mux138~5_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux7~0_combout\ : std_logic;
SIGNAL \Mux138~6_combout\ : std_logic;
SIGNAL \Address[16]~0_combout\ : std_logic;
SIGNAL \AB~37_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[15]~23\ : std_logic;
SIGNAL \ArithmeticLogicUnit|MSBAddition[13]~0_combout\ : std_logic;
SIGNAL \Address[22]~45_combout\ : std_logic;
SIGNAL \Address[22]~36_combout\ : std_logic;
SIGNAL \Address[22]~37_combout\ : std_logic;
SIGNAL \Address[22]~42_combout\ : std_logic;
SIGNAL \Address[22]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[22]~reg0_q\ : std_logic;
SIGNAL \Address[22]~39_combout\ : std_logic;
SIGNAL \Mux138~8_combout\ : std_logic;
SIGNAL \Address[22]~38_combout\ : std_logic;
SIGNAL \Address[22]~40_combout\ : std_logic;
SIGNAL \Address[22]~41_combout\ : std_logic;
SIGNAL \Address[22]~43_combout\ : std_logic;
SIGNAL \DI[21]~feeder_combout\ : std_logic;
SIGNAL \Mux133~2_combout\ : std_logic;
SIGNAL \Address[20]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[20]~reg0_q\ : std_logic;
SIGNAL \Mux134~6_combout\ : std_logic;
SIGNAL \Mux134~7_combout\ : std_logic;
SIGNAL \Mux134~5_combout\ : std_logic;
SIGNAL \Mux134~8_combout\ : std_logic;
SIGNAL \Mux134~9_combout\ : std_logic;
SIGNAL \Mux134~10_combout\ : std_logic;
SIGNAL \Mux134~2_combout\ : std_logic;
SIGNAL \Mux135~0_combout\ : std_logic;
SIGNAL \Address[19]~44_combout\ : std_logic;
SIGNAL \Address[18]~reg0_q\ : std_logic;
SIGNAL \Mux136~5_combout\ : std_logic;
SIGNAL \Mux136~6_combout\ : std_logic;
SIGNAL \Mux136~4_combout\ : std_logic;
SIGNAL \Mux136~7_combout\ : std_logic;
SIGNAL \Mux136~0_combout\ : std_logic;
SIGNAL \Mux136~1_combout\ : std_logic;
SIGNAL \Mux136~2_combout\ : std_logic;
SIGNAL \DI[17]~feeder_combout\ : std_logic;
SIGNAL \Mux137~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|MSBAddition[13]~1\ : std_logic;
SIGNAL \ArithmeticLogicUnit|MSBAddition[14]~2_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux6~0_combout\ : std_logic;
SIGNAL \Mux133~1_combout\ : std_logic;
SIGNAL \Address[17]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[17]~reg0_q\ : std_logic;
SIGNAL \Mux133~0_combout\ : std_logic;
SIGNAL \Mux137~1_combout\ : std_logic;
SIGNAL \Mux137~2_combout\ : std_logic;
SIGNAL \Mux137~3_combout\ : std_logic;
SIGNAL \Mux137~4_combout\ : std_logic;
SIGNAL \Address[17]~1_combout\ : std_logic;
SIGNAL \AB~38_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|MSBAddition[14]~3\ : std_logic;
SIGNAL \ArithmeticLogicUnit|MSBAddition[15]~4_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux5~0_combout\ : std_logic;
SIGNAL \Mux136~3_combout\ : std_logic;
SIGNAL \Address[18]~2_combout\ : std_logic;
SIGNAL \AB~39_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|MSBAddition[15]~5\ : std_logic;
SIGNAL \ArithmeticLogicUnit|MSBAddition[16]~6_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux4~0_combout\ : std_logic;
SIGNAL \Address[19]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[19]~reg0_q\ : std_logic;
SIGNAL \Mux135~1_combout\ : std_logic;
SIGNAL \Address[19]~33_combout\ : std_logic;
SIGNAL \Address[19]~34_combout\ : std_logic;
SIGNAL \Address[19]~35_combout\ : std_logic;
SIGNAL \Address[19]~3_combout\ : std_logic;
SIGNAL \AB~40_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|MSBAddition[16]~7\ : std_logic;
SIGNAL \ArithmeticLogicUnit|MSBAddition[17]~8_combout\ : std_logic;
SIGNAL \Mux134~3_combout\ : std_logic;
SIGNAL \Mux134~4_combout\ : std_logic;
SIGNAL \Address[20]~4_combout\ : std_logic;
SIGNAL \AB~41_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|MSBAddition[17]~9\ : std_logic;
SIGNAL \ArithmeticLogicUnit|MSBAddition[18]~10_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux2~0_combout\ : std_logic;
SIGNAL \Address[21]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[21]~reg0_q\ : std_logic;
SIGNAL \Mux133~3_combout\ : std_logic;
SIGNAL \Mux133~4_combout\ : std_logic;
SIGNAL \Mux133~5_combout\ : std_logic;
SIGNAL \Mux133~6_combout\ : std_logic;
SIGNAL \Address[21]~5_combout\ : std_logic;
SIGNAL \AB~42_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|MSBAddition[18]~11\ : std_logic;
SIGNAL \ArithmeticLogicUnit|MSBAddition[19]~12_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux1~0_combout\ : std_logic;
SIGNAL \Address[22]~6_combout\ : std_logic;
SIGNAL \AB~43_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|MSBAddition[19]~13\ : std_logic;
SIGNAL \ArithmeticLogicUnit|MSBAddition[20]~15\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add2~2_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_C~0_combout\ : std_logic;
SIGNAL \FR[11]~1_combout\ : std_logic;
SIGNAL \Mux130~4_combout\ : std_logic;
SIGNAL \Mux130~5_combout\ : std_logic;
SIGNAL \Mux130~8_combout\ : std_logic;
SIGNAL \Mux130~11_combout\ : std_logic;
SIGNAL \DI[0]~feeder_combout\ : std_logic;
SIGNAL \Mux130~14_combout\ : std_logic;
SIGNAL \Mux130~15_combout\ : std_logic;
SIGNAL \Mux130~17_combout\ : std_logic;
SIGNAL \Mux130~12_combout\ : std_logic;
SIGNAL \Mux130~18_combout\ : std_logic;
SIGNAL \AB[0]~0_combout\ : std_logic;
SIGNAL \AB[0]~feeder_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add1~1\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add1~2_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux22~0_combout\ : std_logic;
SIGNAL \Mux153~4_combout\ : std_logic;
SIGNAL \Address~16_combout\ : std_logic;
SIGNAL \Address[1]~reg0_q\ : std_logic;
SIGNAL \Mux153~6_combout\ : std_logic;
SIGNAL \Mux153~7_combout\ : std_logic;
SIGNAL \Mux153~8_combout\ : std_logic;
SIGNAL \Mux130~27_combout\ : std_logic;
SIGNAL \Mux130~28_combout\ : std_logic;
SIGNAL \Mux129~2_combout\ : std_logic;
SIGNAL \Mux129~3_combout\ : std_logic;
SIGNAL \Mux130~24_combout\ : std_logic;
SIGNAL \Mux130~25_combout\ : std_logic;
SIGNAL \Mux130~19_combout\ : std_logic;
SIGNAL \Mux130~20_combout\ : std_logic;
SIGNAL \Mux130~23_combout\ : std_logic;
SIGNAL \Mux130~21_combout\ : std_logic;
SIGNAL \Mux130~22_combout\ : std_logic;
SIGNAL \Mux129~0_combout\ : std_logic;
SIGNAL \Mux129~1_combout\ : std_logic;
SIGNAL \AB[1]~1_combout\ : std_logic;
SIGNAL \AB~13_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add1~3\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add1~4_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux21~0_combout\ : std_logic;
SIGNAL \Mux130~30_combout\ : std_logic;
SIGNAL \Mux130~31_combout\ : std_logic;
SIGNAL \Mux128~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|temp_parity~10_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|temp_parity~12_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|temp_parity~11_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|temp_parity~13_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux3~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux29~1_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|MSBAddition[20]~14_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux0~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux29~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|temp_parity~2_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux8~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|temp_parity~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|temp_parity~1_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|temp_parity~3_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|temp_parity~4_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux29~2_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|temp_parity~6_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|temp_parity~5_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|temp_parity~8_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|temp_parity~7_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|temp_parity~9_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux29~3_combout\ : std_logic;
SIGNAL \FR[0]~0_combout\ : std_logic;
SIGNAL \Mux128~1_combout\ : std_logic;
SIGNAL \Mux128~2_combout\ : std_logic;
SIGNAL \Mux130~32_combout\ : std_logic;
SIGNAL \Mux130~33_combout\ : std_logic;
SIGNAL \Mux130~34_combout\ : std_logic;
SIGNAL \Mux130~35_combout\ : std_logic;
SIGNAL \Mux130~36_combout\ : std_logic;
SIGNAL \Mux128~3_combout\ : std_logic;
SIGNAL \Mux128~5_combout\ : std_logic;
SIGNAL \AB~14_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add1~5\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add1~6_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux20~0_combout\ : std_logic;
SIGNAL \Mux151~10_combout\ : std_logic;
SIGNAL \Mux151~6_combout\ : std_logic;
SIGNAL \Mux151~7_combout\ : std_logic;
SIGNAL \Mux151~8_combout\ : std_logic;
SIGNAL \Mux151~9_combout\ : std_logic;
SIGNAL \Mux151~14_combout\ : std_logic;
SIGNAL \Mux127~0_combout\ : std_logic;
SIGNAL \Mux127~1_combout\ : std_logic;
SIGNAL \Mux127~2_combout\ : std_logic;
SIGNAL \Mux127~7_combout\ : std_logic;
SIGNAL \Mux127~8_combout\ : std_logic;
SIGNAL \Mux127~12_combout\ : std_logic;
SIGNAL \Mux127~13_combout\ : std_logic;
SIGNAL \Mux127~10_combout\ : std_logic;
SIGNAL \Mux127~14_combout\ : std_logic;
SIGNAL \Mux127~15_combout\ : std_logic;
SIGNAL \Mux127~16_combout\ : std_logic;
SIGNAL \AB~16_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add1~7\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add1~8_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Add2~1_cout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[4]~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux19~0_combout\ : std_logic;
SIGNAL \Mux150~3_combout\ : std_logic;
SIGNAL \Mux150~4_combout\ : std_logic;
SIGNAL \Mux150~6_combout\ : std_logic;
SIGNAL \Address~19_combout\ : std_logic;
SIGNAL \Address~20_combout\ : std_logic;
SIGNAL \Address[4]~reg0_q\ : std_logic;
SIGNAL \Mux150~0_combout\ : std_logic;
SIGNAL \Mux150~1_combout\ : std_logic;
SIGNAL \Mux150~7_combout\ : std_logic;
SIGNAL \Mux126~10_combout\ : std_logic;
SIGNAL \Mux126~11_combout\ : std_logic;
SIGNAL \Mux126~13_combout\ : std_logic;
SIGNAL \Mux126~14_combout\ : std_logic;
SIGNAL \Mux126~2_combout\ : std_logic;
SIGNAL \Mux126~0_combout\ : std_logic;
SIGNAL \Mux126~1_combout\ : std_logic;
SIGNAL \Mux126~3_combout\ : std_logic;
SIGNAL \Mux126~4_combout\ : std_logic;
SIGNAL \Mux126~5_combout\ : std_logic;
SIGNAL \Mux126~6_combout\ : std_logic;
SIGNAL \Mux126~7_combout\ : std_logic;
SIGNAL \Mux126~8_combout\ : std_logic;
SIGNAL \Mux126~15_combout\ : std_logic;
SIGNAL \AB[4]~2_combout\ : std_logic;
SIGNAL \AB[4]~feeder_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[4]~1\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[5]~2_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux18~0_combout\ : std_logic;
SIGNAL \Mux125~4_combout\ : std_logic;
SIGNAL \Mux125~8_combout\ : std_logic;
SIGNAL \Mux125~9_combout\ : std_logic;
SIGNAL \Mux125~10_combout\ : std_logic;
SIGNAL \AB~19_combout\ : std_logic;
SIGNAL \Mux149~0_combout\ : std_logic;
SIGNAL \Mux149~1_combout\ : std_logic;
SIGNAL \Mux149~2_combout\ : std_logic;
SIGNAL \Mux149~3_combout\ : std_logic;
SIGNAL \Mux149~4_combout\ : std_logic;
SIGNAL \Mux149~8_combout\ : std_logic;
SIGNAL \AB~20_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[5]~3\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[6]~4_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux17~0_combout\ : std_logic;
SIGNAL \Mux148~3_combout\ : std_logic;
SIGNAL \Mux148~4_combout\ : std_logic;
SIGNAL \Mux148~6_combout\ : std_logic;
SIGNAL \Mux148~7_combout\ : std_logic;
SIGNAL \Mux124~6_combout\ : std_logic;
SIGNAL \Mux124~7_combout\ : std_logic;
SIGNAL \Mux124~8_combout\ : std_logic;
SIGNAL \Mux124~0_combout\ : std_logic;
SIGNAL \Mux124~1_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Equal4~2_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Equal4~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Equal4~1_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Equal4~3_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Equal4~4_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Equal5~1_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Equal5~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Equal5~2_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Equal1~1_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Equal1~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Equal0~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Equal0~3_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Equal0~1_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Equal0~2_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Equal0~4_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Equal1~2_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux27~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux27~1_combout\ : std_logic;
SIGNAL \Mux124~2_combout\ : std_logic;
SIGNAL \Mux124~3_combout\ : std_logic;
SIGNAL \Mux124~4_combout\ : std_logic;
SIGNAL \Mux124~5_combout\ : std_logic;
SIGNAL \Mux124~9_combout\ : std_logic;
SIGNAL \AB[6]~3_combout\ : std_logic;
SIGNAL \AB[6]~feeder_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[6]~5\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[7]~6_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux16~0_combout\ : std_logic;
SIGNAL \Mux147~4_combout\ : std_logic;
SIGNAL \Mux147~5_combout\ : std_logic;
SIGNAL \Mux147~6_combout\ : std_logic;
SIGNAL \Address~23_combout\ : std_logic;
SIGNAL \Address[7]~reg0_q\ : std_logic;
SIGNAL \Mux147~7_combout\ : std_logic;
SIGNAL \Mux147~1_combout\ : std_logic;
SIGNAL \Mux147~2_combout\ : std_logic;
SIGNAL \Mux147~0_combout\ : std_logic;
SIGNAL \Mux147~3_combout\ : std_logic;
SIGNAL \Mux147~8_combout\ : std_logic;
SIGNAL \Mux123~0_combout\ : std_logic;
SIGNAL \Mux123~1_combout\ : std_logic;
SIGNAL \Mux123~2_combout\ : std_logic;
SIGNAL \Mux123~3_combout\ : std_logic;
SIGNAL \Mux123~4_combout\ : std_logic;
SIGNAL \Mux123~6_combout\ : std_logic;
SIGNAL \Mux123~7_combout\ : std_logic;
SIGNAL \Mux123~5_combout\ : std_logic;
SIGNAL \Mux123~8_combout\ : std_logic;
SIGNAL \Mux123~9_combout\ : std_logic;
SIGNAL \Mux123~10_combout\ : std_logic;
SIGNAL \AB~23_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[7]~7\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[8]~8_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux15~0_combout\ : std_logic;
SIGNAL \Mux122~6_combout\ : std_logic;
SIGNAL \Mux122~7_combout\ : std_logic;
SIGNAL \Mux122~8_combout\ : std_logic;
SIGNAL \Mux122~9_combout\ : std_logic;
SIGNAL \Mux122~12_combout\ : std_logic;
SIGNAL \Mux122~10_combout\ : std_logic;
SIGNAL \Mux122~11_combout\ : std_logic;
SIGNAL \AB~24_combout\ : std_logic;
SIGNAL \Mux146~2_combout\ : std_logic;
SIGNAL \Mux146~3_combout\ : std_logic;
SIGNAL \Mux146~4_combout\ : std_logic;
SIGNAL \Mux146~6_combout\ : std_logic;
SIGNAL \Address~24_combout\ : std_logic;
SIGNAL \Address~25_combout\ : std_logic;
SIGNAL \Address[8]~reg0_q\ : std_logic;
SIGNAL \Mux146~0_combout\ : std_logic;
SIGNAL \Mux146~1_combout\ : std_logic;
SIGNAL \Mux146~7_combout\ : std_logic;
SIGNAL \AB~25_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[8]~9\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[9]~10_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux14~0_combout\ : std_logic;
SIGNAL \Mux145~4_combout\ : std_logic;
SIGNAL \Mux145~7_combout\ : std_logic;
SIGNAL \Mux120~6_combout\ : std_logic;
SIGNAL \Mux121~14_combout\ : std_logic;
SIGNAL \Mux121~6_combout\ : std_logic;
SIGNAL \Mux121~12_combout\ : std_logic;
SIGNAL \Mux121~13_combout\ : std_logic;
SIGNAL \Mux121~15_combout\ : std_logic;
SIGNAL \Mux121~16_combout\ : std_logic;
SIGNAL \Mux121~4_combout\ : std_logic;
SIGNAL \Mux121~5_combout\ : std_logic;
SIGNAL \Mux121~7_combout\ : std_logic;
SIGNAL \Mux121~8_combout\ : std_logic;
SIGNAL \Mux121~10_combout\ : std_logic;
SIGNAL \Mux121~11_combout\ : std_logic;
SIGNAL \Mux121~17_combout\ : std_logic;
SIGNAL \AB[9]~4_combout\ : std_logic;
SIGNAL \AB~26_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[9]~11\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[10]~12_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux13~0_combout\ : std_logic;
SIGNAL \Mux144~3_combout\ : std_logic;
SIGNAL \Mux144~4_combout\ : std_logic;
SIGNAL \Mux144~6_combout\ : std_logic;
SIGNAL \Mux144~7_combout\ : std_logic;
SIGNAL \Mux120~7_combout\ : std_logic;
SIGNAL \Mux120~8_combout\ : std_logic;
SIGNAL \Mux120~9_combout\ : std_logic;
SIGNAL \Mux120~10_combout\ : std_logic;
SIGNAL \Mux120~11_combout\ : std_logic;
SIGNAL \Mux120~12_combout\ : std_logic;
SIGNAL \Mux120~13_combout\ : std_logic;
SIGNAL \Mux120~14_combout\ : std_logic;
SIGNAL \Mux120~17_combout\ : std_logic;
SIGNAL \Mux120~15_combout\ : std_logic;
SIGNAL \Mux120~16_combout\ : std_logic;
SIGNAL \AB~28_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[10]~13\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[11]~14_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux12~0_combout\ : std_logic;
SIGNAL \Mux143~4_combout\ : std_logic;
SIGNAL \Mux143~0_combout\ : std_logic;
SIGNAL \Mux143~1_combout\ : std_logic;
SIGNAL \Mux143~2_combout\ : std_logic;
SIGNAL \Mux143~3_combout\ : std_logic;
SIGNAL \Mux143~7_combout\ : std_logic;
SIGNAL \Mux119~1_combout\ : std_logic;
SIGNAL \Mux119~2_combout\ : std_logic;
SIGNAL \Mux119~3_combout\ : std_logic;
SIGNAL \Mux118~3_combout\ : std_logic;
SIGNAL \Mux119~4_combout\ : std_logic;
SIGNAL \Mux119~5_combout\ : std_logic;
SIGNAL \Mux118~4_combout\ : std_logic;
SIGNAL \Mux119~6_combout\ : std_logic;
SIGNAL \Mux119~7_combout\ : std_logic;
SIGNAL \Mux119~8_combout\ : std_logic;
SIGNAL \Mux119~9_combout\ : std_logic;
SIGNAL \AB[11]~5_combout\ : std_logic;
SIGNAL \AB[11]~feeder_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[11]~15\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[12]~16_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux11~0_combout\ : std_logic;
SIGNAL \Mux142~3_combout\ : std_logic;
SIGNAL \Mux142~4_combout\ : std_logic;
SIGNAL \Mux142~6_combout\ : std_logic;
SIGNAL \Mux142~7_combout\ : std_logic;
SIGNAL \DI[12]~feeder_combout\ : std_logic;
SIGNAL \Mux118~6_combout\ : std_logic;
SIGNAL \Mux118~7_combout\ : std_logic;
SIGNAL \Mux118~8_combout\ : std_logic;
SIGNAL \Mux118~9_combout\ : std_logic;
SIGNAL \Mux118~10_combout\ : std_logic;
SIGNAL \Mux118~11_combout\ : std_logic;
SIGNAL \Mux118~12_combout\ : std_logic;
SIGNAL \Mux118~13_combout\ : std_logic;
SIGNAL \Mux118~14_combout\ : std_logic;
SIGNAL \AB[12]~6_combout\ : std_logic;
SIGNAL \AB~30_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[12]~17\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[13]~18_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux10~0_combout\ : std_logic;
SIGNAL \Mux117~4_combout\ : std_logic;
SIGNAL \Mux117~5_combout\ : std_logic;
SIGNAL \Mux117~6_combout\ : std_logic;
SIGNAL \Mux117~8_combout\ : std_logic;
SIGNAL \Mux117~13_combout\ : std_logic;
SIGNAL \Mux117~9_combout\ : std_logic;
SIGNAL \Mux117~10_combout\ : std_logic;
SIGNAL \Mux117~11_combout\ : std_logic;
SIGNAL \Mux117~12_combout\ : std_logic;
SIGNAL \AB[13]~7_combout\ : std_logic;
SIGNAL \AB~31_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[13]~19\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[14]~20_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux9~0_combout\ : std_logic;
SIGNAL \Mux140~3_combout\ : std_logic;
SIGNAL \Mux140~4_combout\ : std_logic;
SIGNAL \Mux140~6_combout\ : std_logic;
SIGNAL \Mux140~7_combout\ : std_logic;
SIGNAL \Mux116~2_combout\ : std_logic;
SIGNAL \Mux116~3_combout\ : std_logic;
SIGNAL \Mux116~4_combout\ : std_logic;
SIGNAL \Mux116~5_combout\ : std_logic;
SIGNAL \IR~15_combout\ : std_logic;
SIGNAL \Mux116~12_combout\ : std_logic;
SIGNAL \Mux116~13_combout\ : std_logic;
SIGNAL \Mux116~6_combout\ : std_logic;
SIGNAL \Mux116~7_combout\ : std_logic;
SIGNAL \Mux116~8_combout\ : std_logic;
SIGNAL \Mux116~11_combout\ : std_logic;
SIGNAL \Mux116~9_combout\ : std_logic;
SIGNAL \Mux116~10_combout\ : std_logic;
SIGNAL \AB~32_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[14]~21\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_Q[15]~22_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_V~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|ADC_V~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux82~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux82~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux82~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux82~3_combout\ : std_logic;
SIGNAL \MicroCode|Mux82~4_combout\ : std_logic;
SIGNAL \MicroCode|Mux82~5_combout\ : std_logic;
SIGNAL \MicroCode|Mux60~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux59~3_combout\ : std_logic;
SIGNAL \MicroCode|Mux59~4_combout\ : std_logic;
SIGNAL \Mux152~0_combout\ : std_logic;
SIGNAL \Address~12_combout\ : std_logic;
SIGNAL \Address[0]~reg0_q\ : std_logic;
SIGNAL \Mux154~0_combout\ : std_logic;
SIGNAL \Mux154~1_combout\ : std_logic;
SIGNAL \Mux154~5_combout\ : std_logic;
SIGNAL \Mux154~2_combout\ : std_logic;
SIGNAL \Mux154~3_combout\ : std_logic;
SIGNAL \Mux154~4_combout\ : std_logic;
SIGNAL \Mux154~6_combout\ : std_logic;
SIGNAL \Mux154~7_combout\ : std_logic;
SIGNAL \MicroCode|Mux82~6_combout\ : std_logic;
SIGNAL \MicroCode|Mux82~7_combout\ : std_logic;
SIGNAL \MicroCode|Mux82~8_combout\ : std_logic;
SIGNAL \MicroCode|PCa_in~q\ : std_logic;
SIGNAL \PC[0]~25\ : std_logic;
SIGNAL \PC[1]~26_combout\ : std_logic;
SIGNAL \PC[1]~27\ : std_logic;
SIGNAL \PC[2]~28_combout\ : std_logic;
SIGNAL \PC[2]~29\ : std_logic;
SIGNAL \PC[3]~30_combout\ : std_logic;
SIGNAL \PC[3]~31\ : std_logic;
SIGNAL \PC[4]~32_combout\ : std_logic;
SIGNAL \PC[4]~33\ : std_logic;
SIGNAL \PC[5]~34_combout\ : std_logic;
SIGNAL \PC[5]~35\ : std_logic;
SIGNAL \PC[6]~36_combout\ : std_logic;
SIGNAL \PC[6]~37\ : std_logic;
SIGNAL \PC[7]~38_combout\ : std_logic;
SIGNAL \PC[7]~39\ : std_logic;
SIGNAL \PC[8]~40_combout\ : std_logic;
SIGNAL \PC[8]~41\ : std_logic;
SIGNAL \PC[9]~42_combout\ : std_logic;
SIGNAL \PC[9]~43\ : std_logic;
SIGNAL \PC[10]~44_combout\ : std_logic;
SIGNAL \PC[10]~45\ : std_logic;
SIGNAL \PC[11]~46_combout\ : std_logic;
SIGNAL \PC[11]~47\ : std_logic;
SIGNAL \PC[12]~48_combout\ : std_logic;
SIGNAL \PC[12]~49\ : std_logic;
SIGNAL \PC[13]~50_combout\ : std_logic;
SIGNAL \PC[13]~51\ : std_logic;
SIGNAL \PC[14]~52_combout\ : std_logic;
SIGNAL \PC[14]~53\ : std_logic;
SIGNAL \PC[15]~54_combout\ : std_logic;
SIGNAL \PC[15]~55\ : std_logic;
SIGNAL \PC[16]~56_combout\ : std_logic;
SIGNAL \PC[16]~57\ : std_logic;
SIGNAL \PC[17]~58_combout\ : std_logic;
SIGNAL \PC[17]~59\ : std_logic;
SIGNAL \PC[18]~60_combout\ : std_logic;
SIGNAL \PC[18]~61\ : std_logic;
SIGNAL \PC[19]~62_combout\ : std_logic;
SIGNAL \PC[19]~63\ : std_logic;
SIGNAL \PC[20]~64_combout\ : std_logic;
SIGNAL \PC[20]~65\ : std_logic;
SIGNAL \PC[21]~66_combout\ : std_logic;
SIGNAL \PC[21]~67\ : std_logic;
SIGNAL \PC[22]~68_combout\ : std_logic;
SIGNAL \PC[22]~69\ : std_logic;
SIGNAL \PC[23]~70_combout\ : std_logic;
SIGNAL \Mux131~0_combout\ : std_logic;
SIGNAL \Address[23]~reg0feeder_combout\ : std_logic;
SIGNAL \Address[23]~reg0_q\ : std_logic;
SIGNAL \EIR~61_combout\ : std_logic;
SIGNAL \Mux147~9_combout\ : std_logic;
SIGNAL \Mux131~1_combout\ : std_logic;
SIGNAL \Mux131~2_combout\ : std_logic;
SIGNAL \Mux131~3_combout\ : std_logic;
SIGNAL \Mux131~4_combout\ : std_logic;
SIGNAL \Address[23]~7_combout\ : std_logic;
SIGNAL \AB~44_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Q_t~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux26~0_combout\ : std_logic;
SIGNAL \ArithmeticLogicUnit|Mux26~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux66~3_combout\ : std_logic;
SIGNAL \MicroCode|Mux66~4_combout\ : std_logic;
SIGNAL \MicroCode|Mux59~2_combout\ : std_logic;
SIGNAL \MicroCode|Mux22~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux60~3_combout\ : std_logic;
SIGNAL \MicroCode|Mux60~4_combout\ : std_logic;
SIGNAL \Mux151~2_combout\ : std_logic;
SIGNAL \Mux139~5_combout\ : std_logic;
SIGNAL \Address~32_combout\ : std_logic;
SIGNAL \Address[15]~reg0_q\ : std_logic;
SIGNAL \Mux139~6_combout\ : std_logic;
SIGNAL \Mux139~1_combout\ : std_logic;
SIGNAL \Mux139~2_combout\ : std_logic;
SIGNAL \Mux139~0_combout\ : std_logic;
SIGNAL \Mux139~3_combout\ : std_logic;
SIGNAL \Mux139~4_combout\ : std_logic;
SIGNAL \Mux139~7_combout\ : std_logic;
SIGNAL \Mux115~2_combout\ : std_logic;
SIGNAL \Mux115~3_combout\ : std_logic;
SIGNAL \Mux115~4_combout\ : std_logic;
SIGNAL \Mux115~12_combout\ : std_logic;
SIGNAL \data_out[0]~feeder_combout\ : std_logic;
SIGNAL \MicroCode|Mux66~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux66~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux66~2_combout\ : std_logic;
SIGNAL \MicroCode|Write~q\ : std_logic;
SIGNAL \MicroCode|Mux64~0_combout\ : std_logic;
SIGNAL \MicroCode|Mux64~1_combout\ : std_logic;
SIGNAL \MicroCode|Mux64~2_combout\ : std_logic;
SIGNAL \MicroCode|DE~q\ : std_logic;
SIGNAL \data_out[0]~0_combout\ : std_logic;
SIGNAL \data_out[5]~feeder_combout\ : std_logic;
SIGNAL \data_out[6]~feeder_combout\ : std_logic;
SIGNAL \data_out[9]~feeder_combout\ : std_logic;
SIGNAL \data_out[10]~feeder_combout\ : std_logic;
SIGNAL \data_out[12]~feeder_combout\ : std_logic;
SIGNAL \data_out[13]~feeder_combout\ : std_logic;
SIGNAL \data_out[14]~feeder_combout\ : std_logic;
SIGNAL \data_out[15]~feeder_combout\ : std_logic;
SIGNAL PC : std_logic_vector(23 DOWNTO 0);
SIGNAL AB : std_logic_vector(47 DOWNTO 0);
SIGNAL \MicroCode|LIC\ : std_logic_vector(1 DOWNTO 0);
SIGNAL MRC : std_logic_vector(3 DOWNTO 0);
SIGNAL IC : std_logic_vector(1 DOWNTO 0);
SIGNAL IR : std_logic_vector(15 DOWNTO 0);
SIGNAL DI : std_logic_vector(23 DOWNTO 0);
SIGNAL EIR : std_logic_vector(47 DOWNTO 0);
SIGNAL \MicroCode|Set_A\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MicroCode|ALUOp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL SI : std_logic_vector(23 DOWNTO 0);
SIGNAL AIE : std_logic_vector(1 DOWNTO 0);
SIGNAL FR : std_logic_vector(15 DOWNTO 0);
SIGNAL Y : std_logic_vector(15 DOWNTO 0);
SIGNAL \MicroCode|Set_D\ : std_logic_vector(4 DOWNTO 0);
SIGNAL X : std_logic_vector(15 DOWNTO 0);
SIGNAL Z : std_logic_vector(15 DOWNTO 0);
SIGNAL data_out : std_logic_vector(15 DOWNTO 0);
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

-- Location: IOOBUF_X0_Y9_N9
\Data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(0),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \Data[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\Data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(1),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \Data[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\Data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(2),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \Data[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\Data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(3),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \Data[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\Data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(4),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \Data[4]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\Data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(5),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \Data[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\Data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(6),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \Data[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\Data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(7),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \Data[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\Data[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(8),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \Data[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\Data[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(9),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \Data[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Data[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(10),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \Data[10]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Data[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(11),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \Data[11]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\Data[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(12),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \Data[12]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\Data[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(13),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \Data[13]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\Data[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(14),
	oe => \MicroCode|Write~q\,
	devoe => ww_devoe,
	o => \Data[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\Data[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_out(15),
	oe => \MicroCode|Write~q\,
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

-- Location: LCCOMB_X14_Y9_N14
\process_6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_6~3_combout\ = (!\MPI~q\ & (\HPI_p~input_o\ & !\HPIO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MPI~q\,
	datac => \HPI_p~input_o\,
	datad => \HPIO~q\,
	combout => \process_6~3_combout\);

-- Location: LCCOMB_X14_Y9_N26
\MPIO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MPIO~0_combout\ = (\MPI_p~input_o\ & ((\MPIO~q\) # ((\process_6~0_combout\ & !\process_6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \process_6~3_combout\,
	datac => \MPIO~q\,
	datad => \MPI_p~input_o\,
	combout => \MPIO~0_combout\);

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

-- Location: FF_X14_Y9_N27
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

-- Location: LCCOMB_X14_Y9_N2
\LPI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPI~0_combout\ = (!\process_6~1_combout\ & (!\process_6~2_combout\ & (!\HPI~q\ & !\MPI~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~1_combout\,
	datab => \process_6~2_combout\,
	datac => \HPI~q\,
	datad => \MPI~q\,
	combout => \LPI~0_combout\);

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

-- Location: LCCOMB_X14_Y9_N12
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

-- Location: FF_X14_Y9_N13
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

-- Location: LCCOMB_X14_Y9_N22
\LPI~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPI~1_combout\ = (\Enable~input_o\ & (\LPI_p~input_o\ & !\LPIO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable~input_o\,
	datac => \LPI_p~input_o\,
	datad => \LPIO~q\,
	combout => \LPI~1_combout\);

-- Location: LCCOMB_X14_Y10_N12
\LPI~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPI~2_combout\ = (\LPI~q\) # ((\LPI~0_combout\ & \LPI~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LPI~0_combout\,
	datac => \LPI~q\,
	datad => \LPI~1_combout\,
	combout => \LPI~2_combout\);

-- Location: FF_X14_Y10_N13
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

-- Location: LCCOMB_X14_Y9_N28
\process_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_6~2_combout\ = (!\HPI~q\ & (\MPI_p~input_o\ & (!\MPIO~q\ & !\LPI~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HPI~q\,
	datab => \MPI_p~input_o\,
	datac => \MPIO~q\,
	datad => \LPI~q\,
	combout => \process_6~2_combout\);

-- Location: LCCOMB_X13_Y9_N18
\MPI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MPI~0_combout\ = (\MPI~q\) # ((\process_6~2_combout\ & (!\process_6~1_combout\ & \Enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~2_combout\,
	datab => \process_6~1_combout\,
	datac => \MPI~q\,
	datad => \Enable~input_o\,
	combout => \MPI~0_combout\);

-- Location: FF_X13_Y9_N19
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

-- Location: LCCOMB_X14_Y9_N6
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

-- Location: FF_X14_Y9_N7
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

-- Location: LCCOMB_X14_Y9_N24
\process_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_6~1_combout\ = (!\HPIO~q\ & (!\MPI~q\ & (\HPI_p~input_o\ & !\LPI~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HPIO~q\,
	datab => \MPI~q\,
	datac => \HPI_p~input_o\,
	datad => \LPI~q\,
	combout => \process_6~1_combout\);

-- Location: LCCOMB_X13_Y9_N16
\HPI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HPI~0_combout\ = (\HPI~q\) # ((\Enable~input_o\ & \process_6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable~input_o\,
	datac => \HPI~q\,
	datad => \process_6~1_combout\,
	combout => \HPI~0_combout\);

-- Location: FF_X13_Y9_N17
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

-- Location: LCCOMB_X14_Y9_N30
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

-- Location: LCCOMB_X14_Y9_N8
\AIE[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AIE[1]~3_combout\ = !\LPI~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LPI~q\,
	combout => \AIE[1]~3_combout\);

-- Location: LCCOMB_X12_Y7_N4
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

-- Location: FF_X12_Y7_N5
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

-- Location: LCCOMB_X13_Y7_N12
\IR~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~7_combout\ = (\Data[1]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \Data[1]~input_o\,
	datac => \IR~0_combout\,
	datad => \MPI~q\,
	combout => \IR~7_combout\);

-- Location: FF_X13_Y7_N13
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

-- Location: LCCOMB_X13_Y7_N30
\IR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~2_combout\ = (\Data[2]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \IR~0_combout\,
	datac => \Data[2]~input_o\,
	datad => \MPI~q\,
	combout => \IR~2_combout\);

-- Location: FF_X13_Y7_N31
\IR[2]\ : dffeas
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

-- Location: LCCOMB_X14_Y8_N30
\IR~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~6_combout\ = (\Data[3]~input_o\ & (((!\MPI~q\ & \process_6~0_combout\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MPI~q\,
	datab => \Data[3]~input_o\,
	datac => \process_6~0_combout\,
	datad => \IR~0_combout\,
	combout => \IR~6_combout\);

-- Location: FF_X14_Y8_N31
\IR[3]\ : dffeas
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

-- Location: LCCOMB_X13_Y7_N26
\IR~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~5_combout\ = (\Data[4]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[4]~input_o\,
	datab => \IR~0_combout\,
	datac => \process_6~0_combout\,
	datad => \MPI~q\,
	combout => \IR~5_combout\);

-- Location: FF_X13_Y7_N27
\IR[4]\ : dffeas
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
	q => IR(4));

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

-- Location: LCCOMB_X13_Y7_N8
\IR~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~4_combout\ = (\Data[5]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \IR~0_combout\,
	datac => \Data[5]~input_o\,
	datad => \MPI~q\,
	combout => \IR~4_combout\);

-- Location: FF_X13_Y7_N9
\IR[5]\ : dffeas
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

-- Location: LCCOMB_X14_Y8_N4
\IR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~3_combout\ = (\Data[6]~input_o\ & (((!\MPI~q\ & \process_6~0_combout\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MPI~q\,
	datab => \Data[6]~input_o\,
	datac => \process_6~0_combout\,
	datad => \IR~0_combout\,
	combout => \IR~3_combout\);

-- Location: LCCOMB_X13_Y8_N20
\IR[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR[6]~feeder_combout\ = \IR~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IR~3_combout\,
	combout => \IR[6]~feeder_combout\);

-- Location: FF_X13_Y8_N21
\IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \IR[6]~feeder_combout\,
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

-- Location: LCCOMB_X13_Y7_N14
\IR~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~8_combout\ = (\Data[7]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \IR~0_combout\,
	datac => \Data[7]~input_o\,
	datad => \MPI~q\,
	combout => \IR~8_combout\);

-- Location: FF_X13_Y7_N15
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

-- Location: M9K_X15_Y7_N0
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

-- Location: LCCOMB_X14_Y7_N28
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

-- Location: LCCOMB_X13_Y7_N0
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

-- Location: LCCOMB_X14_Y9_N20
\AIE[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AIE[0]~1_combout\ = (\IR~0_combout\ & (\AIE[0]~0_combout\ & ((\MPI~q\) # (!\process_6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR~0_combout\,
	datab => \MPI~q\,
	datac => \process_6~0_combout\,
	datad => \AIE[0]~0_combout\,
	combout => \AIE[0]~1_combout\);

-- Location: FF_X14_Y9_N9
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

-- Location: LCCOMB_X14_Y9_N10
\AIE[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AIE[0]~2_combout\ = (\LPI~q\) # (!\MPI~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MPI~q\,
	datad => \LPI~q\,
	combout => \AIE[0]~2_combout\);

-- Location: FF_X14_Y9_N11
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

-- Location: LCCOMB_X14_Y9_N16
\IR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~0_combout\ = (!AIE(1) & !AIE(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => AIE(1),
	datad => AIE(0),
	combout => \IR~0_combout\);

-- Location: LCCOMB_X13_Y7_N24
\IR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~1_combout\ = (\Data[0]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \Data[0]~input_o\,
	datac => \IR~0_combout\,
	datad => \MPI~q\,
	combout => \IR~1_combout\);

-- Location: FF_X13_Y7_N25
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

-- Location: LCCOMB_X16_Y6_N0
\MRC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MRC~4_combout\ = (\LessThan0~3_combout\ & (MRC(0) $ ((MRC(1))))) # (!\LessThan0~3_combout\ & (\LessThan0~0_combout\ & (MRC(0) $ (MRC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => \LessThan0~3_combout\,
	datac => MRC(1),
	datad => \LessThan0~0_combout\,
	combout => \MRC~4_combout\);

-- Location: LCCOMB_X16_Y4_N24
\EIR[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[0]~36_combout\ = (!IC(1) & !IC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IC(1),
	datad => IC(0),
	combout => \EIR[0]~36_combout\);

-- Location: LCCOMB_X16_Y5_N0
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

-- Location: LCCOMB_X16_Y4_N20
\CIR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CIR~1_combout\ = (\CIR~q\ & ((!\RstComplete~q\) # (!\Enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datab => \RstComplete~q\,
	datad => \CIR~q\,
	combout => \CIR~1_combout\);

-- Location: LCCOMB_X17_Y9_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!MRC(2) & (!MRC(3) & (!MRC(0) & !MRC(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(2),
	datab => MRC(3),
	datac => MRC(0),
	datad => MRC(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X16_Y7_N30
\CIR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CIR~0_combout\ = (\Enable~input_o\ & \RstComplete~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datab => \RstComplete~q\,
	combout => \CIR~0_combout\);

-- Location: LCCOMB_X16_Y4_N22
\CIR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CIR~2_combout\ = (\CIR~q\) # ((\CIR~0_combout\ & ((\Equal0~0_combout\) # (!\IR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CIR~q\,
	datab => \IR~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \CIR~0_combout\,
	combout => \CIR~2_combout\);

-- Location: LCCOMB_X16_Y7_N6
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~3_combout\) # ((\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\ & !MRC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => MRC(3),
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X16_Y7_N8
\CIR~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CIR~3_combout\ = (\CIR~1_combout\) # ((!\process_2~1_combout\ & (\CIR~2_combout\ & \LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \CIR~1_combout\,
	datac => \CIR~2_combout\,
	datad => \LessThan0~4_combout\,
	combout => \CIR~3_combout\);

-- Location: FF_X16_Y7_N9
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

-- Location: LCCOMB_X16_Y4_N6
\IC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \IC~3_combout\ = (\process_2~0_combout\ & (\RstComplete~q\ & (!\EIR[0]~36_combout\ & !\CIR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => \RstComplete~q\,
	datac => \EIR[0]~36_combout\,
	datad => \CIR~q\,
	combout => \IC~3_combout\);

-- Location: LCCOMB_X16_Y4_N30
\IC[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \IC[1]~2_combout\ = (\Enable~input_o\ & (((\process_2~1_combout\) # (!\LessThan0~4_combout\)) # (!\RstComplete~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datab => \RstComplete~q\,
	datac => \process_2~1_combout\,
	datad => \LessThan0~4_combout\,
	combout => \IC[1]~2_combout\);

-- Location: FF_X16_Y4_N7
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

-- Location: LCCOMB_X16_Y4_N12
\IC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IC~0_combout\ = (IC(1)) # (!IC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IC(0),
	datad => IC(1),
	combout => \IC~0_combout\);

-- Location: LCCOMB_X16_Y4_N28
\IC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IC~1_combout\ = (\IC~0_combout\ & (\RstComplete~q\ & (\process_2~0_combout\ & !\CIR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IC~0_combout\,
	datab => \RstComplete~q\,
	datac => \process_2~0_combout\,
	datad => \CIR~q\,
	combout => \IC~1_combout\);

-- Location: FF_X16_Y4_N29
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

-- Location: LCCOMB_X14_Y8_N26
\MicroCode|Mux52~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux52~11_combout\ = (\Equal0~0_combout\ & ((IR(4)) # ((IR(6)) # (IR(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => IR(6),
	datac => \Equal0~0_combout\,
	datad => IR(5),
	combout => \MicroCode|Mux52~11_combout\);

-- Location: LCCOMB_X14_Y8_N0
\MicroCode|Mux52~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux52~8_combout\ = (IR(2) & ((IR(4)) # (!IR(1)))) # (!IR(2) & (!IR(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(2),
	datac => IR(4),
	datad => IR(1),
	combout => \MicroCode|Mux52~8_combout\);

-- Location: LCCOMB_X14_Y8_N20
\MicroCode|Mux52~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux52~10_combout\ = (\Equal0~0_combout\ & ((IR(5)) # ((IR(6)) # (\MicroCode|Mux52~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(5),
	datab => IR(6),
	datac => \Equal0~0_combout\,
	datad => \MicroCode|Mux52~8_combout\,
	combout => \MicroCode|Mux52~10_combout\);

-- Location: LCCOMB_X14_Y8_N8
\MicroCode|LIC[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|LIC[0]~0_combout\ = (IR(3) & (\MicroCode|Mux52~11_combout\)) # (!IR(3) & ((\MicroCode|Mux52~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux52~11_combout\,
	datab => IR(3),
	datad => \MicroCode|Mux52~10_combout\,
	combout => \MicroCode|LIC[0]~0_combout\);

-- Location: LCCOMB_X14_Y8_N24
\MicroCode|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux57~0_combout\ = (!IR(0) & IR(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => IR(0),
	datad => IR(1),
	combout => \MicroCode|Mux57~0_combout\);

-- Location: LCCOMB_X14_Y8_N12
\MicroCode|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux56~0_combout\ = (!IR(3) & (!IR(6) & (!IR(4) & !IR(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(3),
	datab => IR(6),
	datac => IR(4),
	datad => IR(5),
	combout => \MicroCode|Mux56~0_combout\);

-- Location: LCCOMB_X14_Y8_N6
\MicroCode|Mux52~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux52~9_combout\ = (\Equal0~0_combout\ & (((!\MicroCode|Mux56~0_combout\) # (!IR(2))) # (!\MicroCode|Mux57~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \MicroCode|Mux57~0_combout\,
	datac => IR(2),
	datad => \MicroCode|Mux56~0_combout\,
	combout => \MicroCode|Mux52~9_combout\);

-- Location: FF_X14_Y8_N9
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

-- Location: LCCOMB_X14_Y8_N16
\MicroCode|Mux52~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux52~5_combout\ = (IR(1) & ((IR(0)) # ((IR(6))))) # (!IR(1) & ((IR(7)) # (IR(0) $ (IR(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => IR(0),
	datac => IR(7),
	datad => IR(6),
	combout => \MicroCode|Mux52~5_combout\);

-- Location: LCCOMB_X14_Y8_N14
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

-- Location: LCCOMB_X14_Y8_N10
\MicroCode|Mux52~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux52~4_combout\ = (IR(4) & ((IR(0)) # ((IR(1)) # (!IR(2))))) # (!IR(4) & (!IR(2) & ((IR(0)) # (IR(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => IR(0),
	datac => IR(2),
	datad => IR(1),
	combout => \MicroCode|Mux52~4_combout\);

-- Location: LCCOMB_X14_Y8_N18
\MicroCode|Mux52~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux52~7_combout\ = (\Equal0~0_combout\ & ((\MicroCode|Mux52~5_combout\) # ((\MicroCode|Mux52~6_combout\) # (\MicroCode|Mux52~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \MicroCode|Mux52~5_combout\,
	datac => \MicroCode|Mux52~6_combout\,
	datad => \MicroCode|Mux52~4_combout\,
	combout => \MicroCode|Mux52~7_combout\);

-- Location: FF_X14_Y8_N19
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

-- Location: LCCOMB_X14_Y8_N28
\process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (IC(1) & (!IC(0) & (\MicroCode|LIC\(0) & \MicroCode|LIC\(1)))) # (!IC(1) & ((\MicroCode|LIC\(1)) # ((!IC(0) & \MicroCode|LIC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IC(0),
	datab => \MicroCode|LIC\(0),
	datac => IC(1),
	datad => \MicroCode|LIC\(1),
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X16_Y4_N4
\MRC[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MRC[3]~7_combout\ = (\Enable~input_o\ & (\RstComplete~q\ & ((\CIR~q\) # (!\process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datab => \RstComplete~q\,
	datac => \process_2~0_combout\,
	datad => \CIR~q\,
	combout => \MRC[3]~7_combout\);

-- Location: FF_X16_Y6_N1
\MRC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MRC~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \MRC[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MRC(1));

-- Location: LCCOMB_X16_Y7_N4
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

-- Location: LCCOMB_X16_Y7_N10
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = MRC(3) $ (\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => MRC(3),
	datad => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X16_Y7_N12
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!\LessThan0~2_combout\ & ((\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\ & ((\LessThan0~1_combout\) # (!MRC(2)))) # (!\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\ & (!MRC(2) & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\,
	datab => MRC(2),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X16_Y9_N24
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (MRC(0) & MRC(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => MRC(0),
	datad => MRC(1),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X16_Y9_N0
\MRC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MRC~5_combout\ = (\LessThan0~3_combout\ & (\Add4~0_combout\ $ ((MRC(2))))) # (!\LessThan0~3_combout\ & (\LessThan0~0_combout\ & (\Add4~0_combout\ $ (MRC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \Add4~0_combout\,
	datac => MRC(2),
	datad => \LessThan0~0_combout\,
	combout => \MRC~5_combout\);

-- Location: FF_X16_Y9_N1
\MRC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MRC~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \MRC[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MRC(2));

-- Location: LCCOMB_X16_Y9_N6
\MRC~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MRC~6_combout\ = (\LessThan0~4_combout\ & (MRC(3) $ (((MRC(2) & \Add4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(2),
	datab => \Add4~0_combout\,
	datac => MRC(3),
	datad => \LessThan0~4_combout\,
	combout => \MRC~6_combout\);

-- Location: FF_X16_Y9_N7
\MRC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MRC~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \MRC[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MRC(3));

-- Location: LCCOMB_X16_Y6_N26
\MRC~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MRC~8_combout\ = (!MRC(0) & ((\LessThan0~3_combout\) # ((!MRC(3) & \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\))))

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
	combout => \MRC~8_combout\);

-- Location: FF_X16_Y6_N27
\MRC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MRC~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \MRC[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MRC(0));

-- Location: LCCOMB_X17_Y9_N6
\MicroCode|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux33~0_combout\ = (MRC(0) & (!MRC(3) & (MRC(2) & MRC(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(3),
	datac => MRC(2),
	datad => MRC(1),
	combout => \MicroCode|Mux33~0_combout\);

-- Location: LCCOMB_X17_Y9_N16
\MicroCode|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux19~0_combout\ = (!MRC(0) & (!MRC(3) & ((MRC(2)) # (MRC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(3),
	datac => MRC(2),
	datad => MRC(1),
	combout => \MicroCode|Mux19~0_combout\);

-- Location: LCCOMB_X17_Y9_N18
\MicroCode|Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux58~3_combout\ = (!IR(1) & ((IR(0) & (\MicroCode|Mux33~0_combout\)) # (!IR(0) & ((\MicroCode|Mux19~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux33~0_combout\,
	datab => IR(0),
	datac => IR(1),
	datad => \MicroCode|Mux19~0_combout\,
	combout => \MicroCode|Mux58~3_combout\);

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

-- Location: LCCOMB_X13_Y7_N6
\IR~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~9_combout\ = (\Data[8]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \IR~0_combout\,
	datac => \Data[8]~input_o\,
	datad => \MPI~q\,
	combout => \IR~9_combout\);

-- Location: FF_X13_Y7_N7
\IR[8]\ : dffeas
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
	q => IR(8));

-- Location: LCCOMB_X16_Y6_N16
\MicroCode|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux34~0_combout\ = (MRC(0) & (!MRC(1) & (!MRC(2) & !MRC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(1),
	datac => MRC(2),
	datad => MRC(3),
	combout => \MicroCode|Mux34~0_combout\);

-- Location: LCCOMB_X17_Y6_N28
\MicroCode|Mux58~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux58~5_combout\ = (IR(8) & (!IR(0) & (\MicroCode|Mux34~0_combout\ & IR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(8),
	datab => IR(0),
	datac => \MicroCode|Mux34~0_combout\,
	datad => IR(1),
	combout => \MicroCode|Mux58~5_combout\);

-- Location: LCCOMB_X16_Y9_N20
\MicroCode|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux8~0_combout\ = (!MRC(3) & (!MRC(0) & (MRC(2) & !MRC(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(3),
	datab => MRC(0),
	datac => MRC(2),
	datad => MRC(1),
	combout => \MicroCode|Mux8~0_combout\);

-- Location: LCCOMB_X17_Y6_N18
\MicroCode|Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux61~3_combout\ = (!IR(7) & \MicroCode|Mux56~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => IR(7),
	datad => \MicroCode|Mux56~0_combout\,
	combout => \MicroCode|Mux61~3_combout\);

-- Location: LCCOMB_X17_Y6_N4
\MicroCode|Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux57~1_combout\ = (!IR(2) & (\MicroCode|Mux57~0_combout\ & (\MicroCode|Mux8~0_combout\ & \MicroCode|Mux61~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => \MicroCode|Mux57~0_combout\,
	datac => \MicroCode|Mux8~0_combout\,
	datad => \MicroCode|Mux61~3_combout\,
	combout => \MicroCode|Mux57~1_combout\);

-- Location: LCCOMB_X18_Y6_N6
\MicroCode|Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux58~2_combout\ = (IR(2) & (\MicroCode|Mux56~0_combout\ & (IR(7) $ (!IR(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(2),
	datac => IR(1),
	datad => \MicroCode|Mux56~0_combout\,
	combout => \MicroCode|Mux58~2_combout\);

-- Location: LCCOMB_X18_Y6_N14
\MicroCode|Mux58~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux58~4_combout\ = (\MicroCode|Mux57~1_combout\) # ((\MicroCode|Mux58~2_combout\ & ((\MicroCode|Mux58~3_combout\) # (\MicroCode|Mux58~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux58~3_combout\,
	datab => \MicroCode|Mux58~5_combout\,
	datac => \MicroCode|Mux57~1_combout\,
	datad => \MicroCode|Mux58~2_combout\,
	combout => \MicroCode|Mux58~4_combout\);

-- Location: FF_X18_Y6_N15
\MicroCode|Set_D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux58~4_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Set_D\(0));

-- Location: LCCOMB_X18_Y6_N12
\MicroCode|Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~2_combout\ = (IR(2) & (IR(1) $ (!IR(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => IR(2),
	datad => IR(7),
	combout => \MicroCode|Mux54~2_combout\);

-- Location: LCCOMB_X14_Y8_N22
\MicroCode|Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux56~1_combout\ = (!IR(5) & !IR(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(5),
	datad => IR(6),
	combout => \MicroCode|Mux56~1_combout\);

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

-- Location: LCCOMB_X13_Y7_N4
\IR~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~12_combout\ = (\Data[11]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \Data[11]~input_o\,
	datac => \IR~0_combout\,
	datad => \MPI~q\,
	combout => \IR~12_combout\);

-- Location: FF_X13_Y7_N5
\IR[11]\ : dffeas
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
	q => IR(11));

-- Location: LCCOMB_X17_Y7_N14
\MicroCode|Mux54~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~9_combout\ = (!IR(0) & (IR(7) & (!IR(3) & !IR(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => IR(7),
	datac => IR(3),
	datad => IR(4),
	combout => \MicroCode|Mux54~9_combout\);

-- Location: LCCOMB_X19_Y9_N20
\MicroCode|Mux54~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~6_combout\ = (!IR(3) & (!IR(7) & ((!IR(4)) # (!IR(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => IR(3),
	datac => IR(7),
	datad => IR(4),
	combout => \MicroCode|Mux54~6_combout\);

-- Location: LCCOMB_X16_Y6_N2
\MicroCode|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux17~0_combout\ = (!MRC(3) & ((MRC(0) & ((!MRC(2)))) # (!MRC(0) & (!MRC(1) & MRC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(1),
	datac => MRC(2),
	datad => MRC(3),
	combout => \MicroCode|Mux17~0_combout\);

-- Location: LCCOMB_X17_Y9_N30
\MicroCode|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux31~0_combout\ = (!MRC(0) & (!MRC(3) & (MRC(2) & MRC(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(3),
	datac => MRC(2),
	datad => MRC(1),
	combout => \MicroCode|Mux31~0_combout\);

-- Location: LCCOMB_X19_Y8_N4
\MicroCode|Mux54~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~7_combout\ = (!IR(4) & ((IR(0) & ((\MicroCode|Mux31~0_combout\))) # (!IR(0) & (\MicroCode|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux17~0_combout\,
	datab => IR(4),
	datac => IR(0),
	datad => \MicroCode|Mux31~0_combout\,
	combout => \MicroCode|Mux54~7_combout\);

-- Location: LCCOMB_X19_Y8_N2
\MicroCode|Mux54~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~8_combout\ = (\MicroCode|Mux54~6_combout\ & ((\MicroCode|Mux54~7_combout\) # ((IR(4) & \MicroCode|Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux54~6_combout\,
	datab => IR(4),
	datac => \MicroCode|Mux54~7_combout\,
	datad => \MicroCode|Mux34~0_combout\,
	combout => \MicroCode|Mux54~8_combout\);

-- Location: LCCOMB_X18_Y6_N22
\MicroCode|Mux54~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~14_combout\ = (\MicroCode|Mux54~8_combout\) # ((IR(11) & (\MicroCode|Mux54~9_combout\ & \MicroCode|Mux34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(11),
	datab => \MicroCode|Mux54~9_combout\,
	datac => \MicroCode|Mux34~0_combout\,
	datad => \MicroCode|Mux54~8_combout\,
	combout => \MicroCode|Mux54~14_combout\);

-- Location: LCCOMB_X17_Y6_N20
\MicroCode|Mux54~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~4_combout\ = (!IR(3) & (!IR(4) & (!IR(7) & !IR(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(3),
	datab => IR(4),
	datac => IR(7),
	datad => IR(2),
	combout => \MicroCode|Mux54~4_combout\);

-- Location: LCCOMB_X16_Y6_N20
\MicroCode|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux10~0_combout\ = (!MRC(0) & (!MRC(3) & (MRC(1) $ (MRC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(1),
	datac => MRC(2),
	datad => MRC(3),
	combout => \MicroCode|Mux10~0_combout\);

-- Location: LCCOMB_X16_Y9_N12
\MicroCode|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux7~0_combout\ = (!MRC(3) & (!MRC(0) & (!MRC(2) & MRC(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(3),
	datab => MRC(0),
	datac => MRC(2),
	datad => MRC(1),
	combout => \MicroCode|Mux7~0_combout\);

-- Location: LCCOMB_X17_Y6_N6
\MicroCode|Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~3_combout\ = (IR(0) & (\MicroCode|Mux10~0_combout\)) # (!IR(0) & ((\MicroCode|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Mux10~0_combout\,
	datac => IR(0),
	datad => \MicroCode|Mux7~0_combout\,
	combout => \MicroCode|Mux54~3_combout\);

-- Location: LCCOMB_X17_Y6_N14
\MicroCode|Mux54~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~5_combout\ = (IR(1) & (\MicroCode|Mux54~4_combout\ & \MicroCode|Mux54~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => \MicroCode|Mux54~4_combout\,
	datad => \MicroCode|Mux54~3_combout\,
	combout => \MicroCode|Mux54~5_combout\);

-- Location: LCCOMB_X18_Y6_N0
\MicroCode|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux55~0_combout\ = (\MicroCode|Mux56~1_combout\ & ((\MicroCode|Mux54~5_combout\) # ((\MicroCode|Mux54~2_combout\ & \MicroCode|Mux54~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux54~2_combout\,
	datab => \MicroCode|Mux56~1_combout\,
	datac => \MicroCode|Mux54~14_combout\,
	datad => \MicroCode|Mux54~5_combout\,
	combout => \MicroCode|Mux55~0_combout\);

-- Location: FF_X18_Y6_N1
\MicroCode|Set_D[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux55~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Set_D\(3));

-- Location: LCCOMB_X21_Y6_N10
\Mux130~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~16_combout\ = (!\MicroCode|Set_D\(0) & \MicroCode|Set_D\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_D\(0),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux130~16_combout\);

-- Location: LCCOMB_X17_Y9_N28
\MicroCode|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux18~0_combout\ = (!MRC(3) & ((MRC(0) & ((!MRC(1)) # (!MRC(2)))) # (!MRC(0) & ((MRC(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(3),
	datac => MRC(2),
	datad => MRC(1),
	combout => \MicroCode|Mux18~0_combout\);

-- Location: LCCOMB_X17_Y9_N26
\MicroCode|Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux57~3_combout\ = (IR(4)) # (IR(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => IR(4),
	datad => IR(1),
	combout => \MicroCode|Mux57~3_combout\);

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

-- Location: LCCOMB_X13_Y7_N16
\IR~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~10_combout\ = (\Data[9]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \Data[9]~input_o\,
	datac => \IR~0_combout\,
	datad => \MPI~q\,
	combout => \IR~10_combout\);

-- Location: FF_X13_Y7_N17
\IR[9]\ : dffeas
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
	q => IR(9));

-- Location: LCCOMB_X13_Y7_N2
\MicroCode|Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux57~2_combout\ = (IR(0)) # ((IR(1) & ((IR(4)) # (!IR(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => IR(0),
	datac => IR(4),
	datad => IR(9),
	combout => \MicroCode|Mux57~2_combout\);

-- Location: LCCOMB_X17_Y9_N0
\MicroCode|Mux57~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux57~4_combout\ = (\MicroCode|Mux57~3_combout\ & ((\MicroCode|Mux34~0_combout\) # ((\MicroCode|Mux57~2_combout\)))) # (!\MicroCode|Mux57~3_combout\ & (((\MicroCode|Mux18~0_combout\ & !\MicroCode|Mux57~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux34~0_combout\,
	datab => \MicroCode|Mux18~0_combout\,
	datac => \MicroCode|Mux57~3_combout\,
	datad => \MicroCode|Mux57~2_combout\,
	combout => \MicroCode|Mux57~4_combout\);

-- Location: LCCOMB_X17_Y9_N10
\MicroCode|Mux57~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux57~5_combout\ = (!IR(3) & ((\MicroCode|Mux57~4_combout\ & ((!\MicroCode|Mux57~2_combout\))) # (!\MicroCode|Mux57~4_combout\ & (\MicroCode|Mux33~0_combout\ & \MicroCode|Mux57~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux33~0_combout\,
	datab => \MicroCode|Mux57~4_combout\,
	datac => IR(3),
	datad => \MicroCode|Mux57~2_combout\,
	combout => \MicroCode|Mux57~5_combout\);

-- Location: LCCOMB_X18_Y6_N24
\MicroCode|Mux57~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux57~6_combout\ = (\MicroCode|Mux57~1_combout\) # ((\MicroCode|Mux57~5_combout\ & (\MicroCode|Mux54~2_combout\ & \MicroCode|Mux56~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux57~5_combout\,
	datab => \MicroCode|Mux57~1_combout\,
	datac => \MicroCode|Mux54~2_combout\,
	datad => \MicroCode|Mux56~1_combout\,
	combout => \MicroCode|Mux57~6_combout\);

-- Location: FF_X18_Y6_N25
\MicroCode|Set_D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux57~6_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Set_D\(1));

-- Location: LCCOMB_X17_Y7_N12
\MicroCode|Mux54~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~10_combout\ = (\MicroCode|Mux54~9_combout\ & \MicroCode|Mux34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Mux54~9_combout\,
	datad => \MicroCode|Mux34~0_combout\,
	combout => \MicroCode|Mux54~10_combout\);

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

-- Location: LCCOMB_X13_Y7_N22
\IR~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~13_combout\ = (\Data[12]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \IR~0_combout\,
	datac => \Data[12]~input_o\,
	datad => \MPI~q\,
	combout => \IR~13_combout\);

-- Location: FF_X13_Y7_N23
\IR[12]\ : dffeas
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
	q => IR(12));

-- Location: LCCOMB_X19_Y8_N0
\MicroCode|Mux54~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~11_combout\ = (IR(4) & (((\MicroCode|Mux34~0_combout\)))) # (!IR(4) & ((IR(0) & (\MicroCode|Mux31~0_combout\)) # (!IR(0) & ((\MicroCode|Mux34~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux31~0_combout\,
	datab => IR(4),
	datac => IR(0),
	datad => \MicroCode|Mux34~0_combout\,
	combout => \MicroCode|Mux54~11_combout\);

-- Location: LCCOMB_X18_Y7_N28
\MicroCode|Mux54~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~12_combout\ = (\MicroCode|Mux54~10_combout\ & ((IR(12)) # ((\MicroCode|Mux54~6_combout\ & \MicroCode|Mux54~11_combout\)))) # (!\MicroCode|Mux54~10_combout\ & (\MicroCode|Mux54~6_combout\ & ((\MicroCode|Mux54~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux54~10_combout\,
	datab => \MicroCode|Mux54~6_combout\,
	datac => IR(12),
	datad => \MicroCode|Mux54~11_combout\,
	combout => \MicroCode|Mux54~12_combout\);

-- Location: LCCOMB_X18_Y6_N26
\MicroCode|Mux54~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux54~13_combout\ = (\MicroCode|Mux56~1_combout\ & ((\MicroCode|Mux54~5_combout\) # ((\MicroCode|Mux54~2_combout\ & \MicroCode|Mux54~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux54~5_combout\,
	datab => \MicroCode|Mux56~1_combout\,
	datac => \MicroCode|Mux54~2_combout\,
	datad => \MicroCode|Mux54~12_combout\,
	combout => \MicroCode|Mux54~13_combout\);

-- Location: FF_X18_Y6_N27
\MicroCode|Set_D[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux54~13_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Set_D\(4));

-- Location: LCCOMB_X16_Y6_N4
\MicroCode|Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux56~3_combout\ = (!IR(7) & ((IR(2) & (!IR(0) & !IR(1))) # (!IR(2) & ((IR(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => IR(2),
	datac => IR(1),
	datad => IR(7),
	combout => \MicroCode|Mux56~3_combout\);

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

-- Location: LCCOMB_X13_Y7_N18
\IR~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~11_combout\ = (\Data[10]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \IR~0_combout\,
	datac => \Data[10]~input_o\,
	datad => \MPI~q\,
	combout => \IR~11_combout\);

-- Location: FF_X13_Y7_N19
\IR[10]\ : dffeas
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
	q => IR(10));

-- Location: LCCOMB_X16_Y6_N28
\MicroCode|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux31~1_combout\ = (!MRC(3) & (MRC(2) & MRC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(3),
	datac => MRC(2),
	datad => MRC(1),
	combout => \MicroCode|Mux31~1_combout\);

-- Location: LCCOMB_X16_Y6_N22
\MicroCode|Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux56~2_combout\ = (IR(1) & (IR(10) & ((\MicroCode|Mux34~0_combout\)))) # (!IR(1) & (((\MicroCode|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(10),
	datab => \MicroCode|Mux31~1_combout\,
	datac => IR(1),
	datad => \MicroCode|Mux34~0_combout\,
	combout => \MicroCode|Mux56~2_combout\);

-- Location: LCCOMB_X16_Y6_N30
\MicroCode|Mux56~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux56~4_combout\ = (IR(0) & (!IR(7) & (IR(2) $ (IR(1))))) # (!IR(0) & (IR(2) & (IR(1) & IR(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => IR(2),
	datac => IR(1),
	datad => IR(7),
	combout => \MicroCode|Mux56~4_combout\);

-- Location: LCCOMB_X16_Y6_N10
\MicroCode|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux11~0_combout\ = (!MRC(3) & ((MRC(1) & (!MRC(0) & !MRC(2))) # (!MRC(1) & ((MRC(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(1),
	datac => MRC(2),
	datad => MRC(3),
	combout => \MicroCode|Mux11~0_combout\);

-- Location: LCCOMB_X17_Y6_N30
\MicroCode|Mux56~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux56~5_combout\ = (\MicroCode|Mux56~4_combout\ & ((\MicroCode|Mux11~0_combout\) # ((!\MicroCode|Mux56~3_combout\)))) # (!\MicroCode|Mux56~4_combout\ & (((\MicroCode|Mux56~3_combout\ & \MicroCode|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux56~4_combout\,
	datab => \MicroCode|Mux11~0_combout\,
	datac => \MicroCode|Mux56~3_combout\,
	datad => \MicroCode|Mux10~0_combout\,
	combout => \MicroCode|Mux56~5_combout\);

-- Location: LCCOMB_X18_Y6_N30
\MicroCode|Mux56~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux56~6_combout\ = (\MicroCode|Mux56~0_combout\ & (\MicroCode|Mux56~5_combout\ & ((\MicroCode|Mux56~3_combout\) # (\MicroCode|Mux56~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux56~0_combout\,
	datab => \MicroCode|Mux56~3_combout\,
	datac => \MicroCode|Mux56~2_combout\,
	datad => \MicroCode|Mux56~5_combout\,
	combout => \MicroCode|Mux56~6_combout\);

-- Location: FF_X18_Y6_N31
\MicroCode|Set_D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux56~6_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Set_D\(2));

-- Location: LCCOMB_X23_Y8_N24
\Mux120~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~2_combout\ = (\MicroCode|Set_D\(2) & ((\MicroCode|Set_D\(3)) # (\MicroCode|Set_D\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(3),
	datac => \MicroCode|Set_D\(2),
	datad => \MicroCode|Set_D\(4),
	combout => \Mux120~2_combout\);

-- Location: LCCOMB_X22_Y8_N4
\Mux120~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~3_combout\ = (\MicroCode|Set_D\(4) & (((\Mux130~16_combout\ & !\MicroCode|Set_D\(1))) # (!\Mux120~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux130~16_combout\,
	datab => \MicroCode|Set_D\(1),
	datac => \MicroCode|Set_D\(4),
	datad => \Mux120~2_combout\,
	combout => \Mux120~3_combout\);

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

-- Location: LCCOMB_X16_Y4_N18
\EIR~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~57_combout\ = (!\process_2~1_combout\ & (((AIE(1) & !AIE(0))) # (!\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AIE(1),
	datab => \process_2~1_combout\,
	datac => AIE(0),
	datad => \LessThan0~4_combout\,
	combout => \EIR~57_combout\);

-- Location: LCCOMB_X16_Y4_N26
\EIR~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~78_combout\ = (!\EIR~57_combout\ & ((\CIR~q\) # ((!\process_2~0_combout\) # (!\Data[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CIR~q\,
	datab => \Data[15]~input_o\,
	datac => \process_2~0_combout\,
	datad => \EIR~57_combout\,
	combout => \EIR~78_combout\);

-- Location: LCCOMB_X16_Y7_N2
\EIR[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[0]~63_combout\ = ((!\LessThan0~3_combout\ & ((MRC(3)) # (!\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # (!\IR~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \IR~0_combout\,
	datac => MRC(3),
	datad => \LessThan0~3_combout\,
	combout => \EIR[0]~63_combout\);

-- Location: LCCOMB_X16_Y7_N20
\EIR[0]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[0]~43_combout\ = (\CIR~0_combout\ & ((\process_2~1_combout\ & (\EIR[0]~36_combout\)) # (!\process_2~1_combout\ & ((\EIR[0]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \EIR[0]~36_combout\,
	datac => \CIR~0_combout\,
	datad => \EIR[0]~63_combout\,
	combout => \EIR[0]~43_combout\);

-- Location: FF_X16_Y4_N27
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

-- Location: LCCOMB_X16_Y7_N22
\EIR~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~54_combout\ = (\process_2~1_combout\ & (((!\Data[15]~input_o\)))) # (!\process_2~1_combout\ & ((\LessThan0~0_combout\) # ((\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Data[15]~input_o\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~54_combout\);

-- Location: LCCOMB_X16_Y4_N10
\EIR[16]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[16]~38_combout\ = (\CIR~0_combout\ & ((\CIR~q\) # ((!\IC~0_combout\) # (!\process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CIR~q\,
	datab => \CIR~0_combout\,
	datac => \process_2~0_combout\,
	datad => \IC~0_combout\,
	combout => \EIR[16]~38_combout\);

-- Location: LCCOMB_X14_Y7_N26
\EIR[24]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[24]~41_combout\ = (\EIR[16]~38_combout\ & ((\process_2~1_combout\) # ((!\LessThan0~0_combout\ & !\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EIR[16]~38_combout\,
	datab => \LessThan0~0_combout\,
	datac => \process_2~1_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR[24]~41_combout\);

-- Location: FF_X14_Y7_N17
\EIR[31]\ : dffeas
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
	ena => \EIR[24]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(31));

-- Location: LCCOMB_X16_Y9_N14
\MicroCode|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux62~0_combout\ = (MRC(3) & ((MRC(1)))) # (!MRC(3) & (MRC(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(3),
	datac => MRC(2),
	datad => MRC(1),
	combout => \MicroCode|Mux62~0_combout\);

-- Location: LCCOMB_X17_Y9_N14
\MicroCode|Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux62~1_combout\ = (MRC(1) & (((MRC(0) & !\MicroCode|Mux62~0_combout\)))) # (!MRC(1) & (\MicroCode|Mux62~0_combout\ & (IR(2) $ (!MRC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(1),
	datab => IR(2),
	datac => MRC(0),
	datad => \MicroCode|Mux62~0_combout\,
	combout => \MicroCode|Mux62~1_combout\);

-- Location: LCCOMB_X17_Y6_N0
\MicroCode|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux63~0_combout\ = (\MicroCode|Mux56~0_combout\ & (!IR(7) & (IR(2) $ (IR(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => \MicroCode|Mux56~0_combout\,
	datac => IR(7),
	datad => IR(1),
	combout => \MicroCode|Mux63~0_combout\);

-- Location: LCCOMB_X16_Y9_N26
\MicroCode|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux23~0_combout\ = (!MRC(3) & (MRC(0) & (MRC(2) & !MRC(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(3),
	datab => MRC(0),
	datac => MRC(2),
	datad => MRC(1),
	combout => \MicroCode|Mux23~0_combout\);

-- Location: LCCOMB_X16_Y6_N6
\MicroCode|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux6~0_combout\ = (MRC(0) & (MRC(1) & (!MRC(2) & !MRC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(1),
	datac => MRC(2),
	datad => MRC(3),
	combout => \MicroCode|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y6_N16
\MicroCode|Mux62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux62~2_combout\ = (IR(2) & (\MicroCode|Mux23~0_combout\)) # (!IR(2) & ((\MicroCode|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Mux23~0_combout\,
	datac => IR(2),
	datad => \MicroCode|Mux6~0_combout\,
	combout => \MicroCode|Mux62~2_combout\);

-- Location: LCCOMB_X21_Y6_N26
\MicroCode|Mux62~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux62~3_combout\ = (\MicroCode|Mux63~0_combout\ & ((IR(0) & (\MicroCode|Mux62~1_combout\)) # (!IR(0) & ((\MicroCode|Mux62~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux62~1_combout\,
	datab => \MicroCode|Mux63~0_combout\,
	datac => IR(0),
	datad => \MicroCode|Mux62~2_combout\,
	combout => \MicroCode|Mux62~3_combout\);

-- Location: FF_X21_Y6_N27
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

-- Location: LCCOMB_X17_Y6_N10
\MicroCode|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux61~0_combout\ = (IR(0) & IR(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => IR(0),
	datad => IR(2),
	combout => \MicroCode|Mux61~0_combout\);

-- Location: LCCOMB_X17_Y6_N24
\MicroCode|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux61~1_combout\ = (!IR(1) & (\MicroCode|Mux61~0_combout\ & (!IR(7) & \MicroCode|Mux56~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => \MicroCode|Mux61~0_combout\,
	datac => IR(7),
	datad => \MicroCode|Mux56~0_combout\,
	combout => \MicroCode|Mux61~1_combout\);

-- Location: LCCOMB_X18_Y6_N16
\MicroCode|Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux61~2_combout\ = (\MicroCode|Mux23~0_combout\ & \MicroCode|Mux61~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Mux23~0_combout\,
	datad => \MicroCode|Mux61~1_combout\,
	combout => \MicroCode|Mux61~2_combout\);

-- Location: FF_X18_Y6_N17
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

-- Location: LCCOMB_X22_Y6_N2
\MicroCode|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux59~0_combout\ = (!IR(5) & (!IR(7) & !IR(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(5),
	datab => IR(7),
	datac => IR(6),
	combout => \MicroCode|Mux59~0_combout\);

-- Location: LCCOMB_X19_Y9_N12
\MicroCode|Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux59~1_combout\ = (IR(4) & !IR(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IR(4),
	datad => IR(2),
	combout => \MicroCode|Mux59~1_combout\);

-- Location: LCCOMB_X16_Y9_N28
\MicroCode|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Add1~0_combout\ = \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (((\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\) # ((\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\) # 
-- (\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\,
	datab => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\,
	datad => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\,
	combout => \MicroCode|Add1~0_combout\);

-- Location: LCCOMB_X14_Y8_N2
\MicroCode|Mux76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux76~1_combout\ = (IC(0) & (((!\MicroCode|LIC\(0)) # (!\MicroCode|LIC\(1))) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \MicroCode|LIC\(1),
	datac => \MicroCode|LIC\(0),
	datad => IC(0),
	combout => \MicroCode|Mux76~1_combout\);

-- Location: LCCOMB_X17_Y6_N2
\MicroCode|Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux76~0_combout\ = (!IR(1) & (\MicroCode|Mux61~3_combout\ & (!IR(0) & IR(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => \MicroCode|Mux61~3_combout\,
	datac => IR(0),
	datad => IR(2),
	combout => \MicroCode|Mux76~0_combout\);

-- Location: LCCOMB_X16_Y9_N22
\MicroCode|Mux76~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux76~2_combout\ = (IC(1) & (\MicroCode|Mux8~0_combout\ & ((\MicroCode|Mux76~0_combout\)))) # (!IC(1) & (((\MicroCode|Mux8~0_combout\ & \MicroCode|Mux76~0_combout\)) # (!\MicroCode|Mux76~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IC(1),
	datab => \MicroCode|Mux8~0_combout\,
	datac => \MicroCode|Mux76~1_combout\,
	datad => \MicroCode|Mux76~0_combout\,
	combout => \MicroCode|Mux76~2_combout\);

-- Location: LCCOMB_X16_Y9_N8
\MicroCode|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Add1~1_combout\ = \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\ $ (((\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\) # (\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\,
	datac => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\,
	datad => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\,
	combout => \MicroCode|Add1~1_combout\);

-- Location: LCCOMB_X16_Y9_N18
\MicroCode|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|LessThan2~0_combout\ = (MRC(0) & (!MRC(1) & (\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\ $ (!\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\)))) # (!MRC(0) & ((\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\ & (!MRC(1))) # 
-- (!\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\ & ((!\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(1),
	datac => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\,
	datad => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\,
	combout => \MicroCode|LessThan2~0_combout\);

-- Location: LCCOMB_X16_Y9_N10
\MicroCode|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|LessThan2~1_combout\ = (MRC(2) & (!\MicroCode|Add1~1_combout\ & \MicroCode|LessThan2~0_combout\)) # (!MRC(2) & ((\MicroCode|LessThan2~0_combout\) # (!\MicroCode|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(2),
	datac => \MicroCode|Add1~1_combout\,
	datad => \MicroCode|LessThan2~0_combout\,
	combout => \MicroCode|LessThan2~1_combout\);

-- Location: LCCOMB_X16_Y9_N30
\MicroCode|Mux76~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux76~3_combout\ = (\MicroCode|Mux76~2_combout\) # ((MRC(3) & ((\MicroCode|Add1~0_combout\) # (!\MicroCode|LessThan2~1_combout\))) # (!MRC(3) & (\MicroCode|Add1~0_combout\ & !\MicroCode|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(3),
	datab => \MicroCode|Add1~0_combout\,
	datac => \MicroCode|Mux76~2_combout\,
	datad => \MicroCode|LessThan2~1_combout\,
	combout => \MicroCode|Mux76~3_combout\);

-- Location: FF_X16_Y9_N31
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

-- Location: LCCOMB_X19_Y8_N8
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

-- Location: LCCOMB_X16_Y9_N2
\MicroCode|Mux66~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux66~5_combout\ = (\MicroCode|Mux34~0_combout\ & IR(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Mux34~0_combout\,
	datad => IR(0),
	combout => \MicroCode|Mux66~5_combout\);

-- Location: LCCOMB_X17_Y9_N20
\MicroCode|Set_A[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Set_A[3]~0_combout\ = (IR(2) & (!IR(3) & ((IR(1)) # (IR(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => IR(2),
	datac => IR(3),
	datad => IR(0),
	combout => \MicroCode|Set_A[3]~0_combout\);

-- Location: LCCOMB_X16_Y9_N16
\MicroCode|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux21~0_combout\ = (!MRC(3) & ((MRC(0) & (!MRC(2))) # (!MRC(0) & (MRC(2) & MRC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(3),
	datab => MRC(0),
	datac => MRC(2),
	datad => MRC(1),
	combout => \MicroCode|Mux21~0_combout\);

-- Location: LCCOMB_X17_Y7_N8
\MicroCode|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux34~1_combout\ = (MRC(0) & (!MRC(3) & !MRC(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(3),
	datad => MRC(2),
	combout => \MicroCode|Mux34~1_combout\);

-- Location: LCCOMB_X17_Y7_N6
\MicroCode|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux60~0_combout\ = (IR(0) & ((IR(3) & (\MicroCode|Mux34~1_combout\)) # (!IR(3) & ((\MicroCode|Mux17~0_combout\))))) # (!IR(0) & (((\MicroCode|Mux34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => IR(3),
	datac => \MicroCode|Mux34~1_combout\,
	datad => \MicroCode|Mux17~0_combout\,
	combout => \MicroCode|Mux60~0_combout\);

-- Location: LCCOMB_X17_Y7_N0
\MicroCode|Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux60~1_combout\ = (IR(3) & (((\MicroCode|Mux60~0_combout\)))) # (!IR(3) & (IR(1) & ((IR(2)) # (\MicroCode|Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => IR(3),
	datac => IR(2),
	datad => \MicroCode|Mux60~0_combout\,
	combout => \MicroCode|Mux60~1_combout\);

-- Location: LCCOMB_X17_Y6_N26
\MicroCode|Mux77~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux77~2_combout\ = (MRC(0) & (!MRC(3) & (!MRC(2) & \MicroCode|Mux61~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(3),
	datac => MRC(2),
	datad => \MicroCode|Mux61~1_combout\,
	combout => \MicroCode|Mux77~2_combout\);

-- Location: FF_X18_Y6_N21
\MicroCode|Aa_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	asdata => \MicroCode|Mux77~2_combout\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Aa_in~q\);

-- Location: LCCOMB_X17_Y6_N12
\MicroCode|Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux75~0_combout\ = (\MicroCode|Mux6~0_combout\ & \MicroCode|Mux76~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux6~0_combout\,
	datad => \MicroCode|Mux76~0_combout\,
	combout => \MicroCode|Mux75~0_combout\);

-- Location: FF_X17_Y6_N13
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

-- Location: LCCOMB_X22_Y6_N26
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

-- Location: FF_X24_Y5_N3
\Z[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux115~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(15));

-- Location: LCCOMB_X24_Y7_N30
\Mux115~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~5_combout\ = (\MicroCode|Set_D\(0) & (!\MicroCode|Set_D\(1) & Z(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(0),
	datac => \MicroCode|Set_D\(1),
	datad => Z(15),
	combout => \Mux115~5_combout\);

-- Location: LCCOMB_X18_Y6_N28
\Mux126~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~18_combout\ = (\MicroCode|Set_D\(2)) # (\MicroCode|Set_D\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_D\(2),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux126~18_combout\);

-- Location: LCCOMB_X21_Y6_N8
\MicroCode|Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux78~0_combout\ = (\MicroCode|Mux34~0_combout\ & \MicroCode|Mux61~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux34~0_combout\,
	datad => \MicroCode|Mux61~1_combout\,
	combout => \MicroCode|Mux78~0_combout\);

-- Location: FF_X21_Y6_N9
\MicroCode|Bs_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux78~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Bs_in~q\);

-- Location: LCCOMB_X23_Y9_N18
\AB~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~45_combout\ = (\Mux120~3_combout\ & (((!\Mux115~11_combout\) # (!\Mux115~3_combout\)) # (!\MicroCode|Set_D\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~3_combout\,
	datab => \MicroCode|Set_D\(1),
	datac => \Mux115~3_combout\,
	datad => \Mux115~11_combout\,
	combout => \AB~45_combout\);

-- Location: LCCOMB_X23_Y9_N22
\AB~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~36_combout\ = (!\MicroCode|Bs_in~q\ & ((\Mux115~11_combout\ & ((!\AB~45_combout\))) # (!\Mux115~11_combout\ & (\Data[15]~input_o\ & \AB~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux115~11_combout\,
	datab => \MicroCode|Bs_in~q\,
	datac => \Data[15]~input_o\,
	datad => \AB~45_combout\,
	combout => \AB~36_combout\);

-- Location: LCCOMB_X21_Y6_N2
\MicroCode|Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux68~0_combout\ = (IR(2) & (((!IR(0) & \MicroCode|Mux23~0_combout\)))) # (!IR(2) & (\MicroCode|Mux8~0_combout\ & (IR(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux8~0_combout\,
	datab => IR(2),
	datac => IR(0),
	datad => \MicroCode|Mux23~0_combout\,
	combout => \MicroCode|Mux68~0_combout\);

-- Location: LCCOMB_X21_Y6_N6
\MicroCode|Mux68~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux68~1_combout\ = (\MicroCode|Mux63~0_combout\ & \MicroCode|Mux68~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Mux63~0_combout\,
	datad => \MicroCode|Mux68~0_combout\,
	combout => \MicroCode|Mux68~1_combout\);

-- Location: FF_X21_Y6_N7
\MicroCode|Bd_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux68~1_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Bd_in~q\);

-- Location: LCCOMB_X22_Y6_N8
\AB[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[24]~11_combout\ = (\Enable~input_o\ & ((\MicroCode|Bd_in~q\) # (\MicroCode|Bs_in~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datac => \MicroCode|Bd_in~q\,
	datad => \MicroCode|Bs_in~q\,
	combout => \AB[24]~11_combout\);

-- Location: FF_X23_Y9_N23
\AB[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~36_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(39));

-- Location: LCCOMB_X22_Y9_N26
\Mux120~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~5_combout\ = (\MicroCode|Set_D\(3)) # ((\MicroCode|Set_D\(0) & !\MicroCode|Set_D\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(2),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux120~5_combout\);

-- Location: LCCOMB_X22_Y9_N16
\Mux120~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~4_combout\ = (\MicroCode|Set_D\(3) & (((\MicroCode|Set_D\(1) & !\MicroCode|Set_D\(0))))) # (!\MicroCode|Set_D\(3) & (\MicroCode|Set_D\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(2),
	datac => \MicroCode|Set_D\(1),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux120~4_combout\);

-- Location: LCCOMB_X17_Y6_N8
\MicroCode|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux74~0_combout\ = (\MicroCode|Mux7~0_combout\ & \MicroCode|Mux76~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux7~0_combout\,
	datad => \MicroCode|Mux76~0_combout\,
	combout => \MicroCode|Mux74~0_combout\);

-- Location: FF_X17_Y6_N9
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

-- Location: LCCOMB_X19_Y6_N6
\Y[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[8]~0_combout\ = (\Enable~input_o\ & \MicroCode|Y_in~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Enable~input_o\,
	datad => \MicroCode|Y_in~q\,
	combout => \Y[8]~0_combout\);

-- Location: FF_X24_Y7_N27
\Y[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux115~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(15));

-- Location: LCCOMB_X17_Y7_N10
\MicroCode|Mux65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux65~0_combout\ = (!IR(0) & ((IR(2) & ((\MicroCode|Mux34~0_combout\))) # (!IR(2) & (\MicroCode|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => IR(0),
	datac => \MicroCode|Mux7~0_combout\,
	datad => \MicroCode|Mux34~0_combout\,
	combout => \MicroCode|Mux65~0_combout\);

-- Location: LCCOMB_X17_Y7_N20
\MicroCode|Mux65~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux65~1_combout\ = (\MicroCode|Mux63~0_combout\ & ((\MicroCode|Mux65~0_combout\) # ((\MicroCode|Mux61~0_combout\ & \MicroCode|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux61~0_combout\,
	datab => \MicroCode|Mux63~0_combout\,
	datac => \MicroCode|Mux31~0_combout\,
	datad => \MicroCode|Mux65~0_combout\,
	combout => \MicroCode|Mux65~1_combout\);

-- Location: FF_X17_Y7_N21
\MicroCode|X_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux65~1_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|X_in~q\);

-- Location: LCCOMB_X28_Y7_N12
\X[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \X[8]~0_combout\ = (\MicroCode|X_in~q\ & \Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|X_in~q\,
	datad => \Enable~input_o\,
	combout => \X[8]~0_combout\);

-- Location: FF_X24_Y7_N25
\X[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux115~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(15));

-- Location: LCCOMB_X13_Y7_N20
\IR~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~16_combout\ = (\Data[15]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \IR~0_combout\,
	datac => \Data[15]~input_o\,
	datad => \MPI~q\,
	combout => \IR~16_combout\);

-- Location: FF_X13_Y7_N21
\IR[15]\ : dffeas
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
	q => IR(15));

-- Location: LCCOMB_X21_Y6_N0
\MicroCode|ALUOp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|ALUOp[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \MicroCode|ALUOp[1]~feeder_combout\);

-- Location: LCCOMB_X16_Y6_N24
\MicroCode|ALUOp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|ALUOp[0]~0_combout\ = (MRC(0)) # ((MRC(3)) # (MRC(1) $ (!MRC(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(1),
	datac => MRC(2),
	datad => MRC(3),
	combout => \MicroCode|ALUOp[0]~0_combout\);

-- Location: LCCOMB_X16_Y6_N18
\MicroCode|ALUOp[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|ALUOp[0]~1_combout\ = (IR(2) & ((\MicroCode|ALUOp[0]~0_combout\))) # (!IR(2) & (!\MicroCode|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Mux8~0_combout\,
	datac => IR(2),
	datad => \MicroCode|ALUOp[0]~0_combout\,
	combout => \MicroCode|ALUOp[0]~1_combout\);

-- Location: LCCOMB_X21_Y6_N30
\MicroCode|ALUOp[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|ALUOp[0]~2_combout\ = (IR(0) & (\MicroCode|Mux63~0_combout\ & !\MicroCode|ALUOp[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datac => \MicroCode|Mux63~0_combout\,
	datad => \MicroCode|ALUOp[0]~1_combout\,
	combout => \MicroCode|ALUOp[0]~2_combout\);

-- Location: FF_X21_Y6_N1
\MicroCode|ALUOp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|ALUOp[1]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \MicroCode|ALUOp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|ALUOp\(1));

-- Location: LCCOMB_X24_Y7_N28
\Mux115~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~6_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|ADC_Q[15]~22_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(15)) # ((AB(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(15),
	datab => AB(39),
	datac => \MicroCode|ALUOp\(1),
	datad => \ArithmeticLogicUnit|ADC_Q[15]~22_combout\,
	combout => \Mux115~6_combout\);

-- Location: LCCOMB_X24_Y7_N22
\Mux115~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~7_combout\ = (\MicroCode|Set_D\(0) & ((IR(15)) # ((\MicroCode|Set_D\(1))))) # (!\MicroCode|Set_D\(0) & (((!\MicroCode|Set_D\(1) & \Mux115~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(15),
	datab => \MicroCode|Set_D\(0),
	datac => \MicroCode|Set_D\(1),
	datad => \Mux115~6_combout\,
	combout => \Mux115~7_combout\);

-- Location: LCCOMB_X24_Y7_N24
\Mux115~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~8_combout\ = (\MicroCode|Set_D\(1) & ((\Mux115~7_combout\ & ((X(15)))) # (!\Mux115~7_combout\ & (PC(15))))) # (!\MicroCode|Set_D\(1) & (((\Mux115~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(15),
	datab => \MicroCode|Set_D\(1),
	datac => X(15),
	datad => \Mux115~7_combout\,
	combout => \Mux115~8_combout\);

-- Location: LCCOMB_X24_Y7_N26
\Mux115~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~9_combout\ = (\Mux120~5_combout\ & (\Mux120~4_combout\ & (Y(15)))) # (!\Mux120~5_combout\ & (((\Mux115~8_combout\)) # (!\Mux120~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~5_combout\,
	datab => \Mux120~4_combout\,
	datac => Y(15),
	datad => \Mux115~8_combout\,
	combout => \Mux115~9_combout\);

-- Location: LCCOMB_X23_Y9_N10
\Mux115~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~10_combout\ = (\Mux126~18_combout\ & (((\Mux115~9_combout\)))) # (!\Mux126~18_combout\ & ((\Mux115~9_combout\ & (AB(15))) # (!\Mux115~9_combout\ & ((AB(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~18_combout\,
	datab => AB(15),
	datac => AB(39),
	datad => \Mux115~9_combout\,
	combout => \Mux115~10_combout\);

-- Location: LCCOMB_X23_Y9_N20
\Mux115~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~13_combout\ = (\Mux115~10_combout\ & ((\MicroCode|Set_D\(2)) # ((\MicroCode|Set_D\(1)) # (\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \MicroCode|Set_D\(1),
	datac => \MicroCode|Set_D\(3),
	datad => \Mux115~10_combout\,
	combout => \Mux115~13_combout\);

-- Location: LCCOMB_X23_Y9_N0
\Mux115~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~11_combout\ = (\Mux120~2_combout\ & (!\MicroCode|Set_D\(4) & (\Mux115~5_combout\))) # (!\Mux120~2_combout\ & ((\MicroCode|Set_D\(4)) # ((\Mux115~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~2_combout\,
	datab => \MicroCode|Set_D\(4),
	datac => \Mux115~5_combout\,
	datad => \Mux115~13_combout\,
	combout => \Mux115~11_combout\);

-- Location: LCCOMB_X23_Y9_N30
\AB~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~34_combout\ = (\Mux120~3_combout\ & ((\Mux115~11_combout\ & (\Mux115~4_combout\)) # (!\Mux115~11_combout\ & ((\Data[15]~input_o\))))) # (!\Mux120~3_combout\ & (((\Mux115~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~3_combout\,
	datab => \Mux115~4_combout\,
	datac => \Data[15]~input_o\,
	datad => \Mux115~11_combout\,
	combout => \AB~34_combout\);

-- Location: LCCOMB_X23_Y9_N8
\AB~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~35_combout\ = (\MicroCode|Aa_in~q\ & ((\Mux139~7_combout\))) # (!\MicroCode|Aa_in~q\ & (\AB~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Aa_in~q\,
	datac => \AB~34_combout\,
	datad => \Mux139~7_combout\,
	combout => \AB~35_combout\);

-- Location: LCCOMB_X17_Y6_N16
\MicroCode|Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux67~0_combout\ = (IR(0) & (\MicroCode|Mux7~0_combout\ & ((!IR(2))))) # (!IR(0) & (((\MicroCode|Mux8~0_combout\ & IR(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux7~0_combout\,
	datab => IR(0),
	datac => \MicroCode|Mux8~0_combout\,
	datad => IR(2),
	combout => \MicroCode|Mux67~0_combout\);

-- Location: LCCOMB_X21_Y6_N24
\MicroCode|Mux67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux67~1_combout\ = (\MicroCode|Mux63~0_combout\ & \MicroCode|Mux67~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Mux63~0_combout\,
	datac => \MicroCode|Mux67~0_combout\,
	combout => \MicroCode|Mux67~1_combout\);

-- Location: FF_X21_Y6_N25
\MicroCode|Ad_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux67~1_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Ad_in~q\);

-- Location: LCCOMB_X21_Y7_N4
\AB[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[0]~12_combout\ = (\Enable~input_o\ & ((\MicroCode|Aa_in~q\) # (\MicroCode|Ad_in~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Aa_in~q\,
	datab => \Enable~input_o\,
	datad => \MicroCode|Ad_in~q\,
	combout => \AB[0]~12_combout\);

-- Location: FF_X23_Y9_N9
\AB[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~35_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(15));

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

-- Location: LCCOMB_X16_Y7_N26
\EIR~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~52_combout\ = (\process_2~1_combout\ & (((!\Data[14]~input_o\)))) # (!\process_2~1_combout\ & ((\LessThan0~0_combout\) # ((\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Data[14]~input_o\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~52_combout\);

-- Location: FF_X14_Y7_N1
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

-- Location: FF_X14_Y7_N7
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

-- Location: LCCOMB_X21_Y6_N14
\MicroCode|Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux80~0_combout\ = (\MicroCode|Mux8~0_combout\ & \MicroCode|Mux61~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux8~0_combout\,
	datad => \MicroCode|Mux61~1_combout\,
	combout => \MicroCode|Mux80~0_combout\);

-- Location: FF_X21_Y6_N15
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

-- Location: LCCOMB_X22_Y6_N12
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

-- Location: FF_X21_Y7_N17
\DI[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux140~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(14));

-- Location: LCCOMB_X17_Y7_N22
\MicroCode|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux63~1_combout\ = (!IR(0) & ((IR(2) & (\MicroCode|Mux23~0_combout\)) # (!IR(2) & ((\MicroCode|Mux34~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => \MicroCode|Mux23~0_combout\,
	datac => \MicroCode|Mux34~1_combout\,
	datad => IR(0),
	combout => \MicroCode|Mux63~1_combout\);

-- Location: LCCOMB_X17_Y7_N28
\MicroCode|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux30~0_combout\ = (MRC(2) & (!MRC(3) & (MRC(0) $ (MRC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => MRC(2),
	datac => MRC(1),
	datad => MRC(3),
	combout => \MicroCode|Mux30~0_combout\);

-- Location: LCCOMB_X17_Y7_N18
\MicroCode|Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux63~2_combout\ = (IR(0) & ((IR(2) & ((\MicroCode|Mux30~0_combout\))) # (!IR(2) & (\MicroCode|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux17~0_combout\,
	datab => \MicroCode|Mux30~0_combout\,
	datac => IR(2),
	datad => IR(0),
	combout => \MicroCode|Mux63~2_combout\);

-- Location: LCCOMB_X17_Y7_N4
\MicroCode|Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux63~3_combout\ = (\MicroCode|Mux63~0_combout\ & ((\MicroCode|Mux63~1_combout\) # (\MicroCode|Mux63~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Mux63~0_combout\,
	datac => \MicroCode|Mux63~1_combout\,
	datad => \MicroCode|Mux63~2_combout\,
	combout => \MicroCode|Mux63~3_combout\);

-- Location: FF_X17_Y7_N5
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

-- Location: LCCOMB_X24_Y9_N20
\Address~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~31_combout\ = (\MicroCode|AE~q\ & ((\Mux140~7_combout\))) # (!\MicroCode|AE~q\ & (PC(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(14),
	datab => \MicroCode|AE~q\,
	datad => \Mux140~7_combout\,
	combout => \Address~31_combout\);

-- Location: LCCOMB_X17_Y7_N26
\Address[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[0]~13_combout\ = (MRC(1) & (\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\ & (MRC(2) $ (!\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\)))) # (!MRC(1) & (!\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\ & (MRC(2) $ 
-- (!\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(1),
	datab => MRC(2),
	datac => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a1\,
	datad => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a2\,
	combout => \Address[0]~13_combout\);

-- Location: LCCOMB_X17_Y7_N16
\Address[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[0]~14_combout\ = (\Address[0]~13_combout\ & (!\LessThan0~2_combout\ & (MRC(0) $ (!\MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(0),
	datab => \MicroCode|Mux48_rtl_0|auto_generated|ram_block1a3\,
	datac => \Address[0]~13_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Address[0]~14_combout\);

-- Location: LCCOMB_X17_Y7_N30
\Address[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[0]~15_combout\ = (\Enable~input_o\ & ((\Equal0~0_combout\) # ((\MicroCode|AE~q\) # (\Address[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \MicroCode|AE~q\,
	datac => \Enable~input_o\,
	datad => \Address[0]~14_combout\,
	combout => \Address[0]~15_combout\);

-- Location: FF_X24_Y9_N21
\Address[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~31_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[14]~reg0_q\);

-- Location: LCCOMB_X17_Y5_N8
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

-- Location: LCCOMB_X16_Y4_N16
\EIR[39]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[39]~55_combout\ = (IC(0)) # (!IC(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IC(0),
	datad => IC(1),
	combout => \EIR[39]~55_combout\);

-- Location: LCCOMB_X16_Y7_N24
\EIR[32]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[32]~56_combout\ = (\CIR~0_combout\ & ((\process_2~1_combout\ & (!\EIR[39]~55_combout\)) # (!\process_2~1_combout\ & ((!\LessThan0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \EIR[39]~55_combout\,
	datac => \CIR~0_combout\,
	datad => \LessThan0~4_combout\,
	combout => \EIR[32]~56_combout\);

-- Location: FF_X17_Y5_N9
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

-- Location: LCCOMB_X14_Y7_N6
\Mux140~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux140~0_combout\ = (\MicroCode|Set_A\(1) & (((\MicroCode|Set_A\(0))))) # (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0) & (!EIR(38))) # (!\MicroCode|Set_A\(0) & ((!EIR(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(38),
	datab => \MicroCode|Set_A\(1),
	datac => EIR(14),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux140~0_combout\);

-- Location: LCCOMB_X14_Y7_N24
\Mux140~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux140~1_combout\ = (\MicroCode|Set_A\(1) & ((\Mux140~0_combout\ & ((\Address[14]~reg0_q\))) # (!\Mux140~0_combout\ & (!EIR(30))))) # (!\MicroCode|Set_A\(1) & (((\Mux140~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => EIR(30),
	datac => \Address[14]~reg0_q\,
	datad => \Mux140~0_combout\,
	combout => \Mux140~1_combout\);

-- Location: LCCOMB_X21_Y7_N10
\Mux140~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux140~5_combout\ = (SI(14) & \MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SI(14),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux140~5_combout\);

-- Location: LCCOMB_X17_Y5_N30
\Mux152~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~4_combout\ = (\MicroCode|Set_A\(2) & ((\MicroCode|Set_A\(1)) # (\MicroCode|Set_A\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datac => \MicroCode|Set_A\(1),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux152~4_combout\);

-- Location: LCCOMB_X23_Y6_N0
\Mux152~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~1_combout\ = (!\MicroCode|Set_A\(2) & \MicroCode|Set_A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_A\(2),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux152~1_combout\);

-- Location: LCCOMB_X23_Y9_N26
\AB~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~33_combout\ = (\MicroCode|Aa_in~q\ & ((\Mux140~7_combout\))) # (!\MicroCode|Aa_in~q\ & (\Mux116~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Aa_in~q\,
	datac => \Mux116~10_combout\,
	datad => \Mux140~7_combout\,
	combout => \AB~33_combout\);

-- Location: FF_X23_Y9_N27
\AB[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~33_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(14));

-- Location: LCCOMB_X24_Y9_N2
\Mux140~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux140~2_combout\ = (PC(14) & \MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(14),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux140~2_combout\);

-- Location: LCCOMB_X17_Y8_N8
\Mux152~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~2_combout\ = (\MicroCode|Set_A\(2) & (!\MicroCode|Set_A\(0))) # (!\MicroCode|Set_A\(2) & ((!\MicroCode|Set_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(0),
	datac => \MicroCode|Set_A\(2),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux152~2_combout\);

-- Location: LCCOMB_X21_Y8_N0
\Mux152~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~3_combout\ = (\MicroCode|Set_A\(2)) # ((\MicroCode|Set_A\(0) & \MicroCode|Set_A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datac => \MicroCode|Set_A\(1),
	datad => \MicroCode|Set_A\(2),
	combout => \Mux152~3_combout\);

-- Location: LCCOMB_X22_Y4_N16
\Mux127~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~19_combout\ = (!\MicroCode|Set_D\(2) & \MicroCode|Set_D\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(2),
	datad => \MicroCode|Set_D\(1),
	combout => \Mux127~19_combout\);

-- Location: LCCOMB_X22_Y4_N4
\Mux121~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~9_combout\ = (\MicroCode|Set_D\(2) & \MicroCode|Set_D\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(2),
	datad => \MicroCode|Set_D\(1),
	combout => \Mux121~9_combout\);

-- Location: FF_X24_Y5_N11
\X[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[13]~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(13));

-- Location: LCCOMB_X22_Y4_N10
\Mux128~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~6_combout\ = (!\MicroCode|Set_D\(3) & (!\MicroCode|Set_D\(4) & \MicroCode|Set_D\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datac => \MicroCode|Set_D\(4),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux128~6_combout\);

-- Location: LCCOMB_X22_Y4_N2
\Mux127~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~18_combout\ = (\MicroCode|Set_D\(2) & ((\MicroCode|Set_D\(0)) # (!\MicroCode|Set_D\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(2),
	datad => \MicroCode|Set_D\(1),
	combout => \Mux127~18_combout\);

-- Location: LCCOMB_X22_Y4_N28
\Mux117~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~7_combout\ = (\Mux121~9_combout\ & (((PC(13)) # (\Mux127~18_combout\)))) # (!\Mux121~9_combout\ & (\Mux128~6_combout\ & ((!\Mux127~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~6_combout\,
	datab => PC(13),
	datac => \Mux121~9_combout\,
	datad => \Mux127~18_combout\,
	combout => \Mux117~7_combout\);

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

-- Location: LCCOMB_X13_Y7_N28
\IR~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~14_combout\ = (\Data[13]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \Data[13]~input_o\,
	datac => \IR~0_combout\,
	datad => \MPI~q\,
	combout => \IR~14_combout\);

-- Location: FF_X13_Y7_N29
\IR[13]\ : dffeas
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
	q => IR(13));

-- Location: LCCOMB_X23_Y8_N28
\AB[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[13]~feeder_combout\ = \AB[13]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AB[13]~7_combout\,
	combout => \AB[13]~feeder_combout\);

-- Location: LCCOMB_X16_Y4_N8
\EIR~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~77_combout\ = (!\EIR~57_combout\ & ((\CIR~q\) # ((!\process_2~0_combout\) # (!\Data[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CIR~q\,
	datab => \Data[13]~input_o\,
	datac => \process_2~0_combout\,
	datad => \EIR~57_combout\,
	combout => \EIR~77_combout\);

-- Location: FF_X16_Y4_N9
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

-- Location: LCCOMB_X19_Y6_N18
\Mux151~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~0_combout\ = (\MicroCode|Set_A\(2) & ((\MicroCode|Set_A\(3)) # ((\MicroCode|Set_A\(1)) # (\MicroCode|Set_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => \MicroCode|Set_A\(3),
	datac => \MicroCode|Set_A\(1),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux151~0_combout\);

-- Location: LCCOMB_X18_Y4_N12
\Address~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~30_combout\ = (\MicroCode|AE~q\ & ((\Mux141~8_combout\))) # (!\MicroCode|AE~q\ & (PC(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(13),
	datac => \MicroCode|AE~q\,
	datad => \Mux141~8_combout\,
	combout => \Address~30_combout\);

-- Location: FF_X18_Y4_N13
\Address[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~30_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[13]~reg0_q\);

-- Location: LCCOMB_X18_Y7_N8
\EIR~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~51_combout\ = (\process_2~1_combout\ & (!\Data[13]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \Data[13]~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~51_combout\);

-- Location: FF_X14_Y7_N31
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

-- Location: LCCOMB_X14_Y7_N30
\Mux149~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~5_combout\ = (!EIR(29) & \MicroCode|Set_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => EIR(29),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux149~5_combout\);

-- Location: LCCOMB_X17_Y8_N6
\Mux151~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~5_combout\ = (\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(3)) # (!\MicroCode|Set_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datac => \MicroCode|Set_A\(0),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux151~5_combout\);

-- Location: LCCOMB_X17_Y5_N22
\EIR~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~60_combout\ = (\process_2~1_combout\ & (!\Data[5]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \Data[5]~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~60_combout\);

-- Location: FF_X17_Y5_N23
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

-- Location: LCCOMB_X18_Y4_N30
\Mux149~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~9_combout\ = (!EIR(37) & \MicroCode|Set_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => EIR(37),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux149~9_combout\);

-- Location: LCCOMB_X17_Y8_N24
\Mux151~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~3_combout\ = (\MicroCode|Set_A\(0) & \MicroCode|Set_A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_A\(0),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux151~3_combout\);

-- Location: LCCOMB_X17_Y6_N22
\MicroCode|Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux79~0_combout\ = (\MicroCode|Mux7~0_combout\ & \MicroCode|Mux61~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux7~0_combout\,
	datad => \MicroCode|Mux61~1_combout\,
	combout => \MicroCode|Mux79~0_combout\);

-- Location: FF_X17_Y6_N23
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

-- Location: LCCOMB_X19_Y6_N14
\SI[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SI[0]~0_combout\ = (\Enable~input_o\ & \MicroCode|SIa_in~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Enable~input_o\,
	datad => \MicroCode|SIa_in~q\,
	combout => \SI[0]~0_combout\);

-- Location: FF_X18_Y4_N5
\SI[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux141~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(13));

-- Location: LCCOMB_X18_Y4_N24
\Mux141~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux141~6_combout\ = (\Mux151~5_combout\ & (((\Mux151~3_combout\)))) # (!\Mux151~5_combout\ & ((\Mux151~3_combout\ & ((SI(13)))) # (!\Mux151~3_combout\ & (\Mux149~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux149~9_combout\,
	datab => \Mux151~5_combout\,
	datac => \Mux151~3_combout\,
	datad => SI(13),
	combout => \Mux141~6_combout\);

-- Location: LCCOMB_X18_Y4_N26
\Mux141~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux141~7_combout\ = (\Mux151~5_combout\ & ((\Mux141~6_combout\ & (\Address[13]~reg0_q\)) # (!\Mux141~6_combout\ & ((\Mux149~5_combout\))))) # (!\Mux151~5_combout\ & (((\Mux141~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[13]~reg0_q\,
	datab => \Mux149~5_combout\,
	datac => \Mux151~5_combout\,
	datad => \Mux141~6_combout\,
	combout => \Mux141~7_combout\);

-- Location: FF_X18_Y5_N23
\DI[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux141~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(13));

-- Location: LCCOMB_X18_Y4_N0
\Mux141~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux141~2_combout\ = (\MicroCode|Set_A\(3) & ((DI(13)))) # (!\MicroCode|Set_A\(3) & (PC(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(13),
	datac => DI(13),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux141~2_combout\);

-- Location: LCCOMB_X18_Y4_N14
\Mux141~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux141~3_combout\ = (\MicroCode|Set_A\(1) & (((!\MicroCode|Set_A\(0))))) # (!\MicroCode|Set_A\(1) & (\Mux141~2_combout\ & (\MicroCode|Set_A\(0) $ (\MicroCode|Set_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \Mux141~2_combout\,
	datac => \MicroCode|Set_A\(0),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux141~3_combout\);

-- Location: LCCOMB_X21_Y8_N10
\Mux141~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux141~0_combout\ = (\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0)) # (!\MicroCode|Set_A\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datac => \MicroCode|Set_A\(1),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux141~0_combout\);

-- Location: LCCOMB_X18_Y4_N2
\Mux141~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux141~1_combout\ = (AB(37) & !\MicroCode|Set_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AB(37),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux141~1_combout\);

-- Location: LCCOMB_X18_Y4_N8
\Mux141~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux141~4_combout\ = (\Mux141~3_combout\ & ((AB(13)) # ((!\Mux141~0_combout\)))) # (!\Mux141~3_combout\ & (((\Mux141~0_combout\ & \Mux141~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(13),
	datab => \Mux141~3_combout\,
	datac => \Mux141~0_combout\,
	datad => \Mux141~1_combout\,
	combout => \Mux141~4_combout\);

-- Location: LCCOMB_X18_Y4_N10
\Mux141~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux141~5_combout\ = (\Mux151~2_combout\ & ((\Mux151~0_combout\) # ((\Mux141~4_combout\)))) # (!\Mux151~2_combout\ & (!\Mux151~0_combout\ & ((\ArithmeticLogicUnit|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~2_combout\,
	datab => \Mux151~0_combout\,
	datac => \Mux141~4_combout\,
	datad => \ArithmeticLogicUnit|Mux10~0_combout\,
	combout => \Mux141~5_combout\);

-- Location: LCCOMB_X18_Y4_N16
\Mux141~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux141~8_combout\ = (\Mux151~0_combout\ & ((\Mux141~5_combout\ & ((\Mux141~7_combout\))) # (!\Mux141~5_combout\ & (!EIR(13))))) # (!\Mux151~0_combout\ & (((\Mux141~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(13),
	datab => \Mux151~0_combout\,
	datac => \Mux141~7_combout\,
	datad => \Mux141~5_combout\,
	combout => \Mux141~8_combout\);

-- Location: FF_X23_Y8_N29
\AB[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB[13]~feeder_combout\,
	asdata => \Mux141~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|Aa_in~q\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(13));

-- Location: LCCOMB_X17_Y4_N4
\Mux118~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~15_combout\ = (\MicroCode|Set_D\(3) & (\Data[12]~input_o\ & (!\MicroCode|Set_D\(1) & !\MicroCode|Set_D\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \Data[12]~input_o\,
	datac => \MicroCode|Set_D\(1),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux118~15_combout\);

-- Location: LCCOMB_X25_Y8_N22
\Mux126~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~17_combout\ = (\MicroCode|Set_D\(4) & \MicroCode|Set_D\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(4),
	datac => \MicroCode|Set_D\(2),
	combout => \Mux126~17_combout\);

-- Location: FF_X25_Y5_N3
\Y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[12]~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(12));

-- Location: LCCOMB_X25_Y5_N2
\Mux118~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~5_combout\ = (\MicroCode|Set_D\(1) & (Y(12) & !\MicroCode|Set_D\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datac => Y(12),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux118~5_combout\);

-- Location: FF_X24_Y5_N5
\Z[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[12]~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(12));

-- Location: LCCOMB_X19_Y5_N26
\Mux118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~0_combout\ = (\MicroCode|Set_D\(3) & !\MicroCode|Set_D\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(3),
	datad => \MicroCode|Set_D\(4),
	combout => \Mux118~0_combout\);

-- Location: LCCOMB_X25_Y5_N0
\Mux118~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~1_combout\ = (\MicroCode|Set_D\(4)) # ((\MicroCode|Set_D\(2) & \MicroCode|Set_D\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(4),
	datac => \MicroCode|Set_D\(2),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux118~1_combout\);

-- Location: LCCOMB_X23_Y5_N4
\Mux118~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~2_combout\ = (\Mux118~0_combout\ & (((!\MicroCode|Set_D\(1) & \MicroCode|Set_D\(0))) # (!\Mux118~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux118~0_combout\,
	datab => \MicroCode|Set_D\(1),
	datac => \Mux118~1_combout\,
	datad => \MicroCode|Set_D\(0),
	combout => \Mux118~2_combout\);

-- Location: LCCOMB_X17_Y5_N20
\EIR~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~49_combout\ = (\process_2~1_combout\ & (!\Data[12]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \Data[12]~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~49_combout\);

-- Location: FF_X14_Y7_N15
\EIR[28]\ : dffeas
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
	ena => \EIR[24]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(28));

-- Location: FF_X17_Y5_N11
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

-- Location: LCCOMB_X16_Y7_N28
\EIR~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~50_combout\ = (\process_2~1_combout\ & (((!\Data[4]~input_o\)))) # (!\process_2~1_combout\ & ((\LessThan0~0_combout\) # ((\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Data[4]~input_o\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~50_combout\);

-- Location: FF_X16_Y7_N29
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

-- Location: LCCOMB_X17_Y5_N24
\Mux142~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux142~0_combout\ = (\MicroCode|Set_A\(0) & (((\MicroCode|Set_A\(1)) # (!EIR(36))))) # (!\MicroCode|Set_A\(0) & (!EIR(12) & (!\MicroCode|Set_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(12),
	datab => \MicroCode|Set_A\(0),
	datac => \MicroCode|Set_A\(1),
	datad => EIR(36),
	combout => \Mux142~0_combout\);

-- Location: LCCOMB_X23_Y7_N4
\Address~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~29_combout\ = (\MicroCode|AE~q\ & ((\Mux142~7_combout\))) # (!\MicroCode|AE~q\ & (PC(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|AE~q\,
	datac => PC(12),
	datad => \Mux142~7_combout\,
	combout => \Address~29_combout\);

-- Location: FF_X23_Y7_N5
\Address[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~29_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[12]~reg0_q\);

-- Location: LCCOMB_X23_Y7_N14
\Mux142~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux142~1_combout\ = (\Mux142~0_combout\ & (((\Address[12]~reg0_q\) # (!\MicroCode|Set_A\(1))))) # (!\Mux142~0_combout\ & (!EIR(28) & ((\MicroCode|Set_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(28),
	datab => \Mux142~0_combout\,
	datac => \Address[12]~reg0_q\,
	datad => \MicroCode|Set_A\(1),
	combout => \Mux142~1_combout\);

-- Location: FF_X21_Y7_N23
\SI[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux142~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(12));

-- Location: LCCOMB_X23_Y7_N8
\Mux142~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux142~5_combout\ = (SI(12) & \MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SI(12),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux142~5_combout\);

-- Location: LCCOMB_X23_Y8_N30
\AB[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[12]~feeder_combout\ = \AB[12]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AB[12]~6_combout\,
	combout => \AB[12]~feeder_combout\);

-- Location: FF_X23_Y8_N31
\AB[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB[12]~feeder_combout\,
	asdata => \Mux142~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|Aa_in~q\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(12));

-- Location: LCCOMB_X23_Y7_N22
\Mux142~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux142~2_combout\ = (PC(12) & \MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(12),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux142~2_combout\);

-- Location: LCCOMB_X17_Y5_N16
\Mux119~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~10_combout\ = (!\MicroCode|Set_D\(0) & (!\MicroCode|Set_D\(1) & (\MicroCode|Set_D\(3) & \Data[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(1),
	datac => \MicroCode|Set_D\(3),
	datad => \Data[11]~input_o\,
	combout => \Mux119~10_combout\);

-- Location: FF_X24_Y4_N11
\Y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[11]~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(11));

-- Location: LCCOMB_X24_Y4_N10
\Mux119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~0_combout\ = (!\MicroCode|Set_D\(0) & (Y(11) & \MicroCode|Set_D\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datac => Y(11),
	datad => \MicroCode|Set_D\(1),
	combout => \Mux119~0_combout\);

-- Location: FF_X24_Y5_N17
\Z[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[11]~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(11));

-- Location: LCCOMB_X16_Y4_N14
\EIR~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~76_combout\ = (!\EIR~57_combout\ & ((\CIR~q\) # ((!\process_2~0_combout\) # (!\Data[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CIR~q\,
	datab => \Data[11]~input_o\,
	datac => \process_2~0_combout\,
	datad => \EIR~57_combout\,
	combout => \EIR~76_combout\);

-- Location: FF_X16_Y4_N15
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

-- Location: LCCOMB_X23_Y5_N16
\Address~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~28_combout\ = (\MicroCode|AE~q\ & ((\Mux143~7_combout\))) # (!\MicroCode|AE~q\ & (PC(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(11),
	datac => \MicroCode|AE~q\,
	datad => \Mux143~7_combout\,
	combout => \Address~28_combout\);

-- Location: FF_X23_Y5_N17
\Address[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~28_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[11]~reg0_q\);

-- Location: FF_X19_Y5_N5
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

-- Location: LCCOMB_X16_Y7_N16
\EIR~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~48_combout\ = (\process_2~1_combout\ & (!\Data[11]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~3_combout\) # (\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \Data[11]~input_o\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~0_combout\,
	combout => \EIR~48_combout\);

-- Location: LCCOMB_X14_Y7_N2
\EIR[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[27]~feeder_combout\ = \EIR~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EIR~48_combout\,
	combout => \EIR[27]~feeder_combout\);

-- Location: FF_X14_Y7_N3
\EIR[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR[27]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[24]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(27));

-- Location: LCCOMB_X14_Y7_N0
\Mux151~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~11_combout\ = (!EIR(27) & \MicroCode|Set_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => EIR(27),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux151~11_combout\);

-- Location: LCCOMB_X16_Y6_N12
\EIR~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~59_combout\ = (\process_2~1_combout\ & (!\Data[3]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[3]~input_o\,
	datab => \LessThan0~0_combout\,
	datac => \process_2~1_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~59_combout\);

-- Location: FF_X16_Y6_N13
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

-- Location: LCCOMB_X17_Y8_N16
\Mux151~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~15_combout\ = (!EIR(35) & \MicroCode|Set_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(35),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux151~15_combout\);

-- Location: LCCOMB_X17_Y8_N18
\Mux143~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux143~5_combout\ = (\Mux151~3_combout\ & (((\Mux151~5_combout\)))) # (!\Mux151~3_combout\ & ((\Mux151~5_combout\ & (\Mux151~11_combout\)) # (!\Mux151~5_combout\ & ((\Mux151~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~11_combout\,
	datab => \Mux151~15_combout\,
	datac => \Mux151~3_combout\,
	datad => \Mux151~5_combout\,
	combout => \Mux143~5_combout\);

-- Location: LCCOMB_X23_Y5_N30
\Mux143~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux143~6_combout\ = (\Mux151~3_combout\ & ((\Mux143~5_combout\ & (\Address[11]~reg0_q\)) # (!\Mux143~5_combout\ & ((SI(11)))))) # (!\Mux151~3_combout\ & (((\Mux143~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~3_combout\,
	datab => \Address[11]~reg0_q\,
	datac => SI(11),
	datad => \Mux143~5_combout\,
	combout => \Mux143~6_combout\);

-- Location: LCCOMB_X24_Y4_N14
\AB~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~29_combout\ = (!\MicroCode|Bs_in~q\ & \AB[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Bs_in~q\,
	datac => \AB[11]~5_combout\,
	combout => \AB~29_combout\);

-- Location: FF_X24_Y4_N15
\AB[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~29_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(35));

-- Location: LCCOMB_X16_Y7_N14
\EIR~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~46_combout\ = (\process_2~1_combout\ & (((!\Data[10]~input_o\)))) # (!\process_2~1_combout\ & ((\LessThan0~0_combout\) # ((\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Data[10]~input_o\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~46_combout\);

-- Location: FF_X14_Y7_N21
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

-- Location: FF_X14_Y7_N11
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

-- Location: FF_X21_Y7_N9
\DI[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux144~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(10));

-- Location: LCCOMB_X23_Y8_N26
\Address~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~27_combout\ = (\MicroCode|AE~q\ & ((\Mux144~7_combout\))) # (!\MicroCode|AE~q\ & (PC(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|AE~q\,
	datac => PC(10),
	datad => \Mux144~7_combout\,
	combout => \Address~27_combout\);

-- Location: FF_X23_Y8_N27
\Address[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~27_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[10]~reg0_q\);

-- Location: LCCOMB_X18_Y7_N22
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

-- Location: FF_X18_Y7_N23
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

-- Location: LCCOMB_X14_Y7_N10
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

-- Location: LCCOMB_X14_Y7_N8
\Mux144~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux144~1_combout\ = (\MicroCode|Set_A\(1) & ((\Mux144~0_combout\ & ((\Address[10]~reg0_q\))) # (!\Mux144~0_combout\ & (!EIR(26))))) # (!\MicroCode|Set_A\(1) & (((\Mux144~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => EIR(26),
	datac => \Address[10]~reg0_q\,
	datad => \Mux144~0_combout\,
	combout => \Mux144~1_combout\);

-- Location: LCCOMB_X21_Y7_N2
\Mux144~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux144~5_combout\ = (SI(10) & \MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SI(10),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux144~5_combout\);

-- Location: LCCOMB_X25_Y8_N0
\AB~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~27_combout\ = (!\MicroCode|Bs_in~q\ & \Mux120~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Bs_in~q\,
	datad => \Mux120~16_combout\,
	combout => \AB~27_combout\);

-- Location: FF_X25_Y8_N1
\AB[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~27_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(34));

-- Location: LCCOMB_X23_Y8_N12
\Mux144~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux144~2_combout\ = (\MicroCode|Set_A\(0) & PC(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_A\(0),
	datad => PC(10),
	combout => \Mux144~2_combout\);

-- Location: LCCOMB_X21_Y8_N20
\AB[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[9]~feeder_combout\ = \AB[9]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AB[9]~4_combout\,
	combout => \AB[9]~feeder_combout\);

-- Location: LCCOMB_X17_Y7_N2
\Address~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~26_combout\ = (\MicroCode|AE~q\ & (\Mux145~7_combout\)) # (!\MicroCode|AE~q\ & ((PC(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|AE~q\,
	datac => \Mux145~7_combout\,
	datad => PC(9),
	combout => \Address~26_combout\);

-- Location: FF_X17_Y7_N3
\Address[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~26_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[9]~reg0_q\);

-- Location: FF_X18_Y8_N7
\SI[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux145~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(9));

-- Location: LCCOMB_X17_Y5_N12
\EIR~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~58_combout\ = (\process_2~1_combout\ & (!\Data[1]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \Data[1]~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~58_combout\);

-- Location: FF_X17_Y5_N13
\EIR[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~58_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(33));

-- Location: LCCOMB_X18_Y8_N4
\Mux153~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~9_combout\ = (!EIR(33) & \MicroCode|Set_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => EIR(33),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux153~9_combout\);

-- Location: LCCOMB_X18_Y8_N26
\Mux145~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~5_combout\ = (\Mux151~5_combout\ & (((\Mux151~3_combout\)))) # (!\Mux151~5_combout\ & ((\Mux151~3_combout\ & (SI(9))) # (!\Mux151~3_combout\ & ((\Mux153~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SI(9),
	datab => \Mux151~5_combout\,
	datac => \Mux153~9_combout\,
	datad => \Mux151~3_combout\,
	combout => \Mux145~5_combout\);

-- Location: LCCOMB_X16_Y7_N0
\EIR~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~45_combout\ = (\process_2~1_combout\ & (((!\Data[9]~input_o\)))) # (!\process_2~1_combout\ & ((\LessThan0~0_combout\) # ((\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Data[9]~input_o\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~45_combout\);

-- Location: LCCOMB_X14_Y7_N22
\EIR[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[25]~feeder_combout\ = \EIR~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EIR~45_combout\,
	combout => \EIR[25]~feeder_combout\);

-- Location: FF_X14_Y7_N23
\EIR[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR[25]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[24]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(25));

-- Location: LCCOMB_X14_Y7_N20
\Mux153~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~5_combout\ = (!EIR(25) & \MicroCode|Set_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(25),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux153~5_combout\);

-- Location: LCCOMB_X18_Y8_N12
\Mux145~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~6_combout\ = (\Mux151~5_combout\ & ((\Mux145~5_combout\ & (\Address[9]~reg0_q\)) # (!\Mux145~5_combout\ & ((\Mux153~5_combout\))))) # (!\Mux151~5_combout\ & (((\Mux145~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[9]~reg0_q\,
	datab => \Mux151~5_combout\,
	datac => \Mux145~5_combout\,
	datad => \Mux153~5_combout\,
	combout => \Mux145~6_combout\);

-- Location: LCCOMB_X16_Y4_N0
\EIR~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~75_combout\ = (!\EIR~57_combout\ & ((\CIR~q\) # ((!\process_2~0_combout\) # (!\Data[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CIR~q\,
	datab => \Data[9]~input_o\,
	datac => \process_2~0_combout\,
	datad => \EIR~57_combout\,
	combout => \EIR~75_combout\);

-- Location: FF_X16_Y4_N1
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

-- Location: LCCOMB_X21_Y8_N8
\Mux145~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~0_combout\ = (AB(33) & !\MicroCode|Set_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => AB(33),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux145~0_combout\);

-- Location: LCCOMB_X17_Y8_N28
\DI[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DI[9]~feeder_combout\ = \Mux145~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux145~7_combout\,
	combout => \DI[9]~feeder_combout\);

-- Location: FF_X17_Y8_N29
\DI[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DI[9]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(9));

-- Location: LCCOMB_X17_Y8_N14
\Mux145~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~1_combout\ = (\MicroCode|Set_A\(0) & ((PC(9)))) # (!\MicroCode|Set_A\(0) & (DI(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => DI(9),
	datac => \MicroCode|Set_A\(0),
	datad => PC(9),
	combout => \Mux145~1_combout\);

-- Location: LCCOMB_X21_Y8_N24
\Mux145~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~2_combout\ = (\MicroCode|Set_A\(1) & (!\MicroCode|Set_A\(0))) # (!\MicroCode|Set_A\(1) & (\Mux145~1_combout\ & (\MicroCode|Set_A\(0) $ (\MicroCode|Set_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(1),
	datac => \Mux145~1_combout\,
	datad => \MicroCode|Set_A\(3),
	combout => \Mux145~2_combout\);

-- Location: LCCOMB_X21_Y8_N2
\Mux145~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~3_combout\ = (\Mux141~0_combout\ & ((\Mux145~2_combout\ & (AB(9))) # (!\Mux145~2_combout\ & ((\Mux145~0_combout\))))) # (!\Mux141~0_combout\ & (((\Mux145~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux141~0_combout\,
	datab => AB(9),
	datac => \Mux145~0_combout\,
	datad => \Mux145~2_combout\,
	combout => \Mux145~3_combout\);

-- Location: LCCOMB_X25_Y6_N28
\DI[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DI[8]~feeder_combout\ = \Mux146~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux146~7_combout\,
	combout => \DI[8]~feeder_combout\);

-- Location: FF_X25_Y6_N29
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

-- Location: FF_X19_Y5_N3
\SI[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux146~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(8));

-- Location: LCCOMB_X19_Y5_N2
\Mux146~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux146~5_combout\ = (SI(8) & \MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SI(8),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux146~5_combout\);

-- Location: LCCOMB_X16_Y7_N18
\EIR~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~40_combout\ = (\process_2~1_combout\ & (((!\Data[8]~input_o\)))) # (!\process_2~1_combout\ & ((\LessThan0~0_combout\) # ((\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => \Data[8]~input_o\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~40_combout\);

-- Location: FF_X14_Y7_N29
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

-- Location: FF_X14_Y7_N19
\EIR[8]\ : dffeas
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
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(8));

-- Location: LCCOMB_X17_Y5_N18
\Mux122~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~2_combout\ = (\MicroCode|Set_D\(0) & (((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(3) & ((!EIR(8)))) # (!\MicroCode|Set_D\(3) & (SI(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => SI(8),
	datac => \MicroCode|Set_D\(3),
	datad => EIR(8),
	combout => \Mux122~2_combout\);

-- Location: LCCOMB_X21_Y9_N22
\Mux122~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~3_combout\ = (\MicroCode|Set_D\(0) & ((\Mux122~2_combout\ & (!EIR(24))) # (!\Mux122~2_combout\ & ((DI(8)))))) # (!\MicroCode|Set_D\(0) & (((\Mux122~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => EIR(24),
	datac => DI(8),
	datad => \Mux122~2_combout\,
	combout => \Mux122~3_combout\);

-- Location: LCCOMB_X21_Y9_N0
\Mux122~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~4_combout\ = (\MicroCode|Set_D\(1) & \Mux122~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datac => \Mux122~3_combout\,
	combout => \Mux122~4_combout\);

-- Location: FF_X19_Y9_N15
\Z[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux122~11_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(8));

-- Location: LCCOMB_X21_Y9_N26
\Mux122~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~5_combout\ = (Z(8) & (!\MicroCode|Set_D\(1) & \MicroCode|Set_D\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Z(8),
	datac => \MicroCode|Set_D\(1),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux122~5_combout\);

-- Location: FF_X21_Y9_N3
\Y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux122~11_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(8));

-- Location: FF_X22_Y9_N23
\X[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux122~11_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(8));

-- Location: LCCOMB_X16_Y5_N2
\EIR~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~37_combout\ = (!\process_2~1_combout\ & (((AIE(1) & AIE(0))) # (!\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AIE(1),
	datab => \process_2~1_combout\,
	datac => AIE(0),
	datad => \LessThan0~4_combout\,
	combout => \EIR~37_combout\);

-- Location: LCCOMB_X16_Y5_N10
\EIR~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~74_combout\ = (!\EIR~37_combout\ & (((\CIR~q\) # (!\Data[7]~input_o\)) # (!\process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => \CIR~q\,
	datac => \Data[7]~input_o\,
	datad => \EIR~37_combout\,
	combout => \EIR~74_combout\);

-- Location: LCCOMB_X16_Y5_N8
\EIR[16]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[16]~39_combout\ = (\EIR[16]~38_combout\ & ((\process_2~1_combout\) # ((!\LessThan0~4_combout\) # (!\IR~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EIR[16]~38_combout\,
	datab => \process_2~1_combout\,
	datac => \IR~0_combout\,
	datad => \LessThan0~4_combout\,
	combout => \EIR[16]~39_combout\);

-- Location: FF_X16_Y5_N11
\EIR[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~74_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[16]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(23));

-- Location: LCCOMB_X16_Y5_N22
\EIR~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~44_combout\ = (!\process_2~1_combout\ & (((!AIE(1) & AIE(0))) # (!\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AIE(1),
	datab => \process_2~1_combout\,
	datac => AIE(0),
	datad => \LessThan0~4_combout\,
	combout => \EIR~44_combout\);

-- Location: LCCOMB_X16_Y5_N28
\EIR~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~73_combout\ = (!\EIR~44_combout\ & ((\CIR~q\) # ((!\process_2~0_combout\) # (!\Data[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EIR~44_combout\,
	datab => \CIR~q\,
	datac => \Data[7]~input_o\,
	datad => \process_2~0_combout\,
	combout => \EIR~73_combout\);

-- Location: FF_X16_Y5_N29
\EIR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~73_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(7));

-- Location: LCCOMB_X24_Y4_N24
\AB~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~22_combout\ = (!\MicroCode|Bs_in~q\ & \Mux123~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Bs_in~q\,
	datac => \Mux123~10_combout\,
	combout => \AB~22_combout\);

-- Location: FF_X24_Y4_N25
\AB[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~22_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(31));

-- Location: LCCOMB_X18_Y4_N6
\Mux124~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~10_combout\ = (\Data[6]~input_o\ & (\MicroCode|Set_D\(3) & (!\MicroCode|Set_D\(0) & !\MicroCode|Set_D\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[6]~input_o\,
	datab => \MicroCode|Set_D\(3),
	datac => \MicroCode|Set_D\(0),
	datad => \MicroCode|Set_D\(1),
	combout => \Mux124~10_combout\);

-- Location: LCCOMB_X21_Y9_N30
\Mux127~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~17_combout\ = \MicroCode|Set_D\(1) $ (\MicroCode|Set_D\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datac => \MicroCode|Set_D\(2),
	combout => \Mux127~17_combout\);

-- Location: LCCOMB_X21_Y9_N4
\Mux127~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~3_combout\ = (\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(2) & (!\MicroCode|Set_D\(3) & \MicroCode|Set_D\(1))) # (!\MicroCode|Set_D\(2) & (\MicroCode|Set_D\(3) & !\MicroCode|Set_D\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \MicroCode|Set_D\(3),
	datac => \MicroCode|Set_D\(1),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux127~3_combout\);

-- Location: LCCOMB_X21_Y9_N24
\Mux126~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~12_combout\ = (\MicroCode|Set_D\(4)) # ((\Mux127~17_combout\ & (!\Mux127~3_combout\ & \Mux130~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~17_combout\,
	datab => \Mux127~3_combout\,
	datac => \Mux130~16_combout\,
	datad => \MicroCode|Set_D\(4),
	combout => \Mux126~12_combout\);

-- Location: LCCOMB_X16_Y5_N30
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

-- Location: FF_X16_Y5_N31
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

-- Location: FF_X17_Y5_N1
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

-- Location: FF_X19_Y6_N5
\DI[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux148~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(6));

-- Location: LCCOMB_X17_Y5_N0
\Mux148~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux148~0_combout\ = (\MicroCode|Set_A\(0) & (((\MicroCode|Set_A\(1))) # (!EIR(30)))) # (!\MicroCode|Set_A\(0) & (((!EIR(6) & !\MicroCode|Set_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(30),
	datab => \MicroCode|Set_A\(0),
	datac => EIR(6),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux148~0_combout\);

-- Location: LCCOMB_X19_Y6_N28
\Address~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~22_combout\ = (\MicroCode|AE~q\ & ((\Mux148~7_combout\))) # (!\MicroCode|AE~q\ & (PC(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|AE~q\,
	datac => PC(6),
	datad => \Mux148~7_combout\,
	combout => \Address~22_combout\);

-- Location: FF_X19_Y6_N29
\Address[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~22_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[6]~reg0_q\);

-- Location: LCCOMB_X19_Y6_N26
\Mux148~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux148~1_combout\ = (\Mux148~0_combout\ & (((\Address[6]~reg0_q\) # (!\MicroCode|Set_A\(1))))) # (!\Mux148~0_combout\ & (!EIR(22) & (\MicroCode|Set_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(22),
	datab => \Mux148~0_combout\,
	datac => \MicroCode|Set_A\(1),
	datad => \Address[6]~reg0_q\,
	combout => \Mux148~1_combout\);

-- Location: LCCOMB_X18_Y5_N24
\Mux148~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux148~5_combout\ = (SI(6) & \MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SI(6),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux148~5_combout\);

-- Location: LCCOMB_X24_Y6_N24
\AB~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~21_combout\ = (!\MicroCode|Bs_in~q\ & \AB[6]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Bs_in~q\,
	datad => \AB[6]~3_combout\,
	combout => \AB~21_combout\);

-- Location: FF_X24_Y6_N25
\AB[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~21_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(30));

-- Location: LCCOMB_X21_Y6_N22
\Mux148~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux148~2_combout\ = (\MicroCode|Set_A\(0) & PC(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_A\(0),
	datad => PC(6),
	combout => \Mux148~2_combout\);

-- Location: LCCOMB_X16_Y5_N14
\EIR~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~70_combout\ = (!\EIR~44_combout\ & ((\CIR~q\) # ((!\process_2~0_combout\) # (!\Data[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EIR~44_combout\,
	datab => \CIR~q\,
	datac => \Data[5]~input_o\,
	datad => \process_2~0_combout\,
	combout => \EIR~70_combout\);

-- Location: FF_X16_Y5_N15
\EIR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~70_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(5));

-- Location: LCCOMB_X21_Y5_N12
\Address~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~21_combout\ = (\MicroCode|AE~q\ & ((\Mux149~8_combout\))) # (!\MicroCode|AE~q\ & (PC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(5),
	datab => \MicroCode|AE~q\,
	datad => \Mux149~8_combout\,
	combout => \Address~21_combout\);

-- Location: FF_X21_Y5_N13
\Address[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~21_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[5]~reg0_q\);

-- Location: FF_X21_Y5_N27
\SI[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux149~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(5));

-- Location: LCCOMB_X16_Y5_N16
\EIR~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~71_combout\ = (!\EIR~37_combout\ & (((\CIR~q\) # (!\Data[5]~input_o\)) # (!\process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => \CIR~q\,
	datac => \Data[5]~input_o\,
	datad => \EIR~37_combout\,
	combout => \EIR~71_combout\);

-- Location: FF_X16_Y5_N17
\EIR[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~71_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[16]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(21));

-- Location: LCCOMB_X14_Y6_N30
\Mux151~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~4_combout\ = ((\MicroCode|Set_A\(3) & !\MicroCode|Set_A\(0))) # (!\MicroCode|Set_A\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \MicroCode|Set_A\(3),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux151~4_combout\);

-- Location: LCCOMB_X21_Y5_N28
\Mux149~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~6_combout\ = (\Mux151~4_combout\ & ((\Mux151~5_combout\ & (!EIR(21))) # (!\Mux151~5_combout\ & ((\Mux149~5_combout\))))) # (!\Mux151~4_combout\ & (((!\Mux151~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(21),
	datab => \Mux149~5_combout\,
	datac => \Mux151~4_combout\,
	datad => \Mux151~5_combout\,
	combout => \Mux149~6_combout\);

-- Location: LCCOMB_X21_Y5_N14
\Mux149~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~7_combout\ = (\Mux151~3_combout\ & ((\Mux149~6_combout\ & ((SI(5)))) # (!\Mux149~6_combout\ & (\Address[5]~reg0_q\)))) # (!\Mux151~3_combout\ & (((\Mux149~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[5]~reg0_q\,
	datab => SI(5),
	datac => \Mux151~3_combout\,
	datad => \Mux149~6_combout\,
	combout => \Mux149~7_combout\);

-- Location: FF_X25_Y5_N5
\DI[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux149~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(5));

-- Location: LCCOMB_X21_Y5_N26
\Mux125~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~0_combout\ = (\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(3)) # ((DI(5))))) # (!\MicroCode|Set_D\(0) & (!\MicroCode|Set_D\(3) & (SI(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(3),
	datac => SI(5),
	datad => DI(5),
	combout => \Mux125~0_combout\);

-- Location: LCCOMB_X21_Y5_N0
\Mux125~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~1_combout\ = (\MicroCode|Set_D\(3) & ((\Mux125~0_combout\ & (!EIR(21))) # (!\Mux125~0_combout\ & ((!EIR(5)))))) # (!\MicroCode|Set_D\(3) & (((\Mux125~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(21),
	datab => \MicroCode|Set_D\(3),
	datac => \Mux125~0_combout\,
	datad => EIR(5),
	combout => \Mux125~1_combout\);

-- Location: LCCOMB_X22_Y4_N12
\Mux125~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~2_combout\ = (\MicroCode|Set_D\(1) & \Mux125~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(1),
	datad => \Mux125~1_combout\,
	combout => \Mux125~2_combout\);

-- Location: LCCOMB_X23_Y4_N10
\Mux127~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~4_combout\ = (\MicroCode|Set_D\(4) & (\MicroCode|Set_D\(2))) # (!\MicroCode|Set_D\(4) & ((\Mux127~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \MicroCode|Set_D\(4),
	datad => \Mux127~3_combout\,
	combout => \Mux127~4_combout\);

-- Location: LCCOMB_X23_Y4_N4
\Mux127~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~5_combout\ = (\MicroCode|Set_D\(4) & (((!\MicroCode|Set_D\(1) & \Mux130~16_combout\)) # (!\Mux127~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \Mux130~16_combout\,
	datac => \MicroCode|Set_D\(4),
	datad => \Mux127~4_combout\,
	combout => \Mux127~5_combout\);

-- Location: FF_X23_Y4_N3
\X[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux125~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(5));

-- Location: FF_X24_Y4_N31
\Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux125~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(5));

-- Location: LCCOMB_X24_Y4_N20
\Mux127~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~9_combout\ = (\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(2)) # ((\MicroCode|Set_D\(3)) # (!\MicroCode|Set_D\(1))))) # (!\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(2) $ (!\MicroCode|Set_D\(1))) # (!\MicroCode|Set_D\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(2),
	datac => \MicroCode|Set_D\(1),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux127~9_combout\);

-- Location: LCCOMB_X24_Y4_N30
\Mux125~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~5_combout\ = (\MicroCode|Set_D\(3) & (((Y(5)) # (\Mux127~9_combout\)))) # (!\MicroCode|Set_D\(3) & (AB(29) & ((!\Mux127~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(29),
	datab => \MicroCode|Set_D\(3),
	datac => Y(5),
	datad => \Mux127~9_combout\,
	combout => \Mux125~5_combout\);

-- Location: FF_X24_Y5_N13
\Z[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[13]~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(13));

-- Location: LCCOMB_X24_Y5_N18
\Mux127~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~11_combout\ = (\MicroCode|Set_D\(2) & ((\MicroCode|Set_D\(0)) # (!\MicroCode|Set_D\(1)))) # (!\MicroCode|Set_D\(2) & ((\MicroCode|Set_D\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(0),
	datac => \MicroCode|Set_D\(2),
	datad => \MicroCode|Set_D\(1),
	combout => \Mux127~11_combout\);

-- Location: LCCOMB_X24_Y5_N10
\Mux125~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~6_combout\ = (\MicroCode|Set_D\(2) & ((Z(13)) # ((\Mux127~11_combout\)))) # (!\MicroCode|Set_D\(2) & (((X(13) & !\Mux127~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Z(13),
	datab => \MicroCode|Set_D\(2),
	datac => X(13),
	datad => \Mux127~11_combout\,
	combout => \Mux125~6_combout\);

-- Location: LCCOMB_X19_Y4_N22
\Y[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y[13]~feeder_combout\ = \AB[13]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AB[13]~7_combout\,
	combout => \Y[13]~feeder_combout\);

-- Location: FF_X19_Y4_N23
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

-- Location: FF_X24_Y5_N9
\Z[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux125~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(5));

-- Location: LCCOMB_X24_Y5_N8
\Mux125~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~7_combout\ = (\Mux125~6_combout\ & (((Z(5)) # (!\Mux127~11_combout\)))) # (!\Mux125~6_combout\ & (Y(13) & ((\Mux127~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux125~6_combout\,
	datab => Y(13),
	datac => Z(5),
	datad => \Mux127~11_combout\,
	combout => \Mux125~7_combout\);

-- Location: LCCOMB_X22_Y5_N14
\Mux127~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~6_combout\ = (\MicroCode|Set_D\(2) & ((\MicroCode|Set_D\(0)) # (\MicroCode|Set_D\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(2),
	datad => \MicroCode|Set_D\(1),
	combout => \Mux127~6_combout\);

-- Location: LCCOMB_X22_Y5_N4
\Mux125~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~3_combout\ = (\Mux127~6_combout\ & (((PC(5)) # (!\MicroCode|Set_D\(1))))) # (!\Mux127~6_combout\ & (AB(5) & ((\MicroCode|Set_D\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(5),
	datab => PC(5),
	datac => \Mux127~6_combout\,
	datad => \MicroCode|Set_D\(1),
	combout => \Mux125~3_combout\);

-- Location: LCCOMB_X21_Y6_N20
\Mux130~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~7_combout\ = (\MicroCode|Set_D\(2) & !\MicroCode|Set_D\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datac => \MicroCode|Set_D\(1),
	combout => \Mux130~7_combout\);

-- Location: LCCOMB_X25_Y8_N24
\Mux126~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~16_combout\ = (\Data[4]~input_o\ & (\MicroCode|Set_D\(3) & (!\MicroCode|Set_D\(1) & !\MicroCode|Set_D\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[4]~input_o\,
	datab => \MicroCode|Set_D\(3),
	datac => \MicroCode|Set_D\(1),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux126~16_combout\);

-- Location: LCCOMB_X24_Y4_N16
\Mux126~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~9_combout\ = (!\MicroCode|Set_D\(4) & !\Mux127~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_D\(4),
	datad => \Mux127~3_combout\,
	combout => \Mux126~9_combout\);

-- Location: LCCOMB_X14_Y7_N12
\EIR[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR[4]~feeder_combout\ = \EIR~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EIR~50_combout\,
	combout => \EIR[4]~feeder_combout\);

-- Location: FF_X14_Y7_N13
\EIR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR[4]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(4));

-- Location: LCCOMB_X16_Y5_N4
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

-- Location: FF_X16_Y5_N5
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

-- Location: FF_X19_Y5_N19
\SI[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux150~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(4));

-- Location: LCCOMB_X16_Y8_N4
\Mux150~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux150~5_combout\ = (\MicroCode|Set_A\(0) & SI(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datad => SI(4),
	combout => \Mux150~5_combout\);

-- Location: LCCOMB_X25_Y8_N10
\AB~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~18_combout\ = (!\MicroCode|Bs_in~q\ & \AB[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Bs_in~q\,
	datac => \AB[4]~2_combout\,
	combout => \AB~18_combout\);

-- Location: FF_X25_Y8_N11
\AB[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(28));

-- Location: LCCOMB_X16_Y8_N28
\Mux150~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux150~2_combout\ = (PC(4) & \MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(4),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux150~2_combout\);

-- Location: LCCOMB_X16_Y5_N6
\EIR~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~68_combout\ = (!\EIR~37_combout\ & (((\CIR~q\) # (!\process_2~0_combout\)) # (!\Data[3]~input_o\)))

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
	combout => \EIR~68_combout\);

-- Location: FF_X16_Y5_N7
\EIR[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~68_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[16]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(19));

-- Location: LCCOMB_X18_Y9_N12
\Address~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~18_combout\ = (\MicroCode|AE~q\ & ((\Mux151~14_combout\))) # (!\MicroCode|AE~q\ & (PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|AE~q\,
	datac => PC(3),
	datad => \Mux151~14_combout\,
	combout => \Address~18_combout\);

-- Location: FF_X18_Y9_N13
\Address[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[3]~reg0_q\);

-- Location: FF_X18_Y9_N23
\SI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux151~14_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(3));

-- Location: LCCOMB_X18_Y9_N16
\Mux151~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~12_combout\ = (\Mux151~4_combout\ & ((\Mux151~5_combout\ & (!EIR(19))) # (!\Mux151~5_combout\ & ((\Mux151~11_combout\))))) # (!\Mux151~4_combout\ & (!\Mux151~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~4_combout\,
	datab => \Mux151~5_combout\,
	datac => EIR(19),
	datad => \Mux151~11_combout\,
	combout => \Mux151~12_combout\);

-- Location: LCCOMB_X18_Y9_N10
\Mux151~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~13_combout\ = (\Mux151~3_combout\ & ((\Mux151~12_combout\ & ((SI(3)))) # (!\Mux151~12_combout\ & (\Address[3]~reg0_q\)))) # (!\Mux151~3_combout\ & (((\Mux151~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[3]~reg0_q\,
	datab => SI(3),
	datac => \Mux151~3_combout\,
	datad => \Mux151~12_combout\,
	combout => \Mux151~13_combout\);

-- Location: LCCOMB_X16_Y5_N12
\EIR~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~67_combout\ = (!\EIR~44_combout\ & (((\CIR~q\) # (!\process_2~0_combout\)) # (!\Data[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[3]~input_o\,
	datab => \CIR~q\,
	datac => \EIR~44_combout\,
	datad => \process_2~0_combout\,
	combout => \EIR~67_combout\);

-- Location: FF_X16_Y5_N13
\EIR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~67_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(3));

-- Location: LCCOMB_X23_Y8_N4
\AB~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~17_combout\ = (\MicroCode|Aa_in~q\ & (\Mux151~14_combout\)) # (!\MicroCode|Aa_in~q\ & ((\Mux127~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Aa_in~q\,
	datac => \Mux151~14_combout\,
	datad => \Mux127~16_combout\,
	combout => \AB~17_combout\);

-- Location: FF_X23_Y8_N5
\AB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~17_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(3));

-- Location: FF_X21_Y4_N15
\Z[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux120~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(10));

-- Location: FF_X21_Y4_N5
\Z[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux128~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(2));

-- Location: FF_X21_Y4_N13
\X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux128~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(2));

-- Location: LCCOMB_X21_Y4_N28
\Mux130~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~37_combout\ = (\MicroCode|Set_D\(3) & (((\MicroCode|Set_D\(0))))) # (!\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0) & (X(2))) # (!\MicroCode|Set_D\(0) & ((PC(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => X(2),
	datac => PC(2),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux130~37_combout\);

-- Location: LCCOMB_X21_Y4_N4
\Mux130~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~38_combout\ = (\MicroCode|Set_D\(3) & ((\Mux130~37_combout\ & ((Z(2)))) # (!\Mux130~37_combout\ & (Z(10))))) # (!\MicroCode|Set_D\(3) & (((\Mux130~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => Z(10),
	datac => Z(2),
	datad => \Mux130~37_combout\,
	combout => \Mux130~38_combout\);

-- Location: LCCOMB_X21_Y4_N10
\Mux128~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~4_combout\ = (\MicroCode|Set_D\(4) & (!\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0))))) # (!\MicroCode|Set_D\(4) & (((\Mux130~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(4),
	datac => \Mux130~38_combout\,
	datad => \MicroCode|Set_D\(0),
	combout => \Mux128~4_combout\);

-- Location: LCCOMB_X18_Y5_N16
\Address~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~17_combout\ = (\MicroCode|AE~q\ & ((\Mux152~12_combout\))) # (!\MicroCode|AE~q\ & (PC(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(2),
	datac => \Mux152~12_combout\,
	datad => \MicroCode|AE~q\,
	combout => \Address~17_combout\);

-- Location: FF_X18_Y5_N17
\Address[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~17_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[2]~reg0_q\);

-- Location: LCCOMB_X16_Y5_N18
\EIR~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~66_combout\ = (!\EIR~37_combout\ & (((\CIR~q\) # (!\Data[2]~input_o\)) # (!\process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => \CIR~q\,
	datac => \Data[2]~input_o\,
	datad => \EIR~37_combout\,
	combout => \EIR~66_combout\);

-- Location: FF_X16_Y5_N19
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

-- Location: FF_X19_Y5_N21
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

-- Location: LCCOMB_X19_Y5_N6
\Mux152~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~5_combout\ = (\MicroCode|Set_A\(0) & (((\MicroCode|Set_A\(1)) # (!EIR(26))))) # (!\MicroCode|Set_A\(0) & (!EIR(2) & (!\MicroCode|Set_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => EIR(2),
	datac => \MicroCode|Set_A\(1),
	datad => EIR(26),
	combout => \Mux152~5_combout\);

-- Location: LCCOMB_X18_Y5_N26
\Mux152~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~6_combout\ = (\MicroCode|Set_A\(1) & ((\Mux152~5_combout\ & (\Address[2]~reg0_q\)) # (!\Mux152~5_combout\ & ((!EIR(18)))))) # (!\MicroCode|Set_A\(1) & (((\Mux152~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \Address[2]~reg0_q\,
	datac => EIR(18),
	datad => \Mux152~5_combout\,
	combout => \Mux152~6_combout\);

-- Location: LCCOMB_X18_Y5_N28
\DI[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DI[2]~feeder_combout\ = \Mux152~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux152~12_combout\,
	combout => \DI[2]~feeder_combout\);

-- Location: FF_X18_Y5_N29
\DI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DI[2]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(2));

-- Location: FF_X19_Y5_N9
\SI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux152~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(2));

-- Location: LCCOMB_X19_Y5_N8
\Mux152~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~10_combout\ = (SI(2) & \MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SI(2),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux152~10_combout\);

-- Location: LCCOMB_X24_Y6_N10
\Mux152~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~7_combout\ = (\MicroCode|Set_A\(0) & PC(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_A\(0),
	datad => PC(2),
	combout => \Mux152~7_combout\);

-- Location: LCCOMB_X24_Y6_N0
\Mux152~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~8_combout\ = (\Mux152~3_combout\ & (((\ArithmeticLogicUnit|Mux21~0_combout\ & \Mux152~2_combout\)))) # (!\Mux152~3_combout\ & ((\Mux152~7_combout\) # ((!\Mux152~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux152~7_combout\,
	datab => \Mux152~3_combout\,
	datac => \ArithmeticLogicUnit|Mux21~0_combout\,
	datad => \Mux152~2_combout\,
	combout => \Mux152~8_combout\);

-- Location: LCCOMB_X24_Y6_N30
\Mux152~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~9_combout\ = (\Mux152~1_combout\ & ((\Mux152~8_combout\ & ((AB(2)))) # (!\Mux152~8_combout\ & (AB(26))))) # (!\Mux152~1_combout\ & (((\Mux152~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(26),
	datab => AB(2),
	datac => \Mux152~1_combout\,
	datad => \Mux152~8_combout\,
	combout => \Mux152~9_combout\);

-- Location: LCCOMB_X18_Y5_N20
\Mux152~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~11_combout\ = (\MicroCode|Set_A\(3) & (((\Mux152~4_combout\)))) # (!\MicroCode|Set_A\(3) & ((\Mux152~4_combout\ & (\Mux152~10_combout\)) # (!\Mux152~4_combout\ & ((\Mux152~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \Mux152~10_combout\,
	datac => \Mux152~9_combout\,
	datad => \Mux152~4_combout\,
	combout => \Mux152~11_combout\);

-- Location: LCCOMB_X18_Y5_N30
\Mux152~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~12_combout\ = (\Mux152~0_combout\ & ((\Mux152~11_combout\ & (\Mux152~6_combout\)) # (!\Mux152~11_combout\ & ((DI(2)))))) # (!\Mux152~0_combout\ & (((\Mux152~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux152~6_combout\,
	datab => DI(2),
	datac => \Mux152~0_combout\,
	datad => \Mux152~11_combout\,
	combout => \Mux152~12_combout\);

-- Location: LCCOMB_X24_Y6_N22
\AB~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~15_combout\ = (\MicroCode|Aa_in~q\ & ((\Mux152~12_combout\))) # (!\MicroCode|Aa_in~q\ & (\Mux128~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Aa_in~q\,
	datac => \Mux128~5_combout\,
	datad => \Mux152~12_combout\,
	combout => \AB~15_combout\);

-- Location: FF_X24_Y6_N23
\AB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~15_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(2));

-- Location: LCCOMB_X17_Y4_N6
\Mux130~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~13_combout\ = (\MicroCode|Set_D\(3)) # (\MicroCode|Set_D\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_D\(3),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux130~13_combout\);

-- Location: LCCOMB_X17_Y4_N8
\Mux130~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~26_combout\ = (\MicroCode|Set_D\(3) & (\Data[1]~input_o\ & !\MicroCode|Set_D\(0))) # (!\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[1]~input_o\,
	datac => \MicroCode|Set_D\(3),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux130~26_combout\);

-- Location: LCCOMB_X17_Y4_N30
\Mux130~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~29_combout\ = (\MicroCode|Set_D\(3) & \MicroCode|Set_D\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_D\(3),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux130~29_combout\);

-- Location: LCCOMB_X16_Y5_N20
\EIR~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~65_combout\ = (!\EIR~37_combout\ & (((\CIR~q\) # (!\process_2~0_combout\)) # (!\Data[1]~input_o\)))

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
	combout => \EIR~65_combout\);

-- Location: FF_X16_Y5_N21
\EIR[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~65_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[16]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(17));

-- Location: LCCOMB_X16_Y5_N26
\EIR~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~64_combout\ = (!\EIR~44_combout\ & (((\CIR~q\) # (!\process_2~0_combout\)) # (!\Data[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[1]~input_o\,
	datab => \CIR~q\,
	datac => \EIR~44_combout\,
	datad => \process_2~0_combout\,
	combout => \EIR~64_combout\);

-- Location: FF_X16_Y5_N27
\EIR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~64_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(1));

-- Location: LCCOMB_X23_Y8_N18
\AB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[1]~feeder_combout\ = \AB[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AB[1]~1_combout\,
	combout => \AB[1]~feeder_combout\);

-- Location: FF_X23_Y8_N19
\AB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB[1]~feeder_combout\,
	asdata => \Mux153~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|Aa_in~q\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(1));

-- Location: LCCOMB_X19_Y4_N28
\Mux153~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~0_combout\ = (AB(1) & !\MicroCode|Set_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => AB(1),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux153~0_combout\);

-- Location: LCCOMB_X19_Y4_N26
\Mux151~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~1_combout\ = (\MicroCode|Set_A\(1) & ((!\MicroCode|Set_A\(3)) # (!\MicroCode|Set_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(1),
	datac => \MicroCode|Set_A\(0),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux151~1_combout\);

-- Location: LCCOMB_X19_Y4_N24
\Mux153~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~1_combout\ = (\MicroCode|Set_A\(3) & ((\MicroCode|Set_A\(0)) # (DI(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datac => DI(1),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux153~1_combout\);

-- Location: LCCOMB_X19_Y4_N18
\Mux153~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~2_combout\ = (\MicroCode|Set_A\(0) & ((\MicroCode|Set_A\(1)) # ((PC(1) & !\Mux153~1_combout\)))) # (!\MicroCode|Set_A\(0) & (!\MicroCode|Set_A\(1) & ((\Mux153~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(1),
	datac => PC(1),
	datad => \Mux153~1_combout\,
	combout => \Mux153~2_combout\);

-- Location: LCCOMB_X19_Y4_N12
\Mux153~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~3_combout\ = (\Mux151~1_combout\ & ((\Mux153~2_combout\ & (AB(25))) # (!\Mux153~2_combout\ & ((\Mux153~0_combout\))))) # (!\Mux151~1_combout\ & (((\Mux153~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(25),
	datab => \Mux153~0_combout\,
	datac => \Mux151~1_combout\,
	datad => \Mux153~2_combout\,
	combout => \Mux153~3_combout\);

-- Location: FF_X19_Y9_N27
\Z[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[0]~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(0));

-- Location: FF_X22_Y9_N31
\X[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[0]~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(0));

-- Location: LCCOMB_X19_Y9_N16
\Mux130~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~9_combout\ = (!\MicroCode|Set_D\(2) & ((\MicroCode|Set_D\(1) & ((Y(8)))) # (!\MicroCode|Set_D\(1) & (X(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => X(0),
	datab => \MicroCode|Set_D\(2),
	datac => Y(8),
	datad => \MicroCode|Set_D\(1),
	combout => \Mux130~9_combout\);

-- Location: LCCOMB_X19_Y9_N26
\Mux130~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~10_combout\ = (\Mux130~9_combout\) # ((\MicroCode|Set_D\(2) & Z(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(2),
	datac => Z(0),
	datad => \Mux130~9_combout\,
	combout => \Mux130~10_combout\);

-- Location: LCCOMB_X19_Y9_N14
\Mux130~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~2_combout\ = (\MicroCode|Set_D\(2) & ((Z(8)))) # (!\MicroCode|Set_D\(2) & (X(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => X(8),
	datac => Z(8),
	datad => \MicroCode|Set_D\(2),
	combout => \Mux130~2_combout\);

-- Location: FF_X19_Y9_N1
\Y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[0]~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(0));

-- Location: LCCOMB_X19_Y9_N0
\Mux130~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~3_combout\ = (\MicroCode|Set_D\(1) & ((\MicroCode|Set_D\(2) & (\Mux130~2_combout\)) # (!\MicroCode|Set_D\(2) & ((Y(0)))))) # (!\MicroCode|Set_D\(1) & ((\MicroCode|Set_D\(2) & ((Y(0)))) # (!\MicroCode|Set_D\(2) & (\Mux130~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \Mux130~2_combout\,
	datac => Y(0),
	datad => \MicroCode|Set_D\(2),
	combout => \Mux130~3_combout\);

-- Location: LCCOMB_X16_Y8_N26
\Mux130~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~6_combout\ = (\MicroCode|Set_D\(1) & ((\MicroCode|Set_D\(2) & (PC(0))) # (!\MicroCode|Set_D\(2) & ((AB(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => \MicroCode|Set_D\(2),
	datac => AB(0),
	datad => \MicroCode|Set_D\(1),
	combout => \Mux130~6_combout\);

-- Location: LCCOMB_X25_Y8_N26
\AB~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~10_combout\ = (!\MicroCode|Bs_in~q\ & \AB[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Bs_in~q\,
	datad => \AB[0]~0_combout\,
	combout => \AB~10_combout\);

-- Location: FF_X25_Y8_N27
\AB[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(24));

-- Location: LCCOMB_X24_Y8_N0
\ArithmeticLogicUnit|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add1~0_combout\ = (AB(0) & (AB(24) $ (VCC))) # (!AB(0) & (AB(24) & VCC))
-- \ArithmeticLogicUnit|Add1~1\ = CARRY((AB(0) & AB(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(0),
	datab => AB(24),
	datad => VCC,
	combout => \ArithmeticLogicUnit|Add1~0_combout\,
	cout => \ArithmeticLogicUnit|Add1~1\);

-- Location: LCCOMB_X16_Y8_N30
\ArithmeticLogicUnit|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux23~0_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|Add1~0_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(0)) # ((AB(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(0),
	datab => AB(24),
	datac => \ArithmeticLogicUnit|Add1~0_combout\,
	datad => \MicroCode|ALUOp\(1),
	combout => \ArithmeticLogicUnit|Mux23~0_combout\);

-- Location: LCCOMB_X16_Y8_N14
\Mux130~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~39_combout\ = (\Mux130~6_combout\) # ((!\MicroCode|Set_D\(1) & (\ArithmeticLogicUnit|Mux23~0_combout\ & \MicroCode|Set_D\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux130~6_combout\,
	datab => \MicroCode|Set_D\(1),
	datac => \ArithmeticLogicUnit|Mux23~0_combout\,
	datad => \MicroCode|Set_D\(2),
	combout => \Mux130~39_combout\);

-- Location: FF_X21_Y6_N17
\MicroCode|ALUOpL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	asdata => IR(2),
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \MicroCode|ALUOp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|ALUOpL~q\);

-- Location: FF_X21_Y7_N1
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

-- Location: LCCOMB_X21_Y7_N0
\Mux138~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~7_combout\ = (DI(16)) # (\MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => DI(16),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux138~7_combout\);

-- Location: LCCOMB_X16_Y5_N24
\EIR~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~62_combout\ = (!\EIR~37_combout\ & (((\CIR~q\) # (!\Data[0]~input_o\)) # (!\process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => \CIR~q\,
	datac => \Data[0]~input_o\,
	datad => \EIR~37_combout\,
	combout => \EIR~62_combout\);

-- Location: FF_X16_Y5_N25
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

-- Location: FF_X16_Y7_N19
\EIR[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~40_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(40));

-- Location: LCCOMB_X18_Y5_N12
\Mux138~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~9_combout\ = (\MicroCode|Set_A\(1) & (((\MicroCode|Set_A\(0))))) # (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0) & ((!EIR(40)))) # (!\MicroCode|Set_A\(0) & (!EIR(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => EIR(16),
	datac => EIR(40),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux138~9_combout\);

-- Location: LCCOMB_X17_Y5_N14
\EIR~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \EIR~42_combout\ = (\process_2~1_combout\ & (!\Data[0]~input_o\)) # (!\process_2~1_combout\ & (((\LessThan0~0_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \Data[0]~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \EIR~42_combout\);

-- Location: FF_X17_Y5_N15
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

-- Location: LCCOMB_X26_Y7_N8
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

-- Location: FF_X26_Y7_N9
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
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[16]~reg0_q\);

-- Location: LCCOMB_X18_Y5_N10
\Mux138~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~10_combout\ = (\Mux138~9_combout\ & (((\Address[16]~reg0_q\) # (!\MicroCode|Set_A\(1))))) # (!\Mux138~9_combout\ & (!EIR(32) & (\MicroCode|Set_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux138~9_combout\,
	datab => EIR(32),
	datac => \MicroCode|Set_A\(1),
	datad => \Address[16]~reg0_q\,
	combout => \Mux138~10_combout\);

-- Location: LCCOMB_X18_Y5_N8
\Mux138~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~11_combout\ = (\MicroCode|Set_A\(2) & (((\Mux138~10_combout\)))) # (!\MicroCode|Set_A\(2) & (!\MicroCode|Set_A\(1) & (\Mux138~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \MicroCode|Set_A\(2),
	datac => \Mux138~7_combout\,
	datad => \Mux138~10_combout\,
	combout => \Mux138~11_combout\);

-- Location: LCCOMB_X21_Y7_N18
\Mux138~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~4_combout\ = (\MicroCode|Set_A\(2) & ((\MicroCode|Set_A\(0)) # (!\MicroCode|Set_A\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => \MicroCode|Set_A\(0),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux138~4_combout\);

-- Location: LCCOMB_X23_Y6_N16
\Mux138~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~2_combout\ = (\MicroCode|Set_A\(0) & ((PC(16)))) # (!\MicroCode|Set_A\(0) & (AB(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AB(16),
	datac => \MicroCode|Set_A\(0),
	datad => PC(16),
	combout => \Mux138~2_combout\);

-- Location: LCCOMB_X23_Y6_N6
\Mux138~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~3_combout\ = (\MicroCode|Set_A\(2) & (((!\MicroCode|Set_A\(1))))) # (!\MicroCode|Set_A\(2) & (\Mux138~2_combout\ & (\MicroCode|Set_A\(0) $ (\MicroCode|Set_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \Mux138~2_combout\,
	datac => \MicroCode|Set_A\(2),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux138~3_combout\);

-- Location: LCCOMB_X21_Y7_N28
\SI[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SI[16]~feeder_combout\ = \Address[16]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Address[16]~0_combout\,
	combout => \SI[16]~feeder_combout\);

-- Location: FF_X21_Y7_N29
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

-- Location: LCCOMB_X25_Y7_N28
\Mux138~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~5_combout\ = (\Mux138~4_combout\ & ((\Mux138~3_combout\) # (SI(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux138~4_combout\,
	datac => \Mux138~3_combout\,
	datad => SI(16),
	combout => \Mux138~5_combout\);

-- Location: LCCOMB_X25_Y7_N10
\ArithmeticLogicUnit|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux7~0_combout\ = (\MicroCode|ALUOp\(1) & (\MicroCode|ALUOpL~q\ & (\ArithmeticLogicUnit|MSBAddition[13]~0_combout\))) # (!\MicroCode|ALUOp\(1) & (((AB(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOp\(1),
	datab => \MicroCode|ALUOpL~q\,
	datac => \ArithmeticLogicUnit|MSBAddition[13]~0_combout\,
	datad => AB(16),
	combout => \ArithmeticLogicUnit|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y7_N14
\Mux138~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~6_combout\ = (\Mux138~5_combout\ & (((!\MicroCode|Set_A\(0) & \ArithmeticLogicUnit|Mux7~0_combout\)) # (!\Mux138~3_combout\))) # (!\Mux138~5_combout\ & (((\Mux138~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \Mux138~5_combout\,
	datac => \Mux138~3_combout\,
	datad => \ArithmeticLogicUnit|Mux7~0_combout\,
	combout => \Mux138~6_combout\);

-- Location: LCCOMB_X26_Y7_N2
\Address[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[16]~0_combout\ = (\MicroCode|Set_A\(3) & (\Mux138~11_combout\)) # (!\MicroCode|Set_A\(3) & ((\Mux138~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datac => \Mux138~11_combout\,
	datad => \Mux138~6_combout\,
	combout => \Address[16]~0_combout\);

-- Location: LCCOMB_X26_Y7_N24
\AB~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~37_combout\ = (\MicroCode|Aa_in~q\ & \Address[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Aa_in~q\,
	datad => \Address[16]~0_combout\,
	combout => \AB~37_combout\);

-- Location: FF_X26_Y7_N25
\AB[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~37_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(16));

-- Location: LCCOMB_X24_Y7_N2
\ArithmeticLogicUnit|ADC_Q[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|ADC_Q[15]~22_combout\ = ((AB(15) $ (AB(39) $ (!\ArithmeticLogicUnit|ADC_Q[14]~21\)))) # (GND)
-- \ArithmeticLogicUnit|ADC_Q[15]~23\ = CARRY((AB(15) & ((AB(39)) # (!\ArithmeticLogicUnit|ADC_Q[14]~21\))) # (!AB(15) & (AB(39) & !\ArithmeticLogicUnit|ADC_Q[14]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AB(15),
	datab => AB(39),
	datad => VCC,
	cin => \ArithmeticLogicUnit|ADC_Q[14]~21\,
	combout => \ArithmeticLogicUnit|ADC_Q[15]~22_combout\,
	cout => \ArithmeticLogicUnit|ADC_Q[15]~23\);

-- Location: LCCOMB_X24_Y7_N4
\ArithmeticLogicUnit|MSBAddition[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|MSBAddition[13]~0_combout\ = (AB(16) & (!\ArithmeticLogicUnit|ADC_Q[15]~23\)) # (!AB(16) & ((\ArithmeticLogicUnit|ADC_Q[15]~23\) # (GND)))
-- \ArithmeticLogicUnit|MSBAddition[13]~1\ = CARRY((!\ArithmeticLogicUnit|ADC_Q[15]~23\) # (!AB(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AB(16),
	datad => VCC,
	cin => \ArithmeticLogicUnit|ADC_Q[15]~23\,
	combout => \ArithmeticLogicUnit|MSBAddition[13]~0_combout\,
	cout => \ArithmeticLogicUnit|MSBAddition[13]~1\);

-- Location: LCCOMB_X18_Y7_N14
\Address[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[22]~45_combout\ = (\MicroCode|Set_A\(3)) # (((!\MicroCode|Set_A\(0) & \MicroCode|Set_A\(1))) # (!\MicroCode|Set_A\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \MicroCode|Set_A\(2),
	datac => \MicroCode|Set_A\(0),
	datad => \MicroCode|Set_A\(1),
	combout => \Address[22]~45_combout\);

-- Location: FF_X21_Y7_N31
\SI[22]\ : dffeas
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
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(22));

-- Location: LCCOMB_X19_Y6_N22
\Address[22]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[22]~36_combout\ = (\MicroCode|Set_A\(1) & (AB(22) & ((!\MicroCode|Set_A\(0))))) # (!\MicroCode|Set_A\(1) & (((PC(22) & \MicroCode|Set_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => AB(22),
	datac => PC(22),
	datad => \MicroCode|Set_A\(0),
	combout => \Address[22]~36_combout\);

-- Location: LCCOMB_X19_Y6_N16
\Address[22]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[22]~37_combout\ = (\MicroCode|Set_A\(3) & (((\MicroCode|Set_A\(2))))) # (!\MicroCode|Set_A\(3) & ((\MicroCode|Set_A\(2) & (!\MicroCode|Set_A\(1))) # (!\MicroCode|Set_A\(2) & ((\Address[22]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \MicroCode|Set_A\(3),
	datac => \Address[22]~36_combout\,
	datad => \MicroCode|Set_A\(2),
	combout => \Address[22]~37_combout\);

-- Location: LCCOMB_X21_Y7_N30
\Address[22]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[22]~42_combout\ = (\Mux138~4_combout\ & ((\Address[22]~37_combout\ & (!\MicroCode|Set_A\(0))) # (!\Address[22]~37_combout\ & ((SI(22)))))) # (!\Mux138~4_combout\ & (((\Address[22]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \Mux138~4_combout\,
	datac => SI(22),
	datad => \Address[22]~37_combout\,
	combout => \Address[22]~42_combout\);

-- Location: FF_X16_Y7_N31
\EIR[46]\ : dffeas
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
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(46));

-- Location: LCCOMB_X17_Y7_N24
\Address[22]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[22]~reg0feeder_combout\ = \Address[22]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Address[22]~6_combout\,
	combout => \Address[22]~reg0feeder_combout\);

-- Location: FF_X17_Y7_N25
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
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[22]~reg0_q\);

-- Location: LCCOMB_X18_Y6_N2
\Address[22]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[22]~39_combout\ = (\MicroCode|Set_A\(1) & ((\Address[22]~reg0_q\))) # (!\MicroCode|Set_A\(1) & (!EIR(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(1),
	datac => EIR(46),
	datad => \Address[22]~reg0_q\,
	combout => \Address[22]~39_combout\);

-- Location: LCCOMB_X19_Y6_N20
\Mux138~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux138~8_combout\ = (!\MicroCode|Set_A\(1) & !\MicroCode|Set_A\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_A\(1),
	datad => \MicroCode|Set_A\(2),
	combout => \Mux138~8_combout\);

-- Location: LCCOMB_X19_Y6_N8
\Address[22]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[22]~38_combout\ = (\Address[22]~37_combout\ & ((\MicroCode|Set_A\(1) & ((!EIR(38)))) # (!\MicroCode|Set_A\(1) & (!EIR(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(22),
	datab => EIR(38),
	datac => \MicroCode|Set_A\(1),
	datad => \Address[22]~37_combout\,
	combout => \Address[22]~38_combout\);

-- Location: LCCOMB_X19_Y6_N30
\Address[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[22]~40_combout\ = (\MicroCode|Set_A\(0) & ((\Address[22]~39_combout\) # ((\Mux138~8_combout\)))) # (!\MicroCode|Set_A\(0) & (((\Address[22]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[22]~39_combout\,
	datab => \Mux138~8_combout\,
	datac => \Address[22]~38_combout\,
	datad => \MicroCode|Set_A\(0),
	combout => \Address[22]~40_combout\);

-- Location: FF_X19_Y6_N11
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

-- Location: LCCOMB_X19_Y6_N10
\Address[22]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[22]~41_combout\ = (\Address[22]~40_combout\ & ((\Address[22]~37_combout\) # ((\Mux138~8_combout\)))) # (!\Address[22]~40_combout\ & (((DI(22) & \Mux138~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[22]~40_combout\,
	datab => \Address[22]~37_combout\,
	datac => DI(22),
	datad => \Mux138~8_combout\,
	combout => \Address[22]~41_combout\);

-- Location: LCCOMB_X19_Y6_N0
\Address[22]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[22]~43_combout\ = (\MicroCode|Set_A\(3) & ((\Address[22]~41_combout\))) # (!\MicroCode|Set_A\(3) & (\Address[22]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(3),
	datac => \Address[22]~42_combout\,
	datad => \Address[22]~41_combout\,
	combout => \Address[22]~43_combout\);

-- Location: LCCOMB_X21_Y7_N20
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

-- Location: FF_X21_Y7_N21
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

-- Location: LCCOMB_X18_Y7_N10
\Mux133~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux133~2_combout\ = (\MicroCode|Set_A\(0) & (((PC(21)) # (\MicroCode|Set_A\(3))))) # (!\MicroCode|Set_A\(0) & (DI(21) & ((\MicroCode|Set_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(21),
	datab => PC(21),
	datac => \MicroCode|Set_A\(0),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux133~2_combout\);

-- Location: LCCOMB_X23_Y6_N4
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

-- Location: FF_X23_Y6_N5
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
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[20]~reg0_q\);

-- Location: FF_X17_Y5_N21
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

-- Location: LCCOMB_X17_Y5_N6
\Mux134~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux134~6_combout\ = (\MicroCode|Set_A\(1) & (((\MicroCode|Set_A\(0))))) # (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0) & ((!EIR(44)))) # (!\MicroCode|Set_A\(0) & (!EIR(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(20),
	datab => EIR(44),
	datac => \MicroCode|Set_A\(1),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux134~6_combout\);

-- Location: LCCOMB_X17_Y5_N28
\Mux134~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux134~7_combout\ = (\MicroCode|Set_A\(1) & ((\Mux134~6_combout\ & ((\Address[20]~reg0_q\))) # (!\Mux134~6_combout\ & (!EIR(36))))) # (!\MicroCode|Set_A\(1) & (((\Mux134~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(36),
	datab => \MicroCode|Set_A\(1),
	datac => \Address[20]~reg0_q\,
	datad => \Mux134~6_combout\,
	combout => \Mux134~7_combout\);

-- Location: FF_X19_Y6_N15
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

-- Location: LCCOMB_X19_Y6_N24
\Mux134~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux134~5_combout\ = (DI(20)) # (\MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => DI(20),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux134~5_combout\);

-- Location: LCCOMB_X18_Y6_N4
\Mux134~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux134~8_combout\ = (\MicroCode|Set_A\(2) & (((\Mux134~7_combout\)))) # (!\MicroCode|Set_A\(2) & (!\MicroCode|Set_A\(1) & ((\Mux134~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => \MicroCode|Set_A\(1),
	datac => \Mux134~7_combout\,
	datad => \Mux134~5_combout\,
	combout => \Mux134~8_combout\);

-- Location: FF_X21_Y7_N19
\SI[20]\ : dffeas
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
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(20));

-- Location: LCCOMB_X23_Y6_N20
\Mux134~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux134~9_combout\ = (\MicroCode|Set_A\(2) & ((!\MicroCode|Set_A\(1)))) # (!\MicroCode|Set_A\(2) & (AB(20) & \MicroCode|Set_A\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => AB(20),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux134~9_combout\);

-- Location: LCCOMB_X23_Y6_N30
\Mux134~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux134~10_combout\ = (\MicroCode|Set_A\(0) & (!\MicroCode|Set_A\(1) & ((PC(20)) # (\Mux134~9_combout\)))) # (!\MicroCode|Set_A\(0) & (((\Mux134~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(20),
	datab => \Mux134~9_combout\,
	datac => \MicroCode|Set_A\(0),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux134~10_combout\);

-- Location: LCCOMB_X23_Y6_N12
\Mux134~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux134~2_combout\ = (!\MicroCode|Set_A\(0) & ((AB(20)) # (\MicroCode|ALUOp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AB(20),
	datac => \MicroCode|Set_A\(0),
	datad => \MicroCode|ALUOp\(1),
	combout => \Mux134~2_combout\);

-- Location: FF_X25_Y6_N11
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

-- Location: LCCOMB_X25_Y6_N10
\Mux135~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux135~0_combout\ = (\MicroCode|Set_A\(0) & ((PC(19)) # ((\MicroCode|Set_A\(3))))) # (!\MicroCode|Set_A\(0) & (((DI(19) & \MicroCode|Set_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(19),
	datab => \MicroCode|Set_A\(0),
	datac => DI(19),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux135~0_combout\);

-- Location: LCCOMB_X25_Y6_N6
\Address[19]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[19]~44_combout\ = (\MicroCode|Set_A\(1) & (AB(19))) # (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(2) & (AB(19))) # (!\MicroCode|Set_A\(2) & ((\Mux135~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => AB(19),
	datac => \MicroCode|Set_A\(2),
	datad => \Mux135~0_combout\,
	combout => \Address[19]~44_combout\);

-- Location: FF_X18_Y7_N17
\Address[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address[18]~2_combout\,
	asdata => PC(18),
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|ALT_INV_AE~q\,
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[18]~reg0_q\);

-- Location: FF_X16_Y7_N15
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

-- Location: LCCOMB_X18_Y7_N20
\Mux136~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux136~5_combout\ = (\MicroCode|Set_A\(0) & (((\MicroCode|Set_A\(1))) # (!EIR(42)))) # (!\MicroCode|Set_A\(0) & (((!\MicroCode|Set_A\(1) & !EIR(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(42),
	datab => \MicroCode|Set_A\(0),
	datac => \MicroCode|Set_A\(1),
	datad => EIR(18),
	combout => \Mux136~5_combout\);

-- Location: LCCOMB_X18_Y7_N26
\Mux136~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux136~6_combout\ = (\MicroCode|Set_A\(1) & ((\Mux136~5_combout\ & ((\Address[18]~reg0_q\))) # (!\Mux136~5_combout\ & (!EIR(34))))) # (!\MicroCode|Set_A\(1) & (((\Mux136~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(34),
	datab => \Address[18]~reg0_q\,
	datac => \MicroCode|Set_A\(1),
	datad => \Mux136~5_combout\,
	combout => \Mux136~6_combout\);

-- Location: FF_X17_Y8_N21
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

-- Location: LCCOMB_X17_Y8_N20
\Mux136~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux136~4_combout\ = (!\MicroCode|Set_A\(2) & (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0)) # (DI(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(2),
	datab => \MicroCode|Set_A\(0),
	datac => DI(18),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux136~4_combout\);

-- Location: LCCOMB_X18_Y7_N12
\Mux136~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux136~7_combout\ = (\Mux136~4_combout\) # ((\MicroCode|Set_A\(2) & \Mux136~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(2),
	datac => \Mux136~6_combout\,
	datad => \Mux136~4_combout\,
	combout => \Mux136~7_combout\);

-- Location: LCCOMB_X18_Y7_N6
\Mux136~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux136~0_combout\ = (\MicroCode|Set_A\(0) & (PC(18))) # (!\MicroCode|Set_A\(0) & ((AB(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(18),
	datac => \MicroCode|Set_A\(0),
	datad => AB(18),
	combout => \Mux136~0_combout\);

-- Location: LCCOMB_X18_Y7_N24
\Mux136~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux136~1_combout\ = (\MicroCode|Set_A\(2) & (((!\MicroCode|Set_A\(1))))) # (!\MicroCode|Set_A\(2) & (\Mux136~0_combout\ & (\MicroCode|Set_A\(0) $ (\MicroCode|Set_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(2),
	datac => \MicroCode|Set_A\(1),
	datad => \Mux136~0_combout\,
	combout => \Mux136~1_combout\);

-- Location: FF_X21_Y7_N27
\SI[18]\ : dffeas
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
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(18));

-- Location: LCCOMB_X21_Y7_N26
\Mux136~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux136~2_combout\ = (\Mux138~4_combout\ & ((SI(18)) # (\Mux136~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux138~4_combout\,
	datac => SI(18),
	datad => \Mux136~1_combout\,
	combout => \Mux136~2_combout\);

-- Location: LCCOMB_X25_Y6_N26
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

-- Location: FF_X25_Y6_N27
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

-- Location: LCCOMB_X25_Y6_N4
\Mux137~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux137~0_combout\ = (\MicroCode|Set_A\(0) & (((PC(17)) # (\MicroCode|Set_A\(3))))) # (!\MicroCode|Set_A\(0) & (DI(17) & ((\MicroCode|Set_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(17),
	datab => \MicroCode|Set_A\(0),
	datac => PC(17),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux137~0_combout\);

-- Location: LCCOMB_X24_Y7_N6
\ArithmeticLogicUnit|MSBAddition[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|MSBAddition[14]~2_combout\ = (AB(17) & (\ArithmeticLogicUnit|MSBAddition[13]~1\ $ (GND))) # (!AB(17) & (!\ArithmeticLogicUnit|MSBAddition[13]~1\ & VCC))
-- \ArithmeticLogicUnit|MSBAddition[14]~3\ = CARRY((AB(17) & !\ArithmeticLogicUnit|MSBAddition[13]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => AB(17),
	datad => VCC,
	cin => \ArithmeticLogicUnit|MSBAddition[13]~1\,
	combout => \ArithmeticLogicUnit|MSBAddition[14]~2_combout\,
	cout => \ArithmeticLogicUnit|MSBAddition[14]~3\);

-- Location: LCCOMB_X26_Y7_N4
\ArithmeticLogicUnit|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux6~0_combout\ = (\MicroCode|ALUOp\(1) & (\MicroCode|ALUOpL~q\ & ((\ArithmeticLogicUnit|MSBAddition[14]~2_combout\)))) # (!\MicroCode|ALUOp\(1) & (((AB(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOpL~q\,
	datab => \MicroCode|ALUOp\(1),
	datac => AB(17),
	datad => \ArithmeticLogicUnit|MSBAddition[14]~2_combout\,
	combout => \ArithmeticLogicUnit|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y7_N0
\Mux133~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux133~1_combout\ = (\MicroCode|Set_A\(0) & (((\MicroCode|Set_A\(2))))) # (!\MicroCode|Set_A\(0) & ((\MicroCode|Set_A\(2) & (\MicroCode|Set_A\(1))) # (!\MicroCode|Set_A\(2) & ((!\MicroCode|Set_A\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(1),
	datac => \MicroCode|Set_A\(2),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux133~1_combout\);

-- Location: LCCOMB_X26_Y7_N26
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

-- Location: FF_X26_Y7_N27
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
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[17]~reg0_q\);

-- Location: FF_X18_Y8_N25
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

-- Location: FF_X16_Y7_N1
\EIR[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~45_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(41));

-- Location: LCCOMB_X17_Y8_N2
\Mux133~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux133~0_combout\ = (\MicroCode|Set_A\(1) & (!\MicroCode|Set_A\(0))) # (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(0),
	datac => \MicroCode|Set_A\(3),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux133~0_combout\);

-- Location: LCCOMB_X18_Y8_N18
\Mux137~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux137~1_combout\ = (\Mux151~5_combout\ & (((\Mux153~9_combout\) # (!\Mux133~0_combout\)))) # (!\Mux151~5_combout\ & (!EIR(41) & ((\Mux133~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(41),
	datab => \Mux153~9_combout\,
	datac => \Mux151~5_combout\,
	datad => \Mux133~0_combout\,
	combout => \Mux137~1_combout\);

-- Location: LCCOMB_X18_Y8_N24
\Mux137~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux137~2_combout\ = (\Mux151~3_combout\ & ((\Mux137~1_combout\ & (\Address[17]~reg0_q\)) # (!\Mux137~1_combout\ & ((SI(17)))))) # (!\Mux151~3_combout\ & (((\Mux137~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[17]~reg0_q\,
	datab => \Mux151~3_combout\,
	datac => SI(17),
	datad => \Mux137~1_combout\,
	combout => \Mux137~2_combout\);

-- Location: LCCOMB_X26_Y7_N18
\Mux137~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux137~3_combout\ = (\Mux133~1_combout\ & ((\Mux151~0_combout\ & ((\Mux137~2_combout\))) # (!\Mux151~0_combout\ & (AB(17))))) # (!\Mux133~1_combout\ & (((\Mux151~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(17),
	datab => \Mux133~1_combout\,
	datac => \Mux151~0_combout\,
	datad => \Mux137~2_combout\,
	combout => \Mux137~3_combout\);

-- Location: LCCOMB_X26_Y7_N16
\Mux137~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux137~4_combout\ = (\Mux151~2_combout\ & (((\Mux137~3_combout\)))) # (!\Mux151~2_combout\ & ((\Mux137~3_combout\ & (!EIR(17))) # (!\Mux137~3_combout\ & ((\ArithmeticLogicUnit|Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(17),
	datab => \Mux151~2_combout\,
	datac => \ArithmeticLogicUnit|Mux6~0_combout\,
	datad => \Mux137~3_combout\,
	combout => \Mux137~4_combout\);

-- Location: LCCOMB_X26_Y7_N28
\Address[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[17]~1_combout\ = (\Mux138~8_combout\ & (\Mux137~0_combout\)) # (!\Mux138~8_combout\ & ((\Mux137~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux137~0_combout\,
	datac => \Mux138~8_combout\,
	datad => \Mux137~4_combout\,
	combout => \Address[17]~1_combout\);

-- Location: LCCOMB_X26_Y7_N30
\AB~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~38_combout\ = (\MicroCode|Aa_in~q\ & \Address[17]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Aa_in~q\,
	datad => \Address[17]~1_combout\,
	combout => \AB~38_combout\);

-- Location: FF_X26_Y7_N31
\AB[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~38_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(17));

-- Location: LCCOMB_X24_Y7_N8
\ArithmeticLogicUnit|MSBAddition[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|MSBAddition[15]~4_combout\ = (AB(18) & (!\ArithmeticLogicUnit|MSBAddition[14]~3\)) # (!AB(18) & ((\ArithmeticLogicUnit|MSBAddition[14]~3\) # (GND)))
-- \ArithmeticLogicUnit|MSBAddition[15]~5\ = CARRY((!\ArithmeticLogicUnit|MSBAddition[14]~3\) # (!AB(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => AB(18),
	datad => VCC,
	cin => \ArithmeticLogicUnit|MSBAddition[14]~3\,
	combout => \ArithmeticLogicUnit|MSBAddition[15]~4_combout\,
	cout => \ArithmeticLogicUnit|MSBAddition[15]~5\);

-- Location: LCCOMB_X19_Y7_N26
\ArithmeticLogicUnit|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux5~0_combout\ = (\MicroCode|ALUOp\(1) & (\MicroCode|ALUOpL~q\ & ((\ArithmeticLogicUnit|MSBAddition[15]~4_combout\)))) # (!\MicroCode|ALUOp\(1) & (((AB(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOpL~q\,
	datab => \MicroCode|ALUOp\(1),
	datac => AB(18),
	datad => \ArithmeticLogicUnit|MSBAddition[15]~4_combout\,
	combout => \ArithmeticLogicUnit|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y7_N18
\Mux136~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux136~3_combout\ = (\Mux136~1_combout\ & (((!\MicroCode|Set_A\(0) & \ArithmeticLogicUnit|Mux5~0_combout\)) # (!\Mux136~2_combout\))) # (!\Mux136~1_combout\ & (((\Mux136~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \Mux136~1_combout\,
	datac => \Mux136~2_combout\,
	datad => \ArithmeticLogicUnit|Mux5~0_combout\,
	combout => \Mux136~3_combout\);

-- Location: LCCOMB_X18_Y7_N16
\Address[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[18]~2_combout\ = (\MicroCode|Set_A\(3) & (\Mux136~7_combout\)) # (!\MicroCode|Set_A\(3) & ((\Mux136~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux136~7_combout\,
	datab => \MicroCode|Set_A\(3),
	datad => \Mux136~3_combout\,
	combout => \Address[18]~2_combout\);

-- Location: LCCOMB_X28_Y7_N28
\AB~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~39_combout\ = (\Address[18]~2_combout\ & \MicroCode|Aa_in~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Address[18]~2_combout\,
	datad => \MicroCode|Aa_in~q\,
	combout => \AB~39_combout\);

-- Location: FF_X28_Y7_N29
\AB[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~39_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(18));

-- Location: LCCOMB_X24_Y7_N10
\ArithmeticLogicUnit|MSBAddition[16]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|MSBAddition[16]~6_combout\ = (AB(19) & (\ArithmeticLogicUnit|MSBAddition[15]~5\ $ (GND))) # (!AB(19) & (!\ArithmeticLogicUnit|MSBAddition[15]~5\ & VCC))
-- \ArithmeticLogicUnit|MSBAddition[16]~7\ = CARRY((AB(19) & !\ArithmeticLogicUnit|MSBAddition[15]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => AB(19),
	datad => VCC,
	cin => \ArithmeticLogicUnit|MSBAddition[15]~5\,
	combout => \ArithmeticLogicUnit|MSBAddition[16]~6_combout\,
	cout => \ArithmeticLogicUnit|MSBAddition[16]~7\);

-- Location: LCCOMB_X26_Y7_N22
\ArithmeticLogicUnit|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux4~0_combout\ = (\MicroCode|ALUOp\(1) & (\MicroCode|ALUOpL~q\ & ((\ArithmeticLogicUnit|MSBAddition[16]~6_combout\)))) # (!\MicroCode|ALUOp\(1) & (((AB(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOpL~q\,
	datab => \MicroCode|ALUOp\(1),
	datac => AB(19),
	datad => \ArithmeticLogicUnit|MSBAddition[16]~6_combout\,
	combout => \ArithmeticLogicUnit|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y7_N0
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

-- Location: FF_X26_Y7_N1
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
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[19]~reg0_q\);

-- Location: FF_X17_Y8_N31
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

-- Location: FF_X16_Y7_N17
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

-- Location: LCCOMB_X17_Y8_N0
\Mux135~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux135~1_combout\ = (\Mux133~0_combout\ & ((\Mux151~5_combout\ & ((\Mux151~15_combout\))) # (!\Mux151~5_combout\ & (!EIR(43))))) # (!\Mux133~0_combout\ & (((\Mux151~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(43),
	datab => \Mux151~15_combout\,
	datac => \Mux133~0_combout\,
	datad => \Mux151~5_combout\,
	combout => \Mux135~1_combout\);

-- Location: LCCOMB_X17_Y8_N30
\Address[19]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[19]~33_combout\ = (\Mux151~3_combout\ & ((\Mux135~1_combout\ & (\Address[19]~reg0_q\)) # (!\Mux135~1_combout\ & ((SI(19)))))) # (!\Mux151~3_combout\ & (((\Mux135~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[19]~reg0_q\,
	datab => \Mux151~3_combout\,
	datac => SI(19),
	datad => \Mux135~1_combout\,
	combout => \Address[19]~33_combout\);

-- Location: LCCOMB_X26_Y7_N20
\Address[19]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[19]~34_combout\ = (\Mux133~1_combout\ & ((\Mux151~0_combout\ & ((\Address[19]~33_combout\))) # (!\Mux151~0_combout\ & (\Address[19]~44_combout\)))) # (!\Mux133~1_combout\ & (((\Mux151~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux133~1_combout\,
	datab => \Address[19]~44_combout\,
	datac => \Mux151~0_combout\,
	datad => \Address[19]~33_combout\,
	combout => \Address[19]~34_combout\);

-- Location: LCCOMB_X26_Y7_N10
\Address[19]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[19]~35_combout\ = (\Mux151~2_combout\ & (((\Address[19]~34_combout\)))) # (!\Mux151~2_combout\ & ((\Address[19]~34_combout\ & (!EIR(19))) # (!\Address[19]~34_combout\ & ((\ArithmeticLogicUnit|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(19),
	datab => \Mux151~2_combout\,
	datac => \ArithmeticLogicUnit|Mux4~0_combout\,
	datad => \Address[19]~34_combout\,
	combout => \Address[19]~35_combout\);

-- Location: LCCOMB_X26_Y7_N6
\Address[19]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[19]~3_combout\ = (\Mux138~8_combout\ & (\Address[19]~44_combout\)) # (!\Mux138~8_combout\ & ((\Address[19]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Address[19]~44_combout\,
	datac => \Mux138~8_combout\,
	datad => \Address[19]~35_combout\,
	combout => \Address[19]~3_combout\);

-- Location: LCCOMB_X25_Y6_N0
\AB~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~40_combout\ = (\MicroCode|Aa_in~q\ & \Address[19]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Aa_in~q\,
	datac => \Address[19]~3_combout\,
	combout => \AB~40_combout\);

-- Location: FF_X25_Y6_N1
\AB[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~40_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(19));

-- Location: LCCOMB_X24_Y7_N12
\ArithmeticLogicUnit|MSBAddition[17]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|MSBAddition[17]~8_combout\ = (AB(20) & (!\ArithmeticLogicUnit|MSBAddition[16]~7\)) # (!AB(20) & ((\ArithmeticLogicUnit|MSBAddition[16]~7\) # (GND)))
-- \ArithmeticLogicUnit|MSBAddition[17]~9\ = CARRY((!\ArithmeticLogicUnit|MSBAddition[16]~7\) # (!AB(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => AB(20),
	datad => VCC,
	cin => \ArithmeticLogicUnit|MSBAddition[16]~7\,
	combout => \ArithmeticLogicUnit|MSBAddition[17]~8_combout\,
	cout => \ArithmeticLogicUnit|MSBAddition[17]~9\);

-- Location: LCCOMB_X23_Y6_N10
\Mux134~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux134~3_combout\ = (\Mux134~2_combout\ & (((\MicroCode|ALUOpL~q\ & \ArithmeticLogicUnit|MSBAddition[17]~8_combout\)) # (!\MicroCode|ALUOp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOp\(1),
	datab => \MicroCode|ALUOpL~q\,
	datac => \Mux134~2_combout\,
	datad => \ArithmeticLogicUnit|MSBAddition[17]~8_combout\,
	combout => \Mux134~3_combout\);

-- Location: LCCOMB_X23_Y6_N24
\Mux134~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux134~4_combout\ = (\Mux138~4_combout\ & ((\Mux134~10_combout\ & ((\Mux134~3_combout\))) # (!\Mux134~10_combout\ & (SI(20))))) # (!\Mux138~4_combout\ & (((\Mux134~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux138~4_combout\,
	datab => SI(20),
	datac => \Mux134~10_combout\,
	datad => \Mux134~3_combout\,
	combout => \Mux134~4_combout\);

-- Location: LCCOMB_X23_Y6_N2
\Address[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[20]~4_combout\ = (\MicroCode|Set_A\(3) & (\Mux134~8_combout\)) # (!\MicroCode|Set_A\(3) & ((\Mux134~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datac => \Mux134~8_combout\,
	datad => \Mux134~4_combout\,
	combout => \Address[20]~4_combout\);

-- Location: LCCOMB_X24_Y6_N26
\AB~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~41_combout\ = (\MicroCode|Aa_in~q\ & \Address[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Aa_in~q\,
	datad => \Address[20]~4_combout\,
	combout => \AB~41_combout\);

-- Location: FF_X24_Y6_N27
\AB[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~41_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(20));

-- Location: LCCOMB_X24_Y7_N14
\ArithmeticLogicUnit|MSBAddition[18]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|MSBAddition[18]~10_combout\ = (AB(21) & (\ArithmeticLogicUnit|MSBAddition[17]~9\ $ (GND))) # (!AB(21) & (!\ArithmeticLogicUnit|MSBAddition[17]~9\ & VCC))
-- \ArithmeticLogicUnit|MSBAddition[18]~11\ = CARRY((AB(21) & !\ArithmeticLogicUnit|MSBAddition[17]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AB(21),
	datad => VCC,
	cin => \ArithmeticLogicUnit|MSBAddition[17]~9\,
	combout => \ArithmeticLogicUnit|MSBAddition[18]~10_combout\,
	cout => \ArithmeticLogicUnit|MSBAddition[18]~11\);

-- Location: LCCOMB_X22_Y7_N8
\ArithmeticLogicUnit|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux2~0_combout\ = (\MicroCode|ALUOp\(1) & (((\MicroCode|ALUOpL~q\ & \ArithmeticLogicUnit|MSBAddition[18]~10_combout\)))) # (!\MicroCode|ALUOp\(1) & (AB(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOp\(1),
	datab => AB(21),
	datac => \MicroCode|ALUOpL~q\,
	datad => \ArithmeticLogicUnit|MSBAddition[18]~10_combout\,
	combout => \ArithmeticLogicUnit|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y7_N12
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

-- Location: FF_X22_Y7_N13
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
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[21]~reg0_q\);

-- Location: FF_X18_Y4_N19
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

-- Location: FF_X18_Y7_N9
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

-- Location: LCCOMB_X18_Y4_N28
\Mux133~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux133~3_combout\ = (\Mux151~5_combout\ & ((\Mux149~9_combout\) # ((!\Mux133~0_combout\)))) # (!\Mux151~5_combout\ & (((!EIR(45) & \Mux133~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux149~9_combout\,
	datab => EIR(45),
	datac => \Mux151~5_combout\,
	datad => \Mux133~0_combout\,
	combout => \Mux133~3_combout\);

-- Location: LCCOMB_X18_Y4_N18
\Mux133~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux133~4_combout\ = (\Mux151~3_combout\ & ((\Mux133~3_combout\ & (\Address[21]~reg0_q\)) # (!\Mux133~3_combout\ & ((SI(21)))))) # (!\Mux151~3_combout\ & (((\Mux133~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~3_combout\,
	datab => \Address[21]~reg0_q\,
	datac => SI(21),
	datad => \Mux133~3_combout\,
	combout => \Mux133~4_combout\);

-- Location: LCCOMB_X22_Y7_N2
\Mux133~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux133~5_combout\ = (\Mux151~0_combout\ & (((\Mux133~4_combout\) # (!\Mux133~1_combout\)))) # (!\Mux151~0_combout\ & (AB(21) & (\Mux133~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~0_combout\,
	datab => AB(21),
	datac => \Mux133~1_combout\,
	datad => \Mux133~4_combout\,
	combout => \Mux133~5_combout\);

-- Location: LCCOMB_X22_Y7_N16
\Mux133~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux133~6_combout\ = (\Mux151~2_combout\ & (((\Mux133~5_combout\)))) # (!\Mux151~2_combout\ & ((\Mux133~5_combout\ & (!EIR(21))) # (!\Mux133~5_combout\ & ((\ArithmeticLogicUnit|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(21),
	datab => \Mux151~2_combout\,
	datac => \ArithmeticLogicUnit|Mux2~0_combout\,
	datad => \Mux133~5_combout\,
	combout => \Mux133~6_combout\);

-- Location: LCCOMB_X22_Y7_N28
\Address[21]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[21]~5_combout\ = (\Mux138~8_combout\ & (\Mux133~2_combout\)) # (!\Mux138~8_combout\ & ((\Mux133~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux138~8_combout\,
	datac => \Mux133~2_combout\,
	datad => \Mux133~6_combout\,
	combout => \Address[21]~5_combout\);

-- Location: LCCOMB_X22_Y6_N10
\AB~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~42_combout\ = (\MicroCode|Aa_in~q\ & \Address[21]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Aa_in~q\,
	datad => \Address[21]~5_combout\,
	combout => \AB~42_combout\);

-- Location: FF_X22_Y6_N11
\AB[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~42_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(21));

-- Location: LCCOMB_X24_Y7_N16
\ArithmeticLogicUnit|MSBAddition[19]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|MSBAddition[19]~12_combout\ = (AB(22) & (!\ArithmeticLogicUnit|MSBAddition[18]~11\)) # (!AB(22) & ((\ArithmeticLogicUnit|MSBAddition[18]~11\) # (GND)))
-- \ArithmeticLogicUnit|MSBAddition[19]~13\ = CARRY((!\ArithmeticLogicUnit|MSBAddition[18]~11\) # (!AB(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => AB(22),
	datad => VCC,
	cin => \ArithmeticLogicUnit|MSBAddition[18]~11\,
	combout => \ArithmeticLogicUnit|MSBAddition[19]~12_combout\,
	cout => \ArithmeticLogicUnit|MSBAddition[19]~13\);

-- Location: LCCOMB_X19_Y7_N30
\ArithmeticLogicUnit|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux1~0_combout\ = (\MicroCode|ALUOp\(1) & (\MicroCode|ALUOpL~q\ & ((\ArithmeticLogicUnit|MSBAddition[19]~12_combout\)))) # (!\MicroCode|ALUOp\(1) & (((AB(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOpL~q\,
	datab => AB(22),
	datac => \MicroCode|ALUOp\(1),
	datad => \ArithmeticLogicUnit|MSBAddition[19]~12_combout\,
	combout => \ArithmeticLogicUnit|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y7_N28
\Address[22]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[22]~6_combout\ = (\Address[22]~43_combout\ & ((\Address[22]~45_combout\) # ((\ArithmeticLogicUnit|Mux1~0_combout\) # (!\Address[22]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address[22]~45_combout\,
	datab => \Address[22]~43_combout\,
	datac => \ArithmeticLogicUnit|Mux1~0_combout\,
	datad => \Address[22]~37_combout\,
	combout => \Address[22]~6_combout\);

-- Location: LCCOMB_X19_Y7_N24
\AB~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~43_combout\ = (\MicroCode|Aa_in~q\ & \Address[22]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Aa_in~q\,
	datad => \Address[22]~6_combout\,
	combout => \AB~43_combout\);

-- Location: FF_X19_Y7_N25
\AB[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~43_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(22));

-- Location: LCCOMB_X24_Y7_N18
\ArithmeticLogicUnit|MSBAddition[20]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|MSBAddition[20]~14_combout\ = (AB(23) & (\ArithmeticLogicUnit|MSBAddition[19]~13\ $ (GND))) # (!AB(23) & (!\ArithmeticLogicUnit|MSBAddition[19]~13\ & VCC))
-- \ArithmeticLogicUnit|MSBAddition[20]~15\ = CARRY((AB(23) & !\ArithmeticLogicUnit|MSBAddition[19]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => AB(23),
	datad => VCC,
	cin => \ArithmeticLogicUnit|MSBAddition[19]~13\,
	combout => \ArithmeticLogicUnit|MSBAddition[20]~14_combout\,
	cout => \ArithmeticLogicUnit|MSBAddition[20]~15\);

-- Location: LCCOMB_X24_Y7_N20
\ArithmeticLogicUnit|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add2~2_combout\ = \ArithmeticLogicUnit|MSBAddition[20]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ArithmeticLogicUnit|MSBAddition[20]~15\,
	combout => \ArithmeticLogicUnit|Add2~2_combout\);

-- Location: LCCOMB_X25_Y7_N4
\ArithmeticLogicUnit|ADC_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|ADC_C~0_combout\ = (\MicroCode|ALUOpL~q\ & ((\ArithmeticLogicUnit|Add2~2_combout\))) # (!\MicroCode|ALUOpL~q\ & (\ArithmeticLogicUnit|MSBAddition[13]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|ALUOpL~q\,
	datac => \ArithmeticLogicUnit|MSBAddition[13]~0_combout\,
	datad => \ArithmeticLogicUnit|Add2~2_combout\,
	combout => \ArithmeticLogicUnit|ADC_C~0_combout\);

-- Location: LCCOMB_X22_Y10_N28
\FR[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FR[11]~1_combout\ = (\rst~input_o\ & (\MicroCode|ALUOp\(1) & \Enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \MicroCode|ALUOp\(1),
	datad => \Enable~input_o\,
	combout => \FR[11]~1_combout\);

-- Location: FF_X25_Y7_N5
\FR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ArithmeticLogicUnit|ADC_C~0_combout\,
	ena => \FR[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FR(0));

-- Location: LCCOMB_X22_Y9_N20
\Mux130~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~4_combout\ = (\MicroCode|Set_D\(1) & ((AB(24)) # ((\MicroCode|Set_D\(2))))) # (!\MicroCode|Set_D\(1) & (((FR(0) & !\MicroCode|Set_D\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(24),
	datab => FR(0),
	datac => \MicroCode|Set_D\(1),
	datad => \MicroCode|Set_D\(2),
	combout => \Mux130~4_combout\);

-- Location: LCCOMB_X22_Y9_N30
\Mux130~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~5_combout\ = (\MicroCode|Set_D\(2) & ((\Mux130~4_combout\ & ((X(0)))) # (!\Mux130~4_combout\ & (IR(0))))) # (!\MicroCode|Set_D\(2) & (((\Mux130~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(0),
	datab => \MicroCode|Set_D\(2),
	datac => X(0),
	datad => \Mux130~4_combout\,
	combout => \Mux130~5_combout\);

-- Location: LCCOMB_X17_Y4_N20
\Mux130~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~8_combout\ = (\MicroCode|Set_D\(3) & (\MicroCode|Set_D\(0))) # (!\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0) & ((\Mux130~5_combout\))) # (!\MicroCode|Set_D\(0) & (\Mux130~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(0),
	datac => \Mux130~39_combout\,
	datad => \Mux130~5_combout\,
	combout => \Mux130~8_combout\);

-- Location: LCCOMB_X17_Y4_N26
\Mux130~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~11_combout\ = (\MicroCode|Set_D\(3) & ((\Mux130~8_combout\ & (\Mux130~10_combout\)) # (!\Mux130~8_combout\ & ((\Mux130~3_combout\))))) # (!\MicroCode|Set_D\(3) & (((\Mux130~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \Mux130~10_combout\,
	datac => \Mux130~3_combout\,
	datad => \Mux130~8_combout\,
	combout => \Mux130~11_combout\);

-- Location: FF_X17_Y5_N5
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

-- Location: FF_X18_Y6_N13
\SI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux154~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(0));

-- Location: LCCOMB_X23_Y6_N18
\DI[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DI[0]~feeder_combout\ = \Mux154~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux154~7_combout\,
	combout => \DI[0]~feeder_combout\);

-- Location: FF_X23_Y6_N19
\DI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DI[0]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(0));

-- Location: LCCOMB_X18_Y6_N8
\Mux130~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~14_combout\ = (\MicroCode|Set_D\(0) & (((DI(0)) # (\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (SI(0) & ((!\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SI(0),
	datab => \MicroCode|Set_D\(0),
	datac => DI(0),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux130~14_combout\);

-- Location: LCCOMB_X17_Y4_N12
\Mux130~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~15_combout\ = (\MicroCode|Set_D\(3) & ((\Mux130~14_combout\ & (!EIR(16))) # (!\Mux130~14_combout\ & ((!EIR(0)))))) # (!\MicroCode|Set_D\(3) & (((\Mux130~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(16),
	datab => EIR(0),
	datac => \MicroCode|Set_D\(3),
	datad => \Mux130~14_combout\,
	combout => \Mux130~15_combout\);

-- Location: LCCOMB_X17_Y4_N14
\Mux130~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~17_combout\ = (\MicroCode|Set_D\(1) & ((\MicroCode|Set_D\(2)) # ((\Mux130~15_combout\)))) # (!\MicroCode|Set_D\(1) & (!\MicroCode|Set_D\(2) & (\Mux130~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(2),
	datac => \Mux130~16_combout\,
	datad => \Mux130~15_combout\,
	combout => \Mux130~17_combout\);

-- Location: LCCOMB_X17_Y4_N28
\Mux130~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~12_combout\ = (\Data[0]~input_o\ & (\MicroCode|Set_D\(3) & !\MicroCode|Set_D\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[0]~input_o\,
	datac => \MicroCode|Set_D\(3),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux130~12_combout\);

-- Location: LCCOMB_X17_Y4_N24
\Mux130~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~18_combout\ = (\MicroCode|Set_D\(2) & (((!\Mux130~17_combout\ & \Mux130~12_combout\)) # (!\Mux130~13_combout\))) # (!\MicroCode|Set_D\(2) & (((\Mux130~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux130~13_combout\,
	datab => \MicroCode|Set_D\(2),
	datac => \Mux130~17_combout\,
	datad => \Mux130~12_combout\,
	combout => \Mux130~18_combout\);

-- Location: LCCOMB_X17_Y4_N0
\AB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[0]~0_combout\ = (\MicroCode|Set_D\(4) & ((\Mux130~18_combout\))) # (!\MicroCode|Set_D\(4) & (\Mux130~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(4),
	datac => \Mux130~11_combout\,
	datad => \Mux130~18_combout\,
	combout => \AB[0]~0_combout\);

-- Location: LCCOMB_X23_Y8_N16
\AB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[0]~feeder_combout\ = \AB[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AB[0]~0_combout\,
	combout => \AB[0]~feeder_combout\);

-- Location: FF_X23_Y8_N17
\AB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB[0]~feeder_combout\,
	asdata => \Mux154~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|Aa_in~q\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(0));

-- Location: LCCOMB_X24_Y8_N2
\ArithmeticLogicUnit|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add1~2_combout\ = (AB(25) & ((AB(1) & (\ArithmeticLogicUnit|Add1~1\ & VCC)) # (!AB(1) & (!\ArithmeticLogicUnit|Add1~1\)))) # (!AB(25) & ((AB(1) & (!\ArithmeticLogicUnit|Add1~1\)) # (!AB(1) & ((\ArithmeticLogicUnit|Add1~1\) # (GND)))))
-- \ArithmeticLogicUnit|Add1~3\ = CARRY((AB(25) & (!AB(1) & !\ArithmeticLogicUnit|Add1~1\)) # (!AB(25) & ((!\ArithmeticLogicUnit|Add1~1\) # (!AB(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AB(25),
	datab => AB(1),
	datad => VCC,
	cin => \ArithmeticLogicUnit|Add1~1\,
	combout => \ArithmeticLogicUnit|Add1~2_combout\,
	cout => \ArithmeticLogicUnit|Add1~3\);

-- Location: LCCOMB_X26_Y4_N28
\ArithmeticLogicUnit|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux22~0_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|Add1~2_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(25)) # ((AB(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(25),
	datab => AB(1),
	datac => \ArithmeticLogicUnit|Add1~2_combout\,
	datad => \MicroCode|ALUOp\(1),
	combout => \ArithmeticLogicUnit|Mux22~0_combout\);

-- Location: LCCOMB_X18_Y8_N22
\Mux153~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~4_combout\ = (\Mux151~2_combout\ & ((\Mux151~0_combout\) # ((\Mux153~3_combout\)))) # (!\Mux151~2_combout\ & (!\Mux151~0_combout\ & ((\ArithmeticLogicUnit|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~2_combout\,
	datab => \Mux151~0_combout\,
	datac => \Mux153~3_combout\,
	datad => \ArithmeticLogicUnit|Mux22~0_combout\,
	combout => \Mux153~4_combout\);

-- Location: FF_X18_Y8_N1
\SI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux153~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(1));

-- Location: LCCOMB_X18_Y8_N20
\Address~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~16_combout\ = (\MicroCode|AE~q\ & ((\Mux153~8_combout\))) # (!\MicroCode|AE~q\ & (PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|AE~q\,
	datac => PC(1),
	datad => \Mux153~8_combout\,
	combout => \Address~16_combout\);

-- Location: FF_X18_Y8_N21
\Address[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[1]~reg0_q\);

-- Location: LCCOMB_X18_Y8_N14
\Mux153~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~6_combout\ = (\Mux151~5_combout\ & (((!EIR(17) & \Mux151~4_combout\)))) # (!\Mux151~5_combout\ & ((\Mux153~5_combout\) # ((!\Mux151~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~5_combout\,
	datab => EIR(17),
	datac => \Mux151~5_combout\,
	datad => \Mux151~4_combout\,
	combout => \Mux153~6_combout\);

-- Location: LCCOMB_X18_Y8_N16
\Mux153~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~7_combout\ = (\Mux153~6_combout\ & ((SI(1)) # ((!\Mux151~3_combout\)))) # (!\Mux153~6_combout\ & (((\Address[1]~reg0_q\ & \Mux151~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SI(1),
	datab => \Address[1]~reg0_q\,
	datac => \Mux153~6_combout\,
	datad => \Mux151~3_combout\,
	combout => \Mux153~7_combout\);

-- Location: LCCOMB_X18_Y8_N2
\Mux153~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~8_combout\ = (\Mux151~0_combout\ & ((\Mux153~4_combout\ & ((\Mux153~7_combout\))) # (!\Mux153~4_combout\ & (!EIR(1))))) # (!\Mux151~0_combout\ & (((\Mux153~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(1),
	datab => \Mux151~0_combout\,
	datac => \Mux153~4_combout\,
	datad => \Mux153~7_combout\,
	combout => \Mux153~8_combout\);

-- Location: FF_X19_Y4_N25
\DI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux153~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(1));

-- Location: LCCOMB_X18_Y8_N0
\Mux130~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~27_combout\ = (\MicroCode|Set_D\(0) & ((DI(1)) # ((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (((SI(1) & !\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => DI(1),
	datac => SI(1),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux130~27_combout\);

-- Location: LCCOMB_X18_Y8_N8
\Mux130~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~28_combout\ = (\MicroCode|Set_D\(3) & ((\Mux130~27_combout\ & (!EIR(17))) # (!\Mux130~27_combout\ & ((!EIR(1)))))) # (!\MicroCode|Set_D\(3) & (((\Mux130~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => EIR(17),
	datac => EIR(1),
	datad => \Mux130~27_combout\,
	combout => \Mux130~28_combout\);

-- Location: LCCOMB_X17_Y4_N16
\Mux129~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux129~2_combout\ = (\MicroCode|Set_D\(1) & ((\MicroCode|Set_D\(2)) # ((\Mux130~28_combout\)))) # (!\MicroCode|Set_D\(1) & (!\MicroCode|Set_D\(2) & (\Mux130~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(2),
	datac => \Mux130~29_combout\,
	datad => \Mux130~28_combout\,
	combout => \Mux129~2_combout\);

-- Location: LCCOMB_X17_Y4_N22
\Mux129~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux129~3_combout\ = (\MicroCode|Set_D\(2) & ((\Mux129~2_combout\ & (!\Mux130~13_combout\)) # (!\Mux129~2_combout\ & ((\Mux130~26_combout\))))) # (!\MicroCode|Set_D\(2) & (((\Mux129~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux130~13_combout\,
	datab => \MicroCode|Set_D\(2),
	datac => \Mux130~26_combout\,
	datad => \Mux129~2_combout\,
	combout => \Mux129~3_combout\);

-- Location: FF_X21_Y4_N3
\Z[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[9]~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(9));

-- Location: FF_X21_Y4_N19
\X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[1]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(1));

-- Location: LCCOMB_X21_Y4_N18
\Mux130~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~24_combout\ = (\MicroCode|Set_D\(3) & (((\MicroCode|Set_D\(0))))) # (!\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0) & ((X(1)))) # (!\MicroCode|Set_D\(0) & (PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => PC(1),
	datac => X(1),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux130~24_combout\);

-- Location: FF_X21_Y4_N25
\Z[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[1]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(1));

-- Location: LCCOMB_X21_Y4_N24
\Mux130~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~25_combout\ = (\Mux130~24_combout\ & (((Z(1)) # (!\MicroCode|Set_D\(3))))) # (!\Mux130~24_combout\ & (Z(9) & ((\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Z(9),
	datab => \Mux130~24_combout\,
	datac => Z(1),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux130~25_combout\);

-- Location: FF_X26_Y4_N27
\Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[1]~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(1));

-- Location: LCCOMB_X26_Y4_N24
\Mux130~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~19_combout\ = (\MicroCode|Set_D\(0) & (((IR(1)) # (\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (\ArithmeticLogicUnit|Mux22~0_combout\ & ((!\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \ArithmeticLogicUnit|Mux22~0_combout\,
	datac => IR(1),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux130~19_combout\);

-- Location: LCCOMB_X26_Y4_N26
\Mux130~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~20_combout\ = (\MicroCode|Set_D\(3) & ((\Mux130~19_combout\ & (Z(1))) # (!\Mux130~19_combout\ & ((Y(1)))))) # (!\MicroCode|Set_D\(3) & (((\Mux130~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => Z(1),
	datac => Y(1),
	datad => \Mux130~19_combout\,
	combout => \Mux130~20_combout\);

-- Location: FF_X21_Y4_N21
\X[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[9]~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(9));

-- Location: LCCOMB_X21_Y4_N20
\Mux130~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~23_combout\ = (\MicroCode|Set_D\(0) & ((X(1)) # ((!\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (((X(9) & \MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => X(1),
	datac => X(9),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux130~23_combout\);

-- Location: LCCOMB_X26_Y4_N18
\Mux130~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~21_combout\ = (\MicroCode|Set_D\(0) & ((AB(25)) # ((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (((AB(1) & !\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(25),
	datab => AB(1),
	datac => \MicroCode|Set_D\(0),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux130~21_combout\);

-- Location: FF_X26_Y4_N21
\Y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[9]~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(9));

-- Location: LCCOMB_X26_Y4_N20
\Mux130~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~22_combout\ = (\Mux130~21_combout\ & (((Y(9)) # (!\MicroCode|Set_D\(3))))) # (!\Mux130~21_combout\ & (Y(1) & ((\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Y(1),
	datab => \Mux130~21_combout\,
	datac => Y(9),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux130~22_combout\);

-- Location: LCCOMB_X26_Y4_N6
\Mux129~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux129~0_combout\ = (\MicroCode|Set_D\(2) & (\MicroCode|Set_D\(1))) # (!\MicroCode|Set_D\(2) & ((\MicroCode|Set_D\(1) & ((\Mux130~22_combout\))) # (!\MicroCode|Set_D\(1) & (\Mux130~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \MicroCode|Set_D\(1),
	datac => \Mux130~23_combout\,
	datad => \Mux130~22_combout\,
	combout => \Mux129~0_combout\);

-- Location: LCCOMB_X17_Y4_N2
\Mux129~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux129~1_combout\ = (\MicroCode|Set_D\(2) & ((\Mux129~0_combout\ & (\Mux130~25_combout\)) # (!\Mux129~0_combout\ & ((\Mux130~20_combout\))))) # (!\MicroCode|Set_D\(2) & (((\Mux129~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \Mux130~25_combout\,
	datac => \Mux130~20_combout\,
	datad => \Mux129~0_combout\,
	combout => \Mux129~1_combout\);

-- Location: LCCOMB_X17_Y4_N18
\AB[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[1]~1_combout\ = (\MicroCode|Set_D\(4) & (\Mux129~3_combout\)) # (!\MicroCode|Set_D\(4) & ((\Mux129~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(4),
	datac => \Mux129~3_combout\,
	datad => \Mux129~1_combout\,
	combout => \AB[1]~1_combout\);

-- Location: LCCOMB_X25_Y8_N4
\AB~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~13_combout\ = (!\MicroCode|Bs_in~q\ & \AB[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Bs_in~q\,
	datad => \AB[1]~1_combout\,
	combout => \AB~13_combout\);

-- Location: FF_X25_Y8_N5
\AB[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~13_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(25));

-- Location: LCCOMB_X24_Y8_N4
\ArithmeticLogicUnit|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add1~4_combout\ = ((AB(26) $ (AB(2) $ (!\ArithmeticLogicUnit|Add1~3\)))) # (GND)
-- \ArithmeticLogicUnit|Add1~5\ = CARRY((AB(26) & ((AB(2)) # (!\ArithmeticLogicUnit|Add1~3\))) # (!AB(26) & (AB(2) & !\ArithmeticLogicUnit|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AB(26),
	datab => AB(2),
	datad => VCC,
	cin => \ArithmeticLogicUnit|Add1~3\,
	combout => \ArithmeticLogicUnit|Add1~4_combout\,
	cout => \ArithmeticLogicUnit|Add1~5\);

-- Location: LCCOMB_X24_Y6_N8
\ArithmeticLogicUnit|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux21~0_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|Add1~4_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(26)) # ((AB(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(26),
	datab => AB(2),
	datac => \MicroCode|ALUOp\(1),
	datad => \ArithmeticLogicUnit|Add1~4_combout\,
	combout => \ArithmeticLogicUnit|Mux21~0_combout\);

-- Location: LCCOMB_X22_Y6_N30
\Mux130~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~30_combout\ = (\MicroCode|Set_D\(3) & (((\MicroCode|Set_D\(0))))) # (!\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0) & ((IR(2)))) # (!\MicroCode|Set_D\(0) & (\ArithmeticLogicUnit|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Mux21~0_combout\,
	datab => \MicroCode|Set_D\(3),
	datac => IR(2),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux130~30_combout\);

-- Location: FF_X22_Y9_N13
\Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux128~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(2));

-- Location: LCCOMB_X22_Y6_N20
\Mux130~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~31_combout\ = (\Mux130~30_combout\ & (((Z(2)) # (!\MicroCode|Set_D\(3))))) # (!\Mux130~30_combout\ & (Y(2) & (\MicroCode|Set_D\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux130~30_combout\,
	datab => Y(2),
	datac => \MicroCode|Set_D\(3),
	datad => Z(2),
	combout => \Mux130~31_combout\);

-- Location: LCCOMB_X21_Y4_N30
\Mux128~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~0_combout\ = (\MicroCode|Set_D\(4) & (\Data[2]~input_o\ & (\Mux130~16_combout\))) # (!\MicroCode|Set_D\(4) & (((\Mux130~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[2]~input_o\,
	datab => \MicroCode|Set_D\(4),
	datac => \Mux130~16_combout\,
	datad => \Mux130~31_combout\,
	combout => \Mux128~0_combout\);

-- Location: LCCOMB_X22_Y6_N6
\ArithmeticLogicUnit|temp_parity~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|temp_parity~10_combout\ = \ArithmeticLogicUnit|ADC_Q[7]~6_combout\ $ (\ArithmeticLogicUnit|ADC_Q[8]~8_combout\ $ (\ArithmeticLogicUnit|ADC_Q[5]~2_combout\ $ (\ArithmeticLogicUnit|ADC_Q[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|ADC_Q[7]~6_combout\,
	datab => \ArithmeticLogicUnit|ADC_Q[8]~8_combout\,
	datac => \ArithmeticLogicUnit|ADC_Q[5]~2_combout\,
	datad => \ArithmeticLogicUnit|ADC_Q[6]~4_combout\,
	combout => \ArithmeticLogicUnit|temp_parity~10_combout\);

-- Location: LCCOMB_X22_Y6_N14
\ArithmeticLogicUnit|temp_parity~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|temp_parity~12_combout\ = \ArithmeticLogicUnit|ADC_Q[15]~22_combout\ $ (\ArithmeticLogicUnit|ADC_Q[14]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ArithmeticLogicUnit|ADC_Q[15]~22_combout\,
	datad => \ArithmeticLogicUnit|ADC_Q[14]~20_combout\,
	combout => \ArithmeticLogicUnit|temp_parity~12_combout\);

-- Location: LCCOMB_X22_Y6_N16
\ArithmeticLogicUnit|temp_parity~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|temp_parity~11_combout\ = \ArithmeticLogicUnit|ADC_Q[11]~14_combout\ $ (\ArithmeticLogicUnit|ADC_Q[12]~16_combout\ $ (\ArithmeticLogicUnit|ADC_Q[10]~12_combout\ $ (\ArithmeticLogicUnit|ADC_Q[9]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|ADC_Q[11]~14_combout\,
	datab => \ArithmeticLogicUnit|ADC_Q[12]~16_combout\,
	datac => \ArithmeticLogicUnit|ADC_Q[10]~12_combout\,
	datad => \ArithmeticLogicUnit|ADC_Q[9]~10_combout\,
	combout => \ArithmeticLogicUnit|temp_parity~11_combout\);

-- Location: LCCOMB_X22_Y6_N4
\ArithmeticLogicUnit|temp_parity~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|temp_parity~13_combout\ = \ArithmeticLogicUnit|temp_parity~10_combout\ $ (\ArithmeticLogicUnit|ADC_Q[13]~18_combout\ $ (\ArithmeticLogicUnit|temp_parity~12_combout\ $ (\ArithmeticLogicUnit|temp_parity~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|temp_parity~10_combout\,
	datab => \ArithmeticLogicUnit|ADC_Q[13]~18_combout\,
	datac => \ArithmeticLogicUnit|temp_parity~12_combout\,
	datad => \ArithmeticLogicUnit|temp_parity~11_combout\,
	combout => \ArithmeticLogicUnit|temp_parity~13_combout\);

-- Location: LCCOMB_X23_Y7_N24
\ArithmeticLogicUnit|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux3~0_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|MSBAddition[17]~8_combout\ & \MicroCode|ALUOpL~q\)))) # (!\MicroCode|ALUOp\(1) & (AB(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOp\(1),
	datab => AB(20),
	datac => \ArithmeticLogicUnit|MSBAddition[17]~8_combout\,
	datad => \MicroCode|ALUOpL~q\,
	combout => \ArithmeticLogicUnit|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y7_N12
\ArithmeticLogicUnit|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux29~1_combout\ = \ArithmeticLogicUnit|Mux7~0_combout\ $ (\ArithmeticLogicUnit|Mux3~0_combout\ $ (\ArithmeticLogicUnit|Mux1~0_combout\ $ (\ArithmeticLogicUnit|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Mux7~0_combout\,
	datab => \ArithmeticLogicUnit|Mux3~0_combout\,
	datac => \ArithmeticLogicUnit|Mux1~0_combout\,
	datad => \ArithmeticLogicUnit|Mux4~0_combout\,
	combout => \ArithmeticLogicUnit|Mux29~1_combout\);

-- Location: LCCOMB_X22_Y7_N10
\ArithmeticLogicUnit|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux0~0_combout\ = (\MicroCode|ALUOp\(1) & (((\MicroCode|ALUOpL~q\ & \ArithmeticLogicUnit|MSBAddition[20]~14_combout\)))) # (!\MicroCode|ALUOp\(1) & (AB(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(23),
	datab => \MicroCode|ALUOp\(1),
	datac => \MicroCode|ALUOpL~q\,
	datad => \ArithmeticLogicUnit|MSBAddition[20]~14_combout\,
	combout => \ArithmeticLogicUnit|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y7_N14
\ArithmeticLogicUnit|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux29~0_combout\ = \ArithmeticLogicUnit|Mux2~0_combout\ $ (\ArithmeticLogicUnit|Mux6~0_combout\ $ (\ArithmeticLogicUnit|Mux0~0_combout\ $ (\ArithmeticLogicUnit|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Mux2~0_combout\,
	datab => \ArithmeticLogicUnit|Mux6~0_combout\,
	datac => \ArithmeticLogicUnit|Mux0~0_combout\,
	datad => \ArithmeticLogicUnit|Mux5~0_combout\,
	combout => \ArithmeticLogicUnit|Mux29~0_combout\);

-- Location: LCCOMB_X21_Y5_N18
\ArithmeticLogicUnit|temp_parity~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|temp_parity~2_combout\ = \ArithmeticLogicUnit|Mux14~0_combout\ $ (\ArithmeticLogicUnit|Mux16~0_combout\ $ (\ArithmeticLogicUnit|Mux15~0_combout\ $ (\ArithmeticLogicUnit|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Mux14~0_combout\,
	datab => \ArithmeticLogicUnit|Mux16~0_combout\,
	datac => \ArithmeticLogicUnit|Mux15~0_combout\,
	datad => \ArithmeticLogicUnit|Mux13~0_combout\,
	combout => \ArithmeticLogicUnit|temp_parity~2_combout\);

-- Location: LCCOMB_X25_Y7_N0
\ArithmeticLogicUnit|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux8~0_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|ADC_Q[15]~22_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(15)) # ((AB(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOp\(1),
	datab => AB(15),
	datac => AB(39),
	datad => \ArithmeticLogicUnit|ADC_Q[15]~22_combout\,
	combout => \ArithmeticLogicUnit|Mux8~0_combout\);

-- Location: LCCOMB_X25_Y7_N18
\ArithmeticLogicUnit|temp_parity~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|temp_parity~0_combout\ = \ArithmeticLogicUnit|Mux21~0_combout\ $ (\ArithmeticLogicUnit|Mux22~0_combout\ $ (\ArithmeticLogicUnit|Mux23~0_combout\ $ (\ArithmeticLogicUnit|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Mux21~0_combout\,
	datab => \ArithmeticLogicUnit|Mux22~0_combout\,
	datac => \ArithmeticLogicUnit|Mux23~0_combout\,
	datad => \ArithmeticLogicUnit|Mux8~0_combout\,
	combout => \ArithmeticLogicUnit|temp_parity~0_combout\);

-- Location: LCCOMB_X25_Y5_N26
\ArithmeticLogicUnit|temp_parity~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|temp_parity~1_combout\ = \ArithmeticLogicUnit|Mux17~0_combout\ $ (\ArithmeticLogicUnit|Mux20~0_combout\ $ (\ArithmeticLogicUnit|Mux18~0_combout\ $ (\ArithmeticLogicUnit|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Mux17~0_combout\,
	datab => \ArithmeticLogicUnit|Mux20~0_combout\,
	datac => \ArithmeticLogicUnit|Mux18~0_combout\,
	datad => \ArithmeticLogicUnit|Mux19~0_combout\,
	combout => \ArithmeticLogicUnit|temp_parity~1_combout\);

-- Location: LCCOMB_X25_Y7_N16
\ArithmeticLogicUnit|temp_parity~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|temp_parity~3_combout\ = \ArithmeticLogicUnit|Mux9~0_combout\ $ (\ArithmeticLogicUnit|Mux12~0_combout\ $ (\ArithmeticLogicUnit|Mux10~0_combout\ $ (\ArithmeticLogicUnit|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Mux9~0_combout\,
	datab => \ArithmeticLogicUnit|Mux12~0_combout\,
	datac => \ArithmeticLogicUnit|Mux10~0_combout\,
	datad => \ArithmeticLogicUnit|Mux11~0_combout\,
	combout => \ArithmeticLogicUnit|temp_parity~3_combout\);

-- Location: LCCOMB_X25_Y7_N2
\ArithmeticLogicUnit|temp_parity~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|temp_parity~4_combout\ = \ArithmeticLogicUnit|temp_parity~2_combout\ $ (\ArithmeticLogicUnit|temp_parity~0_combout\ $ (\ArithmeticLogicUnit|temp_parity~1_combout\ $ (\ArithmeticLogicUnit|temp_parity~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|temp_parity~2_combout\,
	datab => \ArithmeticLogicUnit|temp_parity~0_combout\,
	datac => \ArithmeticLogicUnit|temp_parity~1_combout\,
	datad => \ArithmeticLogicUnit|temp_parity~3_combout\,
	combout => \ArithmeticLogicUnit|temp_parity~4_combout\);

-- Location: LCCOMB_X25_Y7_N30
\ArithmeticLogicUnit|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux29~2_combout\ = \ArithmeticLogicUnit|temp_parity~4_combout\ $ (((\MicroCode|ALUOpL~q\ & (\ArithmeticLogicUnit|Mux29~1_combout\ $ (\ArithmeticLogicUnit|Mux29~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Mux29~1_combout\,
	datab => \MicroCode|ALUOpL~q\,
	datac => \ArithmeticLogicUnit|Mux29~0_combout\,
	datad => \ArithmeticLogicUnit|temp_parity~4_combout\,
	combout => \ArithmeticLogicUnit|Mux29~2_combout\);

-- Location: LCCOMB_X22_Y7_N26
\ArithmeticLogicUnit|temp_parity~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|temp_parity~6_combout\ = (\MicroCode|ALUOpL~q\ & (\ArithmeticLogicUnit|MSBAddition[17]~8_combout\ $ (\ArithmeticLogicUnit|MSBAddition[16]~6_combout\ $ (\ArithmeticLogicUnit|MSBAddition[18]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|MSBAddition[17]~8_combout\,
	datab => \ArithmeticLogicUnit|MSBAddition[16]~6_combout\,
	datac => \MicroCode|ALUOpL~q\,
	datad => \ArithmeticLogicUnit|MSBAddition[18]~10_combout\,
	combout => \ArithmeticLogicUnit|temp_parity~6_combout\);

-- Location: LCCOMB_X18_Y7_N4
\ArithmeticLogicUnit|temp_parity~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|temp_parity~5_combout\ = (\MicroCode|ALUOpL~q\ & (\ArithmeticLogicUnit|MSBAddition[13]~0_combout\ $ (\ArithmeticLogicUnit|MSBAddition[15]~4_combout\ $ (\ArithmeticLogicUnit|MSBAddition[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOpL~q\,
	datab => \ArithmeticLogicUnit|MSBAddition[13]~0_combout\,
	datac => \ArithmeticLogicUnit|MSBAddition[15]~4_combout\,
	datad => \ArithmeticLogicUnit|MSBAddition[14]~2_combout\,
	combout => \ArithmeticLogicUnit|temp_parity~5_combout\);

-- Location: LCCOMB_X25_Y5_N16
\ArithmeticLogicUnit|temp_parity~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|temp_parity~8_combout\ = \ArithmeticLogicUnit|Add1~2_combout\ $ (\ArithmeticLogicUnit|Add1~4_combout\ $ (\ArithmeticLogicUnit|Add1~6_combout\ $ (\ArithmeticLogicUnit|ADC_Q[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Add1~2_combout\,
	datab => \ArithmeticLogicUnit|Add1~4_combout\,
	datac => \ArithmeticLogicUnit|Add1~6_combout\,
	datad => \ArithmeticLogicUnit|ADC_Q[4]~0_combout\,
	combout => \ArithmeticLogicUnit|temp_parity~8_combout\);

-- Location: LCCOMB_X25_Y7_N24
\ArithmeticLogicUnit|temp_parity~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|temp_parity~7_combout\ = \ArithmeticLogicUnit|Add1~0_combout\ $ (((\MicroCode|ALUOpL~q\ & (\ArithmeticLogicUnit|MSBAddition[19]~12_combout\ $ (\ArithmeticLogicUnit|MSBAddition[20]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Add1~0_combout\,
	datab => \MicroCode|ALUOpL~q\,
	datac => \ArithmeticLogicUnit|MSBAddition[19]~12_combout\,
	datad => \ArithmeticLogicUnit|MSBAddition[20]~14_combout\,
	combout => \ArithmeticLogicUnit|temp_parity~7_combout\);

-- Location: LCCOMB_X18_Y7_N2
\ArithmeticLogicUnit|temp_parity~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|temp_parity~9_combout\ = \ArithmeticLogicUnit|temp_parity~6_combout\ $ (\ArithmeticLogicUnit|temp_parity~5_combout\ $ (\ArithmeticLogicUnit|temp_parity~8_combout\ $ (\ArithmeticLogicUnit|temp_parity~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|temp_parity~6_combout\,
	datab => \ArithmeticLogicUnit|temp_parity~5_combout\,
	datac => \ArithmeticLogicUnit|temp_parity~8_combout\,
	datad => \ArithmeticLogicUnit|temp_parity~7_combout\,
	combout => \ArithmeticLogicUnit|temp_parity~9_combout\);

-- Location: LCCOMB_X25_Y7_N8
\ArithmeticLogicUnit|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux29~3_combout\ = (\MicroCode|ALUOp\(1) & (\ArithmeticLogicUnit|temp_parity~13_combout\ $ (((!\ArithmeticLogicUnit|temp_parity~9_combout\))))) # (!\MicroCode|ALUOp\(1) & (((!\ArithmeticLogicUnit|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOp\(1),
	datab => \ArithmeticLogicUnit|temp_parity~13_combout\,
	datac => \ArithmeticLogicUnit|Mux29~2_combout\,
	datad => \ArithmeticLogicUnit|temp_parity~9_combout\,
	combout => \ArithmeticLogicUnit|Mux29~3_combout\);

-- Location: LCCOMB_X14_Y9_N4
\FR[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FR[0]~0_combout\ = (\rst~input_o\ & \Enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \Enable~input_o\,
	combout => \FR[0]~0_combout\);

-- Location: FF_X25_Y7_N9
\FR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ArithmeticLogicUnit|Mux29~3_combout\,
	ena => \FR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FR(2));

-- Location: FF_X22_Y8_N3
\X[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux120~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(10));

-- Location: LCCOMB_X21_Y4_N12
\Mux128~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~1_combout\ = (\MicroCode|Set_D\(0) & (((X(2)) # (!\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (X(10) & ((\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => X(10),
	datac => X(2),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux128~1_combout\);

-- Location: LCCOMB_X21_Y4_N22
\Mux128~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~2_combout\ = (\MicroCode|Set_D\(4) & (\MicroCode|Set_D\(3))) # (!\MicroCode|Set_D\(4) & (\Mux128~1_combout\ & ((\MicroCode|Set_D\(3)) # (FR(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(4),
	datac => FR(2),
	datad => \Mux128~1_combout\,
	combout => \Mux128~2_combout\);

-- Location: LCCOMB_X19_Y5_N20
\Mux130~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~32_combout\ = (\MicroCode|Set_D\(0) & (((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(3) & ((!EIR(2)))) # (!\MicroCode|Set_D\(3) & (SI(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SI(2),
	datab => \MicroCode|Set_D\(0),
	datac => EIR(2),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux130~32_combout\);

-- Location: LCCOMB_X19_Y5_N22
\Mux130~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~33_combout\ = (\MicroCode|Set_D\(0) & ((\Mux130~32_combout\ & (!EIR(18))) # (!\Mux130~32_combout\ & ((DI(2)))))) # (!\MicroCode|Set_D\(0) & (((\Mux130~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(18),
	datab => \MicroCode|Set_D\(0),
	datac => DI(2),
	datad => \Mux130~32_combout\,
	combout => \Mux130~33_combout\);

-- Location: FF_X22_Y9_N9
\Y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux120~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(10));

-- Location: LCCOMB_X22_Y9_N12
\Mux130~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~34_combout\ = (\MicroCode|Set_D\(0) & (((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(3) & ((Y(2)))) # (!\MicroCode|Set_D\(3) & (AB(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => AB(2),
	datac => Y(2),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux130~34_combout\);

-- Location: LCCOMB_X19_Y5_N24
\Mux130~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~35_combout\ = (\MicroCode|Set_D\(0) & ((\Mux130~34_combout\ & (Y(10))) # (!\Mux130~34_combout\ & ((AB(26)))))) # (!\MicroCode|Set_D\(0) & (((\Mux130~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Y(10),
	datab => \MicroCode|Set_D\(0),
	datac => AB(26),
	datad => \Mux130~34_combout\,
	combout => \Mux130~35_combout\);

-- Location: LCCOMB_X19_Y5_N30
\Mux130~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux130~36_combout\ = (\MicroCode|Set_D\(4) & (\Mux130~33_combout\)) # (!\MicroCode|Set_D\(4) & ((\Mux130~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(4),
	datac => \Mux130~33_combout\,
	datad => \Mux130~35_combout\,
	combout => \Mux130~36_combout\);

-- Location: LCCOMB_X21_Y4_N16
\Mux128~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~3_combout\ = (\MicroCode|Set_D\(2) & (\MicroCode|Set_D\(1))) # (!\MicroCode|Set_D\(2) & ((\MicroCode|Set_D\(1) & ((\Mux130~36_combout\))) # (!\MicroCode|Set_D\(1) & (\Mux128~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \MicroCode|Set_D\(1),
	datac => \Mux128~2_combout\,
	datad => \Mux130~36_combout\,
	combout => \Mux128~3_combout\);

-- Location: LCCOMB_X21_Y4_N8
\Mux128~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux128~5_combout\ = (\MicroCode|Set_D\(2) & ((\Mux128~3_combout\ & (\Mux128~4_combout\)) # (!\Mux128~3_combout\ & ((\Mux128~0_combout\))))) # (!\MicroCode|Set_D\(2) & (((\Mux128~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \Mux128~4_combout\,
	datac => \Mux128~0_combout\,
	datad => \Mux128~3_combout\,
	combout => \Mux128~5_combout\);

-- Location: LCCOMB_X25_Y8_N30
\AB~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~14_combout\ = (!\MicroCode|Bs_in~q\ & \Mux128~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Bs_in~q\,
	datad => \Mux128~5_combout\,
	combout => \AB~14_combout\);

-- Location: FF_X25_Y8_N31
\AB[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~14_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(26));

-- Location: LCCOMB_X24_Y8_N6
\ArithmeticLogicUnit|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add1~6_combout\ = (AB(27) & ((AB(3) & (\ArithmeticLogicUnit|Add1~5\ & VCC)) # (!AB(3) & (!\ArithmeticLogicUnit|Add1~5\)))) # (!AB(27) & ((AB(3) & (!\ArithmeticLogicUnit|Add1~5\)) # (!AB(3) & ((\ArithmeticLogicUnit|Add1~5\) # (GND)))))
-- \ArithmeticLogicUnit|Add1~7\ = CARRY((AB(27) & (!AB(3) & !\ArithmeticLogicUnit|Add1~5\)) # (!AB(27) & ((!\ArithmeticLogicUnit|Add1~5\) # (!AB(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AB(27),
	datab => AB(3),
	datad => VCC,
	cin => \ArithmeticLogicUnit|Add1~5\,
	combout => \ArithmeticLogicUnit|Add1~6_combout\,
	cout => \ArithmeticLogicUnit|Add1~7\);

-- Location: LCCOMB_X25_Y5_N8
\ArithmeticLogicUnit|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux20~0_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|Add1~6_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(27)) # ((AB(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOp\(1),
	datab => AB(27),
	datac => \ArithmeticLogicUnit|Add1~6_combout\,
	datad => AB(3),
	combout => \ArithmeticLogicUnit|Mux20~0_combout\);

-- Location: LCCOMB_X18_Y9_N8
\Mux151~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~10_combout\ = (\Mux151~2_combout\ & (((\Mux151~0_combout\)))) # (!\Mux151~2_combout\ & ((\Mux151~0_combout\ & (!EIR(3))) # (!\Mux151~0_combout\ & ((\ArithmeticLogicUnit|Mux20~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(3),
	datab => \Mux151~2_combout\,
	datac => \Mux151~0_combout\,
	datad => \ArithmeticLogicUnit|Mux20~0_combout\,
	combout => \Mux151~10_combout\);

-- Location: LCCOMB_X22_Y9_N8
\Mux151~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~6_combout\ = (AB(3) & !\MicroCode|Set_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AB(3),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux151~6_combout\);

-- Location: LCCOMB_X24_Y9_N30
\Mux151~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~7_combout\ = (\MicroCode|Set_A\(3) & ((\MicroCode|Set_A\(0)) # (DI(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_A\(0),
	datac => DI(3),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux151~7_combout\);

-- Location: LCCOMB_X18_Y9_N0
\Mux151~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~8_combout\ = (\MicroCode|Set_A\(1) & (\MicroCode|Set_A\(0))) # (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0) & (PC(3) & !\Mux151~7_combout\)) # (!\MicroCode|Set_A\(0) & ((\Mux151~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \MicroCode|Set_A\(0),
	datac => PC(3),
	datad => \Mux151~7_combout\,
	combout => \Mux151~8_combout\);

-- Location: LCCOMB_X18_Y9_N30
\Mux151~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~9_combout\ = (\Mux151~1_combout\ & ((\Mux151~8_combout\ & ((AB(27)))) # (!\Mux151~8_combout\ & (\Mux151~6_combout\)))) # (!\Mux151~1_combout\ & (((\Mux151~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~6_combout\,
	datab => AB(27),
	datac => \Mux151~1_combout\,
	datad => \Mux151~8_combout\,
	combout => \Mux151~9_combout\);

-- Location: LCCOMB_X18_Y9_N20
\Mux151~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~14_combout\ = (\Mux151~10_combout\ & ((\Mux151~13_combout\) # ((!\Mux151~2_combout\)))) # (!\Mux151~10_combout\ & (((\Mux151~9_combout\ & \Mux151~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~13_combout\,
	datab => \Mux151~10_combout\,
	datac => \Mux151~9_combout\,
	datad => \Mux151~2_combout\,
	combout => \Mux151~14_combout\);

-- Location: FF_X24_Y9_N31
\DI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux151~14_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(3));

-- Location: LCCOMB_X18_Y9_N22
\Mux127~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~0_combout\ = (\MicroCode|Set_D\(0) & ((DI(3)) # ((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (((SI(3) & !\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(3),
	datab => \MicroCode|Set_D\(0),
	datac => SI(3),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux127~0_combout\);

-- Location: LCCOMB_X18_Y9_N4
\Mux127~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~1_combout\ = (\MicroCode|Set_D\(3) & ((\Mux127~0_combout\ & (!EIR(19))) # (!\Mux127~0_combout\ & ((!EIR(3)))))) # (!\MicroCode|Set_D\(3) & (((\Mux127~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => EIR(19),
	datac => \Mux127~0_combout\,
	datad => EIR(3),
	combout => \Mux127~1_combout\);

-- Location: LCCOMB_X18_Y5_N22
\Mux127~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~2_combout\ = (\MicroCode|Set_D\(1) & \Mux127~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(1),
	datad => \Mux127~1_combout\,
	combout => \Mux127~2_combout\);

-- Location: FF_X24_Y5_N25
\X[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux127~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(3));

-- Location: LCCOMB_X25_Y5_N20
\Mux127~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~7_combout\ = (\MicroCode|Set_D\(1) & ((\Mux127~6_combout\ & (PC(3))) # (!\Mux127~6_combout\ & ((AB(3)))))) # (!\MicroCode|Set_D\(1) & (\Mux127~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \Mux127~6_combout\,
	datac => PC(3),
	datad => AB(3),
	combout => \Mux127~7_combout\);

-- Location: LCCOMB_X25_Y5_N18
\Mux127~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~8_combout\ = (\Mux130~7_combout\ & ((\Mux127~7_combout\ & (IR(3))) # (!\Mux127~7_combout\ & ((\ArithmeticLogicUnit|Mux20~0_combout\))))) # (!\Mux130~7_combout\ & (((\Mux127~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(3),
	datab => \Mux130~7_combout\,
	datac => \ArithmeticLogicUnit|Mux20~0_combout\,
	datad => \Mux127~7_combout\,
	combout => \Mux127~8_combout\);

-- Location: FF_X24_Y5_N23
\Z[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux127~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(3));

-- Location: FF_X23_Y5_N27
\X[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[11]~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(11));

-- Location: LCCOMB_X24_Y5_N16
\Mux127~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~12_combout\ = (\MicroCode|Set_D\(2) & (((Z(11)) # (\Mux127~11_combout\)))) # (!\MicroCode|Set_D\(2) & (X(11) & ((!\Mux127~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => X(11),
	datab => \MicroCode|Set_D\(2),
	datac => Z(11),
	datad => \Mux127~11_combout\,
	combout => \Mux127~12_combout\);

-- Location: LCCOMB_X24_Y5_N22
\Mux127~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~13_combout\ = (\Mux127~11_combout\ & ((\Mux127~12_combout\ & ((Z(3)))) # (!\Mux127~12_combout\ & (Y(11))))) # (!\Mux127~11_combout\ & (((\Mux127~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Y(11),
	datab => \Mux127~11_combout\,
	datac => Z(3),
	datad => \Mux127~12_combout\,
	combout => \Mux127~13_combout\);

-- Location: FF_X25_Y5_N29
\Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux127~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(3));

-- Location: LCCOMB_X25_Y5_N28
\Mux127~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~10_combout\ = (\Mux127~9_combout\ & (((\MicroCode|Set_D\(3))))) # (!\Mux127~9_combout\ & ((\MicroCode|Set_D\(3) & ((Y(3)))) # (!\MicroCode|Set_D\(3) & (AB(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~9_combout\,
	datab => AB(27),
	datac => Y(3),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux127~10_combout\);

-- Location: LCCOMB_X24_Y5_N20
\Mux127~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~14_combout\ = (\Mux127~9_combout\ & ((\Mux127~10_combout\ & ((\Mux127~13_combout\))) # (!\Mux127~10_combout\ & (\Mux127~8_combout\)))) # (!\Mux127~9_combout\ & (((\Mux127~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~9_combout\,
	datab => \Mux127~8_combout\,
	datac => \Mux127~13_combout\,
	datad => \Mux127~10_combout\,
	combout => \Mux127~14_combout\);

-- Location: LCCOMB_X24_Y5_N24
\Mux127~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~15_combout\ = (\MicroCode|Set_D\(4) & (!\Mux127~4_combout\)) # (!\MicroCode|Set_D\(4) & ((\Mux127~4_combout\ & (X(3))) # (!\Mux127~4_combout\ & ((\Mux127~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(4),
	datab => \Mux127~4_combout\,
	datac => X(3),
	datad => \Mux127~14_combout\,
	combout => \Mux127~15_combout\);

-- Location: LCCOMB_X24_Y5_N26
\Mux127~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux127~16_combout\ = (\Mux127~5_combout\ & ((\Mux127~15_combout\ & ((\Mux127~2_combout\))) # (!\Mux127~15_combout\ & (\Data[3]~input_o\)))) # (!\Mux127~5_combout\ & (((\Mux127~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~5_combout\,
	datab => \Data[3]~input_o\,
	datac => \Mux127~2_combout\,
	datad => \Mux127~15_combout\,
	combout => \Mux127~16_combout\);

-- Location: LCCOMB_X25_Y8_N20
\AB~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~16_combout\ = (!\MicroCode|Bs_in~q\ & \Mux127~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Bs_in~q\,
	datad => \Mux127~16_combout\,
	combout => \AB~16_combout\);

-- Location: FF_X25_Y8_N21
\AB[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(27));

-- Location: LCCOMB_X24_Y8_N8
\ArithmeticLogicUnit|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add1~8_combout\ = !\ArithmeticLogicUnit|Add1~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ArithmeticLogicUnit|Add1~7\,
	combout => \ArithmeticLogicUnit|Add1~8_combout\);

-- Location: LCCOMB_X24_Y8_N10
\ArithmeticLogicUnit|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Add2~1_cout\ = CARRY(\ArithmeticLogicUnit|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ArithmeticLogicUnit|Add1~8_combout\,
	datad => VCC,
	cout => \ArithmeticLogicUnit|Add2~1_cout\);

-- Location: LCCOMB_X24_Y8_N12
\ArithmeticLogicUnit|ADC_Q[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|ADC_Q[4]~0_combout\ = (AB(4) & ((AB(28) & (\ArithmeticLogicUnit|Add2~1_cout\ & VCC)) # (!AB(28) & (!\ArithmeticLogicUnit|Add2~1_cout\)))) # (!AB(4) & ((AB(28) & (!\ArithmeticLogicUnit|Add2~1_cout\)) # (!AB(28) & 
-- ((\ArithmeticLogicUnit|Add2~1_cout\) # (GND)))))
-- \ArithmeticLogicUnit|ADC_Q[4]~1\ = CARRY((AB(4) & (!AB(28) & !\ArithmeticLogicUnit|Add2~1_cout\)) # (!AB(4) & ((!\ArithmeticLogicUnit|Add2~1_cout\) # (!AB(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AB(4),
	datab => AB(28),
	datad => VCC,
	cin => \ArithmeticLogicUnit|Add2~1_cout\,
	combout => \ArithmeticLogicUnit|ADC_Q[4]~0_combout\,
	cout => \ArithmeticLogicUnit|ADC_Q[4]~1\);

-- Location: LCCOMB_X25_Y8_N12
\ArithmeticLogicUnit|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux19~0_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|ADC_Q[4]~0_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(28)) # ((AB(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(28),
	datab => AB(4),
	datac => \MicroCode|ALUOp\(1),
	datad => \ArithmeticLogicUnit|ADC_Q[4]~0_combout\,
	combout => \ArithmeticLogicUnit|Mux19~0_combout\);

-- Location: LCCOMB_X16_Y8_N2
\Mux150~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux150~3_combout\ = (\Mux152~2_combout\ & ((\Mux152~3_combout\ & ((\ArithmeticLogicUnit|Mux19~0_combout\))) # (!\Mux152~3_combout\ & (\Mux150~2_combout\)))) # (!\Mux152~2_combout\ & (((!\Mux152~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux150~2_combout\,
	datab => \Mux152~2_combout\,
	datac => \ArithmeticLogicUnit|Mux19~0_combout\,
	datad => \Mux152~3_combout\,
	combout => \Mux150~3_combout\);

-- Location: LCCOMB_X16_Y8_N20
\Mux150~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux150~4_combout\ = (\Mux152~1_combout\ & ((\Mux150~3_combout\ & (AB(4))) # (!\Mux150~3_combout\ & ((AB(28)))))) # (!\Mux152~1_combout\ & (((\Mux150~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(4),
	datab => AB(28),
	datac => \Mux152~1_combout\,
	datad => \Mux150~3_combout\,
	combout => \Mux150~4_combout\);

-- Location: LCCOMB_X16_Y8_N18
\Mux150~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux150~6_combout\ = (\MicroCode|Set_A\(3) & (((\Mux152~4_combout\)))) # (!\MicroCode|Set_A\(3) & ((\Mux152~4_combout\ & (\Mux150~5_combout\)) # (!\Mux152~4_combout\ & ((\Mux150~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \Mux150~5_combout\,
	datac => \Mux152~4_combout\,
	datad => \Mux150~4_combout\,
	combout => \Mux150~6_combout\);

-- Location: LCCOMB_X16_Y8_N24
\Address~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~19_combout\ = (\Mux152~0_combout\ & ((\Mux150~6_combout\ & (\Mux150~1_combout\)) # (!\Mux150~6_combout\ & ((DI(4)))))) # (!\Mux152~0_combout\ & (((\Mux150~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux150~1_combout\,
	datab => \Mux152~0_combout\,
	datac => DI(4),
	datad => \Mux150~6_combout\,
	combout => \Address~19_combout\);

-- Location: LCCOMB_X16_Y8_N0
\Address~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~20_combout\ = (\MicroCode|AE~q\ & ((\Address~19_combout\))) # (!\MicroCode|AE~q\ & (PC(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(4),
	datac => \MicroCode|AE~q\,
	datad => \Address~19_combout\,
	combout => \Address~20_combout\);

-- Location: FF_X16_Y8_N1
\Address[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[4]~reg0_q\);

-- Location: LCCOMB_X14_Y7_N14
\Mux150~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux150~0_combout\ = (\MicroCode|Set_A\(1) & (((\MicroCode|Set_A\(0))))) # (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0) & ((!EIR(28)))) # (!\MicroCode|Set_A\(0) & (!EIR(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(4),
	datab => \MicroCode|Set_A\(1),
	datac => EIR(28),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux150~0_combout\);

-- Location: LCCOMB_X16_Y8_N22
\Mux150~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux150~1_combout\ = (\MicroCode|Set_A\(1) & ((\Mux150~0_combout\ & (\Address[4]~reg0_q\)) # (!\Mux150~0_combout\ & ((!EIR(20)))))) # (!\MicroCode|Set_A\(1) & (((\Mux150~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \Address[4]~reg0_q\,
	datac => EIR(20),
	datad => \Mux150~0_combout\,
	combout => \Mux150~1_combout\);

-- Location: LCCOMB_X16_Y8_N8
\Mux150~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux150~7_combout\ = (\Mux152~0_combout\ & ((\Mux150~6_combout\ & (\Mux150~1_combout\)) # (!\Mux150~6_combout\ & ((DI(4)))))) # (!\Mux152~0_combout\ & (((\Mux150~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux150~1_combout\,
	datab => \Mux152~0_combout\,
	datac => DI(4),
	datad => \Mux150~6_combout\,
	combout => \Mux150~7_combout\);

-- Location: FF_X16_Y8_N5
\DI[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux150~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(4));

-- Location: LCCOMB_X19_Y5_N18
\Mux126~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~10_combout\ = (\MicroCode|Set_D\(0) & ((DI(4)) # ((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (((SI(4) & !\MicroCode|Set_D\(3)))))

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
	combout => \Mux126~10_combout\);

-- Location: LCCOMB_X19_Y5_N12
\Mux126~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~11_combout\ = (\MicroCode|Set_D\(3) & ((\Mux126~10_combout\ & ((!EIR(20)))) # (!\Mux126~10_combout\ & (!EIR(4))))) # (!\MicroCode|Set_D\(3) & (((\Mux126~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => EIR(4),
	datac => EIR(20),
	datad => \Mux126~10_combout\,
	combout => \Mux126~11_combout\);

-- Location: FF_X25_Y9_N25
\X[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[4]~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(4));

-- Location: LCCOMB_X21_Y9_N14
\Mux126~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~13_combout\ = (\MicroCode|Set_D\(1) & ((\MicroCode|Set_D\(4)) # ((\Mux127~3_combout\)))) # (!\MicroCode|Set_D\(1) & (!\Mux126~12_combout\ & ((\MicroCode|Set_D\(4)) # (\Mux127~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(4),
	datac => \Mux127~3_combout\,
	datad => \Mux126~12_combout\,
	combout => \Mux126~13_combout\);

-- Location: LCCOMB_X25_Y9_N24
\Mux126~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~14_combout\ = (\Mux126~12_combout\ & (\Mux126~11_combout\ & ((\Mux126~13_combout\)))) # (!\Mux126~12_combout\ & (((X(4)) # (!\Mux126~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~12_combout\,
	datab => \Mux126~11_combout\,
	datac => X(4),
	datad => \Mux126~13_combout\,
	combout => \Mux126~14_combout\);

-- Location: FF_X25_Y8_N7
\Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[4]~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(4));

-- Location: LCCOMB_X25_Y8_N28
\Mux126~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~2_combout\ = (\MicroCode|Set_D\(3)) # ((\MicroCode|Set_D\(0) & (!\MicroCode|Set_D\(2) & \MicroCode|Set_D\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => \MicroCode|Set_D\(2),
	datac => \MicroCode|Set_D\(3),
	datad => \MicroCode|Set_D\(1),
	combout => \Mux126~2_combout\);

-- Location: FF_X23_Y7_N7
\X[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[12]~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(12));

-- Location: LCCOMB_X24_Y5_N4
\Mux126~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~0_combout\ = (\MicroCode|Set_D\(2) & (((Z(12)) # (\Mux127~11_combout\)))) # (!\MicroCode|Set_D\(2) & (X(12) & ((!\Mux127~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => X(12),
	datab => \MicroCode|Set_D\(2),
	datac => Z(12),
	datad => \Mux127~11_combout\,
	combout => \Mux126~0_combout\);

-- Location: FF_X24_Y5_N7
\Z[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[4]~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(4));

-- Location: LCCOMB_X24_Y5_N6
\Mux126~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~1_combout\ = (\Mux126~0_combout\ & (((Z(4)) # (!\Mux127~11_combout\)))) # (!\Mux126~0_combout\ & (Y(12) & ((\Mux127~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Y(12),
	datab => \Mux126~0_combout\,
	datac => Z(4),
	datad => \Mux127~11_combout\,
	combout => \Mux126~1_combout\);

-- Location: LCCOMB_X21_Y6_N28
\Mux126~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~3_combout\ = (\MicroCode|Set_D\(1) & (!\MicroCode|Set_D\(2) & !\MicroCode|Set_D\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datac => \MicroCode|Set_D\(2),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux126~3_combout\);

-- Location: FF_X24_Y8_N9
\FR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ArithmeticLogicUnit|Add1~8_combout\,
	ena => \FR[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FR(4));

-- Location: LCCOMB_X22_Y5_N20
\Mux126~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~4_combout\ = (\MicroCode|Set_D\(2) & ((\MicroCode|Set_D\(1)))) # (!\MicroCode|Set_D\(2) & (\MicroCode|Set_D\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datac => \MicroCode|Set_D\(2),
	datad => \MicroCode|Set_D\(1),
	combout => \Mux126~4_combout\);

-- Location: LCCOMB_X22_Y5_N18
\Mux126~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~5_combout\ = (\Mux127~6_combout\ & (((PC(4)) # (!\Mux126~4_combout\)))) # (!\Mux127~6_combout\ & (FR(4) & ((\Mux126~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FR(4),
	datab => PC(4),
	datac => \Mux127~6_combout\,
	datad => \Mux126~4_combout\,
	combout => \Mux126~5_combout\);

-- Location: LCCOMB_X25_Y8_N14
\Mux126~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~6_combout\ = (\Mux130~7_combout\ & ((\Mux126~5_combout\ & (IR(4))) # (!\Mux126~5_combout\ & ((\ArithmeticLogicUnit|Mux19~0_combout\))))) # (!\Mux130~7_combout\ & (((\Mux126~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => \Mux130~7_combout\,
	datac => \Mux126~5_combout\,
	datad => \ArithmeticLogicUnit|Mux19~0_combout\,
	combout => \Mux126~6_combout\);

-- Location: LCCOMB_X25_Y8_N16
\Mux126~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~7_combout\ = (\Mux126~3_combout\ & ((AB(4)) # ((\Mux126~2_combout\)))) # (!\Mux126~3_combout\ & (((\Mux126~6_combout\ & !\Mux126~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~3_combout\,
	datab => AB(4),
	datac => \Mux126~6_combout\,
	datad => \Mux126~2_combout\,
	combout => \Mux126~7_combout\);

-- Location: LCCOMB_X25_Y8_N2
\Mux126~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~8_combout\ = (\Mux126~2_combout\ & ((\Mux126~7_combout\ & (AB(28))) # (!\Mux126~7_combout\ & ((\Mux126~1_combout\))))) # (!\Mux126~2_combout\ & (((\Mux126~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(28),
	datab => \Mux126~2_combout\,
	datac => \Mux126~1_combout\,
	datad => \Mux126~7_combout\,
	combout => \Mux126~8_combout\);

-- Location: LCCOMB_X25_Y8_N6
\Mux126~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux126~15_combout\ = (\Mux126~9_combout\ & ((\Mux126~14_combout\ & ((\Mux126~8_combout\))) # (!\Mux126~14_combout\ & (Y(4))))) # (!\Mux126~9_combout\ & (\Mux126~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~9_combout\,
	datab => \Mux126~14_combout\,
	datac => Y(4),
	datad => \Mux126~8_combout\,
	combout => \Mux126~15_combout\);

-- Location: LCCOMB_X25_Y8_N8
\AB[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[4]~2_combout\ = (\Mux126~17_combout\ & (\Mux126~16_combout\)) # (!\Mux126~17_combout\ & ((\Mux126~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux126~16_combout\,
	datac => \Mux126~17_combout\,
	datad => \Mux126~15_combout\,
	combout => \AB[4]~2_combout\);

-- Location: LCCOMB_X23_Y8_N0
\AB[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[4]~feeder_combout\ = \AB[4]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AB[4]~2_combout\,
	combout => \AB[4]~feeder_combout\);

-- Location: FF_X23_Y8_N1
\AB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB[4]~feeder_combout\,
	asdata => \Mux150~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|Aa_in~q\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(4));

-- Location: LCCOMB_X24_Y8_N14
\ArithmeticLogicUnit|ADC_Q[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|ADC_Q[5]~2_combout\ = ((AB(5) $ (AB(29) $ (!\ArithmeticLogicUnit|ADC_Q[4]~1\)))) # (GND)
-- \ArithmeticLogicUnit|ADC_Q[5]~3\ = CARRY((AB(5) & ((AB(29)) # (!\ArithmeticLogicUnit|ADC_Q[4]~1\))) # (!AB(5) & (AB(29) & !\ArithmeticLogicUnit|ADC_Q[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AB(5),
	datab => AB(29),
	datad => VCC,
	cin => \ArithmeticLogicUnit|ADC_Q[4]~1\,
	combout => \ArithmeticLogicUnit|ADC_Q[5]~2_combout\,
	cout => \ArithmeticLogicUnit|ADC_Q[5]~3\);

-- Location: LCCOMB_X25_Y5_N30
\ArithmeticLogicUnit|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux18~0_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|ADC_Q[5]~2_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(29)) # ((AB(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(29),
	datab => AB(5),
	datac => \MicroCode|ALUOp\(1),
	datad => \ArithmeticLogicUnit|ADC_Q[5]~2_combout\,
	combout => \ArithmeticLogicUnit|Mux18~0_combout\);

-- Location: LCCOMB_X22_Y5_N2
\Mux125~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~4_combout\ = (\Mux125~3_combout\ & ((IR(5)) # ((!\Mux130~7_combout\)))) # (!\Mux125~3_combout\ & (((\Mux130~7_combout\ & \ArithmeticLogicUnit|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(5),
	datab => \Mux125~3_combout\,
	datac => \Mux130~7_combout\,
	datad => \ArithmeticLogicUnit|Mux18~0_combout\,
	combout => \Mux125~4_combout\);

-- Location: LCCOMB_X22_Y5_N0
\Mux125~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~8_combout\ = (\Mux125~5_combout\ & (((\Mux125~7_combout\)) # (!\Mux127~9_combout\))) # (!\Mux125~5_combout\ & (\Mux127~9_combout\ & ((\Mux125~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux125~5_combout\,
	datab => \Mux127~9_combout\,
	datac => \Mux125~7_combout\,
	datad => \Mux125~4_combout\,
	combout => \Mux125~8_combout\);

-- Location: LCCOMB_X23_Y4_N2
\Mux125~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~9_combout\ = (\Mux127~4_combout\ & (!\MicroCode|Set_D\(4) & (X(5)))) # (!\Mux127~4_combout\ & ((\MicroCode|Set_D\(4)) # ((\Mux125~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~4_combout\,
	datab => \MicroCode|Set_D\(4),
	datac => X(5),
	datad => \Mux125~8_combout\,
	combout => \Mux125~9_combout\);

-- Location: LCCOMB_X23_Y4_N16
\Mux125~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux125~10_combout\ = (\Mux127~5_combout\ & ((\Mux125~9_combout\ & (\Mux125~2_combout\)) # (!\Mux125~9_combout\ & ((\Data[5]~input_o\))))) # (!\Mux127~5_combout\ & (((\Mux125~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux125~2_combout\,
	datab => \Data[5]~input_o\,
	datac => \Mux127~5_combout\,
	datad => \Mux125~9_combout\,
	combout => \Mux125~10_combout\);

-- Location: LCCOMB_X24_Y4_N22
\AB~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~19_combout\ = (!\MicroCode|Bs_in~q\ & \Mux125~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Bs_in~q\,
	datac => \Mux125~10_combout\,
	combout => \AB~19_combout\);

-- Location: FF_X24_Y4_N23
\AB[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~19_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(29));

-- Location: LCCOMB_X25_Y5_N14
\Mux149~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~0_combout\ = (AB(5) & !\MicroCode|Set_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AB(5),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux149~0_combout\);

-- Location: LCCOMB_X25_Y5_N4
\Mux149~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~1_combout\ = (\MicroCode|Set_A\(0) & (PC(5))) # (!\MicroCode|Set_A\(0) & ((DI(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(5),
	datac => DI(5),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux149~1_combout\);

-- Location: LCCOMB_X25_Y5_N22
\Mux149~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~2_combout\ = (\MicroCode|Set_A\(1) & (\MicroCode|Set_A\(0))) # (!\MicroCode|Set_A\(1) & (\Mux149~1_combout\ & (\MicroCode|Set_A\(0) $ (\MicroCode|Set_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \Mux149~1_combout\,
	datac => \MicroCode|Set_A\(1),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux149~2_combout\);

-- Location: LCCOMB_X25_Y5_N24
\Mux149~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~3_combout\ = (\Mux149~2_combout\ & ((AB(29)) # ((!\Mux151~1_combout\)))) # (!\Mux149~2_combout\ & (((\Mux149~0_combout\ & \Mux151~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(29),
	datab => \Mux149~0_combout\,
	datac => \Mux149~2_combout\,
	datad => \Mux151~1_combout\,
	combout => \Mux149~3_combout\);

-- Location: LCCOMB_X21_Y5_N20
\Mux149~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~4_combout\ = (\Mux151~2_combout\ & ((\Mux149~3_combout\) # ((\Mux151~0_combout\)))) # (!\Mux151~2_combout\ & (((!\Mux151~0_combout\ & \ArithmeticLogicUnit|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux149~3_combout\,
	datab => \Mux151~2_combout\,
	datac => \Mux151~0_combout\,
	datad => \ArithmeticLogicUnit|Mux18~0_combout\,
	combout => \Mux149~4_combout\);

-- Location: LCCOMB_X21_Y5_N24
\Mux149~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~8_combout\ = (\Mux151~0_combout\ & ((\Mux149~4_combout\ & ((\Mux149~7_combout\))) # (!\Mux149~4_combout\ & (!EIR(5))))) # (!\Mux151~0_combout\ & (((\Mux149~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(5),
	datab => \Mux151~0_combout\,
	datac => \Mux149~7_combout\,
	datad => \Mux149~4_combout\,
	combout => \Mux149~8_combout\);

-- Location: LCCOMB_X23_Y8_N10
\AB~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~20_combout\ = (\MicroCode|Aa_in~q\ & (\Mux149~8_combout\)) # (!\MicroCode|Aa_in~q\ & ((\Mux125~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Aa_in~q\,
	datac => \Mux149~8_combout\,
	datad => \Mux125~10_combout\,
	combout => \AB~20_combout\);

-- Location: FF_X23_Y8_N11
\AB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~20_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(5));

-- Location: LCCOMB_X24_Y8_N16
\ArithmeticLogicUnit|ADC_Q[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|ADC_Q[6]~4_combout\ = (AB(6) & ((AB(30) & (\ArithmeticLogicUnit|ADC_Q[5]~3\ & VCC)) # (!AB(30) & (!\ArithmeticLogicUnit|ADC_Q[5]~3\)))) # (!AB(6) & ((AB(30) & (!\ArithmeticLogicUnit|ADC_Q[5]~3\)) # (!AB(30) & 
-- ((\ArithmeticLogicUnit|ADC_Q[5]~3\) # (GND)))))
-- \ArithmeticLogicUnit|ADC_Q[6]~5\ = CARRY((AB(6) & (!AB(30) & !\ArithmeticLogicUnit|ADC_Q[5]~3\)) # (!AB(6) & ((!\ArithmeticLogicUnit|ADC_Q[5]~3\) # (!AB(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AB(6),
	datab => AB(30),
	datad => VCC,
	cin => \ArithmeticLogicUnit|ADC_Q[5]~3\,
	combout => \ArithmeticLogicUnit|ADC_Q[6]~4_combout\,
	cout => \ArithmeticLogicUnit|ADC_Q[6]~5\);

-- Location: LCCOMB_X24_Y6_N6
\ArithmeticLogicUnit|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux17~0_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|ADC_Q[6]~4_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(30)) # ((AB(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOp\(1),
	datab => AB(30),
	datac => AB(6),
	datad => \ArithmeticLogicUnit|ADC_Q[6]~4_combout\,
	combout => \ArithmeticLogicUnit|Mux17~0_combout\);

-- Location: LCCOMB_X24_Y6_N20
\Mux148~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux148~3_combout\ = (\Mux152~2_combout\ & ((\Mux152~3_combout\ & ((\ArithmeticLogicUnit|Mux17~0_combout\))) # (!\Mux152~3_combout\ & (\Mux148~2_combout\)))) # (!\Mux152~2_combout\ & (((!\Mux152~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux148~2_combout\,
	datab => \Mux152~2_combout\,
	datac => \Mux152~3_combout\,
	datad => \ArithmeticLogicUnit|Mux17~0_combout\,
	combout => \Mux148~3_combout\);

-- Location: LCCOMB_X24_Y6_N14
\Mux148~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux148~4_combout\ = (\Mux152~1_combout\ & ((\Mux148~3_combout\ & ((AB(6)))) # (!\Mux148~3_combout\ & (AB(30))))) # (!\Mux152~1_combout\ & (((\Mux148~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux152~1_combout\,
	datab => AB(30),
	datac => AB(6),
	datad => \Mux148~3_combout\,
	combout => \Mux148~4_combout\);

-- Location: LCCOMB_X19_Y6_N12
\Mux148~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux148~6_combout\ = (\Mux152~4_combout\ & ((\Mux148~5_combout\) # ((\MicroCode|Set_A\(3))))) # (!\Mux152~4_combout\ & (((!\MicroCode|Set_A\(3) & \Mux148~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux148~5_combout\,
	datab => \Mux152~4_combout\,
	datac => \MicroCode|Set_A\(3),
	datad => \Mux148~4_combout\,
	combout => \Mux148~6_combout\);

-- Location: LCCOMB_X19_Y6_N2
\Mux148~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux148~7_combout\ = (\Mux152~0_combout\ & ((\Mux148~6_combout\ & ((\Mux148~1_combout\))) # (!\Mux148~6_combout\ & (DI(6))))) # (!\Mux152~0_combout\ & (((\Mux148~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux152~0_combout\,
	datab => DI(6),
	datac => \Mux148~1_combout\,
	datad => \Mux148~6_combout\,
	combout => \Mux148~7_combout\);

-- Location: FF_X19_Y5_N1
\SI[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux148~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(6));

-- Location: LCCOMB_X19_Y5_N0
\Mux124~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~6_combout\ = (\MicroCode|Set_D\(0) & (((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & ((\MicroCode|Set_D\(3) & (!EIR(6))) # (!\MicroCode|Set_D\(3) & ((SI(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(6),
	datab => \MicroCode|Set_D\(0),
	datac => SI(6),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux124~6_combout\);

-- Location: LCCOMB_X19_Y6_N4
\Mux124~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~7_combout\ = (\Mux124~6_combout\ & (((!\MicroCode|Set_D\(0))) # (!EIR(22)))) # (!\Mux124~6_combout\ & (((DI(6) & \MicroCode|Set_D\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(22),
	datab => \Mux124~6_combout\,
	datac => DI(6),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux124~7_combout\);

-- Location: FF_X23_Y4_N15
\X[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[6]~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(6));

-- Location: LCCOMB_X23_Y4_N14
\Mux124~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~8_combout\ = (\Mux126~12_combout\ & (\Mux124~7_combout\ & ((\Mux126~13_combout\)))) # (!\Mux126~12_combout\ & (((X(6)) # (!\Mux126~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~12_combout\,
	datab => \Mux124~7_combout\,
	datac => X(6),
	datad => \Mux126~13_combout\,
	combout => \Mux124~8_combout\);

-- Location: FF_X24_Y4_N29
\Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[6]~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(6));

-- Location: FF_X22_Y9_N25
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

-- Location: FF_X24_Y5_N31
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

-- Location: LCCOMB_X24_Y5_N30
\Mux124~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~0_combout\ = (\MicroCode|Set_D\(2) & (((Z(14)) # (\Mux127~11_combout\)))) # (!\MicroCode|Set_D\(2) & (X(14) & ((!\Mux127~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => X(14),
	datab => \MicroCode|Set_D\(2),
	datac => Z(14),
	datad => \Mux127~11_combout\,
	combout => \Mux124~0_combout\);

-- Location: FF_X24_Y5_N1
\Z[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[6]~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(6));

-- Location: FF_X22_Y9_N15
\Y[14]\ : dffeas
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
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(14));

-- Location: LCCOMB_X24_Y5_N0
\Mux124~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~1_combout\ = (\Mux124~0_combout\ & (((Z(6))) # (!\Mux127~11_combout\))) # (!\Mux124~0_combout\ & (\Mux127~11_combout\ & ((Y(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux124~0_combout\,
	datab => \Mux127~11_combout\,
	datac => Z(6),
	datad => Y(14),
	combout => \Mux124~1_combout\);

-- Location: LCCOMB_X21_Y5_N8
\ArithmeticLogicUnit|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Equal4~2_combout\ = (!\ArithmeticLogicUnit|Mux14~0_combout\ & (!\ArithmeticLogicUnit|Mux16~0_combout\ & (!\ArithmeticLogicUnit|Mux15~0_combout\ & !\ArithmeticLogicUnit|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Mux14~0_combout\,
	datab => \ArithmeticLogicUnit|Mux16~0_combout\,
	datac => \ArithmeticLogicUnit|Mux15~0_combout\,
	datad => \ArithmeticLogicUnit|Mux13~0_combout\,
	combout => \ArithmeticLogicUnit|Equal4~2_combout\);

-- Location: LCCOMB_X25_Y7_N6
\ArithmeticLogicUnit|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Equal4~0_combout\ = (!\ArithmeticLogicUnit|Mux21~0_combout\ & (!\ArithmeticLogicUnit|Mux8~0_combout\ & (!\ArithmeticLogicUnit|Mux23~0_combout\ & !\ArithmeticLogicUnit|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Mux21~0_combout\,
	datab => \ArithmeticLogicUnit|Mux8~0_combout\,
	datac => \ArithmeticLogicUnit|Mux23~0_combout\,
	datad => \ArithmeticLogicUnit|Mux22~0_combout\,
	combout => \ArithmeticLogicUnit|Equal4~0_combout\);

-- Location: LCCOMB_X25_Y5_N6
\ArithmeticLogicUnit|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Equal4~1_combout\ = (!\ArithmeticLogicUnit|Mux17~0_combout\ & (!\ArithmeticLogicUnit|Mux20~0_combout\ & (!\ArithmeticLogicUnit|Mux18~0_combout\ & !\ArithmeticLogicUnit|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Mux17~0_combout\,
	datab => \ArithmeticLogicUnit|Mux20~0_combout\,
	datac => \ArithmeticLogicUnit|Mux18~0_combout\,
	datad => \ArithmeticLogicUnit|Mux19~0_combout\,
	combout => \ArithmeticLogicUnit|Equal4~1_combout\);

-- Location: LCCOMB_X22_Y7_N0
\ArithmeticLogicUnit|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Equal4~3_combout\ = (!\ArithmeticLogicUnit|Mux12~0_combout\ & (!\ArithmeticLogicUnit|Mux11~0_combout\ & (!\ArithmeticLogicUnit|Mux10~0_combout\ & !\ArithmeticLogicUnit|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Mux12~0_combout\,
	datab => \ArithmeticLogicUnit|Mux11~0_combout\,
	datac => \ArithmeticLogicUnit|Mux10~0_combout\,
	datad => \ArithmeticLogicUnit|Mux9~0_combout\,
	combout => \ArithmeticLogicUnit|Equal4~3_combout\);

-- Location: LCCOMB_X22_Y7_N6
\ArithmeticLogicUnit|Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Equal4~4_combout\ = (\ArithmeticLogicUnit|Equal4~2_combout\ & (\ArithmeticLogicUnit|Equal4~0_combout\ & (\ArithmeticLogicUnit|Equal4~1_combout\ & \ArithmeticLogicUnit|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Equal4~2_combout\,
	datab => \ArithmeticLogicUnit|Equal4~0_combout\,
	datac => \ArithmeticLogicUnit|Equal4~1_combout\,
	datad => \ArithmeticLogicUnit|Equal4~3_combout\,
	combout => \ArithmeticLogicUnit|Equal4~4_combout\);

-- Location: LCCOMB_X22_Y7_N4
\ArithmeticLogicUnit|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Equal5~1_combout\ = (!\ArithmeticLogicUnit|Mux3~0_combout\ & (!\ArithmeticLogicUnit|Mux2~0_combout\ & \ArithmeticLogicUnit|Equal4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ArithmeticLogicUnit|Mux3~0_combout\,
	datac => \ArithmeticLogicUnit|Mux2~0_combout\,
	datad => \ArithmeticLogicUnit|Equal4~4_combout\,
	combout => \ArithmeticLogicUnit|Equal5~1_combout\);

-- Location: LCCOMB_X26_Y7_N12
\ArithmeticLogicUnit|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Equal5~0_combout\ = (!\ArithmeticLogicUnit|Mux7~0_combout\ & (!\ArithmeticLogicUnit|Mux6~0_combout\ & (!\ArithmeticLogicUnit|Mux4~0_combout\ & !\ArithmeticLogicUnit|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Mux7~0_combout\,
	datab => \ArithmeticLogicUnit|Mux6~0_combout\,
	datac => \ArithmeticLogicUnit|Mux4~0_combout\,
	datad => \ArithmeticLogicUnit|Mux5~0_combout\,
	combout => \ArithmeticLogicUnit|Equal5~0_combout\);

-- Location: LCCOMB_X22_Y7_N22
\ArithmeticLogicUnit|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Equal5~2_combout\ = (!\ArithmeticLogicUnit|Mux0~0_combout\ & (!\ArithmeticLogicUnit|Mux1~0_combout\ & (\ArithmeticLogicUnit|Equal5~1_combout\ & \ArithmeticLogicUnit|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Mux0~0_combout\,
	datab => \ArithmeticLogicUnit|Mux1~0_combout\,
	datac => \ArithmeticLogicUnit|Equal5~1_combout\,
	datad => \ArithmeticLogicUnit|Equal5~0_combout\,
	combout => \ArithmeticLogicUnit|Equal5~2_combout\);

-- Location: LCCOMB_X25_Y7_N20
\ArithmeticLogicUnit|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Equal1~1_combout\ = (!\ArithmeticLogicUnit|MSBAddition[17]~8_combout\ & (!\ArithmeticLogicUnit|MSBAddition[20]~14_combout\ & (!\ArithmeticLogicUnit|MSBAddition[19]~12_combout\ & !\ArithmeticLogicUnit|MSBAddition[18]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|MSBAddition[17]~8_combout\,
	datab => \ArithmeticLogicUnit|MSBAddition[20]~14_combout\,
	datac => \ArithmeticLogicUnit|MSBAddition[19]~12_combout\,
	datad => \ArithmeticLogicUnit|MSBAddition[18]~10_combout\,
	combout => \ArithmeticLogicUnit|Equal1~1_combout\);

-- Location: LCCOMB_X18_Y7_N30
\ArithmeticLogicUnit|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Equal1~0_combout\ = (!\ArithmeticLogicUnit|MSBAddition[16]~6_combout\ & (!\ArithmeticLogicUnit|MSBAddition[13]~0_combout\ & (!\ArithmeticLogicUnit|MSBAddition[15]~4_combout\ & !\ArithmeticLogicUnit|MSBAddition[14]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|MSBAddition[16]~6_combout\,
	datab => \ArithmeticLogicUnit|MSBAddition[13]~0_combout\,
	datac => \ArithmeticLogicUnit|MSBAddition[15]~4_combout\,
	datad => \ArithmeticLogicUnit|MSBAddition[14]~2_combout\,
	combout => \ArithmeticLogicUnit|Equal1~0_combout\);

-- Location: LCCOMB_X25_Y5_N12
\ArithmeticLogicUnit|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Equal0~0_combout\ = (!\ArithmeticLogicUnit|Add1~2_combout\ & (!\ArithmeticLogicUnit|Add1~4_combout\ & (!\ArithmeticLogicUnit|Add1~6_combout\ & !\ArithmeticLogicUnit|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Add1~2_combout\,
	datab => \ArithmeticLogicUnit|Add1~4_combout\,
	datac => \ArithmeticLogicUnit|Add1~6_combout\,
	datad => \ArithmeticLogicUnit|Add1~0_combout\,
	combout => \ArithmeticLogicUnit|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y7_N30
\ArithmeticLogicUnit|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Equal0~3_combout\ = (!\ArithmeticLogicUnit|ADC_Q[15]~22_combout\ & (!\ArithmeticLogicUnit|ADC_Q[14]~20_combout\ & (!\ArithmeticLogicUnit|ADC_Q[13]~18_combout\ & !\ArithmeticLogicUnit|ADC_Q[12]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|ADC_Q[15]~22_combout\,
	datab => \ArithmeticLogicUnit|ADC_Q[14]~20_combout\,
	datac => \ArithmeticLogicUnit|ADC_Q[13]~18_combout\,
	datad => \ArithmeticLogicUnit|ADC_Q[12]~16_combout\,
	combout => \ArithmeticLogicUnit|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y6_N22
\ArithmeticLogicUnit|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Equal0~1_combout\ = (!\ArithmeticLogicUnit|ADC_Q[5]~2_combout\ & (!\ArithmeticLogicUnit|ADC_Q[4]~0_combout\ & (!\ArithmeticLogicUnit|ADC_Q[7]~6_combout\ & !\ArithmeticLogicUnit|ADC_Q[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|ADC_Q[5]~2_combout\,
	datab => \ArithmeticLogicUnit|ADC_Q[4]~0_combout\,
	datac => \ArithmeticLogicUnit|ADC_Q[7]~6_combout\,
	datad => \ArithmeticLogicUnit|ADC_Q[6]~4_combout\,
	combout => \ArithmeticLogicUnit|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y6_N24
\ArithmeticLogicUnit|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Equal0~2_combout\ = (!\ArithmeticLogicUnit|ADC_Q[11]~14_combout\ & (!\ArithmeticLogicUnit|ADC_Q[8]~8_combout\ & (!\ArithmeticLogicUnit|ADC_Q[10]~12_combout\ & !\ArithmeticLogicUnit|ADC_Q[9]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|ADC_Q[11]~14_combout\,
	datab => \ArithmeticLogicUnit|ADC_Q[8]~8_combout\,
	datac => \ArithmeticLogicUnit|ADC_Q[10]~12_combout\,
	datad => \ArithmeticLogicUnit|ADC_Q[9]~10_combout\,
	combout => \ArithmeticLogicUnit|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y6_N18
\ArithmeticLogicUnit|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Equal0~4_combout\ = (\ArithmeticLogicUnit|Equal0~0_combout\ & (\ArithmeticLogicUnit|Equal0~3_combout\ & (\ArithmeticLogicUnit|Equal0~1_combout\ & \ArithmeticLogicUnit|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Equal0~0_combout\,
	datab => \ArithmeticLogicUnit|Equal0~3_combout\,
	datac => \ArithmeticLogicUnit|Equal0~1_combout\,
	datad => \ArithmeticLogicUnit|Equal0~2_combout\,
	combout => \ArithmeticLogicUnit|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y6_N0
\ArithmeticLogicUnit|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Equal1~2_combout\ = (\ArithmeticLogicUnit|Equal1~1_combout\ & (\ArithmeticLogicUnit|Equal1~0_combout\ & \ArithmeticLogicUnit|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ArithmeticLogicUnit|Equal1~1_combout\,
	datac => \ArithmeticLogicUnit|Equal1~0_combout\,
	datad => \ArithmeticLogicUnit|Equal0~4_combout\,
	combout => \ArithmeticLogicUnit|Equal1~2_combout\);

-- Location: LCCOMB_X22_Y7_N20
\ArithmeticLogicUnit|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux27~0_combout\ = (\MicroCode|ALUOp\(1) & ((\MicroCode|ALUOpL~q\) # ((\ArithmeticLogicUnit|Equal0~4_combout\)))) # (!\MicroCode|ALUOp\(1) & (!\MicroCode|ALUOpL~q\ & ((\ArithmeticLogicUnit|Equal4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOp\(1),
	datab => \MicroCode|ALUOpL~q\,
	datac => \ArithmeticLogicUnit|Equal0~4_combout\,
	datad => \ArithmeticLogicUnit|Equal4~4_combout\,
	combout => \ArithmeticLogicUnit|Mux27~0_combout\);

-- Location: LCCOMB_X22_Y7_N14
\ArithmeticLogicUnit|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux27~1_combout\ = (\MicroCode|ALUOpL~q\ & ((\ArithmeticLogicUnit|Mux27~0_combout\ & ((\ArithmeticLogicUnit|Equal1~2_combout\))) # (!\ArithmeticLogicUnit|Mux27~0_combout\ & (\ArithmeticLogicUnit|Equal5~2_combout\)))) # 
-- (!\MicroCode|ALUOpL~q\ & (((\ArithmeticLogicUnit|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Equal5~2_combout\,
	datab => \ArithmeticLogicUnit|Equal1~2_combout\,
	datac => \MicroCode|ALUOpL~q\,
	datad => \ArithmeticLogicUnit|Mux27~0_combout\,
	combout => \ArithmeticLogicUnit|Mux27~1_combout\);

-- Location: FF_X22_Y7_N15
\FR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ArithmeticLogicUnit|Mux27~1_combout\,
	ena => \FR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FR(6));

-- Location: LCCOMB_X22_Y5_N22
\Mux124~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~2_combout\ = (\Mux127~6_combout\ & (((PC(6)) # (!\Mux126~4_combout\)))) # (!\Mux127~6_combout\ & (FR(6) & ((\Mux126~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FR(6),
	datab => PC(6),
	datac => \Mux127~6_combout\,
	datad => \Mux126~4_combout\,
	combout => \Mux124~2_combout\);

-- Location: LCCOMB_X24_Y6_N16
\Mux124~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~3_combout\ = (\Mux130~7_combout\ & ((\Mux124~2_combout\ & ((IR(6)))) # (!\Mux124~2_combout\ & (\ArithmeticLogicUnit|Mux17~0_combout\)))) # (!\Mux130~7_combout\ & (((\Mux124~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|Mux17~0_combout\,
	datab => IR(6),
	datac => \Mux130~7_combout\,
	datad => \Mux124~2_combout\,
	combout => \Mux124~3_combout\);

-- Location: LCCOMB_X24_Y6_N2
\Mux124~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~4_combout\ = (\Mux126~3_combout\ & (\Mux126~2_combout\)) # (!\Mux126~3_combout\ & ((\Mux126~2_combout\ & (\Mux124~1_combout\)) # (!\Mux126~2_combout\ & ((\Mux124~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~3_combout\,
	datab => \Mux126~2_combout\,
	datac => \Mux124~1_combout\,
	datad => \Mux124~3_combout\,
	combout => \Mux124~4_combout\);

-- Location: LCCOMB_X24_Y6_N28
\Mux124~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~5_combout\ = (\Mux126~3_combout\ & ((\Mux124~4_combout\ & (AB(30))) # (!\Mux124~4_combout\ & ((AB(6)))))) # (!\Mux126~3_combout\ & (((\Mux124~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~3_combout\,
	datab => AB(30),
	datac => AB(6),
	datad => \Mux124~4_combout\,
	combout => \Mux124~5_combout\);

-- Location: LCCOMB_X24_Y4_N28
\Mux124~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux124~9_combout\ = (\Mux124~8_combout\ & (((\Mux124~5_combout\)) # (!\Mux126~9_combout\))) # (!\Mux124~8_combout\ & (\Mux126~9_combout\ & (Y(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux124~8_combout\,
	datab => \Mux126~9_combout\,
	datac => Y(6),
	datad => \Mux124~5_combout\,
	combout => \Mux124~9_combout\);

-- Location: LCCOMB_X24_Y4_N0
\AB[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[6]~3_combout\ = (\Mux126~17_combout\ & (\Mux124~10_combout\)) # (!\Mux126~17_combout\ & ((\Mux124~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~17_combout\,
	datac => \Mux124~10_combout\,
	datad => \Mux124~9_combout\,
	combout => \AB[6]~3_combout\);

-- Location: LCCOMB_X24_Y6_N4
\AB[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[6]~feeder_combout\ = \AB[6]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AB[6]~3_combout\,
	combout => \AB[6]~feeder_combout\);

-- Location: FF_X24_Y6_N5
\AB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB[6]~feeder_combout\,
	asdata => \Mux148~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|Aa_in~q\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(6));

-- Location: LCCOMB_X24_Y8_N18
\ArithmeticLogicUnit|ADC_Q[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|ADC_Q[7]~6_combout\ = ((AB(7) $ (AB(31) $ (!\ArithmeticLogicUnit|ADC_Q[6]~5\)))) # (GND)
-- \ArithmeticLogicUnit|ADC_Q[7]~7\ = CARRY((AB(7) & ((AB(31)) # (!\ArithmeticLogicUnit|ADC_Q[6]~5\))) # (!AB(7) & (AB(31) & !\ArithmeticLogicUnit|ADC_Q[6]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AB(7),
	datab => AB(31),
	datad => VCC,
	cin => \ArithmeticLogicUnit|ADC_Q[6]~5\,
	combout => \ArithmeticLogicUnit|ADC_Q[7]~6_combout\,
	cout => \ArithmeticLogicUnit|ADC_Q[7]~7\);

-- Location: LCCOMB_X22_Y5_N16
\ArithmeticLogicUnit|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux16~0_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|ADC_Q[7]~6_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(31)) # ((AB(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOp\(1),
	datab => AB(31),
	datac => AB(7),
	datad => \ArithmeticLogicUnit|ADC_Q[7]~6_combout\,
	combout => \ArithmeticLogicUnit|Mux16~0_combout\);

-- Location: LCCOMB_X21_Y5_N6
\Mux147~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~4_combout\ = (\Mux151~2_combout\ & (((\Mux151~0_combout\)))) # (!\Mux151~2_combout\ & ((\Mux151~0_combout\ & (!EIR(7))) # (!\Mux151~0_combout\ & ((\ArithmeticLogicUnit|Mux16~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(7),
	datab => \Mux151~2_combout\,
	datac => \Mux151~0_combout\,
	datad => \ArithmeticLogicUnit|Mux16~0_combout\,
	combout => \Mux147~4_combout\);

-- Location: FF_X21_Y5_N17
\SI[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux147~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(7));

-- Location: LCCOMB_X14_Y7_N16
\Mux147~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~5_combout\ = (!EIR(31) & \MicroCode|Set_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => EIR(31),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux147~5_combout\);

-- Location: LCCOMB_X21_Y5_N22
\Mux147~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~6_combout\ = (\Mux151~4_combout\ & ((\Mux151~5_combout\ & (!EIR(23))) # (!\Mux151~5_combout\ & ((\Mux147~5_combout\))))) # (!\Mux151~4_combout\ & (((!\Mux151~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(23),
	datab => \Mux147~5_combout\,
	datac => \Mux151~4_combout\,
	datad => \Mux151~5_combout\,
	combout => \Mux147~6_combout\);

-- Location: LCCOMB_X21_Y5_N30
\Address~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~23_combout\ = (\MicroCode|AE~q\ & ((\Mux147~8_combout\))) # (!\MicroCode|AE~q\ & (PC(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|AE~q\,
	datac => PC(7),
	datad => \Mux147~8_combout\,
	combout => \Address~23_combout\);

-- Location: FF_X21_Y5_N31
\Address[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~23_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[7]~reg0_q\);

-- Location: LCCOMB_X21_Y5_N4
\Mux147~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~7_combout\ = (\Mux151~3_combout\ & ((\Mux147~6_combout\ & (SI(7))) # (!\Mux147~6_combout\ & ((\Address[7]~reg0_q\))))) # (!\Mux151~3_combout\ & (((\Mux147~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~3_combout\,
	datab => SI(7),
	datac => \Mux147~6_combout\,
	datad => \Address[7]~reg0_q\,
	combout => \Mux147~7_combout\);

-- Location: LCCOMB_X22_Y5_N10
\Mux147~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~1_combout\ = (\MicroCode|Set_A\(3) & ((\MicroCode|Set_A\(0)) # (DI(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \MicroCode|Set_A\(0),
	datac => DI(7),
	combout => \Mux147~1_combout\);

-- Location: LCCOMB_X22_Y5_N12
\Mux147~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~2_combout\ = (\MicroCode|Set_A\(1) & (((\MicroCode|Set_A\(0))))) # (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0) & (PC(7) & !\Mux147~1_combout\)) # (!\MicroCode|Set_A\(0) & ((\Mux147~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(7),
	datab => \MicroCode|Set_A\(1),
	datac => \MicroCode|Set_A\(0),
	datad => \Mux147~1_combout\,
	combout => \Mux147~2_combout\);

-- Location: LCCOMB_X22_Y5_N8
\Mux147~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~0_combout\ = (AB(7) & !\MicroCode|Set_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AB(7),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux147~0_combout\);

-- Location: LCCOMB_X22_Y5_N26
\Mux147~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~3_combout\ = (\Mux147~2_combout\ & ((AB(31)) # ((!\Mux151~1_combout\)))) # (!\Mux147~2_combout\ & (((\Mux147~0_combout\ & \Mux151~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux147~2_combout\,
	datab => AB(31),
	datac => \Mux147~0_combout\,
	datad => \Mux151~1_combout\,
	combout => \Mux147~3_combout\);

-- Location: LCCOMB_X21_Y5_N2
\Mux147~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~8_combout\ = (\Mux147~4_combout\ & (((\Mux147~7_combout\)) # (!\Mux151~2_combout\))) # (!\Mux147~4_combout\ & (\Mux151~2_combout\ & ((\Mux147~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux147~4_combout\,
	datab => \Mux151~2_combout\,
	datac => \Mux147~7_combout\,
	datad => \Mux147~3_combout\,
	combout => \Mux147~8_combout\);

-- Location: FF_X22_Y5_N11
\DI[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux147~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(7));

-- Location: LCCOMB_X21_Y5_N16
\Mux123~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~0_combout\ = (\MicroCode|Set_D\(0) & ((DI(7)) # ((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (((SI(7) & !\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => DI(7),
	datac => SI(7),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux123~0_combout\);

-- Location: LCCOMB_X21_Y5_N10
\Mux123~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~1_combout\ = (\MicroCode|Set_D\(3) & ((\Mux123~0_combout\ & (!EIR(23))) # (!\Mux123~0_combout\ & ((!EIR(7)))))) # (!\MicroCode|Set_D\(3) & (((\Mux123~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(23),
	datab => \MicroCode|Set_D\(3),
	datac => EIR(7),
	datad => \Mux123~0_combout\,
	combout => \Mux123~1_combout\);

-- Location: LCCOMB_X22_Y5_N28
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

-- Location: FF_X23_Y4_N21
\X[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux123~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \X[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(7));

-- Location: LCCOMB_X22_Y5_N6
\Mux123~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~3_combout\ = (\Mux127~6_combout\ & ((PC(7)) # ((!\MicroCode|Set_D\(1))))) # (!\Mux127~6_combout\ & (((AB(7) & \MicroCode|Set_D\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(7),
	datab => AB(7),
	datac => \Mux127~6_combout\,
	datad => \MicroCode|Set_D\(1),
	combout => \Mux123~3_combout\);

-- Location: LCCOMB_X22_Y5_N24
\Mux123~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~4_combout\ = (\Mux123~3_combout\ & ((IR(7)) # ((!\Mux130~7_combout\)))) # (!\Mux123~3_combout\ & (((\Mux130~7_combout\ & \ArithmeticLogicUnit|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux123~3_combout\,
	datab => IR(7),
	datac => \Mux130~7_combout\,
	datad => \ArithmeticLogicUnit|Mux16~0_combout\,
	combout => \Mux123~4_combout\);

-- Location: FF_X24_Y5_N29
\Z[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux123~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Z[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Z(7));

-- Location: LCCOMB_X24_Y5_N2
\Mux123~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~6_combout\ = (\MicroCode|Set_D\(2) & (((Z(15)) # (\Mux127~11_combout\)))) # (!\MicroCode|Set_D\(2) & (X(15) & ((!\Mux127~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => X(15),
	datab => \MicroCode|Set_D\(2),
	datac => Z(15),
	datad => \Mux127~11_combout\,
	combout => \Mux123~6_combout\);

-- Location: LCCOMB_X24_Y5_N28
\Mux123~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~7_combout\ = (\Mux127~11_combout\ & ((\Mux123~6_combout\ & ((Z(7)))) # (!\Mux123~6_combout\ & (Y(15))))) # (!\Mux127~11_combout\ & (((\Mux123~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Y(15),
	datab => \Mux127~11_combout\,
	datac => Z(7),
	datad => \Mux123~6_combout\,
	combout => \Mux123~7_combout\);

-- Location: FF_X24_Y4_N27
\Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux123~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Y[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(7));

-- Location: LCCOMB_X24_Y4_N26
\Mux123~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~5_combout\ = (\MicroCode|Set_D\(3) & (((Y(7)) # (\Mux127~9_combout\)))) # (!\MicroCode|Set_D\(3) & (AB(31) & ((!\Mux127~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => AB(31),
	datac => Y(7),
	datad => \Mux127~9_combout\,
	combout => \Mux123~5_combout\);

-- Location: LCCOMB_X22_Y5_N30
\Mux123~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~8_combout\ = (\Mux127~9_combout\ & ((\Mux123~5_combout\ & ((\Mux123~7_combout\))) # (!\Mux123~5_combout\ & (\Mux123~4_combout\)))) # (!\Mux127~9_combout\ & (((\Mux123~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~9_combout\,
	datab => \Mux123~4_combout\,
	datac => \Mux123~7_combout\,
	datad => \Mux123~5_combout\,
	combout => \Mux123~8_combout\);

-- Location: LCCOMB_X23_Y4_N20
\Mux123~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~9_combout\ = (\Mux127~4_combout\ & (!\MicroCode|Set_D\(4) & (X(7)))) # (!\Mux127~4_combout\ & ((\MicroCode|Set_D\(4)) # ((\Mux123~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~4_combout\,
	datab => \MicroCode|Set_D\(4),
	datac => X(7),
	datad => \Mux123~8_combout\,
	combout => \Mux123~9_combout\);

-- Location: LCCOMB_X23_Y4_N26
\Mux123~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux123~10_combout\ = (\Mux127~5_combout\ & ((\Mux123~9_combout\ & (\Mux123~2_combout\)) # (!\Mux123~9_combout\ & ((\Data[7]~input_o\))))) # (!\Mux127~5_combout\ & (((\Mux123~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux123~2_combout\,
	datab => \Data[7]~input_o\,
	datac => \Mux127~5_combout\,
	datad => \Mux123~9_combout\,
	combout => \Mux123~10_combout\);

-- Location: LCCOMB_X23_Y8_N8
\AB~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~23_combout\ = (\MicroCode|Aa_in~q\ & ((\Mux147~8_combout\))) # (!\MicroCode|Aa_in~q\ & (\Mux123~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Aa_in~q\,
	datac => \Mux123~10_combout\,
	datad => \Mux147~8_combout\,
	combout => \AB~23_combout\);

-- Location: FF_X23_Y8_N9
\AB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~23_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(7));

-- Location: LCCOMB_X24_Y8_N20
\ArithmeticLogicUnit|ADC_Q[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|ADC_Q[8]~8_combout\ = (AB(8) & ((AB(32) & (\ArithmeticLogicUnit|ADC_Q[7]~7\ & VCC)) # (!AB(32) & (!\ArithmeticLogicUnit|ADC_Q[7]~7\)))) # (!AB(8) & ((AB(32) & (!\ArithmeticLogicUnit|ADC_Q[7]~7\)) # (!AB(32) & 
-- ((\ArithmeticLogicUnit|ADC_Q[7]~7\) # (GND)))))
-- \ArithmeticLogicUnit|ADC_Q[8]~9\ = CARRY((AB(8) & (!AB(32) & !\ArithmeticLogicUnit|ADC_Q[7]~7\)) # (!AB(8) & ((!\ArithmeticLogicUnit|ADC_Q[7]~7\) # (!AB(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AB(8),
	datab => AB(32),
	datad => VCC,
	cin => \ArithmeticLogicUnit|ADC_Q[7]~7\,
	combout => \ArithmeticLogicUnit|ADC_Q[8]~8_combout\,
	cout => \ArithmeticLogicUnit|ADC_Q[8]~9\);

-- Location: LCCOMB_X22_Y9_N10
\ArithmeticLogicUnit|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux15~0_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|ADC_Q[8]~8_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(32)) # ((AB(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(32),
	datab => AB(8),
	datac => \MicroCode|ALUOp\(1),
	datad => \ArithmeticLogicUnit|ADC_Q[8]~8_combout\,
	combout => \ArithmeticLogicUnit|Mux15~0_combout\);

-- Location: LCCOMB_X22_Y9_N18
\Mux122~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~6_combout\ = (\MicroCode|Set_D\(0) & ((IR(8)) # ((\MicroCode|Set_D\(1))))) # (!\MicroCode|Set_D\(0) & (((!\MicroCode|Set_D\(1) & \ArithmeticLogicUnit|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => IR(8),
	datac => \MicroCode|Set_D\(1),
	datad => \ArithmeticLogicUnit|Mux15~0_combout\,
	combout => \Mux122~6_combout\);

-- Location: LCCOMB_X22_Y9_N22
\Mux122~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~7_combout\ = (\MicroCode|Set_D\(1) & ((\Mux122~6_combout\ & ((X(8)))) # (!\Mux122~6_combout\ & (PC(8))))) # (!\MicroCode|Set_D\(1) & (((\Mux122~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => PC(8),
	datac => X(8),
	datad => \Mux122~6_combout\,
	combout => \Mux122~7_combout\);

-- Location: LCCOMB_X21_Y9_N2
\Mux122~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~8_combout\ = (\Mux120~4_combout\ & ((\Mux120~5_combout\ & (Y(8))) # (!\Mux120~5_combout\ & ((\Mux122~7_combout\))))) # (!\Mux120~4_combout\ & (!\Mux120~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~4_combout\,
	datab => \Mux120~5_combout\,
	datac => Y(8),
	datad => \Mux122~7_combout\,
	combout => \Mux122~8_combout\);

-- Location: LCCOMB_X21_Y9_N28
\Mux122~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~9_combout\ = (\Mux126~18_combout\ & (((\Mux122~8_combout\)))) # (!\Mux126~18_combout\ & ((\Mux122~8_combout\ & ((AB(8)))) # (!\Mux122~8_combout\ & (AB(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(32),
	datab => \Mux126~18_combout\,
	datac => AB(8),
	datad => \Mux122~8_combout\,
	combout => \Mux122~9_combout\);

-- Location: LCCOMB_X21_Y9_N6
\Mux122~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~12_combout\ = (\Mux122~9_combout\ & ((\MicroCode|Set_D\(3)) # ((\MicroCode|Set_D\(1)) # (\MicroCode|Set_D\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(1),
	datac => \MicroCode|Set_D\(2),
	datad => \Mux122~9_combout\,
	combout => \Mux122~12_combout\);

-- Location: LCCOMB_X21_Y9_N10
\Mux122~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~10_combout\ = (\Mux120~2_combout\ & (!\MicroCode|Set_D\(4) & (\Mux122~5_combout\))) # (!\Mux120~2_combout\ & ((\MicroCode|Set_D\(4)) # ((\Mux122~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~2_combout\,
	datab => \MicroCode|Set_D\(4),
	datac => \Mux122~5_combout\,
	datad => \Mux122~12_combout\,
	combout => \Mux122~10_combout\);

-- Location: LCCOMB_X21_Y9_N16
\Mux122~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux122~11_combout\ = (\Mux120~3_combout\ & ((\Mux122~10_combout\ & ((\Mux122~4_combout\))) # (!\Mux122~10_combout\ & (\Data[8]~input_o\)))) # (!\Mux120~3_combout\ & (((\Mux122~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[8]~input_o\,
	datab => \Mux122~4_combout\,
	datac => \Mux120~3_combout\,
	datad => \Mux122~10_combout\,
	combout => \Mux122~11_combout\);

-- Location: LCCOMB_X25_Y8_N18
\AB~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~24_combout\ = (!\MicroCode|Bs_in~q\ & \Mux122~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Bs_in~q\,
	datad => \Mux122~11_combout\,
	combout => \AB~24_combout\);

-- Location: FF_X25_Y8_N19
\AB[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~24_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(32));

-- Location: LCCOMB_X22_Y9_N4
\Mux146~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux146~2_combout\ = (PC(8) & \MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(8),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux146~2_combout\);

-- Location: LCCOMB_X22_Y9_N2
\Mux146~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux146~3_combout\ = (\Mux152~2_combout\ & ((\Mux152~3_combout\ & ((\ArithmeticLogicUnit|Mux15~0_combout\))) # (!\Mux152~3_combout\ & (\Mux146~2_combout\)))) # (!\Mux152~2_combout\ & (!\Mux152~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux152~2_combout\,
	datab => \Mux152~3_combout\,
	datac => \Mux146~2_combout\,
	datad => \ArithmeticLogicUnit|Mux15~0_combout\,
	combout => \Mux146~3_combout\);

-- Location: LCCOMB_X22_Y9_N28
\Mux146~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux146~4_combout\ = (\Mux152~1_combout\ & ((\Mux146~3_combout\ & ((AB(8)))) # (!\Mux146~3_combout\ & (AB(32))))) # (!\Mux152~1_combout\ & (((\Mux146~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(32),
	datab => \Mux152~1_combout\,
	datac => AB(8),
	datad => \Mux146~3_combout\,
	combout => \Mux146~4_combout\);

-- Location: LCCOMB_X21_Y9_N18
\Mux146~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux146~6_combout\ = (\MicroCode|Set_A\(3) & (((\Mux152~4_combout\)))) # (!\MicroCode|Set_A\(3) & ((\Mux152~4_combout\ & (\Mux146~5_combout\)) # (!\Mux152~4_combout\ & ((\Mux146~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \Mux146~5_combout\,
	datac => \Mux152~4_combout\,
	datad => \Mux146~4_combout\,
	combout => \Mux146~6_combout\);

-- Location: LCCOMB_X21_Y9_N20
\Address~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~24_combout\ = (\Mux152~0_combout\ & ((\Mux146~6_combout\ & (\Mux146~1_combout\)) # (!\Mux146~6_combout\ & ((DI(8)))))) # (!\Mux152~0_combout\ & (((\Mux146~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux146~1_combout\,
	datab => \Mux152~0_combout\,
	datac => DI(8),
	datad => \Mux146~6_combout\,
	combout => \Address~24_combout\);

-- Location: LCCOMB_X21_Y9_N8
\Address~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~25_combout\ = (\MicroCode|AE~q\ & ((\Address~24_combout\))) # (!\MicroCode|AE~q\ & (PC(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(8),
	datab => \MicroCode|AE~q\,
	datad => \Address~24_combout\,
	combout => \Address~25_combout\);

-- Location: FF_X21_Y9_N9
\Address[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~25_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[8]~reg0_q\);

-- Location: LCCOMB_X14_Y7_N18
\Mux146~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux146~0_combout\ = (\MicroCode|Set_A\(1) & (((\MicroCode|Set_A\(0))))) # (!\MicroCode|Set_A\(1) & ((\MicroCode|Set_A\(0) & (!EIR(32))) # (!\MicroCode|Set_A\(0) & ((!EIR(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => EIR(32),
	datac => EIR(8),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux146~0_combout\);

-- Location: LCCOMB_X14_Y7_N4
\Mux146~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux146~1_combout\ = (\MicroCode|Set_A\(1) & ((\Mux146~0_combout\ & ((\Address[8]~reg0_q\))) # (!\Mux146~0_combout\ & (!EIR(24))))) # (!\MicroCode|Set_A\(1) & (((\Mux146~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => EIR(24),
	datac => \Address[8]~reg0_q\,
	datad => \Mux146~0_combout\,
	combout => \Mux146~1_combout\);

-- Location: LCCOMB_X21_Y9_N12
\Mux146~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux146~7_combout\ = (\Mux146~6_combout\ & (((\Mux146~1_combout\) # (!\Mux152~0_combout\)))) # (!\Mux146~6_combout\ & (DI(8) & (\Mux152~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(8),
	datab => \Mux146~6_combout\,
	datac => \Mux152~0_combout\,
	datad => \Mux146~1_combout\,
	combout => \Mux146~7_combout\);

-- Location: LCCOMB_X23_Y8_N14
\AB~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~25_combout\ = (\MicroCode|Aa_in~q\ & (\Mux146~7_combout\)) # (!\MicroCode|Aa_in~q\ & ((\Mux122~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Aa_in~q\,
	datac => \Mux146~7_combout\,
	datad => \Mux122~11_combout\,
	combout => \AB~25_combout\);

-- Location: FF_X23_Y8_N15
\AB[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~25_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(8));

-- Location: LCCOMB_X24_Y8_N22
\ArithmeticLogicUnit|ADC_Q[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|ADC_Q[9]~10_combout\ = ((AB(33) $ (AB(9) $ (!\ArithmeticLogicUnit|ADC_Q[8]~9\)))) # (GND)
-- \ArithmeticLogicUnit|ADC_Q[9]~11\ = CARRY((AB(33) & ((AB(9)) # (!\ArithmeticLogicUnit|ADC_Q[8]~9\))) # (!AB(33) & (AB(9) & !\ArithmeticLogicUnit|ADC_Q[8]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AB(33),
	datab => AB(9),
	datad => VCC,
	cin => \ArithmeticLogicUnit|ADC_Q[8]~9\,
	combout => \ArithmeticLogicUnit|ADC_Q[9]~10_combout\,
	cout => \ArithmeticLogicUnit|ADC_Q[9]~11\);

-- Location: LCCOMB_X21_Y8_N12
\ArithmeticLogicUnit|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux14~0_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|ADC_Q[9]~10_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(33)) # ((AB(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(33),
	datab => \MicroCode|ALUOp\(1),
	datac => AB(9),
	datad => \ArithmeticLogicUnit|ADC_Q[9]~10_combout\,
	combout => \ArithmeticLogicUnit|Mux14~0_combout\);

-- Location: LCCOMB_X18_Y8_N28
\Mux145~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~4_combout\ = (\Mux151~2_combout\ & ((\Mux151~0_combout\) # ((\Mux145~3_combout\)))) # (!\Mux151~2_combout\ & (!\Mux151~0_combout\ & ((\ArithmeticLogicUnit|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~2_combout\,
	datab => \Mux151~0_combout\,
	datac => \Mux145~3_combout\,
	datad => \ArithmeticLogicUnit|Mux14~0_combout\,
	combout => \Mux145~4_combout\);

-- Location: LCCOMB_X18_Y8_N30
\Mux145~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~7_combout\ = (\Mux151~0_combout\ & ((\Mux145~4_combout\ & (\Mux145~6_combout\)) # (!\Mux145~4_combout\ & ((!EIR(9)))))) # (!\Mux151~0_combout\ & (((\Mux145~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux145~6_combout\,
	datab => \Mux151~0_combout\,
	datac => EIR(9),
	datad => \Mux145~4_combout\,
	combout => \Mux145~7_combout\);

-- Location: FF_X21_Y8_N21
\AB[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB[9]~feeder_combout\,
	asdata => \Mux145~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|Aa_in~q\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(9));

-- Location: LCCOMB_X21_Y8_N14
\Mux120~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~6_combout\ = (\MicroCode|Set_D\(4)) # (\MicroCode|Set_D\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_D\(4),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux120~6_combout\);

-- Location: LCCOMB_X19_Y4_N6
\Mux121~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~14_combout\ = (\MicroCode|Set_D\(4)) # ((\MicroCode|Set_D\(3) & !\MicroCode|Set_D\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datac => \MicroCode|Set_D\(0),
	datad => \MicroCode|Set_D\(4),
	combout => \Mux121~14_combout\);

-- Location: LCCOMB_X19_Y4_N0
\Mux121~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~6_combout\ = (\MicroCode|Set_D\(4)) # ((!\MicroCode|Set_D\(3) & \MicroCode|Set_D\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datac => \MicroCode|Set_D\(0),
	datad => \MicroCode|Set_D\(4),
	combout => \Mux121~6_combout\);

-- Location: LCCOMB_X18_Y8_N6
\Mux121~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~12_combout\ = (\MicroCode|Set_D\(0) & ((DI(9)) # ((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (((SI(9) & !\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => DI(9),
	datac => SI(9),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux121~12_combout\);

-- Location: LCCOMB_X18_Y8_N10
\Mux121~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~13_combout\ = (\MicroCode|Set_D\(3) & ((\Mux121~12_combout\ & (!EIR(25))) # (!\Mux121~12_combout\ & ((!EIR(9)))))) # (!\MicroCode|Set_D\(3) & (((\Mux121~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => EIR(25),
	datac => EIR(9),
	datad => \Mux121~12_combout\,
	combout => \Mux121~13_combout\);

-- Location: LCCOMB_X19_Y4_N16
\Mux121~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~15_combout\ = (\Mux121~14_combout\ & ((\Mux121~6_combout\ & ((\Mux121~13_combout\))) # (!\Mux121~6_combout\ & (Y(9))))) # (!\Mux121~14_combout\ & (\Mux121~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux121~14_combout\,
	datab => \Mux121~6_combout\,
	datac => Y(9),
	datad => \Mux121~13_combout\,
	combout => \Mux121~15_combout\);

-- Location: LCCOMB_X21_Y8_N30
\Mux121~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~16_combout\ = (\Mux120~6_combout\ & (((\Mux121~15_combout\)))) # (!\Mux120~6_combout\ & ((\Mux121~15_combout\ & ((AB(33)))) # (!\Mux121~15_combout\ & (AB(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(9),
	datab => \Mux120~6_combout\,
	datac => AB(33),
	datad => \Mux121~15_combout\,
	combout => \Mux121~16_combout\);

-- Location: LCCOMB_X21_Y4_N2
\Mux121~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~4_combout\ = (Z(9) & \MicroCode|Set_D\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Z(9),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux121~4_combout\);

-- Location: LCCOMB_X21_Y4_N6
\Mux121~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~5_combout\ = (\MicroCode|Set_D\(3) & ((!\MicroCode|Set_D\(4)) # (!\MicroCode|Set_D\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datac => \MicroCode|Set_D\(3),
	datad => \MicroCode|Set_D\(4),
	combout => \Mux121~5_combout\);

-- Location: LCCOMB_X21_Y4_N0
\Mux121~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~7_combout\ = (\Mux121~6_combout\ & (\Data[9]~input_o\ & ((\Mux121~5_combout\)))) # (!\Mux121~6_combout\ & (((\Mux121~4_combout\) # (!\Mux121~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[9]~input_o\,
	datab => \Mux121~4_combout\,
	datac => \Mux121~6_combout\,
	datad => \Mux121~5_combout\,
	combout => \Mux121~7_combout\);

-- Location: LCCOMB_X21_Y8_N4
\Mux121~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~8_combout\ = (\Mux120~6_combout\ & (((\Mux121~7_combout\)))) # (!\Mux120~6_combout\ & ((\Mux121~7_combout\ & ((\ArithmeticLogicUnit|Mux14~0_combout\))) # (!\Mux121~7_combout\ & (IR(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(9),
	datab => \Mux120~6_combout\,
	datac => \Mux121~7_combout\,
	datad => \ArithmeticLogicUnit|Mux14~0_combout\,
	combout => \Mux121~8_combout\);

-- Location: LCCOMB_X21_Y8_N18
\Mux121~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~10_combout\ = (\Mux121~9_combout\ & (((PC(9)) # (\Mux127~18_combout\)))) # (!\Mux121~9_combout\ & (\Mux128~6_combout\ & ((!\Mux127~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux121~9_combout\,
	datab => \Mux128~6_combout\,
	datac => PC(9),
	datad => \Mux127~18_combout\,
	combout => \Mux121~10_combout\);

-- Location: LCCOMB_X21_Y8_N28
\Mux121~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~11_combout\ = (\Mux127~18_combout\ & ((\Mux121~10_combout\ & (X(9))) # (!\Mux121~10_combout\ & ((\Mux121~8_combout\))))) # (!\Mux127~18_combout\ & (((\Mux121~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~18_combout\,
	datab => X(9),
	datac => \Mux121~8_combout\,
	datad => \Mux121~10_combout\,
	combout => \Mux121~11_combout\);

-- Location: LCCOMB_X21_Y8_N16
\Mux121~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux121~17_combout\ = (\Mux121~11_combout\ & (((!\MicroCode|Set_D\(4) & !\MicroCode|Set_D\(3))) # (!\Mux121~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux121~9_combout\,
	datab => \MicroCode|Set_D\(4),
	datac => \MicroCode|Set_D\(3),
	datad => \Mux121~11_combout\,
	combout => \Mux121~17_combout\);

-- Location: LCCOMB_X21_Y8_N22
\AB[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[9]~4_combout\ = (\Mux127~19_combout\ & (\Mux121~16_combout\)) # (!\Mux127~19_combout\ & ((\Mux121~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~19_combout\,
	datac => \Mux121~16_combout\,
	datad => \Mux121~17_combout\,
	combout => \AB[9]~4_combout\);

-- Location: LCCOMB_X21_Y8_N26
\AB~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~26_combout\ = (\AB[9]~4_combout\ & !\MicroCode|Bs_in~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AB[9]~4_combout\,
	datac => \MicroCode|Bs_in~q\,
	combout => \AB~26_combout\);

-- Location: FF_X21_Y8_N27
\AB[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~26_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(33));

-- Location: LCCOMB_X24_Y8_N24
\ArithmeticLogicUnit|ADC_Q[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|ADC_Q[10]~12_combout\ = (AB(10) & ((AB(34) & (\ArithmeticLogicUnit|ADC_Q[9]~11\ & VCC)) # (!AB(34) & (!\ArithmeticLogicUnit|ADC_Q[9]~11\)))) # (!AB(10) & ((AB(34) & (!\ArithmeticLogicUnit|ADC_Q[9]~11\)) # (!AB(34) & 
-- ((\ArithmeticLogicUnit|ADC_Q[9]~11\) # (GND)))))
-- \ArithmeticLogicUnit|ADC_Q[10]~13\ = CARRY((AB(10) & (!AB(34) & !\ArithmeticLogicUnit|ADC_Q[9]~11\)) # (!AB(10) & ((!\ArithmeticLogicUnit|ADC_Q[9]~11\) # (!AB(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AB(10),
	datab => AB(34),
	datad => VCC,
	cin => \ArithmeticLogicUnit|ADC_Q[9]~11\,
	combout => \ArithmeticLogicUnit|ADC_Q[10]~12_combout\,
	cout => \ArithmeticLogicUnit|ADC_Q[10]~13\);

-- Location: LCCOMB_X22_Y8_N18
\ArithmeticLogicUnit|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux13~0_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|ADC_Q[10]~12_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(34)) # ((AB(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(34),
	datab => \MicroCode|ALUOp\(1),
	datac => \ArithmeticLogicUnit|ADC_Q[10]~12_combout\,
	datad => AB(10),
	combout => \ArithmeticLogicUnit|Mux13~0_combout\);

-- Location: LCCOMB_X22_Y8_N28
\Mux144~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux144~3_combout\ = (\Mux152~3_combout\ & (((\Mux152~2_combout\ & \ArithmeticLogicUnit|Mux13~0_combout\)))) # (!\Mux152~3_combout\ & ((\Mux144~2_combout\) # ((!\Mux152~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux152~3_combout\,
	datab => \Mux144~2_combout\,
	datac => \Mux152~2_combout\,
	datad => \ArithmeticLogicUnit|Mux13~0_combout\,
	combout => \Mux144~3_combout\);

-- Location: LCCOMB_X22_Y8_N6
\Mux144~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux144~4_combout\ = (\Mux152~1_combout\ & ((\Mux144~3_combout\ & ((AB(10)))) # (!\Mux144~3_combout\ & (AB(34))))) # (!\Mux152~1_combout\ & (((\Mux144~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(34),
	datab => AB(10),
	datac => \Mux152~1_combout\,
	datad => \Mux144~3_combout\,
	combout => \Mux144~4_combout\);

-- Location: LCCOMB_X22_Y8_N16
\Mux144~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux144~6_combout\ = (\Mux152~4_combout\ & ((\MicroCode|Set_A\(3)) # ((\Mux144~5_combout\)))) # (!\Mux152~4_combout\ & (!\MicroCode|Set_A\(3) & ((\Mux144~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux152~4_combout\,
	datab => \MicroCode|Set_A\(3),
	datac => \Mux144~5_combout\,
	datad => \Mux144~4_combout\,
	combout => \Mux144~6_combout\);

-- Location: LCCOMB_X22_Y8_N14
\Mux144~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux144~7_combout\ = (\Mux152~0_combout\ & ((\Mux144~6_combout\ & ((\Mux144~1_combout\))) # (!\Mux144~6_combout\ & (DI(10))))) # (!\Mux152~0_combout\ & (((\Mux144~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(10),
	datab => \Mux144~1_combout\,
	datac => \Mux152~0_combout\,
	datad => \Mux144~6_combout\,
	combout => \Mux144~7_combout\);

-- Location: FF_X21_Y7_N3
\SI[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux144~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(10));

-- Location: LCCOMB_X21_Y7_N8
\Mux120~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~7_combout\ = (\MicroCode|Set_D\(0) & (((DI(10)) # (\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (SI(10) & ((!\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => SI(10),
	datac => DI(10),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux120~7_combout\);

-- Location: LCCOMB_X21_Y7_N24
\Mux120~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~8_combout\ = (\Mux120~7_combout\ & (((!\MicroCode|Set_D\(3))) # (!EIR(26)))) # (!\Mux120~7_combout\ & (((!EIR(10) & \MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(26),
	datab => EIR(10),
	datac => \Mux120~7_combout\,
	datad => \MicroCode|Set_D\(3),
	combout => \Mux120~8_combout\);

-- Location: LCCOMB_X22_Y8_N26
\Mux120~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~9_combout\ = (\MicroCode|Set_D\(1) & \Mux120~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_D\(1),
	datad => \Mux120~8_combout\,
	combout => \Mux120~9_combout\);

-- Location: LCCOMB_X21_Y4_N14
\Mux120~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~10_combout\ = (\MicroCode|Set_D\(0) & (Z(10) & !\MicroCode|Set_D\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datac => Z(10),
	datad => \MicroCode|Set_D\(1),
	combout => \Mux120~10_combout\);

-- Location: LCCOMB_X22_Y8_N12
\Mux120~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~11_combout\ = (\MicroCode|Set_D\(0) & ((IR(10)) # ((\MicroCode|Set_D\(1))))) # (!\MicroCode|Set_D\(0) & (((!\MicroCode|Set_D\(1) & \ArithmeticLogicUnit|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => IR(10),
	datac => \MicroCode|Set_D\(1),
	datad => \ArithmeticLogicUnit|Mux13~0_combout\,
	combout => \Mux120~11_combout\);

-- Location: LCCOMB_X22_Y8_N2
\Mux120~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~12_combout\ = (\MicroCode|Set_D\(1) & ((\Mux120~11_combout\ & ((X(10)))) # (!\Mux120~11_combout\ & (PC(10))))) # (!\MicroCode|Set_D\(1) & (((\Mux120~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(10),
	datab => \MicroCode|Set_D\(1),
	datac => X(10),
	datad => \Mux120~11_combout\,
	combout => \Mux120~12_combout\);

-- Location: LCCOMB_X22_Y8_N22
\Mux120~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~13_combout\ = (\Mux120~5_combout\ & (Y(10) & (\Mux120~4_combout\))) # (!\Mux120~5_combout\ & (((\Mux120~12_combout\) # (!\Mux120~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~5_combout\,
	datab => Y(10),
	datac => \Mux120~4_combout\,
	datad => \Mux120~12_combout\,
	combout => \Mux120~13_combout\);

-- Location: LCCOMB_X22_Y8_N0
\Mux120~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~14_combout\ = (\Mux126~18_combout\ & (((\Mux120~13_combout\)))) # (!\Mux126~18_combout\ & ((\Mux120~13_combout\ & ((AB(10)))) # (!\Mux120~13_combout\ & (AB(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(34),
	datab => \Mux126~18_combout\,
	datac => \Mux120~13_combout\,
	datad => AB(10),
	combout => \Mux120~14_combout\);

-- Location: LCCOMB_X22_Y8_N30
\Mux120~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~17_combout\ = (\Mux120~14_combout\ & ((\MicroCode|Set_D\(3)) # ((\MicroCode|Set_D\(2)) # (\MicroCode|Set_D\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => \MicroCode|Set_D\(2),
	datac => \MicroCode|Set_D\(1),
	datad => \Mux120~14_combout\,
	combout => \Mux120~17_combout\);

-- Location: LCCOMB_X22_Y8_N10
\Mux120~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~15_combout\ = (\MicroCode|Set_D\(4) & (((!\Mux120~2_combout\)))) # (!\MicroCode|Set_D\(4) & ((\Mux120~2_combout\ & (\Mux120~10_combout\)) # (!\Mux120~2_combout\ & ((\Mux120~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~10_combout\,
	datab => \MicroCode|Set_D\(4),
	datac => \Mux120~17_combout\,
	datad => \Mux120~2_combout\,
	combout => \Mux120~15_combout\);

-- Location: LCCOMB_X22_Y8_N8
\Mux120~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux120~16_combout\ = (\Mux120~3_combout\ & ((\Mux120~15_combout\ & ((\Mux120~9_combout\))) # (!\Mux120~15_combout\ & (\Data[10]~input_o\)))) # (!\Mux120~3_combout\ & (((\Mux120~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data[10]~input_o\,
	datab => \Mux120~3_combout\,
	datac => \Mux120~9_combout\,
	datad => \Mux120~15_combout\,
	combout => \Mux120~16_combout\);

-- Location: LCCOMB_X22_Y8_N24
\AB~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~28_combout\ = (\MicroCode|Aa_in~q\ & ((\Mux144~7_combout\))) # (!\MicroCode|Aa_in~q\ & (\Mux120~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux120~16_combout\,
	datac => \Mux144~7_combout\,
	datad => \MicroCode|Aa_in~q\,
	combout => \AB~28_combout\);

-- Location: FF_X22_Y8_N25
\AB[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~28_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(10));

-- Location: LCCOMB_X24_Y8_N26
\ArithmeticLogicUnit|ADC_Q[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|ADC_Q[11]~14_combout\ = ((AB(11) $ (AB(35) $ (!\ArithmeticLogicUnit|ADC_Q[10]~13\)))) # (GND)
-- \ArithmeticLogicUnit|ADC_Q[11]~15\ = CARRY((AB(11) & ((AB(35)) # (!\ArithmeticLogicUnit|ADC_Q[10]~13\))) # (!AB(11) & (AB(35) & !\ArithmeticLogicUnit|ADC_Q[10]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AB(11),
	datab => AB(35),
	datad => VCC,
	cin => \ArithmeticLogicUnit|ADC_Q[10]~13\,
	combout => \ArithmeticLogicUnit|ADC_Q[11]~14_combout\,
	cout => \ArithmeticLogicUnit|ADC_Q[11]~15\);

-- Location: LCCOMB_X23_Y5_N2
\ArithmeticLogicUnit|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux12~0_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|ADC_Q[11]~14_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(35)) # ((AB(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(35),
	datab => AB(11),
	datac => \MicroCode|ALUOp\(1),
	datad => \ArithmeticLogicUnit|ADC_Q[11]~14_combout\,
	combout => \ArithmeticLogicUnit|Mux12~0_combout\);

-- Location: LCCOMB_X23_Y5_N8
\Mux143~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux143~4_combout\ = (\Mux151~0_combout\ & (((\Mux151~2_combout\)) # (!EIR(11)))) # (!\Mux151~0_combout\ & (((!\Mux151~2_combout\ & \ArithmeticLogicUnit|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(11),
	datab => \Mux151~0_combout\,
	datac => \Mux151~2_combout\,
	datad => \ArithmeticLogicUnit|Mux12~0_combout\,
	combout => \Mux143~4_combout\);

-- Location: LCCOMB_X19_Y5_N16
\Mux143~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux143~0_combout\ = (AB(35) & !\MicroCode|Set_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => AB(35),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux143~0_combout\);

-- Location: LCCOMB_X18_Y5_N14
\Mux143~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux143~1_combout\ = (\MicroCode|Set_A\(0) & (PC(11))) # (!\MicroCode|Set_A\(0) & ((DI(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(11),
	datac => DI(11),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux143~1_combout\);

-- Location: LCCOMB_X18_Y5_N4
\Mux143~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux143~2_combout\ = (\MicroCode|Set_A\(1) & (((!\MicroCode|Set_A\(0))))) # (!\MicroCode|Set_A\(1) & (\Mux143~1_combout\ & (\MicroCode|Set_A\(3) $ (\MicroCode|Set_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(1),
	datab => \Mux143~1_combout\,
	datac => \MicroCode|Set_A\(3),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux143~2_combout\);

-- Location: LCCOMB_X19_Y5_N10
\Mux143~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux143~3_combout\ = (\Mux143~2_combout\ & ((AB(11)) # ((!\Mux141~0_combout\)))) # (!\Mux143~2_combout\ & (((\Mux143~0_combout\ & \Mux141~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(11),
	datab => \Mux143~0_combout\,
	datac => \Mux143~2_combout\,
	datad => \Mux141~0_combout\,
	combout => \Mux143~3_combout\);

-- Location: LCCOMB_X23_Y5_N20
\Mux143~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux143~7_combout\ = (\Mux151~2_combout\ & ((\Mux143~4_combout\ & (\Mux143~6_combout\)) # (!\Mux143~4_combout\ & ((\Mux143~3_combout\))))) # (!\Mux151~2_combout\ & (((\Mux143~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux143~6_combout\,
	datab => \Mux151~2_combout\,
	datac => \Mux143~4_combout\,
	datad => \Mux143~3_combout\,
	combout => \Mux143~7_combout\);

-- Location: FF_X18_Y5_N15
\DI[11]\ : dffeas
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
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(11));

-- Location: LCCOMB_X19_Y5_N4
\Mux119~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~1_combout\ = (\MicroCode|Set_D\(0) & ((DI(11)) # ((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (((SI(11) & !\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(11),
	datab => \MicroCode|Set_D\(0),
	datac => SI(11),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux119~1_combout\);

-- Location: LCCOMB_X19_Y5_N28
\Mux119~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~2_combout\ = (\MicroCode|Set_D\(3) & ((\Mux119~1_combout\ & ((!EIR(27)))) # (!\Mux119~1_combout\ & (!EIR(11))))) # (!\MicroCode|Set_D\(3) & (((\Mux119~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => EIR(11),
	datac => \Mux119~1_combout\,
	datad => EIR(27),
	combout => \Mux119~2_combout\);

-- Location: LCCOMB_X19_Y5_N14
\Mux119~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~3_combout\ = (\MicroCode|Set_D\(1) & \Mux119~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datad => \Mux119~2_combout\,
	combout => \Mux119~3_combout\);

-- Location: LCCOMB_X23_Y6_N26
\Mux118~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~3_combout\ = (\MicroCode|Set_D\(2)) # ((!\MicroCode|Set_D\(1) & \MicroCode|Set_D\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(2),
	datac => \MicroCode|Set_D\(1),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux118~3_combout\);

-- Location: LCCOMB_X23_Y5_N10
\Mux119~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~4_combout\ = (\MicroCode|Set_D\(0) & ((IR(11)) # ((\MicroCode|Set_D\(1))))) # (!\MicroCode|Set_D\(0) & (((!\MicroCode|Set_D\(1) & \ArithmeticLogicUnit|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(11),
	datab => \MicroCode|Set_D\(0),
	datac => \MicroCode|Set_D\(1),
	datad => \ArithmeticLogicUnit|Mux12~0_combout\,
	combout => \Mux119~4_combout\);

-- Location: LCCOMB_X23_Y5_N26
\Mux119~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~5_combout\ = (\MicroCode|Set_D\(1) & ((\Mux119~4_combout\ & ((X(11)))) # (!\Mux119~4_combout\ & (PC(11))))) # (!\MicroCode|Set_D\(1) & (((\Mux119~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => PC(11),
	datac => X(11),
	datad => \Mux119~4_combout\,
	combout => \Mux119~5_combout\);

-- Location: LCCOMB_X23_Y7_N0
\Mux118~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~4_combout\ = (\MicroCode|Set_D\(2)) # ((\MicroCode|Set_D\(1) & \MicroCode|Set_D\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datac => \MicroCode|Set_D\(0),
	datad => \MicroCode|Set_D\(2),
	combout => \Mux118~4_combout\);

-- Location: LCCOMB_X23_Y5_N12
\Mux119~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~6_combout\ = (\Mux118~3_combout\ & ((\Mux118~4_combout\ & ((\Mux119~5_combout\))) # (!\Mux118~4_combout\ & (FR(11))))) # (!\Mux118~3_combout\ & (((\Mux118~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FR(11),
	datab => \Mux118~3_combout\,
	datac => \Mux119~5_combout\,
	datad => \Mux118~4_combout\,
	combout => \Mux119~6_combout\);

-- Location: LCCOMB_X23_Y5_N6
\Mux119~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~7_combout\ = (\Mux127~19_combout\ & ((\Mux119~6_combout\ & (AB(35))) # (!\Mux119~6_combout\ & ((AB(11)))))) # (!\Mux127~19_combout\ & (((\Mux119~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(35),
	datab => AB(11),
	datac => \Mux127~19_combout\,
	datad => \Mux119~6_combout\,
	combout => \Mux119~7_combout\);

-- Location: LCCOMB_X23_Y5_N0
\Mux119~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~8_combout\ = (\Mux118~0_combout\ & (((!\Mux118~1_combout\)))) # (!\Mux118~0_combout\ & ((\Mux118~1_combout\ & (\Mux119~3_combout\)) # (!\Mux118~1_combout\ & ((\Mux119~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux118~0_combout\,
	datab => \Mux119~3_combout\,
	datac => \Mux118~1_combout\,
	datad => \Mux119~7_combout\,
	combout => \Mux119~8_combout\);

-- Location: LCCOMB_X23_Y5_N14
\Mux119~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux119~9_combout\ = (\Mux118~2_combout\ & ((\Mux119~8_combout\ & (\Mux119~0_combout\)) # (!\Mux119~8_combout\ & ((Z(11)))))) # (!\Mux118~2_combout\ & (((\Mux119~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux119~0_combout\,
	datab => Z(11),
	datac => \Mux118~2_combout\,
	datad => \Mux119~8_combout\,
	combout => \Mux119~9_combout\);

-- Location: LCCOMB_X23_Y5_N28
\AB[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[11]~5_combout\ = (\Mux126~17_combout\ & (\Mux119~10_combout\)) # (!\Mux126~17_combout\ & ((\Mux119~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux119~10_combout\,
	datac => \Mux119~9_combout\,
	datad => \Mux126~17_combout\,
	combout => \AB[11]~5_combout\);

-- Location: LCCOMB_X22_Y6_N28
\AB[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[11]~feeder_combout\ = \AB[11]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AB[11]~5_combout\,
	combout => \AB[11]~feeder_combout\);

-- Location: FF_X22_Y6_N29
\AB[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB[11]~feeder_combout\,
	asdata => \Mux143~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|Aa_in~q\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(11));

-- Location: LCCOMB_X24_Y8_N28
\ArithmeticLogicUnit|ADC_Q[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|ADC_Q[12]~16_combout\ = (AB(36) & ((AB(12) & (\ArithmeticLogicUnit|ADC_Q[11]~15\ & VCC)) # (!AB(12) & (!\ArithmeticLogicUnit|ADC_Q[11]~15\)))) # (!AB(36) & ((AB(12) & (!\ArithmeticLogicUnit|ADC_Q[11]~15\)) # (!AB(12) & 
-- ((\ArithmeticLogicUnit|ADC_Q[11]~15\) # (GND)))))
-- \ArithmeticLogicUnit|ADC_Q[12]~17\ = CARRY((AB(36) & (!AB(12) & !\ArithmeticLogicUnit|ADC_Q[11]~15\)) # (!AB(36) & ((!\ArithmeticLogicUnit|ADC_Q[11]~15\) # (!AB(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AB(36),
	datab => AB(12),
	datad => VCC,
	cin => \ArithmeticLogicUnit|ADC_Q[11]~15\,
	combout => \ArithmeticLogicUnit|ADC_Q[12]~16_combout\,
	cout => \ArithmeticLogicUnit|ADC_Q[12]~17\);

-- Location: LCCOMB_X23_Y7_N12
\ArithmeticLogicUnit|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux11~0_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|ADC_Q[12]~16_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(12)) # ((AB(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOp\(1),
	datab => AB(12),
	datac => AB(36),
	datad => \ArithmeticLogicUnit|ADC_Q[12]~16_combout\,
	combout => \ArithmeticLogicUnit|Mux11~0_combout\);

-- Location: LCCOMB_X23_Y7_N16
\Mux142~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux142~3_combout\ = (\Mux152~3_combout\ & (((\Mux152~2_combout\ & \ArithmeticLogicUnit|Mux11~0_combout\)))) # (!\Mux152~3_combout\ & ((\Mux142~2_combout\) # ((!\Mux152~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux142~2_combout\,
	datab => \Mux152~3_combout\,
	datac => \Mux152~2_combout\,
	datad => \ArithmeticLogicUnit|Mux11~0_combout\,
	combout => \Mux142~3_combout\);

-- Location: LCCOMB_X23_Y7_N10
\Mux142~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux142~4_combout\ = (\Mux152~1_combout\ & ((\Mux142~3_combout\ & (AB(12))) # (!\Mux142~3_combout\ & ((AB(36)))))) # (!\Mux152~1_combout\ & (((\Mux142~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux152~1_combout\,
	datab => AB(12),
	datac => AB(36),
	datad => \Mux142~3_combout\,
	combout => \Mux142~4_combout\);

-- Location: LCCOMB_X23_Y7_N2
\Mux142~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux142~6_combout\ = (\MicroCode|Set_A\(3) & (\Mux152~4_combout\)) # (!\MicroCode|Set_A\(3) & ((\Mux152~4_combout\ & (\Mux142~5_combout\)) # (!\Mux152~4_combout\ & ((\Mux142~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \Mux152~4_combout\,
	datac => \Mux142~5_combout\,
	datad => \Mux142~4_combout\,
	combout => \Mux142~6_combout\);

-- Location: LCCOMB_X23_Y7_N20
\Mux142~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux142~7_combout\ = (\Mux152~0_combout\ & ((\Mux142~6_combout\ & ((\Mux142~1_combout\))) # (!\Mux142~6_combout\ & (DI(12))))) # (!\Mux152~0_combout\ & (((\Mux142~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(12),
	datab => \Mux152~0_combout\,
	datac => \Mux142~1_combout\,
	datad => \Mux142~6_combout\,
	combout => \Mux142~7_combout\);

-- Location: LCCOMB_X21_Y7_N12
\DI[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DI[12]~feeder_combout\ = \Mux142~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux142~7_combout\,
	combout => \DI[12]~feeder_combout\);

-- Location: FF_X21_Y7_N13
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

-- Location: LCCOMB_X21_Y7_N22
\Mux118~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~6_combout\ = (\MicroCode|Set_D\(3) & (((\MicroCode|Set_D\(0))))) # (!\MicroCode|Set_D\(3) & ((\MicroCode|Set_D\(0) & (DI(12))) # (!\MicroCode|Set_D\(0) & ((SI(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(12),
	datab => \MicroCode|Set_D\(3),
	datac => SI(12),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux118~6_combout\);

-- Location: LCCOMB_X17_Y5_N10
\Mux118~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~7_combout\ = (\MicroCode|Set_D\(3) & ((\Mux118~6_combout\ & (!EIR(28))) # (!\Mux118~6_combout\ & ((!EIR(12)))))) # (!\MicroCode|Set_D\(3) & (((\Mux118~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => EIR(28),
	datac => EIR(12),
	datad => \Mux118~6_combout\,
	combout => \Mux118~7_combout\);

-- Location: LCCOMB_X17_Y5_N2
\Mux118~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~8_combout\ = (\MicroCode|Set_D\(1) & \Mux118~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_D\(1),
	datad => \Mux118~7_combout\,
	combout => \Mux118~8_combout\);

-- Location: LCCOMB_X23_Y7_N18
\Mux118~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~9_combout\ = (\MicroCode|Set_D\(1) & (\MicroCode|Set_D\(0))) # (!\MicroCode|Set_D\(1) & ((\MicroCode|Set_D\(0) & (IR(12))) # (!\MicroCode|Set_D\(0) & ((\ArithmeticLogicUnit|Mux11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => \MicroCode|Set_D\(0),
	datac => IR(12),
	datad => \ArithmeticLogicUnit|Mux11~0_combout\,
	combout => \Mux118~9_combout\);

-- Location: LCCOMB_X23_Y7_N6
\Mux118~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~10_combout\ = (\MicroCode|Set_D\(1) & ((\Mux118~9_combout\ & ((X(12)))) # (!\Mux118~9_combout\ & (PC(12))))) # (!\MicroCode|Set_D\(1) & (((\Mux118~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => PC(12),
	datac => X(12),
	datad => \Mux118~9_combout\,
	combout => \Mux118~10_combout\);

-- Location: LCCOMB_X23_Y7_N28
\Mux118~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~11_combout\ = (\Mux118~4_combout\ & (((\Mux118~10_combout\) # (!\Mux118~3_combout\)))) # (!\Mux118~4_combout\ & (FR(12) & (\Mux118~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FR(12),
	datab => \Mux118~4_combout\,
	datac => \Mux118~3_combout\,
	datad => \Mux118~10_combout\,
	combout => \Mux118~11_combout\);

-- Location: LCCOMB_X23_Y7_N26
\Mux118~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~12_combout\ = (\Mux127~19_combout\ & ((\Mux118~11_combout\ & ((AB(36)))) # (!\Mux118~11_combout\ & (AB(12))))) # (!\Mux127~19_combout\ & (((\Mux118~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux127~19_combout\,
	datab => AB(12),
	datac => AB(36),
	datad => \Mux118~11_combout\,
	combout => \Mux118~12_combout\);

-- Location: LCCOMB_X23_Y5_N24
\Mux118~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~13_combout\ = (\Mux118~0_combout\ & (!\Mux118~1_combout\)) # (!\Mux118~0_combout\ & ((\Mux118~1_combout\ & (\Mux118~8_combout\)) # (!\Mux118~1_combout\ & ((\Mux118~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux118~0_combout\,
	datab => \Mux118~1_combout\,
	datac => \Mux118~8_combout\,
	datad => \Mux118~12_combout\,
	combout => \Mux118~13_combout\);

-- Location: LCCOMB_X23_Y5_N18
\Mux118~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux118~14_combout\ = (\Mux118~2_combout\ & ((\Mux118~13_combout\ & (\Mux118~5_combout\)) # (!\Mux118~13_combout\ & ((Z(12)))))) # (!\Mux118~2_combout\ & (((\Mux118~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux118~5_combout\,
	datab => Z(12),
	datac => \Mux118~2_combout\,
	datad => \Mux118~13_combout\,
	combout => \Mux118~14_combout\);

-- Location: LCCOMB_X23_Y5_N22
\AB[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[12]~6_combout\ = (\Mux126~17_combout\ & (\Mux118~15_combout\)) # (!\Mux126~17_combout\ & ((\Mux118~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux118~15_combout\,
	datab => \Mux126~17_combout\,
	datad => \Mux118~14_combout\,
	combout => \AB[12]~6_combout\);

-- Location: LCCOMB_X24_Y6_N12
\AB~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~30_combout\ = (!\MicroCode|Bs_in~q\ & \AB[12]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Bs_in~q\,
	datad => \AB[12]~6_combout\,
	combout => \AB~30_combout\);

-- Location: FF_X24_Y6_N13
\AB[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~30_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(36));

-- Location: LCCOMB_X24_Y8_N30
\ArithmeticLogicUnit|ADC_Q[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|ADC_Q[13]~18_combout\ = ((AB(37) $ (AB(13) $ (!\ArithmeticLogicUnit|ADC_Q[12]~17\)))) # (GND)
-- \ArithmeticLogicUnit|ADC_Q[13]~19\ = CARRY((AB(37) & ((AB(13)) # (!\ArithmeticLogicUnit|ADC_Q[12]~17\))) # (!AB(37) & (AB(13) & !\ArithmeticLogicUnit|ADC_Q[12]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AB(37),
	datab => AB(13),
	datad => VCC,
	cin => \ArithmeticLogicUnit|ADC_Q[12]~17\,
	combout => \ArithmeticLogicUnit|ADC_Q[13]~18_combout\,
	cout => \ArithmeticLogicUnit|ADC_Q[13]~19\);

-- Location: LCCOMB_X23_Y4_N8
\ArithmeticLogicUnit|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux10~0_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|ADC_Q[13]~18_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(37)) # ((AB(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOp\(1),
	datab => AB(37),
	datac => AB(13),
	datad => \ArithmeticLogicUnit|ADC_Q[13]~18_combout\,
	combout => \ArithmeticLogicUnit|Mux10~0_combout\);

-- Location: LCCOMB_X24_Y5_N12
\Mux117~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~4_combout\ = (Z(13) & \MicroCode|Set_D\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Z(13),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux117~4_combout\);

-- Location: LCCOMB_X21_Y4_N26
\Mux117~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~5_combout\ = (\Mux121~5_combout\ & ((\Mux121~6_combout\ & (\Data[13]~input_o\)) # (!\Mux121~6_combout\ & ((\Mux117~4_combout\))))) # (!\Mux121~5_combout\ & (((!\Mux121~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux121~5_combout\,
	datab => \Data[13]~input_o\,
	datac => \Mux121~6_combout\,
	datad => \Mux117~4_combout\,
	combout => \Mux117~5_combout\);

-- Location: LCCOMB_X22_Y4_N18
\Mux117~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~6_combout\ = (\Mux117~5_combout\ & (((\ArithmeticLogicUnit|Mux10~0_combout\) # (\Mux120~6_combout\)))) # (!\Mux117~5_combout\ & (IR(13) & ((!\Mux120~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(13),
	datab => \ArithmeticLogicUnit|Mux10~0_combout\,
	datac => \Mux117~5_combout\,
	datad => \Mux120~6_combout\,
	combout => \Mux117~6_combout\);

-- Location: LCCOMB_X22_Y4_N6
\Mux117~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~8_combout\ = (\Mux117~7_combout\ & ((X(13)) # ((!\Mux127~18_combout\)))) # (!\Mux117~7_combout\ & (((\Mux127~18_combout\ & \Mux117~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => X(13),
	datab => \Mux117~7_combout\,
	datac => \Mux127~18_combout\,
	datad => \Mux117~6_combout\,
	combout => \Mux117~8_combout\);

-- Location: LCCOMB_X22_Y4_N14
\Mux117~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~13_combout\ = (\Mux117~8_combout\ & (((!\MicroCode|Set_D\(4) & !\MicroCode|Set_D\(3))) # (!\Mux121~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(4),
	datab => \Mux121~9_combout\,
	datac => \MicroCode|Set_D\(3),
	datad => \Mux117~8_combout\,
	combout => \Mux117~13_combout\);

-- Location: LCCOMB_X18_Y4_N4
\Mux117~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~9_combout\ = (\MicroCode|Set_D\(0) & ((DI(13)) # ((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (((SI(13) & !\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => DI(13),
	datac => SI(13),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux117~9_combout\);

-- Location: LCCOMB_X18_Y4_N20
\Mux117~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~10_combout\ = (\Mux117~9_combout\ & (((!\MicroCode|Set_D\(3)) # (!EIR(29))))) # (!\Mux117~9_combout\ & (!EIR(13) & ((\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(13),
	datab => EIR(29),
	datac => \Mux117~9_combout\,
	datad => \MicroCode|Set_D\(3),
	combout => \Mux117~10_combout\);

-- Location: LCCOMB_X19_Y4_N10
\Mux117~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~11_combout\ = (\Mux121~14_combout\ & ((\Mux121~6_combout\ & ((\Mux117~10_combout\))) # (!\Mux121~6_combout\ & (Y(13))))) # (!\Mux121~14_combout\ & (\Mux121~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux121~14_combout\,
	datab => \Mux121~6_combout\,
	datac => Y(13),
	datad => \Mux117~10_combout\,
	combout => \Mux117~11_combout\);

-- Location: LCCOMB_X22_Y4_N20
\Mux117~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux117~12_combout\ = (\Mux117~11_combout\ & (((AB(37)) # (\Mux120~6_combout\)))) # (!\Mux117~11_combout\ & (AB(13) & ((!\Mux120~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux117~11_combout\,
	datab => AB(13),
	datac => AB(37),
	datad => \Mux120~6_combout\,
	combout => \Mux117~12_combout\);

-- Location: LCCOMB_X22_Y4_N0
\AB[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB[13]~7_combout\ = (\Mux127~19_combout\ & ((\Mux117~12_combout\))) # (!\Mux127~19_combout\ & (\Mux117~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux127~19_combout\,
	datac => \Mux117~13_combout\,
	datad => \Mux117~12_combout\,
	combout => \AB[13]~7_combout\);

-- Location: LCCOMB_X22_Y4_N22
\AB~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~31_combout\ = (!\MicroCode|Bs_in~q\ & \AB[13]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Bs_in~q\,
	datad => \AB[13]~7_combout\,
	combout => \AB~31_combout\);

-- Location: FF_X22_Y4_N23
\AB[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~31_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(37));

-- Location: LCCOMB_X24_Y7_N0
\ArithmeticLogicUnit|ADC_Q[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|ADC_Q[14]~20_combout\ = (AB(38) & ((AB(14) & (\ArithmeticLogicUnit|ADC_Q[13]~19\ & VCC)) # (!AB(14) & (!\ArithmeticLogicUnit|ADC_Q[13]~19\)))) # (!AB(38) & ((AB(14) & (!\ArithmeticLogicUnit|ADC_Q[13]~19\)) # (!AB(14) & 
-- ((\ArithmeticLogicUnit|ADC_Q[13]~19\) # (GND)))))
-- \ArithmeticLogicUnit|ADC_Q[14]~21\ = CARRY((AB(38) & (!AB(14) & !\ArithmeticLogicUnit|ADC_Q[13]~19\)) # (!AB(38) & ((!\ArithmeticLogicUnit|ADC_Q[13]~19\) # (!AB(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AB(38),
	datab => AB(14),
	datad => VCC,
	cin => \ArithmeticLogicUnit|ADC_Q[13]~19\,
	combout => \ArithmeticLogicUnit|ADC_Q[14]~20_combout\,
	cout => \ArithmeticLogicUnit|ADC_Q[14]~21\);

-- Location: LCCOMB_X24_Y9_N24
\ArithmeticLogicUnit|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux9~0_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|ADC_Q[14]~20_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(38)) # ((AB(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(38),
	datab => \MicroCode|ALUOp\(1),
	datac => AB(14),
	datad => \ArithmeticLogicUnit|ADC_Q[14]~20_combout\,
	combout => \ArithmeticLogicUnit|Mux9~0_combout\);

-- Location: LCCOMB_X24_Y9_N0
\Mux140~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux140~3_combout\ = (\Mux152~2_combout\ & ((\Mux152~3_combout\ & ((\ArithmeticLogicUnit|Mux9~0_combout\))) # (!\Mux152~3_combout\ & (\Mux140~2_combout\)))) # (!\Mux152~2_combout\ & (((!\Mux152~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux140~2_combout\,
	datab => \Mux152~2_combout\,
	datac => \Mux152~3_combout\,
	datad => \ArithmeticLogicUnit|Mux9~0_combout\,
	combout => \Mux140~3_combout\);

-- Location: LCCOMB_X24_Y9_N6
\Mux140~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux140~4_combout\ = (\Mux152~1_combout\ & ((\Mux140~3_combout\ & ((AB(14)))) # (!\Mux140~3_combout\ & (AB(38))))) # (!\Mux152~1_combout\ & (((\Mux140~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(38),
	datab => \Mux152~1_combout\,
	datac => AB(14),
	datad => \Mux140~3_combout\,
	combout => \Mux140~4_combout\);

-- Location: LCCOMB_X24_Y9_N16
\Mux140~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux140~6_combout\ = (\MicroCode|Set_A\(3) & (((\Mux152~4_combout\)))) # (!\MicroCode|Set_A\(3) & ((\Mux152~4_combout\ & (\Mux140~5_combout\)) # (!\Mux152~4_combout\ & ((\Mux140~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \Mux140~5_combout\,
	datac => \Mux152~4_combout\,
	datad => \Mux140~4_combout\,
	combout => \Mux140~6_combout\);

-- Location: LCCOMB_X24_Y9_N18
\Mux140~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux140~7_combout\ = (\Mux152~0_combout\ & ((\Mux140~6_combout\ & ((\Mux140~1_combout\))) # (!\Mux140~6_combout\ & (DI(14))))) # (!\Mux152~0_combout\ & (((\Mux140~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux152~0_combout\,
	datab => DI(14),
	datac => \Mux140~1_combout\,
	datad => \Mux140~6_combout\,
	combout => \Mux140~7_combout\);

-- Location: FF_X21_Y7_N11
\SI[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux140~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(14));

-- Location: LCCOMB_X21_Y7_N16
\Mux116~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~2_combout\ = (\MicroCode|Set_D\(0) & (((DI(14)) # (\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (SI(14) & ((!\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => SI(14),
	datac => DI(14),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux116~2_combout\);

-- Location: LCCOMB_X21_Y7_N6
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

-- Location: LCCOMB_X23_Y9_N28
\Mux116~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~4_combout\ = (\MicroCode|Set_D\(1) & \Mux116~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(1),
	datad => \Mux116~3_combout\,
	combout => \Mux116~4_combout\);

-- Location: LCCOMB_X24_Y5_N14
\Mux116~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~5_combout\ = (!\MicroCode|Set_D\(1) & (Z(14) & \MicroCode|Set_D\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Set_D\(1),
	datac => Z(14),
	datad => \MicroCode|Set_D\(0),
	combout => \Mux116~5_combout\);

-- Location: LCCOMB_X13_Y7_N10
\IR~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \IR~15_combout\ = (\Data[14]~input_o\ & (((\process_6~0_combout\ & !\MPI~q\)) # (!\IR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \IR~0_combout\,
	datac => \Data[14]~input_o\,
	datad => \MPI~q\,
	combout => \IR~15_combout\);

-- Location: FF_X13_Y7_N11
\IR[14]\ : dffeas
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
	q => IR(14));

-- Location: LCCOMB_X22_Y9_N0
\Mux116~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~12_combout\ = (\MicroCode|ALUOp\(1) & (((\ArithmeticLogicUnit|ADC_Q[14]~20_combout\)))) # (!\MicroCode|ALUOp\(1) & ((AB(38)) # ((AB(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(38),
	datab => AB(14),
	datac => \MicroCode|ALUOp\(1),
	datad => \ArithmeticLogicUnit|ADC_Q[14]~20_combout\,
	combout => \Mux116~12_combout\);

-- Location: LCCOMB_X22_Y9_N6
\Mux116~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~13_combout\ = (\MicroCode|Set_D\(0) & ((IR(14)) # ((\MicroCode|Set_D\(1))))) # (!\MicroCode|Set_D\(0) & (((!\MicroCode|Set_D\(1) & \Mux116~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(0),
	datab => IR(14),
	datac => \MicroCode|Set_D\(1),
	datad => \Mux116~12_combout\,
	combout => \Mux116~13_combout\);

-- Location: LCCOMB_X22_Y9_N24
\Mux116~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~6_combout\ = (\MicroCode|Set_D\(1) & ((\Mux116~13_combout\ & ((X(14)))) # (!\Mux116~13_combout\ & (PC(14))))) # (!\MicroCode|Set_D\(1) & (((\Mux116~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(1),
	datab => PC(14),
	datac => X(14),
	datad => \Mux116~13_combout\,
	combout => \Mux116~6_combout\);

-- Location: LCCOMB_X22_Y9_N14
\Mux116~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~7_combout\ = (\Mux120~5_combout\ & (\Mux120~4_combout\ & (Y(14)))) # (!\Mux120~5_combout\ & (((\Mux116~6_combout\)) # (!\Mux120~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~5_combout\,
	datab => \Mux120~4_combout\,
	datac => Y(14),
	datad => \Mux116~6_combout\,
	combout => \Mux116~7_combout\);

-- Location: LCCOMB_X23_Y9_N2
\Mux116~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~8_combout\ = (\Mux126~18_combout\ & (((\Mux116~7_combout\)))) # (!\Mux126~18_combout\ & ((\Mux116~7_combout\ & ((AB(14)))) # (!\Mux116~7_combout\ & (AB(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux126~18_combout\,
	datab => AB(38),
	datac => AB(14),
	datad => \Mux116~7_combout\,
	combout => \Mux116~8_combout\);

-- Location: LCCOMB_X23_Y9_N6
\Mux116~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~11_combout\ = (\Mux116~8_combout\ & ((\MicroCode|Set_D\(2)) # ((\MicroCode|Set_D\(1)) # (\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(2),
	datab => \MicroCode|Set_D\(1),
	datac => \MicroCode|Set_D\(3),
	datad => \Mux116~8_combout\,
	combout => \Mux116~11_combout\);

-- Location: LCCOMB_X23_Y9_N16
\Mux116~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~9_combout\ = (\Mux120~2_combout\ & (!\MicroCode|Set_D\(4) & (\Mux116~5_combout\))) # (!\Mux120~2_combout\ & ((\MicroCode|Set_D\(4)) # ((\Mux116~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~2_combout\,
	datab => \MicroCode|Set_D\(4),
	datac => \Mux116~5_combout\,
	datad => \Mux116~11_combout\,
	combout => \Mux116~9_combout\);

-- Location: LCCOMB_X23_Y9_N14
\Mux116~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux116~10_combout\ = (\Mux120~3_combout\ & ((\Mux116~9_combout\ & (\Mux116~4_combout\)) # (!\Mux116~9_combout\ & ((\Data[14]~input_o\))))) # (!\Mux120~3_combout\ & (((\Mux116~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~3_combout\,
	datab => \Mux116~4_combout\,
	datac => \Data[14]~input_o\,
	datad => \Mux116~9_combout\,
	combout => \Mux116~10_combout\);

-- Location: LCCOMB_X23_Y9_N12
\AB~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~32_combout\ = (\Mux116~10_combout\ & !\MicroCode|Bs_in~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux116~10_combout\,
	datad => \MicroCode|Bs_in~q\,
	combout => \AB~32_combout\);

-- Location: FF_X23_Y9_N13
\AB[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~32_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(38));

-- Location: LCCOMB_X28_Y7_N18
\ArithmeticLogicUnit|ADC_V~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|ADC_V~0_combout\ = (!\MicroCode|ALUOpL~q\ & ((\ArithmeticLogicUnit|ADC_Q[15]~22_combout\ & (!AB(39) & !AB(15))) # (!\ArithmeticLogicUnit|ADC_Q[15]~22_combout\ & (AB(39) & AB(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ArithmeticLogicUnit|ADC_Q[15]~22_combout\,
	datab => AB(39),
	datac => \MicroCode|ALUOpL~q\,
	datad => AB(15),
	combout => \ArithmeticLogicUnit|ADC_V~0_combout\);

-- Location: LCCOMB_X28_Y7_N30
\ArithmeticLogicUnit|ADC_V~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|ADC_V~1_combout\ = (\ArithmeticLogicUnit|ADC_V~0_combout\) # ((!AB(23) & (\MicroCode|ALUOpL~q\ & \ArithmeticLogicUnit|MSBAddition[20]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(23),
	datab => \ArithmeticLogicUnit|ADC_V~0_combout\,
	datac => \MicroCode|ALUOpL~q\,
	datad => \ArithmeticLogicUnit|MSBAddition[20]~14_combout\,
	combout => \ArithmeticLogicUnit|ADC_V~1_combout\);

-- Location: FF_X28_Y7_N31
\FR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ArithmeticLogicUnit|ADC_V~1_combout\,
	ena => \FR[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FR(11));

-- Location: LCCOMB_X19_Y9_N8
\MicroCode|Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux82~0_combout\ = (!IR(1) & ((IR(0) & (FR(11))) # (!IR(0) & ((FR(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => FR(11),
	datac => FR(0),
	datad => IR(0),
	combout => \MicroCode|Mux82~0_combout\);

-- Location: LCCOMB_X19_Y9_N2
\MicroCode|Mux82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux82~1_combout\ = (IR(1) & ((IR(0) & (FR(4))) # (!IR(0) & ((FR(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => FR(4),
	datac => FR(2),
	datad => IR(0),
	combout => \MicroCode|Mux82~1_combout\);

-- Location: LCCOMB_X19_Y9_N24
\MicroCode|Mux82~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux82~2_combout\ = (!IR(2) & ((\MicroCode|Mux82~0_combout\) # (\MicroCode|Mux82~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datac => \MicroCode|Mux82~0_combout\,
	datad => \MicroCode|Mux82~1_combout\,
	combout => \MicroCode|Mux82~2_combout\);

-- Location: LCCOMB_X19_Y9_N30
\MicroCode|Mux82~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux82~3_combout\ = (!IR(1) & ((IR(0) & ((FR(12)))) # (!IR(0) & (FR(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FR(6),
	datab => IR(0),
	datac => FR(12),
	datad => IR(1),
	combout => \MicroCode|Mux82~3_combout\);

-- Location: LCCOMB_X19_Y9_N4
\MicroCode|Mux82~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux82~4_combout\ = (IR(1) & ((IR(0) & (!FR(11))) # (!IR(0) & ((!FR(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => FR(11),
	datac => FR(0),
	datad => IR(0),
	combout => \MicroCode|Mux82~4_combout\);

-- Location: LCCOMB_X19_Y9_N6
\MicroCode|Mux82~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux82~5_combout\ = (\MicroCode|Mux82~2_combout\) # ((IR(2) & ((\MicroCode|Mux82~3_combout\) # (\MicroCode|Mux82~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datab => \MicroCode|Mux82~2_combout\,
	datac => \MicroCode|Mux82~3_combout\,
	datad => \MicroCode|Mux82~4_combout\,
	combout => \MicroCode|Mux82~5_combout\);

-- Location: LCCOMB_X17_Y9_N2
\MicroCode|Mux60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux60~2_combout\ = (\MicroCode|Mux60~1_combout\ & (((!MRC(1) & \MicroCode|Mux82~5_combout\)) # (!IR(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(1),
	datab => IR(3),
	datac => \MicroCode|Mux60~1_combout\,
	datad => \MicroCode|Mux82~5_combout\,
	combout => \MicroCode|Mux60~2_combout\);

-- Location: LCCOMB_X17_Y9_N8
\MicroCode|Mux59~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux59~3_combout\ = (\MicroCode|Set_A[3]~0_combout\ & ((\MicroCode|Mux60~2_combout\ & (\MicroCode|Mux66~5_combout\)) # (!\MicroCode|Mux60~2_combout\ & ((\MicroCode|Mux21~0_combout\))))) # (!\MicroCode|Set_A[3]~0_combout\ & 
-- (((\MicroCode|Mux60~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux66~5_combout\,
	datab => \MicroCode|Set_A[3]~0_combout\,
	datac => \MicroCode|Mux21~0_combout\,
	datad => \MicroCode|Mux60~2_combout\,
	combout => \MicroCode|Mux59~3_combout\);

-- Location: LCCOMB_X14_Y6_N0
\MicroCode|Mux59~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux59~4_combout\ = (\MicroCode|Mux59~0_combout\ & ((\MicroCode|Mux59~2_combout\) # ((!IR(4) & \MicroCode|Mux59~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => \MicroCode|Mux59~0_combout\,
	datac => \MicroCode|Mux59~2_combout\,
	datad => \MicroCode|Mux59~3_combout\,
	combout => \MicroCode|Mux59~4_combout\);

-- Location: FF_X14_Y6_N1
\MicroCode|Set_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux59~4_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Set_A\(3));

-- Location: LCCOMB_X23_Y6_N22
\Mux152~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~0_combout\ = (\MicroCode|Set_A\(3) & ((\MicroCode|Set_A\(2)) # ((!\MicroCode|Set_A\(0) & !\MicroCode|Set_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datab => \MicroCode|Set_A\(1),
	datac => \MicroCode|Set_A\(2),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux152~0_combout\);

-- Location: LCCOMB_X23_Y6_N28
\Address~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~12_combout\ = (\MicroCode|AE~q\ & (\Mux154~7_combout\)) # (!\MicroCode|AE~q\ & ((PC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|AE~q\,
	datac => \Mux154~7_combout\,
	datad => PC(0),
	combout => \Address~12_combout\);

-- Location: FF_X23_Y6_N29
\Address[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[0]~reg0_q\);

-- Location: LCCOMB_X17_Y5_N4
\Mux154~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux154~0_combout\ = (\MicroCode|Set_A\(0) & (((\MicroCode|Set_A\(1))) # (!EIR(24)))) # (!\MicroCode|Set_A\(0) & (((!EIR(0) & !\MicroCode|Set_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(24),
	datab => \MicroCode|Set_A\(0),
	datac => EIR(0),
	datad => \MicroCode|Set_A\(1),
	combout => \Mux154~0_combout\);

-- Location: LCCOMB_X23_Y6_N8
\Mux154~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux154~1_combout\ = (\Mux154~0_combout\ & (((\Address[0]~reg0_q\) # (!\MicroCode|Set_A\(1))))) # (!\Mux154~0_combout\ & (!EIR(16) & ((\MicroCode|Set_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(16),
	datab => \Address[0]~reg0_q\,
	datac => \Mux154~0_combout\,
	datad => \MicroCode|Set_A\(1),
	combout => \Mux154~1_combout\);

-- Location: LCCOMB_X17_Y8_N10
\Mux154~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux154~5_combout\ = (\MicroCode|Set_A\(0) & SI(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MicroCode|Set_A\(0),
	datad => SI(0),
	combout => \Mux154~5_combout\);

-- Location: LCCOMB_X16_Y8_N12
\Mux154~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux154~2_combout\ = (PC(0) & \MicroCode|Set_A\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux154~2_combout\);

-- Location: LCCOMB_X16_Y8_N10
\Mux154~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux154~3_combout\ = (\Mux152~2_combout\ & ((\Mux152~3_combout\ & ((\ArithmeticLogicUnit|Mux23~0_combout\))) # (!\Mux152~3_combout\ & (\Mux154~2_combout\)))) # (!\Mux152~2_combout\ & (((!\Mux152~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux154~2_combout\,
	datab => \Mux152~2_combout\,
	datac => \ArithmeticLogicUnit|Mux23~0_combout\,
	datad => \Mux152~3_combout\,
	combout => \Mux154~3_combout\);

-- Location: LCCOMB_X16_Y8_N16
\Mux154~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux154~4_combout\ = (\Mux152~1_combout\ & ((\Mux154~3_combout\ & (AB(0))) # (!\Mux154~3_combout\ & ((AB(24)))))) # (!\Mux152~1_combout\ & (((\Mux154~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(0),
	datab => AB(24),
	datac => \Mux152~1_combout\,
	datad => \Mux154~3_combout\,
	combout => \Mux154~4_combout\);

-- Location: LCCOMB_X16_Y8_N6
\Mux154~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux154~6_combout\ = (\MicroCode|Set_A\(3) & (((\Mux152~4_combout\)))) # (!\MicroCode|Set_A\(3) & ((\Mux152~4_combout\ & (\Mux154~5_combout\)) # (!\Mux152~4_combout\ & ((\Mux154~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \Mux154~5_combout\,
	datac => \Mux152~4_combout\,
	datad => \Mux154~4_combout\,
	combout => \Mux154~6_combout\);

-- Location: LCCOMB_X23_Y6_N14
\Mux154~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux154~7_combout\ = (\Mux152~0_combout\ & ((\Mux154~6_combout\ & ((\Mux154~1_combout\))) # (!\Mux154~6_combout\ & (DI(0))))) # (!\Mux152~0_combout\ & (((\Mux154~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux152~0_combout\,
	datab => DI(0),
	datac => \Mux154~1_combout\,
	datad => \Mux154~6_combout\,
	combout => \Mux154~7_combout\);

-- Location: LCCOMB_X19_Y9_N10
\MicroCode|Mux82~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux82~6_combout\ = (IR(3) & (((\MicroCode|Mux82~5_combout\)))) # (!IR(3) & (IR(1) & (\MicroCode|Mux61~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => IR(3),
	datac => \MicroCode|Mux61~0_combout\,
	datad => \MicroCode|Mux82~5_combout\,
	combout => \MicroCode|Mux82~6_combout\);

-- Location: LCCOMB_X18_Y6_N20
\MicroCode|Mux82~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux82~7_combout\ = (!IR(4) & \MicroCode|Mux34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => \MicroCode|Mux34~0_combout\,
	combout => \MicroCode|Mux82~7_combout\);

-- Location: LCCOMB_X18_Y6_N18
\MicroCode|Mux82~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux82~8_combout\ = (\MicroCode|Mux59~0_combout\ & ((\MicroCode|Mux59~2_combout\) # ((\MicroCode|Mux82~6_combout\ & \MicroCode|Mux82~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux59~2_combout\,
	datab => \MicroCode|Mux59~0_combout\,
	datac => \MicroCode|Mux82~6_combout\,
	datad => \MicroCode|Mux82~7_combout\,
	combout => \MicroCode|Mux82~8_combout\);

-- Location: FF_X18_Y6_N19
\MicroCode|PCa_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux82~8_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|PCa_in~q\);

-- Location: FF_X19_Y8_N9
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[0]~24_combout\,
	asdata => \Mux154~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X19_Y8_N10
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

-- Location: FF_X19_Y8_N11
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[1]~26_combout\,
	asdata => \Mux153~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X19_Y8_N12
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

-- Location: FF_X19_Y8_N13
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[2]~28_combout\,
	asdata => \Mux152~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X19_Y8_N14
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

-- Location: FF_X19_Y8_N15
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[3]~30_combout\,
	asdata => \Mux151~14_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X19_Y8_N16
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

-- Location: FF_X19_Y8_N17
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[4]~32_combout\,
	asdata => \Mux150~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: LCCOMB_X19_Y8_N18
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

-- Location: FF_X19_Y8_N19
\PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[5]~34_combout\,
	asdata => \Mux149~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(5));

-- Location: LCCOMB_X19_Y8_N20
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

-- Location: FF_X19_Y8_N21
\PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[6]~36_combout\,
	asdata => \Mux148~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(6));

-- Location: LCCOMB_X19_Y8_N22
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

-- Location: FF_X19_Y8_N23
\PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[7]~38_combout\,
	asdata => \Mux147~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(7));

-- Location: LCCOMB_X19_Y8_N24
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

-- Location: FF_X19_Y8_N25
\PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[8]~40_combout\,
	asdata => \Mux146~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(8));

-- Location: LCCOMB_X19_Y8_N26
\PC[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[9]~42_combout\ = (PC(9) & (!\PC[8]~41\)) # (!PC(9) & ((\PC[8]~41\) # (GND)))
-- \PC[9]~43\ = CARRY((!\PC[8]~41\) # (!PC(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(9),
	datad => VCC,
	cin => \PC[8]~41\,
	combout => \PC[9]~42_combout\,
	cout => \PC[9]~43\);

-- Location: FF_X19_Y8_N27
\PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[9]~42_combout\,
	asdata => \Mux145~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(9));

-- Location: LCCOMB_X19_Y8_N28
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

-- Location: FF_X19_Y8_N29
\PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[10]~44_combout\,
	asdata => \Mux144~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(10));

-- Location: LCCOMB_X19_Y8_N30
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

-- Location: FF_X19_Y8_N31
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

-- Location: LCCOMB_X19_Y7_N0
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

-- Location: FF_X19_Y7_N1
\PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[12]~48_combout\,
	asdata => \Mux142~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(12));

-- Location: LCCOMB_X19_Y7_N2
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

-- Location: FF_X19_Y7_N3
\PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[13]~50_combout\,
	asdata => \Mux141~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(13));

-- Location: LCCOMB_X19_Y7_N4
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

-- Location: FF_X19_Y7_N5
\PC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[14]~52_combout\,
	asdata => \Mux140~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(14));

-- Location: LCCOMB_X19_Y7_N6
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

-- Location: FF_X19_Y7_N7
\PC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PC[15]~54_combout\,
	asdata => \Mux139~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => \MicroCode|PCa_in~q\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(15));

-- Location: LCCOMB_X19_Y7_N8
\PC[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[16]~56_combout\ = (PC(16) & (\PC[15]~55\ $ (GND))) # (!PC(16) & (!\PC[15]~55\ & VCC))
-- \PC[16]~57\ = CARRY((PC(16) & !\PC[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(16),
	datad => VCC,
	cin => \PC[15]~55\,
	combout => \PC[16]~56_combout\,
	cout => \PC[16]~57\);

-- Location: FF_X19_Y7_N9
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

-- Location: LCCOMB_X19_Y7_N10
\PC[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC[17]~58_combout\ = (PC(17) & (!\PC[16]~57\)) # (!PC(17) & ((\PC[16]~57\) # (GND)))
-- \PC[17]~59\ = CARRY((!\PC[16]~57\) # (!PC(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(17),
	datad => VCC,
	cin => \PC[16]~57\,
	combout => \PC[17]~58_combout\,
	cout => \PC[17]~59\);

-- Location: FF_X19_Y7_N11
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

-- Location: LCCOMB_X19_Y7_N12
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

-- Location: FF_X19_Y7_N13
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

-- Location: LCCOMB_X19_Y7_N14
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

-- Location: FF_X19_Y7_N15
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

-- Location: LCCOMB_X19_Y7_N16
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

-- Location: FF_X19_Y7_N17
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

-- Location: LCCOMB_X19_Y7_N18
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

-- Location: FF_X19_Y7_N19
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

-- Location: LCCOMB_X19_Y7_N20
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

-- Location: FF_X19_Y7_N21
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

-- Location: LCCOMB_X19_Y7_N22
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

-- Location: FF_X19_Y7_N23
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

-- Location: FF_X21_Y7_N5
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

-- Location: LCCOMB_X21_Y7_N14
\Mux131~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux131~0_combout\ = (\MicroCode|Set_A\(0) & ((PC(23)) # ((\MicroCode|Set_A\(3))))) # (!\MicroCode|Set_A\(0) & (((DI(23) & \MicroCode|Set_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(23),
	datab => \MicroCode|Set_A\(0),
	datac => DI(23),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux131~0_combout\);

-- Location: LCCOMB_X22_Y7_N30
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

-- Location: FF_X22_Y7_N31
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
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[23]~reg0_q\);

-- Location: FF_X17_Y8_N23
\SI[23]\ : dffeas
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
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(23));

-- Location: FF_X16_Y7_N23
\EIR[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EIR~54_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \EIR[32]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EIR(47));

-- Location: LCCOMB_X17_Y5_N26
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

-- Location: FF_X17_Y5_N27
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

-- Location: LCCOMB_X17_Y8_N4
\Mux147~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~9_combout\ = (!EIR(39) & \MicroCode|Set_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => EIR(39),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux147~9_combout\);

-- Location: LCCOMB_X17_Y8_N12
\Mux131~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux131~1_combout\ = (\Mux133~0_combout\ & ((\Mux151~5_combout\ & ((\Mux147~9_combout\))) # (!\Mux151~5_combout\ & (!EIR(47))))) # (!\Mux133~0_combout\ & (((\Mux151~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(47),
	datab => \Mux133~0_combout\,
	datac => \Mux147~9_combout\,
	datad => \Mux151~5_combout\,
	combout => \Mux131~1_combout\);

-- Location: LCCOMB_X17_Y8_N22
\Mux131~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux131~2_combout\ = (\Mux151~3_combout\ & ((\Mux131~1_combout\ & (\Address[23]~reg0_q\)) # (!\Mux131~1_combout\ & ((SI(23)))))) # (!\Mux151~3_combout\ & (((\Mux131~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~3_combout\,
	datab => \Address[23]~reg0_q\,
	datac => SI(23),
	datad => \Mux131~1_combout\,
	combout => \Mux131~2_combout\);

-- Location: LCCOMB_X22_Y8_N20
\Mux131~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux131~3_combout\ = (\Mux133~1_combout\ & ((\Mux151~0_combout\ & ((\Mux131~2_combout\))) # (!\Mux151~0_combout\ & (AB(23))))) # (!\Mux133~1_combout\ & (((\Mux151~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux133~1_combout\,
	datab => AB(23),
	datac => \Mux151~0_combout\,
	datad => \Mux131~2_combout\,
	combout => \Mux131~3_combout\);

-- Location: LCCOMB_X22_Y7_N24
\Mux131~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux131~4_combout\ = (\Mux151~2_combout\ & (((\Mux131~3_combout\)))) # (!\Mux151~2_combout\ & ((\Mux131~3_combout\ & (!EIR(23))) # (!\Mux131~3_combout\ & ((\ArithmeticLogicUnit|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => EIR(23),
	datab => \Mux151~2_combout\,
	datac => \Mux131~3_combout\,
	datad => \ArithmeticLogicUnit|Mux0~0_combout\,
	combout => \Mux131~4_combout\);

-- Location: LCCOMB_X22_Y7_N18
\Address[23]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address[23]~7_combout\ = (\Mux138~8_combout\ & (\Mux131~0_combout\)) # (!\Mux138~8_combout\ & ((\Mux131~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux131~0_combout\,
	datab => \Mux138~8_combout\,
	datad => \Mux131~4_combout\,
	combout => \Address[23]~7_combout\);

-- Location: LCCOMB_X23_Y8_N22
\AB~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \AB~44_combout\ = (\Address[23]~7_combout\ & \MicroCode|Aa_in~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Address[23]~7_combout\,
	datad => \MicroCode|Aa_in~q\,
	combout => \AB~44_combout\);

-- Location: FF_X23_Y8_N23
\AB[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \AB~44_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \AB[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AB(23));

-- Location: LCCOMB_X28_Y7_N16
\ArithmeticLogicUnit|Q_t~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Q_t~0_combout\ = (AB(39)) # (AB(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AB(39),
	datad => AB(15),
	combout => \ArithmeticLogicUnit|Q_t~0_combout\);

-- Location: LCCOMB_X25_Y7_N26
\ArithmeticLogicUnit|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux26~0_combout\ = (\MicroCode|ALUOp\(1) & ((\MicroCode|ALUOpL~q\) # ((\ArithmeticLogicUnit|ADC_Q[15]~22_combout\)))) # (!\MicroCode|ALUOp\(1) & (!\MicroCode|ALUOpL~q\ & (\ArithmeticLogicUnit|Q_t~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|ALUOp\(1),
	datab => \MicroCode|ALUOpL~q\,
	datac => \ArithmeticLogicUnit|Q_t~0_combout\,
	datad => \ArithmeticLogicUnit|ADC_Q[15]~22_combout\,
	combout => \ArithmeticLogicUnit|Mux26~0_combout\);

-- Location: LCCOMB_X25_Y7_N22
\ArithmeticLogicUnit|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ArithmeticLogicUnit|Mux26~1_combout\ = (\MicroCode|ALUOpL~q\ & ((\ArithmeticLogicUnit|Mux26~0_combout\ & ((\ArithmeticLogicUnit|MSBAddition[20]~14_combout\))) # (!\ArithmeticLogicUnit|Mux26~0_combout\ & (AB(23))))) # (!\MicroCode|ALUOpL~q\ & 
-- (((\ArithmeticLogicUnit|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(23),
	datab => \MicroCode|ALUOpL~q\,
	datac => \ArithmeticLogicUnit|Mux26~0_combout\,
	datad => \ArithmeticLogicUnit|MSBAddition[20]~14_combout\,
	combout => \ArithmeticLogicUnit|Mux26~1_combout\);

-- Location: FF_X25_Y7_N23
\FR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ArithmeticLogicUnit|Mux26~1_combout\,
	ena => \FR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FR(12));

-- Location: LCCOMB_X19_Y9_N22
\MicroCode|Mux66~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux66~3_combout\ = (IR(1) & (((IR(0))))) # (!IR(1) & ((IR(0) & ((!FR(4)))) # (!IR(0) & (!FR(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => FR(2),
	datac => FR(4),
	datad => IR(0),
	combout => \MicroCode|Mux66~3_combout\);

-- Location: LCCOMB_X19_Y9_N28
\MicroCode|Mux66~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux66~4_combout\ = (IR(1) & ((\MicroCode|Mux66~3_combout\ & (!FR(12))) # (!\MicroCode|Mux66~3_combout\ & ((!FR(6)))))) # (!IR(1) & (((\MicroCode|Mux66~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(1),
	datab => FR(12),
	datac => \MicroCode|Mux66~3_combout\,
	datad => FR(6),
	combout => \MicroCode|Mux66~4_combout\);

-- Location: LCCOMB_X19_Y9_N18
\MicroCode|Mux59~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux59~2_combout\ = (\MicroCode|Mux59~1_combout\ & (!IR(3) & (\MicroCode|Mux34~0_combout\ & \MicroCode|Mux66~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux59~1_combout\,
	datab => IR(3),
	datac => \MicroCode|Mux34~0_combout\,
	datad => \MicroCode|Mux66~4_combout\,
	combout => \MicroCode|Mux59~2_combout\);

-- Location: LCCOMB_X16_Y9_N4
\MicroCode|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux22~0_combout\ = (!MRC(3) & ((MRC(2) & ((!MRC(1)))) # (!MRC(2) & ((MRC(0)) # (MRC(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MRC(3),
	datab => MRC(0),
	datac => MRC(2),
	datad => MRC(1),
	combout => \MicroCode|Mux22~0_combout\);

-- Location: LCCOMB_X17_Y9_N22
\MicroCode|Mux60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux60~3_combout\ = (\MicroCode|Set_A[3]~0_combout\ & ((\MicroCode|Mux60~2_combout\ & (\MicroCode|Mux66~5_combout\)) # (!\MicroCode|Mux60~2_combout\ & ((\MicroCode|Mux22~0_combout\))))) # (!\MicroCode|Set_A[3]~0_combout\ & 
-- (((\MicroCode|Mux60~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux66~5_combout\,
	datab => \MicroCode|Set_A[3]~0_combout\,
	datac => \MicroCode|Mux22~0_combout\,
	datad => \MicroCode|Mux60~2_combout\,
	combout => \MicroCode|Mux60~3_combout\);

-- Location: LCCOMB_X18_Y6_N10
\MicroCode|Mux60~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux60~4_combout\ = (\MicroCode|Mux59~0_combout\ & ((\MicroCode|Mux59~2_combout\) # ((!IR(4) & \MicroCode|Mux60~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(4),
	datab => \MicroCode|Mux59~0_combout\,
	datac => \MicroCode|Mux59~2_combout\,
	datad => \MicroCode|Mux60~3_combout\,
	combout => \MicroCode|Mux60~4_combout\);

-- Location: FF_X18_Y6_N11
\MicroCode|Set_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux60~4_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Set_A\(2));

-- Location: LCCOMB_X18_Y5_N18
\Mux151~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~2_combout\ = (\MicroCode|Set_A\(0)) # ((\MicroCode|Set_A\(1)) # (!\MicroCode|Set_A\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(0),
	datac => \MicroCode|Set_A\(1),
	datad => \MicroCode|Set_A\(2),
	combout => \Mux151~2_combout\);

-- Location: LCCOMB_X18_Y9_N6
\Mux139~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux139~5_combout\ = (\Mux151~3_combout\ & (((\Mux151~5_combout\)))) # (!\Mux151~3_combout\ & ((\Mux151~5_combout\ & ((\Mux147~5_combout\))) # (!\Mux151~5_combout\ & (\Mux147~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux147~9_combout\,
	datab => \Mux151~3_combout\,
	datac => \Mux147~5_combout\,
	datad => \Mux151~5_combout\,
	combout => \Mux139~5_combout\);

-- Location: FF_X18_Y9_N25
\SI[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux139~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(15));

-- Location: LCCOMB_X18_Y9_N26
\Address~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Address~32_combout\ = (\MicroCode|AE~q\ & ((\Mux139~7_combout\))) # (!\MicroCode|AE~q\ & (PC(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(15),
	datab => \MicroCode|AE~q\,
	datad => \Mux139~7_combout\,
	combout => \Address~32_combout\);

-- Location: FF_X18_Y9_N27
\Address[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \Address~32_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \Address[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address[15]~reg0_q\);

-- Location: LCCOMB_X18_Y9_N28
\Mux139~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux139~6_combout\ = (\Mux139~5_combout\ & (((\Address[15]~reg0_q\) # (!\Mux151~3_combout\)))) # (!\Mux139~5_combout\ & (SI(15) & ((\Mux151~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux139~5_combout\,
	datab => SI(15),
	datac => \Address[15]~reg0_q\,
	datad => \Mux151~3_combout\,
	combout => \Mux139~6_combout\);

-- Location: LCCOMB_X24_Y9_N10
\Mux139~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux139~1_combout\ = (\MicroCode|Set_A\(0) & (PC(15))) # (!\MicroCode|Set_A\(0) & ((DI(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(15),
	datac => DI(15),
	datad => \MicroCode|Set_A\(0),
	combout => \Mux139~1_combout\);

-- Location: LCCOMB_X24_Y9_N4
\Mux139~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux139~2_combout\ = (\MicroCode|Set_A\(1) & (((!\MicroCode|Set_A\(0))))) # (!\MicroCode|Set_A\(1) & (\Mux139~1_combout\ & (\MicroCode|Set_A\(3) $ (\MicroCode|Set_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_A\(3),
	datab => \MicroCode|Set_A\(0),
	datac => \MicroCode|Set_A\(1),
	datad => \Mux139~1_combout\,
	combout => \Mux139~2_combout\);

-- Location: LCCOMB_X24_Y9_N28
\Mux139~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux139~0_combout\ = (AB(39) & !\MicroCode|Set_A\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AB(39),
	datad => \MicroCode|Set_A\(3),
	combout => \Mux139~0_combout\);

-- Location: LCCOMB_X24_Y9_N22
\Mux139~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux139~3_combout\ = (\Mux139~2_combout\ & ((AB(15)) # ((!\Mux141~0_combout\)))) # (!\Mux139~2_combout\ & (((\Mux141~0_combout\ & \Mux139~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AB(15),
	datab => \Mux139~2_combout\,
	datac => \Mux141~0_combout\,
	datad => \Mux139~0_combout\,
	combout => \Mux139~3_combout\);

-- Location: LCCOMB_X18_Y9_N18
\Mux139~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux139~4_combout\ = (\Mux151~2_combout\ & (((\Mux151~0_combout\)))) # (!\Mux151~2_combout\ & ((\Mux151~0_combout\ & (!EIR(15))) # (!\Mux151~0_combout\ & ((\ArithmeticLogicUnit|Mux8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~2_combout\,
	datab => EIR(15),
	datac => \Mux151~0_combout\,
	datad => \ArithmeticLogicUnit|Mux8~0_combout\,
	combout => \Mux139~4_combout\);

-- Location: LCCOMB_X18_Y9_N2
\Mux139~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux139~7_combout\ = (\Mux151~2_combout\ & ((\Mux139~4_combout\ & (\Mux139~6_combout\)) # (!\Mux139~4_combout\ & ((\Mux139~3_combout\))))) # (!\Mux151~2_combout\ & (((\Mux139~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux151~2_combout\,
	datab => \Mux139~6_combout\,
	datac => \Mux139~3_combout\,
	datad => \Mux139~4_combout\,
	combout => \Mux139~7_combout\);

-- Location: FF_X24_Y9_N11
\DI[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux139~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \DI[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(15));

-- Location: LCCOMB_X18_Y9_N24
\Mux115~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~2_combout\ = (\MicroCode|Set_D\(0) & ((DI(15)) # ((\MicroCode|Set_D\(3))))) # (!\MicroCode|Set_D\(0) & (((SI(15) & !\MicroCode|Set_D\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(15),
	datab => \MicroCode|Set_D\(0),
	datac => SI(15),
	datad => \MicroCode|Set_D\(3),
	combout => \Mux115~2_combout\);

-- Location: LCCOMB_X18_Y9_N14
\Mux115~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~3_combout\ = (\MicroCode|Set_D\(3) & ((\Mux115~2_combout\ & ((!EIR(31)))) # (!\Mux115~2_combout\ & (!EIR(15))))) # (!\MicroCode|Set_D\(3) & (((\Mux115~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Set_D\(3),
	datab => EIR(15),
	datac => EIR(31),
	datad => \Mux115~2_combout\,
	combout => \Mux115~3_combout\);

-- Location: LCCOMB_X23_Y9_N24
\Mux115~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~4_combout\ = (\Mux115~3_combout\ & \MicroCode|Set_D\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux115~3_combout\,
	datad => \MicroCode|Set_D\(1),
	combout => \Mux115~4_combout\);

-- Location: LCCOMB_X23_Y9_N4
\Mux115~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux115~12_combout\ = (\Mux120~3_combout\ & ((\Mux115~11_combout\ & (\Mux115~4_combout\)) # (!\Mux115~11_combout\ & ((\Data[15]~input_o\))))) # (!\Mux120~3_combout\ & (((\Mux115~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux120~3_combout\,
	datab => \Mux115~4_combout\,
	datac => \Data[15]~input_o\,
	datad => \Mux115~11_combout\,
	combout => \Mux115~12_combout\);

-- Location: LCCOMB_X23_Y4_N0
\data_out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[0]~feeder_combout\ = \Mux115~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux115~12_combout\,
	combout => \data_out[0]~feeder_combout\);

-- Location: LCCOMB_X17_Y9_N4
\MicroCode|Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux66~0_combout\ = (IR(0) & (((IR(2))))) # (!IR(0) & ((IR(2) & (\MicroCode|Mux31~0_combout\)) # (!IR(2) & ((\MicroCode|Mux8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux31~0_combout\,
	datab => IR(0),
	datac => IR(2),
	datad => \MicroCode|Mux8~0_combout\,
	combout => \MicroCode|Mux66~0_combout\);

-- Location: LCCOMB_X17_Y9_N12
\MicroCode|Mux66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux66~1_combout\ = (\MicroCode|Mux66~0_combout\ & (((\MicroCode|Mux33~0_combout\) # (!IR(0))))) # (!\MicroCode|Mux66~0_combout\ & (\MicroCode|Mux23~0_combout\ & (IR(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux23~0_combout\,
	datab => \MicroCode|Mux66~0_combout\,
	datac => IR(0),
	datad => \MicroCode|Mux33~0_combout\,
	combout => \MicroCode|Mux66~1_combout\);

-- Location: LCCOMB_X21_Y6_N4
\MicroCode|Mux66~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux66~2_combout\ = (\MicroCode|Mux63~0_combout\ & \MicroCode|Mux66~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MicroCode|Mux63~0_combout\,
	datac => \MicroCode|Mux66~1_combout\,
	combout => \MicroCode|Mux66~2_combout\);

-- Location: FF_X21_Y6_N5
\MicroCode|Write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClk~inputclkctrl_outclk\,
	d => \MicroCode|Mux66~2_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MicroCode|Write~q\);

-- Location: LCCOMB_X16_Y6_N8
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

-- Location: LCCOMB_X16_Y6_N14
\MicroCode|Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MicroCode|Mux64~1_combout\ = (IR(2) & (\MicroCode|Mux31~1_combout\ & ((\MicroCode|Mux64~0_combout\) # (!MRC(0))))) # (!IR(2) & (\MicroCode|Mux64~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MicroCode|Mux64~0_combout\,
	datab => \MicroCode|Mux31~1_combout\,
	datac => MRC(0),
	datad => IR(2),
	combout => \MicroCode|Mux64~1_combout\);

-- Location: LCCOMB_X21_Y6_N12
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

-- Location: FF_X21_Y6_N13
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

-- Location: LCCOMB_X21_Y6_N18
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

-- Location: FF_X23_Y4_N1
\data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[0]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(0));

-- Location: FF_X22_Y5_N15
\data_out[1]\ : dffeas
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
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(1));

-- Location: FF_X22_Y4_N3
\data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[13]~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(2));

-- Location: FF_X22_Y5_N29
\data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[12]~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(3));

-- Location: FF_X22_Y5_N9
\data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[11]~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(4));

-- Location: LCCOMB_X22_Y4_N26
\data_out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[5]~feeder_combout\ = \Mux120~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux120~16_combout\,
	combout => \data_out[5]~feeder_combout\);

-- Location: FF_X22_Y4_N27
\data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[5]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(5));

-- Location: LCCOMB_X22_Y4_N8
\data_out[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[6]~feeder_combout\ = \AB[9]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AB[9]~4_combout\,
	combout => \data_out[6]~feeder_combout\);

-- Location: FF_X22_Y4_N9
\data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_out[6]~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(6));

-- Location: FF_X24_Y8_N19
\data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux122~11_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(7));

-- Location: FF_X23_Y4_N11
\data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux123~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(8));

-- Location: LCCOMB_X23_Y4_N30
\data_out[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[9]~feeder_combout\ = \AB[6]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AB[6]~3_combout\,
	combout => \data_out[9]~feeder_combout\);

-- Location: FF_X23_Y4_N31
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

-- Location: LCCOMB_X23_Y4_N28
\data_out[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[10]~feeder_combout\ = \Mux125~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux125~10_combout\,
	combout => \data_out[10]~feeder_combout\);

-- Location: FF_X23_Y4_N29
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

-- Location: FF_X24_Y8_N5
\data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \AB[4]~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_out(11));

-- Location: LCCOMB_X23_Y4_N18
\data_out[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[12]~feeder_combout\ = \Mux127~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux127~16_combout\,
	combout => \data_out[12]~feeder_combout\);

-- Location: FF_X23_Y4_N19
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

-- Location: LCCOMB_X22_Y4_N30
\data_out[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[13]~feeder_combout\ = \Mux128~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux128~5_combout\,
	combout => \data_out[13]~feeder_combout\);

-- Location: FF_X22_Y4_N31
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

-- Location: LCCOMB_X22_Y4_N24
\data_out[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[14]~feeder_combout\ = \AB[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AB[1]~1_combout\,
	combout => \data_out[14]~feeder_combout\);

-- Location: FF_X22_Y4_N25
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

-- Location: LCCOMB_X23_Y4_N24
\data_out[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[15]~feeder_combout\ = \AB[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AB[0]~0_combout\,
	combout => \data_out[15]~feeder_combout\);

-- Location: FF_X23_Y4_N25
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


