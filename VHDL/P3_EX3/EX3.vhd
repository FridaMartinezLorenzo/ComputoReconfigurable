----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity EX3 is
    Port ( w,x,y,z : in  STD_LOGIC;
           f : out  STD_LOGIC);
end EX3;
----------------------------------------------------------------------------------
architecture Intermediate_Signals of EX3 is

SIGNAL G1: STD_LOGIC;
SIGNAL G2: STD_LOGIC;
SIGNAL G3: STD_LOGIC;

begin

G1 <= ((not w) or x) and y;
G2 <= (not w) or (x) or (not y);
G3 <= w or z;

f <= G1 and G2 and G3;

end Intermediate_Signals;