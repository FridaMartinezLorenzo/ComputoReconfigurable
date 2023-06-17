----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity EX2 is
    Port ( a : in  STD_LOGIC_VECTOR (2 downto 0);
           f : out  STD_LOGIC_VECTOR (2 downto 0));
end EX2;
----------------------------------------------------------------------------------
architecture When_else of EX2 is
begin

f <= "000" when A="000" else
	  "001" when A="001" else
	  "011" when A="010" else
	  "010" when A="011" else
	  "110" when A="100" else
	  "111" when A="101" else
	  "101" when A="110" else
	  "100";

end When_else;