----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity StateMachine is
    Port ( CLK,X,RESET   : in  STD_LOGIC;
           Q     : out STD_LOGIC_VECTOR (1 downto 0));
end StateMachine;
----------------------------------------------------------------------------------
architecture Behavioral of StateMachine is
    type StateType is (A, B, C, D);
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
                    NextState <= A;
                end if;
            when B =>
                if (X = '1') then
                    NextState <= C;
                else
                    NextState <= B;
                end if;
            when C =>
                if (X = '1') then
                    NextState <= D;
                else
                    NextState <= C;
                end if;
            when D =>
                if (X = '1') then
                    NextState <= A;
                else
                    NextState <= D;
                end if;
            when others =>
                NextState <= A;
        end case;
    end process;

    process (CurrentState)
    begin
        case CurrentState is
            when A =>
                Q <= "00";
            when B =>
                Q <= "01";
            when C =>
                Q <= "10";
            when D =>
                Q <= "11";
            when others =>
                Q <= "00";
        end case;
    end process;
end Behavioral;