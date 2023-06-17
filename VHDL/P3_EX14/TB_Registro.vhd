--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--------------------------------------------------------------------------------
ENTITY TB_Registro IS
END TB_Registro;
 
ARCHITECTURE behavior OF TB_Registro IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT RegistroDesplazamiento
    PORT(
         D : IN  std_logic_vector(3 downto 0);
         clock : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal D : std_logic_vector(3 downto 0) := (others => '0');
   signal clock : std_logic := '0';
 	--Outputs
   signal Q : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegistroDesplazamiento PORT MAP (
          D => D,
          clock => clock,
          Q => Q
        );

   -- Stimulus process
   stim_proc0: process
   begin		
      wait for 10 ns;
		D(0) <= not D(0);		
   end process;

   stim_proc1: process
   begin		
      wait for 20 ns;
		D(1) <= not D(1);		
   end process;

   stim_proc2: process
   begin		
      wait for 40 ns;
		D(2) <= not D(2);		
   end process;

   stim_proc3: process
   begin		
      wait for 80 ns;
		D(3) <= not D(3);		
   end process;

   stim_proc4: process
   begin		
      wait for 10 ns;
		clock <= not clock;		
   end process;
END;