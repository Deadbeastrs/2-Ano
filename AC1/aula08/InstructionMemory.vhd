library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library work;
use work.DisplayUnit_pkg.all;

entity InstructionMemory is
	generic(ADDR_BUS_SIZE : positive := 6);
	port(address	: in std_logic_vector(ADDR_BUS_SIZE-1 downto 0);
		readData	: out std_logic_vector(31 downto 0));
end InstructionMemory;

architecture Behavioral of InstructionMemory is
	constant NUM_WORDS : positive := (2 ** ADDR_BUS_SIZE);
	subtype TData is std_logic_vector(31 downto 0);
	type TMemory is array(0 to NUM_WORDS - 1) of TData;
	constant s_memory : TMemory := (X"21080001",X"20210004",X"AC010004",others => X"00000000");
begin
	readData <= s_memory(to_integer(unsigned(address)));
	DU_IMdata <= s_memory(to_integer(unsigned(DU_IMaddr)));
	
end Behavioral;