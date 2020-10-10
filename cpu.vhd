-- Computer Cpu, for the 16Bit computer, made by Pasblo (Pablo Rivero Lazaro pabriv23@gmail.com)
-- Initially based on T65.vhd form the MultiComp project: https://github.com/douggilliland/MultiComp
-- Also based on the Intel microcode x64 bits arquitecture
--
--
--                                                      CLOCK
--
-- The Cpu is a 16bit 1 core cpu, designed for a maximun frequency of 50MHz, it can be stepped cycle by cycle,
-- the cpu has two clock input signals, the mClk has to be at shifted right with a minimun of 1ns and a maximun of 5ns in
-- reference to the clk:
-- • mClk controls the microcode control signal activation, from there microcodeClk, it also controls the exporting of
-- the address, the memory has the time between this address modification and the next clk rising edge to change the data
-- being inputted in the Data lines, so with a 50MHz clock, 20ns period, a 10ns response by the Ram is recomended.
-- • clk controls the rest of th interactions inside the processor, it also reads and writes into the data bus.
--
--
--                                                       RESET
--
-- The Reset, errases all data stored in the processor and prepares the processor to, in the next cycle, start readig the
-- first instruction, located in the address rstAddress, when the reset cycle is finished, the internal signal RstComplete
-- is set to '1'.
--
--
--                                                      ENABLE
--
-- The Enable, controls if the processor is active or not, if the enable pin is activated the processor would work
-- normally, if the enable pin is not activated, the processor would skip the clock cycles.
--
--
--                                                       Sync
--
-- The syck, indicates whether or not the processor is reading an instruction, this information may be usefull to operate 
-- outside the processor while the processor is occupied.
--
--
--                                                        RW
--
-- The Read Write pin indicates whether the processor is reading from memory(the processor is expecting to be smth in
-- memory to be readed), or writting to memory (the processor is expecting to have a place where to write).
--
--
--                                                       HPI_p
--
-- The HPI_p pin is the the High Priority Interrupt, it creates and interrupt which has the highest priority of all
-- interrupts. See more information about interrupts in .
--
--
--                                                       MPI_p
--
-- The MPI_p pin is the the Medium Priority Interrupt, it creates and interrupt which has the medium priority of all
-- interrupts. See more information about interrupts in .
--
--
--                                                       LPI_p
--
-- The LPI_p pin is the the Low Priority Interrupt, it creates and interrupt which has the lowest priority of all
-- interrupts. See more information about interrupts in .
--
--
--                                                        Data
--
-- The Data is a group of 16 inout pins that interfers with the external memory of the processor, it recives/sends words of
-- 16bits it is asyncronously controlled by a  syncronous signal controlled by the signal Write, if there is nothing
-- being written, in the data bus aka Write = '0', data is by default set to high impedance. 
--
--
--                                                       Address
--
-- The Address is a group of 24 output pins, that indicates where in meory the processor is reading or writting, the
-- address is modified in the mClk

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.Constants.all;

entity cpu is
	port(

		--General purpose pins for syncronous behavioral
		clk: in std_logic;
		mClk: in std_logic;
		rst: in std_logic;

		Enable: in std_logic; -- If is high the processor would work normaly, 0 is disabled, 1 is enabled
		Sync: out std_logic; -- 1 if the program is reading a instruction, 0 if it is not (usually executing the instruction readed)

		RW: out std_logic; --Read/Write signal 0 is reading, 1 is writting

		--Data and Address bus
		Address: out std_logic_vector(23 downto 0); --To be seen
		Data: inout std_logic_vector(15 downto 0); --Pretty sure to keep like that
		--DataO: out std_logic_vector(15 downto 0); --For displaying tests on the simulator

		--Tests points
		--IC_Test: out std_logic_vector(1 downto 0);
		--LIC_Test: out std_logic_vector(1 downto 0);
		--IR_Test: out std_logic_vector(15 downto 0);
		--PC_Test: out std_logic_vector(23 downto 0);
		--A_B_Test: out std_logic_vector(23 downto 0);
		--A_Test: out std_logic_vector(15 downto 0);
		--B_Test: out std_logic_vector(15 downto 0);
		--AIE_Test: out std_logic_vector(1 downto 0);
		--AluOperation_Test: out std_logic_vector(3 downto 0);
		--AluOperationLenght_Test: out std_logic;
		--Carry_Test: out std_logic;
		--Overflow_Test: out std_logic;
		--Negative_Test: out std_logic;
		--Parity_Test: out std_logic;
		--Zero_Test: out std_logic;
		--AuxiliaryCarry_Test: out std_logic;
		--HPI_Test: out std_logic;
		--MPI_Test: out std_logic;
		--LPI_Test: out std_logic;
		--MRC_Test: out std_logic_vector(3 downto 0);
		--LMRC_Test: out std_logic_vector(3 downto 0);
		--CIR_Test: out std_logic;
		--RstComplete_Test: out std_logic;
		--LIF_Test: out std_logic;

		--Interrupt pins
		HPI_p: in std_logic; --High Priority non maskable Interrupt
		MPI_p: in std_logic; --Medium Priority maskable Interrupt
		LPI_p: in std_logic); --Low Priority maskable Interrupt
