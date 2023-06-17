----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity EX7 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           F : out  STD_LOGIC_VECTOR (1 downto 0));
end EX7;
----------------------------------------------------------------------------------
architecture Codificador of EX7 is
begin
	with A select
      F <= "00" when "0001",
           "01" when "0010",
           "10" when "0100",
           "11" when others;
end Codificador;