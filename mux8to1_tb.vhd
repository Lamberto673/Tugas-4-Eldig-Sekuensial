library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8to1_tb is
end mux8to1_tb;

architecture test of mux8to1_tb is

    component mux8to1
        port (
            I0 : in  std_logic;
            I1 : in  std_logic;
            I2 : in  std_logic;
            I3 : in  std_logic;
            I4 : in  std_logic;
            I5 : in  std_logic;
            I6 : in  std_logic;
            I7 : in  std_logic;
            S  : in  std_logic_vector(2 downto 0);
            Y  : out std_logic
        );
    end component;

    signal I0 : std_logic;
    signal I1 : std_logic;
    signal I2 : std_logic;
    signal I3 : std_logic;
    signal I4 : std_logic;
    signal I5 : std_logic;
    signal I6 : std_logic;
    signal I7 : std_logic;

    signal S : std_logic_vector(2 downto 0);
    signal Y : std_logic;

begin

    uut: mux8to1
        port map (
            I0 => I0,
            I1 => I1,
            I2 => I2,
            I3 => I3,
            I4 => I4,
            I5 => I5,
            I6 => I6,
            I7 => I7,
            S  => S,
            Y  => Y
        );

    process
    begin

        -- Input data
        I0 <= '0';
        I1 <= '1';
        I2 <= '0';
        I3 <= '1';
        I4 <= '0';
        I5 <= '1';
        I6 <= '0';
        I7 <= '1';

        -- Select I0
        S <= "000";
        wait for 1 ns;

        -- Select I1
        S <= "001";
        wait for 1 ns;

        -- Select I2
        S <= "010";
        wait for 1 ns;

        -- Select I3
        S <= "011";
        wait for 1 ns;

        -- Select I4
        S <= "100";
        wait for 1 ns;

        -- Select I5
        S <= "101";
        wait for 1 ns;

        -- Select I6
        S <= "110";
        wait for 1 ns;

        -- Select I7
        S <= "111";
        wait for 1 ns;

        assert false report "MUX 8:1 Test Finished";
        wait;

    end process;

end test;