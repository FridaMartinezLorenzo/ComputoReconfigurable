----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
----------------------------------------------------------------------------------
entity Encoder is
  port (
    Input: in std_logic_vector(3 downto 0);
    Output: out std_logic_vector(1 downto 0)
  );
end Encoder;
----------------------------------------------------------------------------------
architecture Behavioral of Encoder is
begin
  process(Input)
  begin
    case Input is
      when "0000" =>
        Output <= "00";
      when "0001" =>
        Output <= "01";
      when "0010" =>
        Output <= "01";
      when "0011" =>
        Output <= "10";
      when "0100" =>
        Output <= "01";
      when "0101" =>
        Output <= "10";
      when "0110" =>
        Output <= "10";
      when "0111" =>
        Output <= "11";
      when others =>
        Output <= "11";
    end case;
  end process;
end Behavioral;