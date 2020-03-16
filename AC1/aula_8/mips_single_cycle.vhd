library ieee;
use ieee.std_logic_1164.all;

library work;
use work.MIPS_pkg.all;
use work.DisplayUnit_pkg.all;

entity mips_single_cycle is
	port( CLOCK_50 : in std_logic;
			SW : in std_logic_vector(17 downto 0);
			KEY : in std_logic_vector(3 downto 0);
			HEX0 : out std_logic_vector(6 downto 0);
			HEX1 : out std_logic_vector(6 downto 0);
			HEX2 : out std_logic_vector(6 downto 0);
			HEX3 : out std_logic_vector(6 downto 0);
			HEX4 : out std_logic_vector(6 downto 0);
			HEX5 : out std_logic_vector(6 downto 0);
			HEX6 : out std_logic_vector(6 downto 0);
			HEX7 : out std_logic_vector(6 downto 0));
end mips_single_cycle;

architecture Shell of mips_single_cycle is
	signal s_clk : std_logic;
	signal s_imm : std_logic_vector(15 downto 0);
	signal s_pcOut, s_instmemOut, s_dataOut : std_logic_vector(31 downto 0);
	signal s_Addr : std_logic_vector(25 downto 0);
begin

pcupdt: 	entity work.PCupdate(Behavioral)
				port map(clk    => s_clk,
							reset  => KEY(1),
							branch => '0',
							jump 	 => '0',
							zero 	 => '0',
							offset => s_dataOut,
							jAddr  => s_Addr,
							pc     => s_pcOut);

instmem: entity work.InstructionMemory(Behavioral)
			generic map(ADDR_BUS_SIZE => ROM_ADDR_SIZE)
			
			port map(address  => s_pcOut(7 downto 2),
						readData => s_instmemOut);
			
splitter: entity work.InstrSplitter(Behavioral)
			 port map(instruction => s_instmemOut,
						-- opcode      => 
						-- rs          =>
						 --rt          =>
						 --rd          =>
						 --shamt       =>
						 --funct       =>
						 imm         => s_imm,
						 jAddr       => s_Addr);

signext: entity work.SignExtend(Behavioral)
				port map(dataIn  =>s_imm,
							dataOut => s_dataOut);

-- Debouncer
debnc: entity work.DebounceUnit(Behavioral)
			 generic map(mSecMinInWidth => 100,
							 inPolarity => '0',
							 outPolarity => '1')
			
			 port map( refClk => CLOCK_50,
						  dirtyIn => KEY(0),
						  pulsedOut => s_clk);

-- Display module
displ: entity work.DisplayUnit(Behavioral)
			generic map(dataPathType => SINGLE_CYCLE_DP,
							IM_ADDR_SIZE => ROM_ADDR_SIZE,
							DM_ADDR_SIZE => RAM_ADDR_SIZE)
				
				port map( RefClk => CLOCK_50,
							 InputSel => SW(1 downto 0),
							 DispMode => SW(17),
							 NextAddr => KEY(3),
							 Dir => KEY(2),
							 disp0 => HEX0,
							 disp1 => HEX1,
							 disp2 => HEX2,
							 disp3 => HEX3,
							 disp4 => HEX4,
							 disp5 => HEX5,
							 disp6 => HEX6,
							 disp7 => HEX7);
							 
DU_RFdata <= (others => '0');
DU_PC <= s_pcOut;
DU_DMdata <= (others => '0');
end Shell;