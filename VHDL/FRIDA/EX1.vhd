----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity EX1 is
    Port ( A,B,C : in  STD_LOGIC;
           Y0,Y1,Y2,Y3 : out  STD_LOGIC);
end EX1;
----------------------------------------------------------------------------------
architecture Behavioral of EX1 is
begin

Y0 <= (A AND B) OR C;
Y1 <= (NOT A) OR (NOT C);
Y2 <= A AND (NOT B);
Y3 <= ((NOT A)AND C) OR (NOT B);
end Behavioral;

