----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity MAQUINAESTADOS is
    Port ( CLK,RESET,U : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (1 downto 0));
end MAQUINAESTADOS;
----------------------------------------------------------------------------------
architecture Behavioral of MAQUINAESTADOS is
type estado is (a, b, c, d);
	signal es, ep: estado;
begin

secu: process (RESET, CLK)
begin
	if(RESET='1') then ep <= a;
	elsif(CLK'event and CLK='1') then
	ep <= es;
	end if;
end process secu;

combina: process (es, ep)	
begin
	case ep is
		when  a=> Q <="00";
			if u='1' then 
				es <= b;
			else
				es <= a;
		end if;
	
		when  b=> Q <="01";
			if u='1' then 
				es <= c;
			else
				es <= b;
		end if;
	
		when  c=> Q <="10";
			if u='1' then
				es <= d;
			else
				es <= c;
		end if;
	
		when  d=> Q <="11";
			if u='1' then 
				es <= a;
			else
				es <= d;
			end if;
	end case;
end process combina;
end Behavioral;
