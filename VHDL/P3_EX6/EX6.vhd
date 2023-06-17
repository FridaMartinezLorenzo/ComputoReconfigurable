----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity EX6 is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           F : out  STD_LOGIC_VECTOR (1 downto 0));
end EX6;
----------------------------------------------------------------------------------
architecture Cases of EX6 is
begin

process(A) is
	begin
	case(A) is
		when "000" => F <= "01";
		when "001" => F <= "10";
		when "010" => F <= "11";
		when "011" => F <= "10";
		when "100" => F <= "00";
		when "101" => F <= "11";
		when "110" => F <= "10";
		when others => F <= "11";
	end case;
end process;

end Cases;