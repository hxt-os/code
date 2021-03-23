library ieee;
use ieee.std_logic_1164.all;
entity TYJCQ is
	port(WE,clk:in std_logic;
		RAA,RWBA:in std_logic_vector(1 downto 0);
		i:in std_logic_vector(7 downto 0);
		AO,BO,a0,b0,c0:out std_logic_vector(7 downto 0));
end TYJCQ;
architecture jcq of TYJCQ is
signal A:std_logic_vector(7 downto 0):="00000110";
signal B:std_logic_vector(7 downto 0):="00000010";
signal C:std_logic_vector(7 downto 0):="00000001";
begin
	process(clk,WE,RAA,RWBA)
	begin
		if(RAA="00") then
			AO<=A;
		elsif(RAA="01") then
			AO<=B;
		elsif(RAA="10"or RAA="11") then
			AO<=C;
		end if;
		if(RWBA="00") then
			BO<=A;
		elsif(RWBA="01") then
			BO<=B;
		elsif(RWBA="10"or RWBA="11") then
			BO<=C;
		end if;
		if(clk'event and clk='0' and WE='0') then
			if(RWBA="00") then
				A<=i;
			elsif(RWBA="01") then
				B<=i;
			else
				C<=i;
			end if;
		end if;
	end process;
	a0<=A;b0<=B;c0<=C;
end jcq;
		
	