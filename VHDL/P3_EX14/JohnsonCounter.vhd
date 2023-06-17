----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity JohnsonCounter is
Port ( CLK : in  STD_LOGIC;  
       Q   : out STD_LOGIC_VECTOR (3 downto 0)); -- Salida del contador
end JohnsonCounter;
----------------------------------------------------------------------------------
architecture Behavioral of JohnsonCounter is
	signal internal_counter : integer range 0 to 7 := 0;  -- Contador interno (CI)
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            case internal_counter is
                when 0 => Q <= "0001";  -- Salida del contador en el estado 0
                when 1 => Q <= "0010";  -- Salida del contador en el estado 1
                when 2 => Q <= "0100";  -- Salida del contador en el estado 2
                when 3 => Q <= "1000";  -- Salida del contador en el estado 3
                when 4 => Q <= "1100";  -- Salida del contador en el estado 4
                when 5 => Q <= "0110";  -- Salida del contador en el estado 5
                when 6 => Q <= "0011";  -- Salida del contador en el estado 6
                when 7 => Q <= "0001";  -- Salida del contador en el estado 7
            end case;
				-- Incrementar el contador interno
            internal_counter <= internal_counter + 1;  
            if internal_counter > 7 then
                internal_counter <= 0;  -- Reiniciar CI cuando alcanza el 7
            end if;
        end if;
    end process;
end Behavioral;