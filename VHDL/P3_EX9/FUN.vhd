----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity FUN is
    Port ( A : in  STD_LOGIC_VECTOR (3 DOWNTO 0);
           F : out  STD_LOGIC);
end FUN;
----------------------------------------------------------------------------------
architecture Behavioral of FUN is
begin
    process (A)
    begin
        case (A) is
            when "0000" =>
                F <= '1';
            when "0001" =>
                F <= '0';
            when "0010" =>
                F <= '1';
            when "0011" =>
                F <= '1';
            when "0100" =>
                F <= '0';
            when "0101" =>
                F <= '0';
            when "0110" =>
                F <= '1';
            when "0111" =>
                F <= '0';
            when "1000" =>
                F <= '1';
            when "1001" =>
                F <= '0';
            when "1010" =>
                F <= '1';
            when "1011" =>
                F <= '0';
            when "1100" =>
                F <= '0';
            when "1101" =>
                F <= '0';
            when "1110" =>
                F <= '0';
            when "1111" =>
                F <= '0';
            when others =>
                F <= '0'; -- Default case
        end case;
    end process;
end Behavioral;