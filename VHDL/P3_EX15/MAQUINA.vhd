----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity MAQUINA is
    Port ( X,CLK : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end MAQUINA;
----------------------------------------------------------------------------------
architecture Behavioral of MAQUINA is
signal D, Q, NQ : std_logic;
begin
  -- Compuerta AND para generar la señal D
  D <= NQ and X;

  -- Proceso de sensibilidad al flanco de subida del reloj
  process (CLK)
  begin
    if rising_edge(CLK) then
      -- Flip-flop D
      Q  <= D;
      NQ <= not D;
    end if;
  end process;
  -- Compuerta AND para generar la señal de salida Z
  Z <= Q and X;
end architecture behavioral;