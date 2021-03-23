library ieee;
use ieee.std_logic_1164.all;
entity sm is
	port(EN,clk:in std_logic;
		Z:out std_logic);
end sm;
architecture s of sm is
signal SM:std_logic:='0';
begin
	process(clk,EN)
	begin
		if(clk'event and clk='0') then
			if(EN='1') then 
				Z<=not SM;
				SM<=not SM;
			else 
				Z<=SM;
			end if;
		end if;
	end process;
end s;
			 