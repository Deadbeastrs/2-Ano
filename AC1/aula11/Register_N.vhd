library ieee;
use ieee.std_logic_1164.all;

entity Register_N is
	generic( N : integer := 32);
	port(clk : in std_logic;
		  enable : in std_logic;
		  valIn : in std_logic_vector(N-1 downto 0);
		  valOut: out std_logic_vector(N-1 downto 0));
end Register_N;

architecture Behavioral of Register_N is
begin
	process(clk)
	begin
	if(rising_edge(clk)) then
		if(enable = '1') then
			valOut <= valIn;
		end if;
	end if;
	end process;
end Behavioral;