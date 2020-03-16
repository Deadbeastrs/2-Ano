library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity InstrSplitter is
	port( instr : in std_logic_vector(31 downto 0);
			opcode : out std_logic_vector(5 downto 0);
			rs : out std_logic_vector(4 downto 0);
			rt : out std_logic_vector(4 downto 0);
			rd : out std_logic_vector(4 downto 0);
			shamt : out std_logic_vector(4 downto 	0);
			funct : out std_logic_vector(5 downto 0);
			imm : out std_logic_vector(15 downto 0);
			jAddr : out std_logic_vector(25 downto 0));
end InstrSplitter;

architecture Behavioral of InstrSplitter is
begin
	opcode <= instr(31 downto 26);
	rs <= instr(25 downto 21);
	rt <= instr(20 downto 16);
	rd <= instr(15 downto 11);
	shamt <= instr(10 downto 6);
	funct <= instr(5 downto 0);
	imm <= instr(15 downto 0);
	jAddr <= instr(25 downto 0);
end Behavioral;