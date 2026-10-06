library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2to1_tb is
end mux2to1_tb;

architecture sim of mux2to1_tb is

    signal i0 : std_logic := '0';
    signal i1 : std_logic := '1';
    signal s  : std_logic := '0';
    signal y  : std_logic;

begin

    uut : entity work.mux2to1
        port map (
            I0 => i0,
            I1 => i1,
            S  => s,
            Y  => y
        );

    process
    begin
        -- S = 0 -> Y should be I0
        s <= '0';
        wait for 1 ns;

        -- S = 1 -> Y should be I1
        s <= '1';
        wait for 1 ns;

        -- Change inputs
        i0 <= '1';
        i1 <= '0';

        -- S = 0 -> Y should be I0 = 1
        s <= '0';
        wait for 1 ns;

        -- S = 1 -> Y should be I1 = 0
        s <= '1';
        wait for 1 ns;

        wait;
    end process;

end sim;