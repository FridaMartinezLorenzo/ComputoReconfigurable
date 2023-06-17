--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--------------------------------------------------------------------------------
ENTITY TB_ex2 IS
END TB_ex2;
 
ARCHITECTURE behavior OF TB_ex2 IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT EX2
    PORT(
         a : IN  std_logic_vector(2 downto 0);
         f : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal a : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal f : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: EX2 PORT MAP (
          a => a,
          f => f
        );

   -- Stimulus process
   stim_proc2: process
   begin		
      wait for 400 ns;	
		a(2) <= not a(2);
   end process;
	
	stim_proc1: process
   begin		
      wait for 200 ns;	
		a(1) <= not a(1);
   end process;
	
	stim_proc0: process
   begin		
      wait for 100 ns;	
		a(0) <= not a(0);
   end process;
END;