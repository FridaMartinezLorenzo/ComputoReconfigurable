--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--------------------------------------------------------------------------------
ENTITY TB_FUN IS
END TB_FUN;
--------------------------------------------------------------------------------
ARCHITECTURE behavior OF TB_FUN IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT FUN
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         F : OUT  std_logic
        );
    END COMPONENT;
	 
   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
 	--Outputs
   signal F : std_logic;
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FUN PORT MAP (
          A => A,
          F => F
        );

   -- Stimulus process
   stim_proc0: process
   begin		
      wait for 10 ns;
			A(0) <= not A(0);
   end process;
	
   stim_proc1: process
   begin		
      wait for 20 ns;
			A(1) <= not A(1);
   end process;
	
	stim_proc2: process
   begin		
      wait for 40 ns;
			A(2) <= not A(2);
   end process;
	
	stim_proc3: process
   begin		
      wait for 80 ns;
			A(3) <= not A(3);
   end process;
END;