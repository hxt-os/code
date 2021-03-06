library ieee;
use ieee.std_logic_1164.all;
entity IR is
	port(Clk,ld_ir:in std_logic;
		input:in std_logic_vector(7 downto 0);
		output_a:out std_logic_vector(3 downto 0);
		output_b:out std_logic_vector(3 downto 0));
end IR;
architecture archite of IR is
signal Q:std_logic_vector(7 downto 0);
begin
	process(Clk)
	begin
		if(Clk'event and Clk='0' and ld_ir='1') then
			Q<=input;
		end if;
	end process;
	output_a<=Q(7 downto 4);
	output_b<=Q(3 downto 0);
end archite;