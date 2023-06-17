--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--------------------------------------------------------------------------------
ENTITY TB_encoder_8to3 IS
END TB_encoder_8to3;
--------------------------------------------------------------------------------
ARCHITECTURE behavior OF TB_encoder_8to3 IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT encoder_8to3
    PORT(
         input : IN  std_logic_vector(7 downto 0);
         output : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal input : std_logic_vector(7 downto 0) := (others => '0');
 	--Outputs
   signal output : std_logic_vector(2 downto 0);
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: encoder_8to3 PORT MAP (
          input => input,
          output => output
        );

   -- Stimulus process
   stim_proc0: process
   begin		
      wait for 1 ns;
		input(0) <= not input(0);
   end process;
	
   stim_proc1: process
   begin		
      wait for 2 ns;
		input(1) <= not input(1);
   end process;
	
	stim_proc2: process
   begin		
      wait for 4 ns;
		input(2) <= not input(2);
   end process;
	
	stim_proc3: process
   begin		
      wait for 8 ns;
		input(3) <= not input(3);
   end process;
	
	stim_proc4: process
   begin		
      wait for 16 ns;
		input(4) <= not input(4);
   end process;
	
	stim_proc5: process
   begin		
      wait for 32 ns;
		input(5) <= not input(5);
   end process;
	
   stim_proc6: process
   begin		
      wait for 64 ns;
		input(6) <= not input(6);
   end process;
	
   stim_proc7: process
   begin		
      wait for 128 ns;
		input(7) <= not input(7);
   end process;

END;