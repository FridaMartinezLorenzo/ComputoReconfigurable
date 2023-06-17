--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--------------------------------------------------------------------------------
ENTITY TB_ex1 IS
END TB_ex1;

ARCHITECTURE behavior OF TB_ex1 IS 

    COMPONENT EX_1
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         z : IN  std_logic;
         f1 : OUT  std_logic;
         f2 : OUT  std_logic
        );
    END COMPONENT;
    
   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal z : std_logic := '0';

 	--Outputs
   signal f1 : std_logic;
   signal f2 : std_logic;
 
BEGIN
   uut: EX_1 PORT MAP (
          x => x,
          y => y,
          z => z,
          f1 => f1,
          f2 => f2
        );
		  
   -- Stimulus process
   stim_proc2: process
   begin		
      wait for 400 ns;
		x <= not x;
   end process;
	
	stim_proc1: process
   begin		
      wait for 200 ns;
		y <= not y;
   end process;
	
	stim_proc0: process
   begin		
      wait for 100 ns;
		z <= not z;
   end process;
END;