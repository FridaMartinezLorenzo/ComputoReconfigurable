----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity EX_1 is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           z : in  STD_LOGIC;
           f1 : out  STD_LOGIC;
           f2 : out  STD_LOGIC);
end EX_1;
----------------------------------------------------------------------------------
architecture Funciones_Boleanas of EX_1 is
begin
    -- F1 = ~xy~z + ~yz + xz
    F1 <= (not x and y and not z) or (not y and z) or (x and z);

    -- F2 = (x+~y+~z)(~x+z)(y+z)
    F2 <= (x or not y or not z) and (not x or z) and (y or z);

end Funciones_Boleanas;