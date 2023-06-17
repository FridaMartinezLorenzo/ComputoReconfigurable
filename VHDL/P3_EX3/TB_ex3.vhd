--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--------------------------------------------------------------------------------
ENTITY TB_ex3 IS
END TB_ex3;

ARCHITECTURE behavior OF TB_ex3 IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT EX3
    PORT(
         w : IN  std_logic;
         x : IN  std_logic;
         y : IN  std_logic;
         z : IN  std_logic;
         f : OUT  std_logic
        );
    END COMPONENT;
   --Inputs
   signal w : std_logic := '0';
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal z : std_logic := '0';
 	--Outputs
   signal f : std_logic;
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: EX3 PORT MAP (
          w => w,
          x => x,
          y => y,
          z => z,
          f => f
        );
		  
   -- Stimulus process
   stim_proc0: process
   begin		
      wait for 100 ns;
			z <= not z;
   end process;
	
	 stim_proc1: process
   begin		
      wait for 200 ns;
			y <= not y;
   end process;
	
	 stim_proc2: process
   begin		
      wait for 400 ns;
			x <= not x;
   end process;
	
	 stim_proc3: process
   begin		
      wait for 800 ns;
			w <= not w;
   end process;
END;