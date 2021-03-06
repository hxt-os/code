library ieee;
use ieee.std_logic_1164.all;
entity ztcx is
	port(MOV0,MOV1,MOV2,ADD,SUB,OR0,NOT0,SHR,SHL,JMP,JZ,Z,JC,C,IN0,NOP,HALT:in std_logic;
		SM:in std_logic;
		IR:in std_logic_vector(7 downto 0);
		TYJCQ_RA,TYJCQ_WA,XZQ_MADD:out std_logic_vector(1 downto 0);
		ALU_S:out std_logic_vector(3 downto 0);
		PCJCQ_LD,PCJCQ_INC,TYJCQ_WE,RAM_XL,RAM_DL,ALU_M,YWJCQ_FBUS,YWJCQ_FR,YWJCQ_FL,ZCQ_LD,CF_EN,ZF_EN,SM_EN:out std_logic);
end ztcx;

architecture order of ztcx is
begin 
	process(MOV0,MOV1,MOV2,ADD,SUB,OR0,NOT0,SHR,SHL,JMP,JZ,Z,JC,C,IN0,NOP,HALT)
		begin
		ZCQ_LD<=not SM;
		PCJCQ_LD<=(JZ and Z) or (JC and C) or JMP;
		PCJCQ_INC<=(JZ and (not Z)) or (JC and (not C)) or NOP or (not SM);
		TYJCQ_WE<=not(MOV0 or MOV2 or ADD or SUB or OR0 or NOT0 or SHR or SHL) and (not IN0);
		TYJCQ_RA<=IR(1 downto 0);
		TYJCQ_WA<=IR(3 downto 2);
		if SM='0' then 
			XZQ_MADD<="00";
		elsif (SM='1' and MOV2='1') then
			XZQ_MADD<="01";
		elsif (SM='1' and MOV1='1') then
			XZQ_MADD<="10";
		else 
			XZQ_MADD<="00";
		end if;
		ALU_S<=IR(7 downto 4);
		RAM_XL<=MOV1;
		RAM_DL<=MOV2 or JMP or (Z and JZ) or (C and JC) or (not SM);
		if((IR(7 downto 4)="1001")or (IR(7 downto 4)="0110")or (IR(7 downto 4)="1011") or (IR(7 downto 4)="0101"))then 
			ALU_M<='1';
		else ALU_M<='0';
		end if;
		YWJCQ_FR<=SHR;
		YWJCQ_FL<=SHL;
		YWJCQ_FBUS<=MOV0 or MOV1 or  ADD or SUB or OR0 or NOT0;
		CF_EN<= ADD or SUB or OR0 or SHL or SHR ;
		ZF_EN<= ADD or SUB or OR0;
		SM_EN<=not HALT;
		end process;
end order;