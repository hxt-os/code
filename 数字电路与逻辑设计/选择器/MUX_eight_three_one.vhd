--MUX 8 3-1
library ieee;
use ieee.std_logic_1164.all;
entity MUX_eight_three_one is
	port(I0,I1,I2: in std_logic_vector(7 downto 0);
		S:in std_logic_vector(1 downto 0);
		Z:out std_logic_vector(7 downto 0));
end MUX_eight_three_one;

architecture multiplexer of MUX_eight_three_one is
begin
	--Z<=I0 when S="00" else
	--   I1 when S="01" else
	--   I2 when S="10" else "XXXXXXXX";
	with S select
		Z<=I0 when "00" ,
			I1 when "01",
			I2 when "10", 
			"XXXXXXXX" when others;
end multiplexer;