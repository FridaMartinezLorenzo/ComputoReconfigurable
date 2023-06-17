----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity Retador_Completo is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           F : out  STD_LOGIC_VECTOR (1 downto 0));
end Retador_Completo;
----------------------------------------------------------------------------------
architecture Behavioral of Retador_Completo is
begin
	With A select
		F <= "00" when "000",
			  "11" when "001",
			  "11" when "010",
			  "01" when "011",
			  "10" when "100",
			  "00" when "101",
			  "00" when "110",
			  "11" when others;
end Behavioral;