Library IEEE;
use IEEE.std_logic_1164.all;

entity Mux4n is
	generic( N : integer := 5);
	port(	sel : in std_logic_vector(1 downto 0);
			In0  : in std_logic_vector(N-1 downto 0);
			In1  : in std_logic_vector(N-1 downto 0);
			In2  : in std_logic_vector(N-1 downto 0);
			In3  : in std_logic_vector(N-1 downto 0);
			MuxOut   : out std_logic_vector(N-1 downto 0));
end Mux4n;

architecture Behavioral of Mux4n is
begin
	process(sel)
	begin
		case sel is
			when "00" => MuxOut <= In0;
			when "01" => MuxOut <= In1;
			when "10" => MuxOut <= In2;
			when "11" => MuxOut <= In3;
		end case;
	end process;
end Behavioral;	