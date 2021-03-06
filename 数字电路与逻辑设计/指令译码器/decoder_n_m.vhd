library ieee,lcdf_vhdl;
use ieee.std_logic_1164.all,lcdf_vhdl.func_prims.all;
entity decoder_n_m is
	port(EN:in std_logic;
		INPUT:in std_logic_vector(7 downto 0);
		MOV0,MOV1,MOV2,ADD,SUB,OR0,NOT0,SHR,SHL,JMP,JZ,JC,IN0,OUT0,NOP,HALT:out std_logic);
end decoder_n_m;

architecture structural of decoder_n_m is
signal ORDER:std_logic_vector(15 downto 0);
signal INPUT0:std_logic_vector(3 downto 0);
signal INPUT1:std_logic_vector(1 downto 0);
signal INPUT2:std_logic_vector(1 downto 0);
begin 

process(INPUT0)
	begin
		INPUT0<=INPUT(7 downto 4);
		INPUT1<=INPUT(3 downto 2);
		INPUT2<=INPUT(1 downto 0);
		if(EN='1') then
			if (INPUT0="1111") then
				if(INPUT1="11" and (INPUT2="00" or INPUT2="01" or INPUT2="10")) then
					ORDER <="0100000000000000";
				elsif((INPUT1="00" or INPUT1="01" or INPUT1="10") and INPUT2="11") then
					ORDER <="0010000000000000";
				else 
					ORDER <="1000000000000000";
				end if;
			end if;
			
			if (INPUT0="1001") then 
				ORDER <="0001000000000000";
			end if;
			
			if (INPUT0="0110") then 
				ORDER <="0000100000000000";
			end if;
			
			if (INPUT0="1011") then 
				ORDER <="0000010000000000";
			end if;
			
			if (INPUT0="0101") then 
				ORDER <="0000001000000000";
			end if;
			
			if (INPUT0="1010"and INPUT2="00") then 
				ORDER<="0000000100000000";
			end if;
			
			if (INPUT0="1010"and INPUT2="11") then 
				ORDER <="0000000010000000";
			end if;
			
			if (INPUT0="0001"and INPUT1="00"and INPUT2="00") then 
				ORDER<="0000000001000000";
			end if;
			
			if (INPUT0="0001"and INPUT1="00"and INPUT2="01") then 
				ORDER <="0000000000100000";
			end if;
			
			if (INPUT0="0001"and INPUT1="00"and INPUT2="10") then 
				ORDER <="0000000000010000";
			end if;
			
			if (INPUT0="0010") then 
				ORDER <="0000000000001000";
			end if;
			
			if (INPUT0="0100") then 
				ORDER <="0000000000000100";
			end if;
			
			if (INPUT0="0111"and INPUT1="00"and INPUT2="00") then 
				ORDER <="0000000000000010";
			end if;
			
			if (INPUT0="1000"and INPUT1="00"and INPUT2="00") then 
				ORDER <="0000000000000001";
			end if;
			
		end if;
		
		if(EN='0') then ORDER<="0000000000000000";
		end if;
		
		MOV0 <=ORDER(15);MOV1 <=ORDER(14);MOV2 <=ORDER(13);
		ADD<=ORDER(12);SUB<=ORDER(11);OR0<=ORDER(10);NOT0<=ORDER(9);
		SHR<=ORDER(8);SHL<=ORDER(7);
		JMP<=ORDER(6);JZ<=ORDER(5);JC<=ORDER(4);
		IN0<=ORDER(3);OUT0<=ORDER(2);NOP<=ORDER(1);HALT<=ORDER(0);
		
	end process;
end;