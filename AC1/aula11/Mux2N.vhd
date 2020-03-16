Library IEEE;
use IEEE.std_logic_1164.all;

entity Mux2N is
	generic( N : integer := 5);
	port(	sel : in std_logic;
			In0  : in std_logic_vector(N-1 downto 0);
			In1  : in std_logic_vector(N-1 downto 0);
			MuxOut   : out std_logic_vector(N-1 downto 0));
end Mux2N;

architecture Behavioral of Mux2N is
begin
	process(sel)
	begin
		case sel is
			when '0' => MuxOut <= In0;
			when '1' => MuxOut <= In1;
		end case;
	end process;
end Behavioral;	