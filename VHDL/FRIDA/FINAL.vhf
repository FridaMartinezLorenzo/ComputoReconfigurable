--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : FINAL.vhf
-- /___/   /\     Timestamp : 05/04/2023 01:16:04
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/ise/Documents/ISE/FRIDA/FINAL.vhf -w /home/ise/Documents/ISE/FRIDA/FINAL.sch
--Design Name: FINAL
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FINAL is
   port ( EA     : in    std_logic; 
          EB     : in    std_logic; 
          EC     : in    std_logic; 
          S      : in    std_logic_vector (1 downto 0); 
          SA     : out   std_logic_vector (3 downto 0); 
          SALIDA : out   std_logic);
end FINAL;

architecture BEHAVIORAL of FINAL is
   attribute BOX_TYPE   : string ;
   signal XLXN_9   : std_logic;
   signal XLXN_10  : std_logic;
   signal XLXN_11  : std_logic;
   signal XLXN_12  : std_logic;
   signal XLXN_13  : std_logic;
   signal XLXN_15  : std_logic;
   signal XLXN_17  : std_logic;
   signal XLXN_18  : std_logic;
   signal SA_DUMMY : std_logic_vector (3 downto 0);
   component DECO_2_4
      port ( D : in    std_logic_vector (1 downto 0); 
             S : out   std_logic_vector (3 downto 0));
   end component;
   
   component EX1
      port ( A  : in    std_logic; 
             B  : in    std_logic; 
             C  : in    std_logic; 
             Y0 : out   std_logic; 
             Y1 : out   std_logic; 
             Y2 : out   std_logic; 
             Y3 : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
begin
   SA(3 downto 0) <= SA_DUMMY(3 downto 0);
   XLXI_1 : DECO_2_4
      port map (D(1 downto 0)=>S(1 downto 0),
                S(3 downto 0)=>SA_DUMMY(3 downto 0));
   
   XLXI_2 : EX1
      port map (A=>EA,
                B=>EB,
                C=>EC,
                Y0=>XLXN_13,
                Y1=>XLXN_15,
                Y2=>XLXN_17,
                Y3=>XLXN_18);
   
   XLXI_3 : AND2
      port map (I0=>SA_DUMMY(0),
                I1=>XLXN_13,
                O=>XLXN_9);
   
   XLXI_4 : AND2
      port map (I0=>SA_DUMMY(1),
                I1=>XLXN_15,
                O=>XLXN_10);
   
   XLXI_5 : AND2
      port map (I0=>SA_DUMMY(2),
                I1=>XLXN_17,
                O=>XLXN_12);
   
   XLXI_6 : AND2
      port map (I0=>SA_DUMMY(3),
                I1=>XLXN_18,
                O=>XLXN_11);
   
   XLXI_7 : OR4
      port map (I0=>XLXN_11,
                I1=>XLXN_12,
                I2=>XLXN_10,
                I3=>XLXN_9,
                O=>SALIDA);
   
end BEHAVIORAL;


