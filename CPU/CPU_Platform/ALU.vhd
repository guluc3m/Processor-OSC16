-- Program ALU, for the 16Bit computer, made by Pasblo (Pablo Rivero Lazaro pabriv23@gmail.com)
-- Initially based on T65_ALU.vhd form the MultiComp project: https://github.com/douggilliland/MultiComp
-- Also based on the Intel flags register
--
-- The ALU realize the operation that has been selected by the Op port, between A and B.
-- FR is the flag register, _I is the input for the flag register, and _O is the output.
-- Q is the answer to the Operation realized.
--
-- Be careful when doing signed/unsigned operations, becuase maybe the operation cound not be difined.
-- Or could return a unspected value.
--
-- TABLE OF THE OPERATIONS DEFINED ON THIS ALU, AND ITS CORRESPONDANT RETURNS:
--
-- |Address|Operation|               Definition               |             Flags indication            |
-- |-------|---------|----------------------------------------|-----------------------------------------|
-- | 0000  |   or    | or op between A and B                  | no special flags                        |
-- | 0001  |   and   | and op between A and B                 | no special flags                        |
-- | 0010  |   xor   | xor op between A and B                 | no special flags                        |
-- | 0011  |   sll   | shift left logical, for unsigned       | saves the 15 bit of A in carry          |
-- | 0100  |   srl   | shift right logical, for unsigned      | saves the 0 bit of A in carry           |
-- | 0101  |   sla   | shift left arithmetic, for signed      | saves the 15 bit of A in carry          |
-- | 0110  |   sra   | shift right arithmetic, for signed     | saves the 0 bit of A in carry           |
-- | 0111  |   rol   | rotale left, filling with itself       | saves 0 in carry                        |
-- | 1000  |   ror   | rotate right, filling with itself      | saves 0 in carry                        |
-- | 1001  |   inc   | increment, adds 1 to A                 | normal carry and overflow in the op     |
-- | 1010  |   add   | adds A to B                            | saves all flags                         |
-- | 1011  |   dec   | decrement, substract 1 form A          | normal carry and overflow in the op     |
-- | 1100  |   sub   | substracts B from A                    | saves all flags                         |
-- | 1100  |   abs   | absolute value, gets abs from A(signed)| saves in negative flag if A was negative|
-- | 1101  |   nul   | null operator                          | no special flags                        |
-- | 1111  |   nul   | null operator                          | no special flags                        |
-- |-------|---------|----------------------------------------|-----------------------------------------|
--
-- *In all operations zero, parity and negative flag are checked.
-- **All flags are only chenged
--
-- Comparisions are not difined, because can be easily computed using only one operation and reading the flags
-- Equality => (a == b) -> ((a-b) == 0) || ((a-b) && FR_O(Flag_Z) = '1')
-- Greater than => (a > b) -> ((a-b) > 0) || ((a-b) && FR_O(Flag_N) = '0')
-- Lower than => (a < b) -> ((a-b) < 0) || ((a-b) && FR_O(Flag_N) = '1')
--
--
-- Overflow flag is really only used when doing operations with negative numbers, but is calculated always.
-- Carry flag is mainly used when doing positive operations.
--
--
-- This is the version 1.0 of the ALU, finished and checked, it is recomended to at least recheck the INC, ADD, DEC, SUB,
-- operations due to last changes in the final part of the test (Flag_S was deleted, Flag_UC was added).
--
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.Constants.all;

entity ALU is
	port(
		clk   : in std_logic;

		Op    : in std_logic_vector(3 downto 0); --Operator selector
		OpL   : in std_logic; --Operands lenght (0 = 16, 1 = 32)
		A     : in std_logic_vector(31 downto 0); --A operand
		B     : in std_logic_vector(31 downto 0); --B operand
		FR_I  : in std_logic_vector(15 downto 0); --Flag register in
		FR_O  : out std_logic_vector(15 downto 0); --Flag register out);
		Q     : out std_logic_vector(31 downto 0)); --Output
