--ALU
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity ALU is
	port(M:in std_logic;
		S:in std_logic_vector(3 downto 0);
		x:in std_logic_vector(7 downto 0);
		y:in std_logic_vector(7 downto 0);
		T:out std_logic_vector(7 downto 0);
		CF,ZF:out std_logic);
end ALU;
architecture fun of ALU is
signal T0:std_logic_vector(8 downto 0):="000000000";
signal x0,y0:std_logic_vector(8 downto 0);
begin
	process(M,S,x,y)
	begin
		x0<='0'&x;y0<='0'&y;
		if(M='1') then
			if (S="1001") then
				T0<=x0+y0;
				CF<=T0(8);
			elsif (S="0110") then
				T0<=x0-y0;
				CF<=T0(8);
			elsif (S="1011") then
				for j in 0 to 8 loop
					T0(j)<=x0(j) or y0(j);
				end loop;
			elsif (S="0101") then
				for j in 0 to 8 loop
					T0(j)<=not y0(j);
				end loop;
			end if;
		else 
			if(S="1010") then
				CF<='0';
				ZF<='0';
				T0<=y0;
			else
				T0<=x0;
			end if;
		end if;
		if T0="000000000" then
			ZF<='1';
		else 
			ZF<='0';
		end if;
	end process;
	T<=T0(7 downto 0);
end fun;
