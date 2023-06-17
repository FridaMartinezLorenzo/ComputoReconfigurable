----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity Restador is
    Port ( A,B,Cin : in  STD_LOGIC;
           Sum,Cout : out  STD_LOGIC);
end Restador;
----------------------------------------------------------------------------------
architecture Behavioral of Restador is
begin

Sum <= A xor B xor Cin;
Cout <= (not A and B and Cin) or (A and not B and Cin) or (A and B and not Cin);
  
end Behavioral;