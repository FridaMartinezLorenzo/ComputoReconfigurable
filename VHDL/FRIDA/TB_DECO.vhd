--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--------------------------------------------------------------------------------
ENTITY TB_DECO IS
END TB_DECO;
 
ARCHITECTURE behavior OF TB_DECO IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT DECO_2_4
    PORT(
         D : IN  std_logic_vector(1 downto 0);
         S : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(1 downto 0) := (others => '0');
 	--Outputs
   signal S : std_logic_vector(3 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DECO_2_4 PORT MAP (
          D => D,
          S => S
        );

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
		 D(0) <= NOT D(0);
   end process;

  stim_proc1: process
   begin		
      wait for 200 ns;	
		 D(1) <= NOT D(1);
   end process;
END;
