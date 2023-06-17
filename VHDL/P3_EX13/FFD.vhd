----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity FFD is
    Port ( CLK, RESET : in  STD_LOGIC;
           Q : inout  STD_LOGIC);
end FFD;
----------------------------------------------------------------------------------
architecture Behavioral of FFD is
begin
    -- Proceso para cambiar el valor de Q en el flanco ascendente del reloj
    process (CLK, RESET)
    begin
        if RESET = '0' then
            -- Reseteo del flip-flop
            Q <= '0';
        elsif rising_edge(CLK) then
            -- Actualización de Q en el flanco ascendente del reloj
            Q <= not Q;
        end if;
    end process;
end architecture behavioral;