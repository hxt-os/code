library ieee;
use ieee.std_logic_1164.all;
entity lj is
	port(a,b:in std_Logic_vector(3 downto 0);
		c:out std_logic_vector(7 downto 0));
end lj;
architecture x of lj is
begin
	c<=a&b;
end x;