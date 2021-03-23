library ieee;
use ieee.std_logic_1164.all;
entity Z is
port(input,EN,Clk:in std_logic;
	output:out std_logic);
end Z;
architecture st of Z is
signal i:std_logic;
begin
process(EN,Clk)
	begin
	if (Clk'event and Clk='0' and EN='1') then
		i<=input;
	end if;
	end process;
	output<=i;
end st;