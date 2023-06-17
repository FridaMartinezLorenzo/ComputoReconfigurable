--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--------------------------------------------------------------------------------
ENTITY TB_ex7 IS
END TB_ex7;
 
ARCHITECTURE behavior OF TB_ex7 IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT EX7
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         F : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
 	--Outputs
   signal F : std_logic_vector(1 downto 0);

BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: EX7 PORT MAP (
          A => A,
          F => F
        );

   -- Stimulus process
   stim_proc0: process
   begin		
      wait for 100 ns;	
			A(0) <= not A(0);
   end process;
	
	   stim_proc1: process
   begin		
      wait for 200 ns;	
			A(1) <= not A(1);
   end process;
	
	   stim_proc2: process
   begin		
      wait for 400 ns;	
			A(2) <= not A(2);
   end process;
	
	   stim_proc3: process
   begin		
      wait for 800 ns;	
			A(3) <= not A(3);
   end process;
END;