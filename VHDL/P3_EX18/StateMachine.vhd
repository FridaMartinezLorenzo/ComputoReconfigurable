----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity StateMachine is
    Port ( CLK,RESET,X : in  STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end StateMachine;
----------------------------------------------------------------------------------
architecture Behavioral of StateMachine is
    type StateType is (A, B, C, D, E, F, G, H);
    signal CurrentState, NextState : StateType;
begin
    process (CLK, RESET)
    begin
        if (RESET = '1') then
            CurrentState <= A;
        elsif (rising_edge(CLK)) then
            CurrentState <= NextState;
        end if;
    end process;

    process (CurrentState, X)
    begin
        case CurrentState is
            when A =>
                if (X = '1') then
                    NextState <= B;
                else
                    NextState <= H;
                end if;
            when B =>
                if (X = '1') then
                    NextState <= C;
                else
                    NextState <= A;
                end if;
            when C =>
                if (X = '1') then
                    NextState <= D;
                else
                    NextState <= B;
                end if;
            when D =>
                if (X = '1') then
                    NextState <= E;
                else
                    NextState <= C;
                end if;
            when E =>
                if (X = '1') then
                    NextState <= F;
                else
                    NextState <= D;
                end if;
            when F =>
                if (X = '1') then
                    NextState <= G;
                else
                    NextState <= E;
                end if;
            when G =>
                if (X = '1') then
                    NextState <= H;
                else
                    NextState <= F;
                end if;
            when H =>
                if (X = '1') then
                    NextState <= A;
                else
                    NextState <= G;
                end if;
            when others =>
                NextState <= A;
        end case;
    end process;

    process (CurrentState)
    begin
        case CurrentState is
            when A =>
                Q <= "000";
            when B =>
                Q <= "001";
            when C =>
                Q <= "010";
            when D =>
                Q <= "011";
            when E =>
                Q <= "100";
            when F =>
                Q <= "101";
            when G =>
                Q <= "110";
            when H =>
                Q <= "111";
            when others =>
                Q <= "000";
        end case;
    end process;
end Behavioral;