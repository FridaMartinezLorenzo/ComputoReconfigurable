----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
----------------------------------------------------------------------------------
entity encoder_8to3 is
    port (
        input : in std_logic_vector(7 downto 0);
        output : out std_logic_vector(2 downto 0)
    );
end entity;
----------------------------------------------------------------------------------
architecture behavioral of encoder_8to3 is
begin
    process (input)
    begin
        case input is
            when "00000001" => output <= "000";
            when "00000010" => output <= "001";
            when "00000100" => output <= "010";
            when "00001000" => output <= "011";
            when "00010000" => output <= "100";
            when "00100000" => output <= "101";
            when "01000000" => output <= "110";
            when "10000000" => output <= "111";
            when others => output <= "000"; -- Valor predeterminado 
        end case;
    end process;
end architecture;