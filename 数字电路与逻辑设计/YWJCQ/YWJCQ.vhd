library ieee;
use ieee.std_logic_1164.all;
entity YWJCQ is
	port(F_BUS:in std_logic;
		FL_BUS:in std_logic;
		FR_BUS:in std_logic;
		a:in std_logic_vector(7 downto 0);
		w:out std_logic_vector(7 downto 0);
		CF:out std_logic);
end YWJCQ;
architecture yw of YWJCQ is
begin 
	process(F_BUS,FL_BUS,FR_BUS,a)
	begin
		if F_BUS='1' then
			w<=a;
			CF<='0';
		else
			w<="ZZZZZZZZ";--gaozutai
			CF<='0';
		end if;
		if FL_BUS='1' then
			w<=a(6 downto 0)& a(7);
			CF<=a(7);
		elsif FR_BUS='1' then
			w<=a(0)& a(7 downto 1);
			CF<=a(0);
		end if;
	end process;
end yw;
