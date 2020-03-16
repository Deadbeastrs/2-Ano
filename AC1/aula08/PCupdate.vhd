library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;entity PCupdate is
	port( clk : in std_logic;
			reset : in std_logic;
			branch : in std_logic;
			jump : in std_logic;
			zero : in std_logic;
			offset : in std_logic_vector(31 downto 0);
			jAddr : in std_logic_vector(25 downto 0);
			pc	: out std_logic_vector(31 downto 0));
end PCupdate;

architecture Behavioral of PCupdate is
	signal s_pc, s_pc4, s_offset : unsigned(31 downto 0);
begin
	s_offset <= unsigned(offset(29 downto 0)) & "00";
	s_pc4 <= s_pc + 4;
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then
				s_pc <= (others=>'0');
			else
				if(jump = '1') then
					s_pc <= s_pc4(31 downto 28) & unsigned(jAddr) & "00";
				elsif(branch = '1' and zero = '1') then
					s_pc <= s_pc4 + s_offset;
				else
					s_pc <= s_pc + 4;
				end if;
			end if;
		end if;
	end process;
	pc <= std_logic_vector(s_pc);
end Behavioral;