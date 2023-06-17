----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
----------------------------------------------------------------------------------
entity RegistroDesplazamiento is
    port (
        D : in std_logic_vector(3 downto 0);
        clock : in std_logic;
        Q : out std_logic_vector(3 downto 0)
    );
end entity RegistroDesplazamiento;
----------------------------------------------------------------------------------
architecture behavioral of RegistroDesplazamiento is
    signal flipFlopD : std_logic_vector(3 downto 0);
begin
    process(clock)
    begin
        if rising_edge(clock) then
            flipFlopD <= D;
        end if;
    end process;

    Q <= flipFlopD;
end architecture behavioral;