end cpu;

architecture Behavioral of cpu is

	--GENERAL PURPOSE REGISTERS--

	--General purpose X register. XL, XH can be accesed
	signal X: std_logic_vector(15 downto 0);

	--General purpose Y register. YL, YH can be accesed
	signal Y: std_logic_vector(15 downto 0);

	--General purpose Z register. ZL, ZH can be accesed
	signal Z: std_logic_vector(15 downto 0);



	--ALU REGISTERS--

	--Registers A and B. Both two registers are used to operate in the ALU, stacked in one register.
	--The order is 0-23(A), 24-47(B)
	signal AB: std_logic_vector(47 downto 0);

	--Alu new flag register, chnged after doing each operation if Flag_F is actived
	signal FR_Out: std_logic_vector(15 downto 0);

	--Alu Output Register. It stores the result of the alu operation.
	signal AOR: std_logic_vector(23 downto 0);



	--SEGMENT REGISTERS--

	--Code segment register.
	signal CS: std_logic_vector(23 downto 0);

	--Data segment register.
	signal DS: std_logic_vector(23 downto 0);

	--Extra data segment register.
	signal ES: std_logic_vector(23 downto 0);

	--Extra data 2 segment register
	signal FS: std_logic_vector(23 downto 0);

	--Extra data 3 segment register
	signal GS: std_logic_vector(23 downto 0);

	--Stack segment register.
	signal SS: std_logic_vector(23 downto 0);



	--STACK REGISTERS--

	--Stack pointer register.
	signal SP: unsigned(23 downto 0);

	--Base stack pointer register.
	signal BP: unsigned(23 downto 0);



	--INDEX REGISTER--

	--Source index register.
	signal SI: std_logic_vector(23 downto 0);

	--Destination index register.
	signal DI: std_logic_vector(23 downto 0);



	--I/O REGISTERS--

	--Read / Write register. Stores if the processor is going to read/write in the next clock cycle.
	--0 is reading, 1 is writting
	signal RW_R: std_logic;

	--Data output intermediate register. Stores the data which is going to be written, FIX, may can be
	--deleted
	signal data_out: std_logic_vector(15 downto 0);



	--INTERRUPT REGISTERS--

	--High Priority non maskable Interrupt
	signal HPI: std_logic;

	--High Priority non maskable Interrupt Off
	signal HPIO: std_logic;

	--Hight Priority non maskable Interrupt Address register
	signal HPIA: std_logic_vector(23 downto 0);

	--Medium Priority maskable Interrupt
	signal MPI: std_logic;

	--Medium Priority maskable Interrupt Off
	signal MPIO: std_logic;

	--Medium Priority maskable Interrupt Address register
	signal MPIA: std_logic_vector(23 downto 0);

	--Low Priority maskable Interrupt
	signal LPI: std_logic;

	--Low Priority maskable Interrupt Off
	signal LPIO: std_logic;

	--Low Priority maskable Interrupt Address register
	signal LPIA: std_logic_vector(23 downto 0);

	--Actual Interrupt being Executed
	-- 00 -> No interrupt, 01 -> LPI, 10 -> MPI, 11 -> HPI
	signal AIE: std_logic_vector(1 downto 0);



	--BUS REGISTERS--

	--Data bus.
	signal D_B: std_logic_vector(15 downto 0);

	--Address bus.
	signal A_B: std_logic_vector(23 downto 0);

	--Segment bus.
	signal S_B: std_logic_vector(23 downto 0);



	--SPECIAL PURPOSE REGISTERS--

	--Program counter register, used to count the next address to acces. Probably having less address space
	signal PC: unsigned(23 downto 0); --23 is to change

	--Instruccion register. It stores the instruccion recived, that needs to be decoded
	signal IR: std_logic_vector(15 downto 0);

	--Extra instruccion register
	signal EIR: std_logic_vector(47 downto 0);

	--Complete instruccion recived
	signal CIR: std_logic;

	--Instruccion count register. It stores in which part of the instruccion is the processor in.
	--When we need instruccions to be longer than 16 bits, we use multiple address to send a single instruccion,
	--so we need to know at what part of the instruccion we are in. Example:
	--Instruccion:
	-- * MOV REG, REG | 1000 00000000 REG_CODE | REG_CODE 000000000000 || 2 instruccion steps    To be seen if we put double registers
	-- * MOV REG, ADD | 1SEG 00000001 REG_CODE | ADDRESS || 2 instruccion steps 
	-- * MOV ADD, REG | 1SEG 00000010 REG_CODE | ADDRESS || 2 instruccion steps 
	-- * MOV ADD, ADD | 1SEG 00000011 0000 | ADDRESS | ADDRESS || 3 instruccion steps
	--THE LENGHT CAN NOT BE MODIFIED, WITHOUT FURTHER PROBLEMS
	signal IC: unsigned(1 downto 0);

	--Last instruccion count register. It stores the last 16bits that are part of this instruccion.
	--THE LENGHT CAN NOT BE MODIFIED, WITHOUT FURTHER PROBLEMS
	signal LIC: unsigned(1 downto 0);

	--Flag register. It stores all the flags used by the cpu.
	signal FR: std_logic_vector(15 downto 0) := rstFlagRegister;



	--INSTRUCCIONS AND MICROCODE REGISTERS--

	--Microcode register cycle. Each instruccion can be composed up to 16 different microinstruccions in series
	--but, can be also done in paralel if possible.
	--THE LENGHT CAN BE MODIFIED, WITHOUT FURTHER PROBLEMS
	signal MRC: unsigned(3 downto 0);

	--Last microcode register cycle. The last microcode cycle that the actual instruccion in the actual count is going to be. Without including the last.
	--THE LENGHT CAN BE MODIFIED, WITHOUT FURTHER PROBLEMS
	signal LMRC: unsigned(3 downto 0);



	--OTHERS--

	--Indicates when the reset cycle has finished
	signal RstComplete: std_logic;



	--CONTROL SIGNALS--

		--CLOCK CONTROL--
		signal Halt: std_logic; -- {Stop clock}



		--BUS CONTROL--

		--Data bus control signals. Indicates from where is going to be pushed information onto the data bus.
		signal Set_D: std_logic_vector(4 downto 0); -- See BussesInputting

		--Address bus control signals. Indicates from where is going to be pushed information onto the address bus.
		signal Set_A: std_logic_vector(3 downto 0); -- See BussesInputting

		--Segment bus control signals. Indicates from where is going to be pushed information to the segment bus.
		signal Set_S: std_logic_vector(2 downto 0); -- See BussesInputting



		--I/O REGISTERS CONTROL--

		--Data I/O register control signals
		signal DE: std_logic; -- {DataBus => Data} FIX?

		--Address I/O register control signals
		signal AE: std_logic; -- {AddressBus => Address}

		--Others
		--signal Write: std_logic; -- {DataBus => Data}



		--INTERRUPT REISTERS CONTROL--

		--High Priority non maskable Interupt control signals
		signal HPIA_in: std_logic; -- {AddressBus => HPIA}

		--Medium Priority maskable Interrupt control signals
		signal MPIA_in: std_logic; -- {AddressBus => MPIA}

		--Low Priority maskable Interrupt control signals
		signal LPIA_in: std_logic; -- {AddressBus => LPIA}

		--Last Interrupcion Finished
		signal LIF: std_logic;



		--MICOCODE AND INSTRUCCION CONTROL--

		--Instruccion register control signals
		signal IR_in: std_logic; -- {DataBus => IR}

		--Program counter register control signals
		signal PCd_in: std_logic; -- {DataBus => PC}
		signal PCa_in: std_logic; -- {AddressBus => PC}
		signal PC_inc: std_logic; -- {PC++}



		--FLAGS REGISTER CONTROL--
		signal FR_in: std_logic; -- {DataBus => FR}
		signal FlagOp: std_logic_vector(3 downto 0); -- {(2 downto 0)->Flag, 3->Set to 0 or 1}



		--ALU/ADD CONTROL--

		--Alu Operation register. It stores the next operation to perform.
		signal ALUOp: std_logic_vector(3 downto 0); -- See AluOperations

		--Alu Operation Leghth register. It stores if the alu is going to perform a 16 bit operation or a 24 bit operation
		signal ALUOpL: std_logic;



		--ALU/ADD INPUT REGISTERS CONTROL--

		--A register control signals
		signal Ad_in: std_logic; -- {DataBus => A}
		signal Aa_in: std_logic; -- {AddressBus => A}

		--B register control signals
		signal Bd_in: std_logic; -- {DataBus => B}
		signal Ba_in: std_logic; -- {AddressBus => B}
		signal Bs_in: std_logic; -- {SegmentBus => B}



		--GENERAL PURPOSE REGISTERS CONTROL--

		--X register control signals
		signal X_in: std_logic; -- {DataBus => X}
		signal XH_in: std_logic; -- {DataBus(7 downto 0) => X(15 downto 8)}
		signal XL_in: std_logic; -- {DataBus(7 downto 0) => X(7 downto 0)}

		--Y register control signals
		signal Y_in: std_logic; -- {DataBus => Y}
		signal YH_in: std_logic; -- {DataBus(7 downto 0) => Y(15 downto 8)}
		signal YL_in: std_logic; -- {DataBus(7 downto 0) => Y(7 downto 0)}

		--Z register control signals
		signal Z_in: std_logic; -- {DataBus => Z}
		signal ZH_in: std_logic; -- {DataBus(7 downto 0) => Z(15 downto 8)}
		signal ZL_in: std_logic; -- {DataBus(7 downto 0) => Z(7 downto 0)}



		--STACK REGISTERS CONTROL--

		--Stack pointer register control signals
		signal SPd_in: std_logic; -- {DataBus => SP(15 downto 0)}
		signal SPa_in: std_logic; -- {AddressBus => SP}
		signal SP_inc: std_logic; -- {SP++}
		signal SP_dec: std_logic; -- {SP--}

		--Stack base pointer register control signals
		signal BPd_in: std_logic; -- {DataBus => BP(15 downto 0)}
		signal BPa_in: std_logic; -- {AddressBus => BP}
		signal BP_inc: std_logic; -- {BP++}
		signal BP_dec: std_logic; -- {BP--}



		--INDEX REGISTERS CONTROL--

		--Source index register control signals
		signal SId_in: std_logic; -- {DataBus => SI(15 downto 0)}
		signal SIa_in: std_logic; -- {AddressBus => SI}

		--Destination index register control signals
		signal DId_in: std_logic; -- {DataBus => DI(15 downto 0)}
		signal DIa_in: std_logic; -- {AddressBus => DI}



		--SEGMENT REGISTERS CONTROL--

		--Code segment register control signals
		signal CSd_in: std_logic; -- {DataBus => CS(15 downto 0)}
		signal CSa_in: std_logic; -- {AddressBus => CS}

		--Data segment register control signals
		signal DSd_in: std_logic; -- {DataBus => DS(15 downto 0)}
		signal DSa_in: std_logic; -- {AddressBus => DS}

		--Extra data #1 segment register control signals
		signal ESd_in: std_logic; -- {DataBus => ES(15 downto 0)}
		signal ESa_in: std_logic; -- {AddressBus => ES}

		--Extra data #2 segment register control signals
		signal FSd_in: std_logic; -- {DataBus => FS(15 downto 0)}
		signal FSa_in: std_logic; -- {AddressBus => FS}

		--Extra data #3 segment register control signals
		signal GSd_in: std_logic; -- {DataBus => GS(15 downto 0)}
		signal GSa_in: std_logic; -- {AddressBus => GS}

		--Stack segment register control signals
		signal SSd_in: std_logic; -- {DataBus => SS(15 downto 0)}
		signal SSa_in: std_logic; -- {AddressBus => SS}

