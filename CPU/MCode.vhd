-- Program Microcode, for the 16Bit computer, made by Pasblo (Pablo Rivero Lazaro pabriv23@gmail.com)
-- Initially based on T65_MCode.vhd form the MultiComp project: https://github.com/douggilliland/MultiComp
-- Also based on the Intel microcode x64 bits arquitecture
--
-- LMRC:
-- -Last microcode cycle to execute, 0 being not executing any code, only the extra instruccion code.
--
-- LIC:
-- -Last instruction count to read, 0 being not reading none extra, only obviously the instruction in execution.
--
-- MRC:
-- -Microcode cycle, 0 being the extra instruction reading, should be setted here the LIC and PC_inc = '1'. 1 being the first group of controls signals to change.
--
-- IC:
-- -Instruction counter
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.Constants.all;

entity MCode is
	port(

		rst 		: in std_logic;
		clk         : in std_logic;

		--Direct instruccion control
		CIR         : in std_logic; -- Complete Instruccion Recived
		IR          : in std_logic_vector(15 downto 0); -- Instruccion Register
		MRC         : in unsigned(3 downto 0); -- Microcode Register Cycle
		IC          : in unsigned(1 downto 0); -- Instruccion Count Register
		FR          : in std_logic_vector(15 downto 0); -- Flags Register
		LMRC        : out unsigned(3 downto 0); -- Last Microcode Cycle to Execute
		LIC         : out unsigned(1 downto 0); -- Last Instruccion Count to Read

		--Indirect instruccion control
		IR_in       : out std_logic; -- {DataBus => IR}
		PCd_in      : out std_logic; -- {DataBus => PC}
		PCa_in      : out std_logic; -- {AddressBus => PC}
		PC_inc      : out std_logic; -- {PC++}

		--Clock control
		Halt        : out std_logic; -- Stop the clock

		--Flag control
		FR_in       : out std_logic; -- {DataBus => FR}
		FlagOp      : out std_logic_vector(3 downto 0); -- {(2 downto 0)->Flag, 3->Set to 0 or 1}

		--Bus control
		Set_D       : out std_logic_vector(4 downto 0); -- Set data bus to
		Set_A       : out std_logic_vector(3 downto 0); -- Set address bus to
		Set_S       : out std_logic_vector(2 downto 0); -- Set segment bus to

		--Alu/Add control
		ALUOp       : out std_logic_vector(3 downto 0); -- See AluOperations
		ALUOpL      : out std_logic; -- {0->16bits, 1->24bits}

		--Alu/Add input control
		Ad_in       : out std_logic; -- {DataBus => A}
		Aa_in       : out std_logic; -- {AddressBus => A}
		Bd_in       : out std_logic; -- {DataBus => B}
		Ba_in       : out std_logic; -- {AddressBus => B}
		Bs_in       : out std_logic; -- {SegmentBus => B}

		--General purpose register control
		X_in        : out std_logic; -- {DataBus => X}
		XH_in       : out std_logic; -- {DataBus(7 downto 0) => X(15 downto 8)}
		XL_in       : out std_logic; -- {DataBus(7 downto 0) => X(7 downto 0)}
		Y_in        : out std_logic; -- {DataBus => Y}
		YH_in       : out std_logic; -- {DataBus(7 downto 0) => Y(15 downto 8)}
		YL_in       : out std_logic; -- {DataBus(7 downto 0) => Y(7 downto 0)}
		Z_in        : out std_logic; -- {DataBus => Z}
		ZH_in       : out std_logic; -- {DataBus(7 downto 0) => Z(15 downto 8)}
		ZL_in       : out std_logic; -- {DataBus(7 downto 0) => Z(7 downto 0)}

		--Stack registers control
		SPd_in      : out std_logic; -- {DataBus => SP(15 downto 0)}
		SPa_in      : out std_logic; -- {AddressBus => SP}
		SP_inc      : out std_logic; -- {SP++}
		SP_dec      : out std_logic; -- {SP--}
		BPd_in      : out std_logic; -- {DataBus => BP(15 downto 0)}
		BPa_in      : out std_logic; -- {AddressBus => BP}
		BP_inc		: out std_logic; -- {BP++}
		BP_dec		: out std_logic; -- {BP--}

		--Index registers control
		SId_in      : out std_logic; -- {DataBus => SI(15 downto 0)}
		SIa_in      : out std_logic; -- {AddressBus => SI}
		DId_in      : out std_logic; -- {DataBus => DI(15 downto 0)}
		DIa_in      : out std_logic; -- {AddressBus => DI}

		--Segment registers control
		CSd_in      : out std_logic; -- {DataBus => CS(15 downto 0)}
		CSa_in      : out std_logic; -- {AddressBus => CS}
		DSd_in      : out std_logic; -- {DataBus => DS(15 downto 0)}
		DSa_in      : out std_logic; -- {AddressBus => DS}
		ESd_in      : out std_logic; -- {DataBus => ES(15 downto 0)}
		ESa_in      : out std_logic; -- {AddressBus => ES}
		FSd_in      : out std_logic; -- {DataBus => FS(15 downto 0)}
		FSa_in      : out std_logic; -- {AddressBus => FS}
		GSd_in      : out std_logic; -- {DataBus => GS(15 downto 0)}
		GSa_in      : out std_logic; -- {AddressBus => GS}
		SSd_in      : out std_logic; -- {DataBus => SS(15 downto 0)}
		SSa_in      : out std_logic; -- {AddressBus => SS}

		--I/O control
		DE 			: out std_logic; -- {DataBus => Data}
		AE 			: out std_logic; -- {AddressBus => Address}
		Write       : out std_logic; -- {0->Read, 1->Write}

		--Interrupt control
		HPIA_in     : out std_logic; -- {AddressBus => HPIA}
		MPIA_in     : out std_logic; -- {AddressBus => MPIA}
		LPIA_in     : out std_logic; -- {AddressBus => LPIA}
		AIE         : in std_logic_vector(1 downto 0); -- Actual Interrupt being Executed (00->No interrupt, 01->LPI, 10->MPI, 11->HPI)
		LIF         : out std_logic);
