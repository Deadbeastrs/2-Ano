library ieee;
use ieee.std_logic_1164.all;

library work;
use work.MIPS_pkg.all;
use work.DisplayUnit_pkg.all;

entity MIPS_SingleCycle is
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
end MIPS_SingleCycle;

architecture Shell of MIPS_SingleCycle is
	signal s_clk,s_branch : std_logic;
	signal s_imm : std_logic_vector(15 downto 0);
	signal s_pcOut, s_instmemOut, s_dataOut : std_logic_vector(31 downto 0);
	signal s_Addr : std_logic_vector(25 downto 0);
	signal s_ALU : std_logic_vector(2 downto 0);
	signal s_Rdata1, s_Rdata2,s_Mux2,s_WriteData, s_Addr_ext : std_logic_vector(31 downto 0);
	signal s_rd,s_rs,s_rt,s_Mux1 : std_logic_vector(4 downto 0);
	signal s_func : std_logic_vector(5 downto 0);
begin

pcupdt: 	entity work.PCupdate(Behavioral)
				port map(clk    => s_clk,
							reset  => not KEY(1),
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
			 port map(instr => s_instmemOut,
						-- opcode      => 
						 rs          => s_rs,
						 rt          => s_rt,
						 rd          => s_rd,
						 --shamt       =>
						 funct       => s_func,
						 imm         => s_imm,
						 jAddr       => s_Addr);

signext: entity work.SignExtend(Behavioral)
				port map(dataIn  =>s_imm,
							dataOut => s_Addr_ext);

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

							 
banco_reg: entity work.RegFile(Structural)
				port map( clk => s_clk,
							 writeEnable => SW(7),
							 writeReg =>s_Mux1,
							 writeData => s_WriteData,
							 readReg1 =>s_rs,
							 readReg2 =>s_rt,
							 readData1 =>s_Rdata1,
							 readData2 =>s_Rdata2);

							
ALU_Control: entity work.ALUControlUnit(Behavioral)
				port map( ALUop => SW(4 downto 3),
							 funct => s_func,
							 ALUcontrol =>s_ALU);
						
						
ALU: entity work.ALU32(Behavioral)
				port map( a => s_Rdata1,
							 b => s_Mux2,
							 oper =>s_ALU,
							 res =>s_WriteData);
						--	 zero => ,
						--	 ovf => );
							
MUX1: entity work.Mux2N(Behavioral)
				generic map(N =>5)
				port map( x1 => s_rt,
						    sel => SW(6),
							 x2 => s_rd,
							 y => s_Mux1); 

MUX2: entity work.Mux2N(Behavioral)
				generic map(N =>32)
				port map( sel => SW(5),
							 x1 =>s_Rdata2,
							 x2 =>s_Addr_ext,
							 y => s_Mux2);
						
DU_PC <= s_pcOut;
DU_DMdata <= s_WriteData;
end Shell;