begin
	
	--Sync asyncronous signal
	Sync <= '1' when MRC = "0000" else '0';

	--Microcode entity creation
	MicroCode : entity work.MCode
		port map(
			rst => rst,
			clk => mClk,
			CIR => CIR,
			IR => IR,
			MRC => MRC,
			IC => IC,
			FR => FR,
			LMRC => LMRC,
			LIC => LIC,
			IR_in => IR_in,
			PCd_in => PCd_in,
			PCa_in => PCa_in,
			PC_inc => PC_inc,
			Halt => Halt,
			FR_in => FR_in,
			FlagOp => FlagOp,
			Set_D => Set_D,
			Set_A => Set_A,
			Set_S => Set_S,
			ALUOp => ALUOp,
			ALUOpL => ALUOpL,
			Ad_in => Ad_in,
			Aa_in => Aa_in,
			Bd_in => Bd_in,
			Ba_in => Ba_in,
			Bs_in => Bs_in,
			X_in => X_in,
			XH_in => XH_in,
			XL_in => XL_in,
			Y_in => Y_in,
			YH_in => YH_in,
			YL_in => YL_in,
			Z_in => Z_in,
			ZH_in => ZH_in,
			ZL_in => ZL_in,
			SPd_in => SPd_in,
			SPa_in => SPa_in,
			SP_inc => SP_inc,
			SP_dec => SP_dec,
			BPd_in => BPd_in,
			BPa_in => BPa_in,
			BP_inc => BP_inc,
			BP_dec => BP_dec,
			SId_in => SId_in,
			SIa_in => SIa_in,
			DId_in => DId_in,
			DIa_in => DIa_in,
			CSd_in => CSd_in,
			CSa_in => CSa_in,
			DSd_in => DSd_in,
			DSa_in => DSa_in,
			ESd_in => ESd_in,
			ESa_in => ESa_in,
			FSd_in => FSd_in,
			FSa_in => FSa_in,
			GSd_in => GSd_in,
			GSa_in => GSa_in,
			SSd_in => SSd_in,
			SSa_in => SSa_in,
			DE => DE,
			AE => AE,
			Write => RW_R,
			HPIA_in => HPIA_in,
			MPIA_in => MPIA_in,
			LPIA_in => LPIA_in,
			LIF => LIF,
			AIE => AIE);

	--Arithmetic logic unit entity creation
	ArithmeticLogicUnit : entity work.ALU
		port map(
			clk => clk,
			Op => ALUOp,
			OpL => ALUOpL,
			A => AB(23 downto 0),
			B => AB(47 downto 24),
			FR_I => FR,
			FR_O => FR_Out,
			Q => AOR);

	--Instruccion register assingment & autoincrement registers
	process(rst, clk) 
	begin

		--If the reset is triggered
		if rst = '0' then
			IR <= (others => '0');
			SP <= (others => '0');
			BP <= (others => '0');
			AIE <= "00";
			RstComplete <= '1';
			PC <= rstAddress;

		--If we are in the rising edge of the clock
		elsif rising_edge(clk) then

			--The processor is enabled
			if Enable = '1' then

				if LMRC <= MRC or RstComplete = '1' then

					--If there was an interrupt (While reading the new instruccion to come)
					if HPI = '1' or MPI = '1' or LPI = '1' then

						if AIE = "00" then --Try to move upwards when we test its working

							--Forces to execute the BRK instruccion
							IR <= "0000000000000000";

							--Setting the interrupt that is going to be executed
							if HPI = '1' then
								AIE <= "11";
							end if;

							if MPI = '1' then
								AIE <= "10";
							end if;

							if LPI = '1' then
								AIE <= "01";
							end if;
						else
							--Next instruccion enters
							IR <= Data;
						end if;
					else
						--Next instruccion enters
						IR <= Data;
					end if;

					RstComplete <= '0';

				end if;

				if LIF = '1' then
					AIE <= "00";
				end if;

				--Stack pointer increment
				if SP_inc = '1' then
					SP <= SP + 1;
				end if;

				--Stack pointer decrement
				if SP_dec = '1' then
					SP <= SP - 1;
				end if;

				--Stack pointer set to the data bus
				if SPd_in = '1' then
					SP <= "00000000" & unsigned(D_B);
				end if;

				--Stack pointer set to the address bus
				if SPa_in = '1' then
					SP <= unsigned(A_B);
				end if;

				--Base pointer increment
				if BP_inc = '1' then
					SP <= SP + 1;
				end if;

				--Base pointer decrement
				if BP_dec = '1' then
					BP <= BP - 1;
				end if;

				--Base pointer set to the data bus
				if BPd_in = '1' then
					BP <= "00000000" & unsigned(D_B);
				end if;

				--Base pointer set to the address bus
				if BPa_in = '1' then
					BP <= unsigned(A_B);
				end if;

				--Program counter increment
				if PC_inc = '1' then
					PC <= PC + 1;
				end if;

				--Program counter set to the data bus
				if PCd_in = '1' then
					PC <= "00000000" & unsigned(D_B);
				end if;

				--Program counter set to the address bus
				if PCa_in = '1' then
					PC <= unsigned(A_B);
				end if;
			end if;
		end if;
	end process;

	--Segment, Interrupt and Index register inputting
	process(rst, clk)
	begin

		--If the reset is triggered
		if rst = '0' then
			SI <= (others => '0');
			DI <= (others => '0');
			HPIA <= rstHPIAAddress;
			MPIA <= rstMPIAAddress;
			LPIA <= rstLPIAAddress;
			CS <= rstCodeSegmentAddress;
			DS <= rstDataSegmentAddress;
			ES <= rstEDataSegmentAddress;
			FS <= rstFDataSegmentAddress;
			GS <= rstGDataSegmentAddress;
			SS <= rstStackSegmentAddress;

		--If we are in the rising edge of the clock
		elsif rising_edge(clk) then

			--If the enable is actived
			if Enable = '1' then

				--Source index register data bus inputting
				if SId_in = '1' then
					SI <= "00000000" & D_B;
				end if;

				--Source index register address bus inputting
				if SIa_in = '1' then
					SI <= A_B;
				end if;

				--Destination index register data bus inputting
				if DId_in = '1' then
					DI <= "00000000" & D_B;
				end if;

				--Destination index register address bus inputting
				if DIa_in = '1' then
					DI <= A_B;
				end if;

				--High Priority Interrupt register address bus inputting
				if HPIA_in = '1' then
					HPIA <= A_B;
				end if;

				--Medium Priority Interrupt register address bus inputting
				if MPIA_in = '1' then
					MPIA <= A_B;
				end if;

				--Low Priority Interrupt register address bus inputting
				if LPIA_in = '1' then
					LPIA <= A_B;
				end if;

				--Code segment register data bus inputting
				if CSd_in = '1' then
					CS <= "00000000" & D_B;
				end if;

				--Code Segment register address bus inputting
				if CSa_in = '1' then
					CS <= A_B;
				end if;

				--Data segment register data bus inputting
				if DSd_in = '1' then
					DS <= "00000000" & D_B;
				end if;

				--Data Segment register address bus inputting
				if DSa_in = '1' then
					DS <= A_B;
				end if;

				--Extra data #1 segment register data bus inputting
				if ESd_in = '1' then
					ES <= "00000000" & D_B;
				end if;

				--Extra data #1 segment register address bus inputting
				if ESa_in = '1' then
					ES <= A_B;
				end if;

				--Extra data #2 segment register data bus inputting
				if FSd_in = '1' then
					FS <= "00000000" & D_B;
				end if;

				--Extra data #2 segment register address bus inputting
				if FSa_in = '1' then
					FS <= A_B;
				end if;

				--Extra data #3 segment register data bus inputting
				if GSd_in = '1' then
					GS <= "00000000" & D_B;
				end if;

				--Extra data #3 segment register address bus inputting
				if GSa_in = '1' then
					GS <= A_B;
				end if;

				--Stack segment register data bus inputting
				if SSd_in = '1' then
					SS <= "00000000" & D_B;
				end if;

				--Stack segment register address bus inputting
				if SSa_in = '1' then
					SS <= A_B;
				end if;
			end if;
		end if;
	end process;

	--Instruccion reception process (Almost sure its working)
	process(rst, clk)
	begin
	
		--If the reset is triggered
		if rst = '0' then
			MRC <= (others => '0');
			EIR <= (others => '1');
			IC <= "00";
			CIR <= '0';

		--If we are in the rising edge of the clock
		elsif rising_edge(clk) then

			--If the enable is actived
			if Enable = '1' then

				--If we are still reading the instruccion
				if RstComplete = '1' then
					IC <= "00";

				elsif LIC > IC and CIR = '0' then --(Works)
					CIR <= '0';
					EIR <= EIR;

					--Maybe is not possible like this, try like as a FSM
					case IC is

					--When recieving the first 16 bits of the extra instruccion
					when "00" =>
						EIR(15 downto 0) <= Data;
						IC <= "01";

					--When recieving the second 16 bits of the extra instruccion
					when "01" =>
						EIR(31 downto 16) <= Data;
						IC <= "10";

					--When recieving the third 16 bits of the extra instruccion
					when "10" =>
						EIR(47 downto 32) <= Data;
						IC <= "11";

					--When all the data has been recived
					when "11" =>
						IC <= "11"; --(Valorate to move upwards)
						CIR <= '1';

					--Is in theory impossible, but just in case something strange happens
					when others =>
						IC <= "00";
					end case;

				--If we have finished reading the instruccion
				else --(Almost sure it works)

					--If we are executing a hardware interrupt break instruction (This is the thing that does not occur during MPI or LPI
					if AIE = "11" or AIE = "01" or AIE = "10" then
						case AIE is
						when "01" => EIR(23 downto 0) <= LPIA;
						when "10" => EIR(23 downto 0) <= MPIA;
						when "11" => EIR(23 downto 0) <= HPIA;
						when others => EIR <= (others => '0');
						end case;
						CIR <= '1';
					end if;

					if MRC = 0 then
						CIR <= '1';
					end if;

					--The last instruccion has finished
					if LMRC <= MRC then
						EIR <= (others => '1');
						MRC <= (others => '0');
						IC <= "00";
						CIR <= '0';

					--Normal cycle
					else
						MRC <= MRC + 1;
					end if;
				end if;
			end if;
		end if;
	end process;

	--Alu input registers and flag register
	process(rst, clk)
	begin
	
		--If the reset is triggered
		if rst = '0' then
			AB <= (others => '0');

		--If we are in the rising edge of the clock
		elsif rising_edge(clk) then

			--If the enable is actived
			if Enable = '1' then
				AB <= AB;

				--If we are inputting data from the data bus to the A register
				if Ad_in = '1' then
					AB(23 downto 0) <= "00000000" & D_B;
				end if;

				--If we are inputting data from the address bus to the A register
				if Aa_in = '1' then
					AB(23 downto 0) <= A_B;
				end if;

				--If we are inputting data from the data bus to the B register
				if Bd_in = '1' then
					AB(47 downto 24) <= "00000000" & D_B;
				end if;

				--If we are inputting data from the address bus to the B register
				if Ba_in = '1' then
					AB(47 downto 24) <= A_B;
				end if;

				--If we are inputting data from the segment bus to the B register
				if Bs_in = '1' then
					AB(47 downto 24) <= S_B;
				end if;

				--If we are inputting data from the data bus to the FR register
				if FR_in = '1' then
					FR <= D_B;
				end if;

				--If we are directly changing some flags
				case FlagOp(2 downto 0) is
				when "001" => FR(Flag_UC) <= FlagOp(3);
				when "010" => FR(Flag_T) <= FlagOp(3);
				when "011" => FR(Flag_I) <= FlagOp(3);
				when "100" => FR(Flag_D) <= FlagOp(3);
				when "101" => FR(Flag_F) <= FlagOp(3);
				when "111" => FR(Flag_1) <= FlagOp(3);
				when others =>
					if FR(Flag_F) = '1' then
						FR <= FR_Out;
					else
						FR <= FR;
					end if;
				end case;
			end if;
		end if;
	end process;

	--General purpose register fetching process
	process(rst, clk)
	begin
	
		--If the reset is triggered
		if rst = '0' then
			X <= (others => '0');
			Y <= (others => '0');
			Z <= (others => '0');

		--If we are in the rising edge of the clock
		elsif rising_edge(clk) then

			--If the enable is actived
			if Enable = '1' then

				--If we are inputting data from the data bus to the X register
				if X_in = '1' then
					X <= D_B;
				end if;

				--If we are inputting data from the data bus to the XH register(16MSBs X register)
				if XH_in = '1' then
					X(15 downto 8) <= D_B(7 downto 0);
				end if;

				--If we are inputting data from the data bus to the XL register(16LSBs X register)
				if XL_in = '1' then
					X(7 downto 0) <= D_B(7 downto 0);
				end if;

				--If we are inputting data from the data bus to the Y register
				if Y_in = '1' then
					Y <= D_B;
				end if;

				--If we are inputting data from the data bus to the YH register(16MSBs Y register)
				if YH_in = '1' then
					Y(15 downto 8) <= D_B(7 downto 0);
				end if;

				--If we are inputting data from the data bus to the YL register(16LSBs Y register)
				if YL_in = '1' then
					Y(7 downto 0) <= D_B(7 downto 0);
				end if;

				--If we are inputting data from the data bus to the Z register
				if Z_in = '1' then
					Z <= D_B;
				end if;

				--If we are inputting data from the data bus to the ZH register(16MSBs Z register)
				if ZH_in = '1' then
					Z(15 downto 8) <= D_B(7 downto 0);
				end if;

				--If we are inputting data from the data bus to the ZL register(16LSBs Z register)
				if ZL_in = '1' then
					Z(7 downto 0) <= D_B(7 downto 0);
				end if;
			end if;
		end if;
	end process;

	--Data <= (others => 'Z');

	--Selecting what is going to be exporting data to the data bus
	with Set_D select
		D_B <= FR when "00001", 
		AB(15 downto 0) when "00010",
		AB(39 downto 24) when "00011",
		AOR(15 downto 0) when "00100",
		IR when "00101",
		std_logic_vector(PC(15 downto 0)) when "00110",
		X when "00111",
		("00000000" & X(15 downto 8)) when "01000",
		("00000000" & X(7 downto 0)) when "01001",
		Y when "01010",
		("00000000" & Y(15 downto 8)) when "01011",
		("00000000" & Y(7 downto 0)) when "01100",
		Z when "01101",
		("00000000" & Z(15 downto 8)) when "01110",
		("00000000" & Z(7 downto 0)) when "01111",
		std_logic_vector(SP(15 downto 0)) when "10000",
		std_logic_vector(BP(15 downto 0)) when "10001",
		SI(15 downto 0) when "10010",
		DI(15 downto 0) when "10011",
		CS(15 downto 0) when "10100",
		DS(15 downto 0) when "10101",
		ES(15 downto 0) when "10110",
		FS(15 downto 0) when "10111",
		GS(15 downto 0) when "11000",
		SS(15 downto 0) when "11001",
		EIR(15 downto 0) when "11010",
		EIR(31 downto 16) when "11011",
		Data when "11100",
		(others => '0') when others; -- Tied to ground

	--Selecting what is going to be exporting data to the address bus
	with Set_A select
		A_B <= std_logic_vector(PC) when "0001",
		AB(23 downto 0) when "0010",
		AB(47 downto 24) when "0011",
		AOR when "0100",
		std_logic_vector(SP) when "0101",
		std_logic_vector(BP) when "0110",
		SI when "0111",
		DI when "1000",
		HPIA when "1001",
		MPIA when "1010",
		LPIA when "1011",
		EIR(23 downto 0) when "1100", --EIR(31 downto 0) when "1100",
		EIR(47 downto 24) when "1101",
		EIR(39 downto 16) when "1110",
		Address when "1111",
		(others => '0') when others; -- Tied to ground

	--Selecting what is going to be exporting data to the segment bus
	with Set_S select
		S_B <= CS when "001",
		DS when "010",
		ES when "011",
		SS when "101",
		FS when "110",
		GS when "111",
		(others => '0') when others; -- Tied to ground

	process(rst, mClk)
	begin

		--If the reset is triggered
		if rst = '0' then
			Address <= (others => '0');

		elsif rising_edge(mClk) then

			--If the enable is actived
			if Enable = '1' then
				--Address register interfering with the outside
				if AE = '1' then
					Address <= A_B;

				--When fetching the whole instruccion, as the MRC is not increased, is always exporting it
				elsif MRC = "0000" or MRC = LMRC then

					--Fetching the next instruccion to read
					Address <= std_logic_vector(PC);
				end if;

			end if;
		end if;
	end process;

	--Process for I/O registers
	process(clk, rst)
	begin
		
		--If the reset is triggered
		if rst = '0' then
			data_out <= (others => '0');
			--RW <= '0';
			HPI <= '0';
			MPI <= '0';
			LPI <= '0';
			HPIO <= '1';
			MPIO <= '1';
			LPIO <= '1';
		
		--If we are in the rising edge of the clock
		elsif rising_edge(clk) then
			
			--If the enable is actived
			if Enable = '1' then

				--Reseting the interrupt if the interruption process finished
				if LIF = '1' then

					--Selecting what interrupt had just finished and resetting the correspondant interrupt register
					case AIE is
					when "01" =>
						LPI <= '0';
					when "10" =>
						MPI <= '0';
					when "11" =>
						HPI <= '0';

					--If the instruccion to finish an interrupt code was executed, but no hardware interruption process was actived
					when "00" =>
						LPI <= '0';
						MPI <= '0';
						HPI <= '0';
					end case;
				end if;

				--If the HPI is high and has been low
				if HPI_p = '1' and HPIO = '1' and not MPI = '1' and not LPI = '1' and FR(Flag_I) = '1' then
					HPI <= '1';
					HPIO <= '0';

				--If the MPI is high, has been low, any interrupt pin with higher priority is active and the interrupt flag is active
				elsif MPI_p = '1' and MPIO = '1' and not HPI = '1' and not LPI = '1' and FR(Flag_I) = '1' then
					MPI <= '1';
					MPIO <= '0';

				--If the LPI is high, has been low, any interrupt pin with higher priority is active and the interrupt flag is active
				elsif LPI_p = '1' and LPIO = '1' and not HPI = '1' and not MPI = '1' and FR(Flag_I) = '1' then
					LPI <= '1';
					LPIO <= '0';
				end if;

				--If the HPI is low
				if HPI_p = '0' then
					HPIO <= '1';
				end if;

				--If the MPI is low
				if MPI_p = '0' then
					MPIO <= '1';
				end if;

				--If the LPI is low
				if LPI_p = '0' then
					LPIO <= '1';
				end if;

				if DE = '1' then
					if RW_R = '1' then
						data_out <= D_B(0)&D_B(1)&D_B(2)&D_B(3)&D_B(4)&D_B(5)&D_B(6)&D_B(7)&D_B(8)&D_B(9)&D_B(10)&D_B(11)&D_B(12)&D_B(13)&D_B(14)&D_B(15);
					end if;
				end if;

				--Updating the RW pin with the RW register syncronously, may be good to make it asyncronously
				--RW <= RW_R;

			end if;
		end if;
	end process;

	--Writting the data out in the Data asyncronously
	Data <= data_out when (RW_R = '1') else (others => 'Z');

	--Updating the RW pin with the RW register asyncronously
	RW <= RW_R;

	--Test only process, for probing signals
	--process(rst, IC, LIC, IR, PC, EIR, AB, ALUOpL, ALUOp, FR_Out, HPI, MPI, LPI, MRC, LMRC, CIR, RstComplete, LIF)
	--begin
		--if rst = '0' then
			--IC_Test <= "00";
			--LIC_Test <= "00";
			--IR_Test <= (others => '0');
			--PC_Test <= (others => '0');
			--A_B_Test <= (others => '0');
			--A_Test <= (others => '0');
			--B_Test <= (others => '0');
			--AluOperation_Test <= (others => '0');
			--AluOperationLenght_Test <= '0';
			--Carry_Test <= '0';
			--Overflow_Test <= '0';
			--Negative_Test <= '0';
			--Parity_Test <= '0';
			--Zero_Test <= '0';
			--AuxiliaryCarry_Test <= '0';
			--AIE_Test <= (others => '0');
			--HPI_Test <= '0';
			--MPI_Test <= '0';
			--LPI_Test <= '0';
			--MRC_Test <= (others => '0');
			--LMRC_Test <= (others => '0');
			--RstComplete_Test <= '0';
			--LIF_Test <= '0';
		--else
			--IC_Test <= std_Logic_vector(IC);
			--LIC_Test <= std_Logic_vector(LIC);
			--IR_Test <= IR;
			--PC_Test <= std_logic_vector(PC);
			--A_B_Test <= EIR(23 downto 0);
			--A_Test <= AB(15 downto 0);
			--B_Test <= AB(39 downto 24);
			--AluOperation_Test <= ALUOp;
			--AluOperationLenght_Test <= ALUOpL;
			--Carry_Test <= FR_Out(Flag_C);
			--Overflow_Test <= FR_Out(Flag_V);
			--Negative_Test <= FR_Out(Flag_N);
			--Parity_Test <= FR_Out(Flag_P);
			--Zero_Test <= FR_Out(Flag_Z);
			--AuxiliaryCarry_Test <= FR_Out(Flag_A);
			--AIE_Test <= std_logic_vector(AIE);
			--HPI_Test <= HPI;
			--MPI_Test <= MPI;
			--LPI_Test <= LPI;
			--MRC_Test <= std_logic_vector(MRC);
			--LMRC_Test <= std_Logic_vector(LMRC);
			--CIR_Test <= CIR;
			--RstComplete_Test <= RstComplete;
			--LIF_Test <= LIF;
		--end if;
	--end process;
end Behavioral;