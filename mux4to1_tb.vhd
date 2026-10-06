library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4to1_tb is
end mux4to1_tb;

architecture test of mux4to1_tb is

    component mux4to1
        port (
            I0 : in  std_logic;
            I1 : in  std_logic;
            I2 : in  std_logic;
            I3 : in  std_logic;
            S  : in  std_logic_vector(1 downto 0);
            Y  : out std_logic
        );
    end component;

    signal I0 : std_logic;
    signal I1 : std_logic;
    signal I2 : std_logic;
    signal I3 : std_logic;
    signal S  : std_logic_vector(1 downto 0);
    signal Y  : std_logic;

begin

    uut: mux4to1
        port map (
            I0 => I0,
            I1 => I1,
            I2 => I2,
            I3 => I3,
            S  => S,
            Y  => Y
        );

    process
    begin

        -- Data inputs
        I0 <= '0';
        I1 <= '1';
        I2 <= '0';
        I3 <= '1';

        -- Select I0
        S <= "00";
        wait for 1 ns;

        -- Select I1
        S <= "01";
        wait for 1 ns;

        -- Select I2
        S <= "10";
        wait for 1 ns;

        -- Select I3
        S <= "11";
        wait for 1 ns;


        -- Change data inputs
        I0 <= '1';
        I1 <= '0';
        I2 <= '1';
        I3 <= '0';

        S <= "00";
        wait for 1 ns;

        S <= "01";
        wait for 1 ns;

        S <= "10";
        wait for 1 ns;

        S <= "11";
        wait for 1 ns;

        assert false report "MUX 4:1 Test Finished";
        wait;

    end process;

end test;