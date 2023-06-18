----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity DECO_2_4 is
    Port ( D : in  STD_LOGIC_VECTOR (1 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0));
end DECO_2_4;
----------------------------------------------------------------------------------
architecture Behavioral of DECO_2_4 is
begin

WITH D SELECT
S <= "0001" WHEN "00",
		"0010" WHEN "01",
		"0100" WHEN "10",
		"1000" WHEN OTHERS;

end Behavioral;

