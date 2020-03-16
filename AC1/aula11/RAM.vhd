library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.DisplayUnit_pkg.all;

entity RAM is
	generic( ADDR_BUS_SIZE : positive;
				DATA_BUS_SIZE : positive);
	port( clk  : in std_logic;
			addr : in std_logic_vector(ADDR_BUS_SIZE - 1 downto 0);
			ce   : in std_logic; -- chip enable
			wr   : in std_logic; -- write
			rd   : in std_logic; -- read
			dio  : inout std_logic_vector(DATA_BUS_SIZE - 1 downto 0));
end RAM;

architecture Behavioral of RAM is
	constant NUM_WORDS : positive := (2 ** ADDR_BUS_SIZE);
	subtype TData is std_logic_vector(31 downto 0);
	type TMemory is array(0 to NUM_WORDS - 1) of TData;
	signal s_memory : TMemory := (X"8C010000", -- lw $1,0x0000($0)
											X"20210004", -- addi $1,$1,4
											X"AC010004", -- sw $1,4($0)
											others => X"00000000");
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(wr = '1') then
				if(ce = '1') then
					s_memory(to_integer(unsigned(addr))) <= dio; 
				end if;
			end if;
		end if;
	
	
		if(ce = '1') then
			if(rd = '1') then
				dio <= s_memory(to_integer(unsigned(addr)));
			else 
				dio <= (others => 'Z');
			end if;	
		end if;
	end process;
	DU_DMdata <= s_memory(to_integer(unsigned(DU_DMaddr)));
	
end Behavioral;