--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--------------------------------------------------------------------------------
ENTITY TB_ex6 IS
END TB_ex6;
 
ARCHITECTURE behavior OF TB_ex6 IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT EX6
    PORT(
         A : IN  std_logic_vector(2 downto 0);
         F : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal A : std_logic_vector(2 downto 0) := (others => '0');
 	--Outputs
   signal F : std_logic_vector(1 downto 0);
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: EX6 PORT MAP (
          A => A,
          F => F
        );

   -- Stimulus process
	stim_proc0: process
   begin		
		wait for 100 ns;	
		a(0) <= not a(0);
	end process;
	
	stim_proc1: process
   begin		
		wait for 200 ns;	
		a(1) <= not a(1);
	end process;
	
	stim_proc2: process
   begin		
		wait for 400 ns;	
		a(2) <= not a(2);
	end process;

END;
