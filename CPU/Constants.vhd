-- Constants, for the 16Bit computer, made by Pasblo (Pablo Rivero Lazaro pabriv23@gmail.com)
-- Initially based on T65_Pack.vhd form the MultiComp project: https://github.com/douggilliland/MultiComp
--
--
--
--
--
--
--
--
--
--

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package Constants is

	--See flags text, about what does each flag, and when is active
	constant Flag_C : integer := 0; --Carry flag, is set to 1 if the result of the last operation produced a carry.
	constant Flag_1 : integer := 1; --Reserved flag, always is equal to 1.
	constant Flag_P : integer := 2; --Parity flag, is set to 1 if the result of the last operation had an even number of ones.
	--Reserved
	constant Flag_A : integer := 4; --Auxiliary carry flag, is set to the carry of the 4 LSB of an operation. This is used to operate with BCD code.
	--Reserved
	constant Flag_Z : integer := 6; --Zero flag, is set to 1 if the result of the last operation was 0.
	constant Flag_UC: integer := 7; --Use carry flag (If enabled, the computer will use the carry flag as a input for the next operation, addition or substraction)
	constant Flag_T : integer := 8; --Trap flag, controls if the computer is in debugging mode. In this mode the user is the one that permits the change to the next instruccion, by a external pin(probaly a button).
	constant Flag_I : integer := 9; --Interrupt enable flag, controls if the interrupts are handeled or not.
	constant Flag_D : integer := 10; --Direction flag, controls in what direction does the processor copy information form one place to another.
	constant Flag_V : integer := 11; --oVerflow flag, is set to 1 if the result of the last operation produced a overflow.
	constant Flag_N : integer := 12; --Negative flag, is set to 1 if the result of the last operation produced a negative number.
	constant Flag_F : integer := 13; --Flag flag (If enabled, the computer would be able to save new information in the flgas register)
	constant Flag_NT: integer := 14; --Nested Task flag.
	--Reserved flag

	--constant rstAddress: unsigned(23 downto 0) := "111111111111111111111100";
	constant rstAddress: unsigned(23 downto 0) := "000000000000000000000000";
	constant rstFlagRegister: std_logic_vector(15 downto 0) := "0010001000000010";

	constant rstHPIAAddress: std_logic_vector(23 downto 0) := "111111110000000000000000";
	constant rstMPIAAddress: std_logic_vector(23 downto 0) := "000000001010101000000000";
	constant rstLPIAAddress: std_logic_vector(23 downto 0) := "000000000000000010101010";

	constant rstCodeSegmentAddress: std_logic_vector(23 downto 0) := "000000000000000000000001";
	constant rstDataSegmentAddress: std_logic_vector(23 downto 0) := "000000000000000000000010";
	constant rstEDataSegmentAddress: std_logic_vector(23 downto 0) := "000000000000000000000011";
	constant rstFDataSegmentAddress: std_logic_vector(23 downto 0) := "000000000000000000000100";
	constant rstGDataSegmentAddress: std_logic_vector(23 downto 0) := "000000000000000000000101";
	constant rstStackSegmentAddress: std_logic_vector(23 downto 0) := "000000000000000000000110";
end Constants;