end ALU;

architecture Behavioral of ALU is

	-- AddSub variables (temporary signals)
	--The addition and subtrtaction is going to be done asyncrcorous, and saved onto the Q syncronously
	signal ADC_Z : std_logic; --Adder zero flag
	signal ADC_C : std_logic; --Adder carry flag
	signal ADC_V : std_logic; --Adder overflow flag
	signal ADC_N : std_logic; --Adder negative flag
	signal ADC_P : std_logic; --Adder parity flag
	signal ADC_A : std_logic; --Adder adjust/auxiliary_carry flag
	signal ADC_Q : unsigned(31 downto 0); --Adder result

	signal SBC_Z : std_logic; --Substracter zero flag
	signal SBC_C : std_logic; --Substracter carry flag
	signal SBC_V : std_logic; --Substracter overflow flag
	signal SBC_N : std_logic; --Substracter negative flag
	signal SBC_P : std_logic; --Substracter parity flag
	signal SBC_A : std_logic; --Substracter adjust/auxiliary_carry flag
	signal SBC_Q : unsigned(31 downto 0); --Substracter result

begin
	
	--Addition process
	process(FR_I, A, B, OpL)
		variable LSBAddition: unsigned(5 downto 0); --(Carry, data ... data, extra carry)
		variable MSBAddition: unsigned(29 downto 0); --(Carry, data ... data, extra carry)
		variable AdditionResult: unsigned(32 downto 0); --Result of the addition of A and B (Carry, data)
		variable temp_parity : std_logic := '1'; --Temporal variable to store the parity when calculating, the total parity

	begin

		--Checking the use carry flag, to select if the operation is going use the last carry
		if FR_I(Flag_UC) = '1' then
			LSBAddition := unsigned('0' & A(3 downto 0) & FR_I(Flag_C)) + unsigned('0' & B(3 downto 0) & '1');
		else
			LSBAddition := unsigned('0' & A(3 downto 0) & '0') + unsigned('0' & B(3 downto 0) & '1');
		end if;
		MSBAddition := unsigned('0' & A(31 downto 4) & LSBAddition(5)) + unsigned('0' & B(31 downto 4) & '1');

		AdditionResult := MSBAddition(29 downto 1) & LSBAddition(4 downto 1);

		-- pragma translate_off
			if is_x(std_logic_vector(AdditionResult)) then AdditionResult := (others => '0'); end if; --Testing if std_logic_vector is 'X'
		-- pragma translate_on

		--If the operation is 16 bits
		if OpL = '0' then

			--Checking carry flag
			ADC_C <= AdditionResult(16);

			--Checking zero flag
			if AdditionResult(15 downto 0) = 0 then
				ADC_Z <= '1';
			else
				ADC_Z <= '0';
			end if;

			--Checking negative flag
			ADC_N <= AdditionResult(15);

			--Checking overflow flag
			ADC_V <= (AdditionResult(15) xor A(15)) and not (A(15) xor B(15));

			--Saving the result of the addition
			ADC_Q <= "0000000000000000" & AdditionResult(15 downto 0);

		--If the operation is 32 bits
		else

			--Checking carry flag
			ADC_C <= AdditionResult(32);

			--Checking zero flag
			if AdditionResult(31 downto 0) = 0 then
				ADC_Z <= '1';
			else
				ADC_Z <= '0';
			end if;

			--Checking negative flag
			ADC_N <= AdditionResult(31);

			--Checking overflow flag
			ADC_V <= (AdditionResult(31) xor A(31)) and not (A(31) xor B(31));

			--Saving the result of the addition
			ADC_Q <= AdditionResult(31 downto 0);

		end if;

		--Checking adjust flag
		ADC_A <= LSBAddition(5);

		--Checking parity flag
		temp_parity := '1';
		for i in ADC_Q'range loop
			temp_parity := temp_parity xor ADC_Q(i);
		end loop;
		ADC_P <= temp_parity;

	end process;

	--Substraction process
	process(FR_I, A, B, OpL)
		variable LSBSubstraction: unsigned(5 downto 0); --(Carry, data ... data, extra carry)
		variable MSBSubstraction: unsigned(29 downto 0); --(Carry, data ... data, extra carry)
		variable SubstractionResult: unsigned(32 downto 0); --Result of the substraction of A and B (Carry, data)
		variable temp_parity : std_logic := '1'; --Temporal variable to store the parity when calculating, the total parity

	begin

		--Checking the use carry flag, to select if the operation is going use the last carry
		if FR_I(Flag_UC) = '1' then
			LSBSubstraction := unsigned('0' & A(3 downto 0) & FR_I(Flag_C)) - unsigned('0' & B(3 downto 0) & '0');
		else
			LSBSubstraction := unsigned('0' & A(3 downto 0) & '0') - unsigned('0' & B(3 downto 0) & '0');
		end if;
		MSBSubstraction := unsigned('0' & A(31 downto 4) & '0') - unsigned('0' & B(31 downto 4) & LSBSubstraction(5));

		SubstractionResult := MSBSubstraction(29 downto 1) & LSBSubstraction(4 downto 1);

		-- pragma translate_off
			if is_x(std_logic_vector(SubstractionResult)) then SubstractionResult := (others => '0'); end if; --Testing if std_logic_vector is 'X'
		-- pragma translate_on

		--If the operation is 16 bits
		if OpL = '0' then

			--Checking carry flag
			SBC_C <= SubstractionResult(16);

			--Checking zero flag
			if SubstractionResult(15 downto 0) = 0 then
				SBC_Z <= '1';
			else
				SBC_Z <= '0';
			end if;

			--Checking negative flag
			SBC_N <= SubstractionResult(15);

			--Checking overflow flag
			SBC_V <= (SubstractionResult(15) xor A(15)) and not (A(15) xor not B(15));

			--Saving the result of the addition
			SBC_Q <= "0000000000000000" & SubstractionResult(15 downto 0);

		--If the operation is 32 bits
		else

			--Checking carry flag
			SBC_C <= SubstractionResult(32);

			--Checking zero flag
			if SubstractionResult(31 downto 0) = 0 then
				SBC_Z <= '1';
			else
				SBC_Z <= '0';
			end if;

			--Checking negative flag
			SBC_N <= SubstractionResult(31);

			--Checking overflow flag
			SBC_V <= (SubstractionResult(31) xor A(31)) and not (A(31) xor B(31));

			--Saving the result of the substraction
			SBC_Q <= SubstractionResult(31 downto 0);

		end if;

		--Checking adjust flag
		SBC_A <= LSBSubstraction(5);

		--Checking parity flag
		temp_parity := '1';
		for i in SBC_Q'range loop
			temp_parity := temp_parity xor SBC_Q(i);
		end loop;
		SBC_P <= temp_parity;
	end process;

	--Alu main process
	process(Op, OPL, FR_I, A, B,
			ADC_Z, ADC_C, ADC_V, ADC_N, ADC_Q, ADC_P, ADC_A,
			SBC_Z, SBC_C, SBC_V, SBC_N, SBC_Q, SBC_P, SBC_A)

		variable Q_t : unsigned(32 downto 0);
		variable temp_parity : std_logic := '1';

	begin

		--Saving the flags register in to the flags register out
		FR_O <= FR_I;

		--Setting Q_t, carry and overflow flags
		case Op is
		when "0000" =>
			-- OR
			Q_t := '0' & unsigned(A or B);

		when "0001" =>
			-- AND
			Q_t := '0' & unsigned(A and B);

		when "0010" =>
			-- XOR
			Q_t := '0' & unsigned(A xor B);

		when "0011" =>
			-- SLL

			--If the operation is 16 bits
			if OpL = '0' then
				Q_t := "0000000000000000" & unsigned(A(15 downto 0) & '0');
				if FR_I(Flag_F) = '1' then
					FR_O(Flag_C) <= Q_t(16);
				end if;

			--If the operation is 32 bits
			else
				Q_t := unsigned(A(31 downto 0) & '0');
				if FR_I(Flag_F) = '1' then
					FR_O(Flag_C) <= Q_t(32);
				end if;
			end if;

		when "0100" =>
			-- SRL

			--If the operation is 16 bits
			if OpL = '0' then
				Q_t := "0000000000000000" & unsigned(A(0) & '0' & A(15 downto 1));
				if FR_I(Flag_F) = '1' then
					FR_O(Flag_C) <= Q_t(16);
				end if;

			--If the operation is 32 bits
			else
				Q_t := unsigned(A(0) & '0' & A(31 downto 1));
				if FR_I(Flag_F) = '1' then
					FR_O(Flag_C) <= Q_t(32);
				end if;
			end if;

		when "0101" =>
			-- SLA

			--If the operation is 16 bits
			if OpL = '0' then
				Q_t := "0000000000000000" & unsigned(A(15 downto 0) & '0');
				if FR_I(Flag_F) = '1' then
					FR_O(Flag_C) <= Q_t(16);
				end if;

			--If the operation is 32 bits
			else
				Q_t := unsigned(A(31 downto 0) & '0');
				if FR_I(Flag_F) = '1' then
					FR_O(Flag_C) <= Q_t(32);
				end if;
			end if;

		when "0110" =>
			-- SRA

			--If the operation is 16 bits
			if OpL = '0' then
				Q_t := "0000000000000000" & unsigned(A(0) & A(15) & A(15 downto 1));
				if FR_I(Flag_F) = '1' then
					FR_O(Flag_C) <= Q_t(16);
				end if;

			--If the operation is 32 bits
			else
				Q_t := unsigned(A(0) & A(31) & A(31 downto 1));
				if FR_I(Flag_F) = '1' then
					FR_O(Flag_C) <= Q_t(32);
				end if;
			end if;

		when "0111" =>
			-- ROL

			--If the operation is 16 bits
			if OpL = '0' then
				Q_t := "00000000000000000" & unsigned(A(14 downto 0) & A(15));
				if FR_I(Flag_F) = '1' then
					FR_O(Flag_C) <= Q_t(16);
				end if;

			--If the operation is 32 bits
			else
				Q_t := '0' & unsigned(A(30 downto 0) & A(31));
				if FR_I(Flag_F) = '1' then
					FR_O(Flag_C) <= Q_t(32);
				end if;
			end if;

		when "1000" =>
			-- ROR

			--If the operation is 16 bits
			if OpL = '0' then
				Q_t := "00000000000000000" & unsigned(A(0) & A(15 downto 1));
				if FR_I(Flag_F) = '1' then
					FR_O(Flag_C) <= Q_t(16);
				end if;

			--If the operation is 32 bits
			else
				Q_t := '0' & unsigned(A(0) & A(31 downto 1));
				if FR_I(Flag_F) = '1' then
					FR_O(Flag_C) <= Q_t(32);
				end if;
			end if;

		when "1001" =>
			-- INC
			Q_t := unsigned('0' & A) + 1;
			if FR_I(Flag_F) = '1' then

				--If the operation is 16 bits
				if OpL = '0' then
					--Checking carry flag
					FR_O(Flag_C) <= Q_t(16);

					--Checking overflow flag
					FR_O(Flag_V) <= (Q_t(15) xor A(15)) and not A(15);

				--If the operation is 32 bits
				else
					--Checking carry flag
					FR_O(Flag_C) <= Q_t(32);

					--Checking overflow flag
					FR_O(Flag_V) <= (Q_t(31) xor A(31)) and not A(31);
				end if;
			end if;

		when "1010" => --Add B to A
			-- ADD
			Q_t := '0' & ADC_Q;
			if FR_I(Flag_F) = '1' then
				FR_O(Flag_C) <= ADC_C;
				FR_O(Flag_V) <= ADC_V;
			end if;

		when "1011" => --Substract 1 from A
			-- DEC
			Q_t := unsigned('0' & A) - 1;
			if FR_I(Flag_F) = '1' then

				--If the operation is 16 bits
				if OpL = '0' then
					--Checking carry flag
					FR_O(Flag_C) <= Q_t(16);

					--Checking overflow flag
					FR_O(Flag_V) <= (Q_t(15) xor A(15)) and not (A(15) xor '1');

				--If the operation is 32 bits
				else
					--Checking carry flag
					FR_O(Flag_C) <= Q_t(32);

					--Checking overflow flag
					FR_O(Flag_V) <= (Q_t(31) xor A(31)) and not (A(31) xor '1');
				end if;
			end if;

		when "1100" => --Substract B from A
			-- SUB
			Q_t := '0' & SBC_Q;
			if FR_I(Flag_F) = '1' then
				FR_O(Flag_C) <= SBC_C;
				FR_O(Flag_V) <= SBC_V;
			end if;

		when "1101" => --Absolute value of A (A must be signed) (1 => 1, -3 => 3) 101 (-3) => 011(3) 111 (-1)
			-- ABS

			--If the operation is 16 bits
			if OpL = '0' then
				Q_t := unsigned(A(15) & std_logic_vector(unsigned(not A) + 1)); --Reversing the two's complement

			--If the operation is 32 bits
			else
				Q_t := unsigned(A(31) & std_logic_vector(unsigned(not A) + 1)); --Reversing the two's complement
			end if;

		--From signed to unsigned and from unsigned to signed conversion is automatically done

		when others => Q_t := '0' & unsigned(A);
		end case;

		--Setting the rest of the flags
		case Op is
		when "1010" =>
			-- ADD
			if FR_I(Flag_F) = '1' then
				FR_O(Flag_N) <= ADC_N;
				FR_O(Flag_Z) <= ADC_Z;
				FR_O(Flag_P) <= ADC_P;
				FR_O(Flag_A) <= ADC_A;
			end if;

		when "1100" =>
			-- SUB
			if FR_I(Flag_F) = '1' then
				FR_O(Flag_N) <= SBC_N;
				FR_O(Flag_Z) <= SBC_Z;
				FR_O(Flag_P) <= SBC_P;
				FR_O(Flag_A) <= SBC_A;
			end if;

		when others =>

			if FR_I(Flag_F) = '1' then

				temp_parity := '1';

				--If the operation is 16 bits
				if OpL = '0' then

					--Checking zero flag
					if Q_t(15 downto 0) = "0000000000000000" then --TODO change to others
						FR_O(Flag_Z) <= '1';
					else
						FR_O(Flag_Z) <= '0';
					end if;

					--Checking parity flag
					for i in Q_t(15 downto 0)'range loop
						temp_parity := temp_parity xor Q_t(i);
					end loop;

					--Checking negative flag
					FR_O(Flag_N) <= Q_t(15);

				--If the operation is 32 bits
				else

					--Checking zero flag
					if Q_t(31 downto 0) = "00000000000000000000000000000000" then --TODO change to others
						FR_O(Flag_Z) <= '1';
					else
						FR_O(Flag_Z) <= '0';
					end if;

					--Checking parity flag
					for i in Q_t(31 downto 0)'range loop
						temp_parity := temp_parity xor Q_t(i);
					end loop;

					--Checking negative flag
					FR_O(Flag_N) <= Q_t(31);
				end if;

				--Saving parity flag
				FR_O(Flag_P) <= temp_parity;
			end if;
		end case;
		
		Q <= std_logic_vector(Q_t(31 downto 0));
	end process;

end Behavioral;