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

		--Alu control
		ALUOp       : out std_logic_vector(3 downto 0); -- See AluOperations
		ALUOpL      : out std_logic; -- {0->16bits, 1->24bits}

		--Alu input regsters control
		Ad_in       : out std_logic; -- {DataBus => A}
		Aa_in       : out std_logic; -- {AddressBus => A}
		Ae_in       : out std_logic; -- {EA => A}
		Bd_in       : out std_logic; -- {DataBus => B}
		Ba_in       : out std_logic; -- {AddressBus => B}
		Bs_in       : out std_logic; -- {SegmentBus => B}
		Be_in       : out std_logic; -- {EB => B}

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
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when others =>
				end case;

			when x"01" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"02" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"03" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"04" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"05" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"06" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"07" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when others =>
				end case;

			when x"08" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"09" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"0A" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"0B" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"0C" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"0D" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"0E" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"0F" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"10" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when others =>
				end case;

			when x"11" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"12" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"13" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"14" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"15" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"16" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"17" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when others =>
				end case;

			when x"18" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"19" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"1A" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"1B" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"1C" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"1D" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"1E" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"1F" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"20" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when others =>
				end case;

			when x"21" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"22" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"23" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"24" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"25" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"26" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"27" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when others =>
				end case;

			when x"28" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"29" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"2A" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"2B" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"2C" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"2D" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"2E" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"2F" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"30" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when others =>
				end case;

			when x"31" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"32" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"33" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"34" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"35" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"36" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"37" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when others =>
				end case;

			when x"38" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"39" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"3A" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"3B" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"3C" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"3D" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"3E" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"3F" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"40" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when others =>
				end case;

			when x"41" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"42" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"43" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"44" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"45" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"46" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when x"47" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when others =>
				end case;

			when x"48" =>
				--
				LMRC <= "0010";
				case MRC is
				when x"0" =>
					LIC <= "00";
				when x"1" =>
				when others =>
				end case;

			when others =>
				--Not defined instruction
				LMRC <= "1111"; --To be able to easily identify this instruction being executed
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