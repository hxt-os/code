library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity PC is
	port(LD_PC,IN_PC,clk:in std_logic;
		a:in std_logic_vector(7 downto 0);
		c:out std_logic_vector(7 downto 0));
end PC;
architecture count of PC is
signal temp:std_logic_vector(7 downto 0):="00000000";
begin
	process(clk)
	begin 
		if(clk'event and clk='0') then 
			if(IN_PC='0' and LD_PC='1') then
				temp<=a;
			elsif(IN_PC='1' and LD_PC='0') then
				temp<=temp+"00000001";
			end if;
		end if;
	end process;
	c<=temp;
end count;