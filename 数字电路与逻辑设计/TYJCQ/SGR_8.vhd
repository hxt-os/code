library ieee;
use ieee.std_logic_1164.all;
entity SGR_8 is
	port(Clk:in std_logic;
		D:in std_logic_vector(7 downto 0);
		Q:out std_logic_vector(7 downto 0));
end SGR_8;
architecture archite of SGR_8 is
begin
	process(D,Clk)
	begin
		if(Clk'event and Clk='0') then
			Q<=D;
		end if;
	end process;
end archite;