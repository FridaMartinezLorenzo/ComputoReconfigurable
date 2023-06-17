----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity FFJK is
    Port ( J,K,CLK : in  STD_LOGIC;
           Q,NQ : inout  STD_LOGIC);
end FFJK;
----------------------------------------------------------------------------------
architecture Behavioral of FFJK is
 signal tempQ : std_logic := '0';
begin
    FFD1: process (CLK)
    begin
        if rising_edge(CLK) then 
            tempQ <= (J AND (NOT tempQ)) OR (Q AND (NOT K));
        end if;
    end process FFD1;

    Q <= tempQ;
    NQ <= NOT tempQ;
end Behavioral;