end MCode;

architecture Behavioral of MCode is
	
	signal Arguments_Type: unsigned(3 downto 0);
begin
	
	process(rst, clk)
	begin
		if rst = '0' then
			ALUOp <= (others => '0');
			ALUOpL <= '0';

		elsif rising_edge(clk) then
			LMRC <= (others => '0');
			LIC <= (others => '0');
			IR_in <= '0';
			PCd_in <= '0';
			PCa_in <= '0';
			PC_inc <= '0';
			Halt <= '0';
			FR_in <= '0';
			FlagOp <= (others => '0');
			Set_D <= (others => '0');
			Set_A <= (others => '0');
			Set_S <= (others => '0');
			ALUOp <= ALUOp;
			ALUOpL <= ALUOpL;
			Ad_in <= '0';
			Aa_in <= '0';
			Bd_in <= '0';
			Ba_in <= '0';
			Bs_in <= '0';
			X_in <= '0';
			XH_in <= '0';
			XL_in <= '0';
			Y_in <= '0';
			YH_in <= '0';
			YL_in <= '0';
			Z_in <= '0';
			ZH_in <= '0';
			ZL_in <= '0';
			SPd_in <= '0';
			SPa_in <= '0';
			SP_inc <= '0';
			SP_dec <= '0';
			BPd_in <= '0';
			BPa_in <= '0';
			BP_inc <= '0';
			BP_dec <= '0';
			SId_in <= '0';
			SIa_in <= '0';
			DId_in <= '0';
			DIa_in <= '0';
			CSd_in <= '0';
			CSa_in <= '0';
			DSd_in <= '0';
			DSa_in <= '0';
			ESd_in <= '0';
			ESa_in <= '0';
			FSd_in <= '0';
			FSa_in <= '0';
			GSd_in <= '0';
			GSa_in <= '0';
			SSd_in <= '0';
			SSa_in <= '0';
			DE <= '0';
			AE <= '0';
			Write <= '0';
			HPIA_in <= '0';
			MPIA_in <= '0';
			LPIA_in <= '0';
			LIF <= '0';

			--Automatization of the auto-increment of the program counter
			if (MRC = "0000" and (LIC-1) > IC and LIC > 0) or IC = "00" or MRC >= (LMRC-1) then
				--MRC = "0000" and (LIC-1) > IC and LIC > 0 for EIR 1 and 2 avoiding a EIR 3, IC = "00" for EIR 0, MRC = LMRC for IR
				--The program counter has to be incremented in the previous round to give time to the ram to respond, the address is published in the mclk
				PC_inc <= '1';
			end if;


			--Saving the segment specified by the user in the segment bus
			--Set_S <= IR(10 downto 8);

			case IR(7 downto 0) is
			when x"00" =>
				--NOP
				LMRC <= "0001";
				case MRC is
				when x"0" =>
					LIC <= "01";
				when others =>
				end case;

			when x"86" =>
				--adds
				LMRC <= "0001";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
					Set_D <= IR(12 downto 8); --Fijar Set_D igual que el orden de los registros
				when x"2" =>

				when others =>
				end case;

			when x"45" =>
				--BRK (To define)
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					--Arguments_Type <= ;
					LIC <= "01";
				when x"1" =>
				when others =>
				end case;

			when x"01" =>
				--RSTO (To define)
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "11";
				when x"1" =>
				when others =>
				end case;

			when x"02" =>
				--Test reflect, PASSED
				LMRC <= "0101";
				case MRC is
				when x"0" =>
					LIC <= "11";
				when x"1" =>
					--Exporting the address located in EIR(23 downto 0) to later obtain the data
					Set_A <= "1100";
					AE <= '1';
				when x"2" =>
					--Reading the data, and saving it onto the X register
					DE <= '1';
					Set_D <= "11100";
					X_in <= '1';
				when x"3" =>
					--Exporting the address located in EIR(47 downto 24) to later export the data
					Set_A <= "1101";
					AE <= '1';
				when x"4" =>
					--Writing the X register
					Write <= '1';
					Set_D <= "00111";
					DE <= '1';
				when others =>
				end case;

			when x"03" =>
				--Test all ALU operations, PASSED
				LMRC <= "0110";
				case MRC is
				when x"0" =>
					LIC <= "11";
				when x"1" =>
					--Exporting the address located in EIR(23 downto 0) to later obtain the first operand
					Set_A <= "1100";
					AE <= '1';
				when x"2" =>
					--Saving the first operand into A
					DE <= '1';
					Set_D <= "11100";
					Ad_in <= '1';
				when x"3" =>
					--Exporting the address located in EIR(47 downto 24) to later obtain the second operand
					Set_A <= "1101";
					AE <= '1';
				when x"4" =>
					--Saving the second operand into B
					DE <= '1';
					Set_D <= "11100";
					Bd_in <= '1';
					--Configuring the alu to realize the operation
					ALUOpL <= '0'; --16bit operation
					ALUOp <= "1010";
					--Exporting the address stored in EIR(47 downto 24) to later push the result of the operation
					Set_A <= "1101";
					AE <= '1';
				when x"5" =>
					--Moving the result of the operation that is stored in b to the data bus
					Set_D <= "00100";
					--Writting the result to the data output
					Write <= '1';
					DE <= '1';
				when others =>
				end case;

			when x"04" =>
				--Test moving trought all registers to test correct comunication, PASSED
				LMRC <= "0111";
				case MRC is
				when x"0" =>
					LIC <= "01";
				when x"1" =>
					--Moving the data fixed from EIR(15 downto 0) to X register
					Set_D <= "11010";
					X_in <= '1';
				when x"2" =>
					--Moving the data from X to Y register
					Set_D <= "00111";
					Y_in <= '1';
				when x"3" =>
					--Moving the data from Y to Z register
					Set_D <= "01010";
					Z_in <= '1';
				when x"4" =>
					--Moving the data from Z to A register
					Set_D <= "01101";
					Ad_in <= '1';
					--Incrementing the program counter
					PC_inc <= '1';
				when x"5" =>
					--Moving the data from A to B register
					Set_D <= "00010";
					Bd_in <= '1';
					--Exporting the address stored in PC to later push the result of the operation
					Set_A <= "0001";
					AE <= '1';
				when x"6" =>
					--Writting the result to the data output
					Write <= '1';
					Set_D <= "00011";
					DE <= '1';
				when others =>
				end case;

			when x"05" =>
				--Test moving data operating with segment registers, PASSED
				LMRC <= "1000";
				case MRC is
				when x"0" =>
					LIC <= "11";
				when x"1" =>
					--Moving the EIR(23 downto 0) to the A register and moving the segment bus into the B register
					Set_A <= "1100";
					Aa_in <= '1';
					Bs_in <= '1';
				when x"2" =>
					--Configuring the alu to realize the operation
					ALUOpL <= '1'; --24bit operation
					ALUOp <= "1010";
					--Moving the result of the operation from the alu to SI
					Set_A <= "0100";
					SIa_in <= '1';
				when x"3" =>
					--Moving the EIR(47 downto 24) into the A register
					Set_A <= "1101";
					Aa_in <= '1';
				when x"4" =>
					--Configuring the alu to realize the operation
					ALUOpL <= '1'; --24bit operation
					ALUOp <= "1010";
					--Moving the result of the operation from the alu to DI
					Set_A <= "0100";
					DIa_in <= '1';
				when x"5" =>
					--Exporting the address located in SI to later obtain the data
					Set_A <= "0111";
					AE <= '1';
				when x"6" =>
					--Reading the data, and saving it onto the X register
					DE <= '1';
					Set_D <= "11100";
					X_in <= '1';
					--Exporting the address located in DI to later push the data
					Set_A <= "1000";
					AE <= '1';
				when x"7" =>
					--Writting the X register to the data output
					Write <= '1';
					Set_D <= "00111";
					DE <= '1';
				when others =>
				end case;

			when x"06" =>
				--Halt WIP
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
					Halt <= '1';
				when others =>
				end case;

			when x"07" =>
				--Jump
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "10";
				when x"1" =>
					Set_A <= "1100";
					PCa_in <= '1';
				when others =>
				end case;

			when x"08" =>
				--Jump if carry
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "10";
				when x"1" =>
					if FR(Flag_C) = '1' then
						Set_A <= "1100";
						PCa_in <= '1';
					end if;
				when others =>
				end case;

			when x"09" =>
				--Jump if overflow
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "10";
				when x"1" =>
					if FR(Flag_V) = '1' then
						Set_A <= "1100";
						PCa_in <= '1';
					end if;
				when others =>
				end case;

			when x"0A" =>
				--Jump if parity
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "10";
				when x"1" =>
					if FR(Flag_P) = '1' then
						Set_A <= "1100";
						PCa_in <= '1';
					end if;
				when others =>
				end case;

			when x"0B" =>
				--Jump if auxiliary carry
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "10";
				when x"1" =>
					if FR(Flag_A) = '1' then
						Set_A <= "1100";
						PCa_in <= '1';
					end if;
				when others =>
				end case;

			when x"0C" =>
				--Jump if zero
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "10";
				when x"1" =>
					if FR(Flag_Z) = '1' then
						Set_A <= "1100";
						PCa_in <= '1';
					end if;
				when others =>
				end case;

			when x"0D" =>
				--Jump if negative
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "10";
				when x"1" =>
					if FR(Flag_N) = '1' then
						Set_A <= "1100";
						PCa_in <= '1';
					end if;
				when others =>
				end case;

			when x"0E" =>
				--Jump if not carry
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "10";
				when x"1" =>
					if FR(Flag_C) = '0' then
						Set_A <= "1100";
						PCa_in <= '1';
					end if;
				when others =>
				end case;

			when x"0F" =>
				--Jump if not overflow
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "10";
				when x"1" =>
					if FR(Flag_V) = '0' then
						Set_A <= "1100";
						PCa_in <= '1';
					end if;
				when others =>
				end case;

			when x"10" =>
				--Jump if not parity
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "10";
				when x"1" =>
					if FR(Flag_P) = '0' then
						Set_A <= "1100";
						PCa_in <= '1';
					end if;
				when others =>
				end case;

			when x"11" =>
				--Jump if not auxiliary carry
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "10";
				when x"1" =>
					if FR(Flag_A) = '0' then
						Set_A <= "1100";
						PCa_in <= '1';
					end if;
				when others =>
				end case;

			when x"12" =>
				--Jump if not zero
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "10";
				when x"1" =>
					if FR(Flag_Z) = '0' then
						Set_A <= "1100";
						PCa_in <= '1';
					end if;
				when others =>
				end case;

			when x"13" =>
				--Jump if not negative
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "10";
				when x"1" =>
					if FR(Flag_N) = '0' then
						Set_A <= "1100";
						PCa_in <= '1';
					end if;
				when others =>
				end case;

			when x"14" =>
				--Load register with inmmediate
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "01";
				when x"1" =>
					Set_D <= "11010";
					--case IR(16 downto 11) is
					--when x"0" =>
				when others =>
				end case;

			when others =>
				--Not defined instruction
				LMRC <= "1111";
				case MRC is
				when  x"0" =>
					LIC <= "11";
				when others =>
				end case;
			end case;

			--case Arguments_Type is IS ECESSARY?
			--when x"0" =>
			--when others =>
			--end case;
		end if;
	end process;
--Decodification of the microcode
	--Ways of obtainig the data
		--Inmmediate (Given by the instruccion itself)
		--Register direct (By selecting the register where the data is stored)
		--Memory direct (By giving the memory direction)
		--Indirect (By giving the register that haves the address to read the data) (To be seen)
--Decodification of the alu operation
--When we want to save the PC in the stack for the use later, try not no save it in MRC = 0 or MRC = 1
--When adding registers set opL to the register with the highest number of bits
--Do not export data in the last step de momento
--Despues de hacer una operacion, en el siguiente ciclo no podemos guardar el resultado en a o en b, por que se pierden las flags.
--When exporting the address to read data, data must be readed in the next cycle
end Behavioral;