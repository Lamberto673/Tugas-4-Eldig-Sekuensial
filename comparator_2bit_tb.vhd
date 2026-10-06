library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator_2bit_tb is
end comparator_2bit_tb;

architecture test of comparator_2bit_tb is

    component comparator_2bit
        port (
            A  : in  std_logic_vector(1 downto 0);
            B  : in  std_logic_vector(1 downto 0);
            GT : out std_logic;
            LT : out std_logic;
            EQ : out std_logic
        );
    end component;

    signal A  : std_logic_vector(1 downto 0);
    signal B  : std_logic_vector(1 downto 0);
    signal GT : std_logic;
    signal LT : std_logic;
    signal EQ : std_logic;

begin

    uut: comparator_2bit
        port map (
            A  => A,
            B  => B,
            GT => GT,
            LT => LT,
            EQ => EQ
        );

    process
    begin

        -- A = 00, B = 00
        A <= "00";
        B <= "00";
        wait for 1 ns;

        -- A = 00, B = 01
        A <= "00";
        B <= "01";
        wait for 1 ns;

        -- A = 00, B = 10
        A <= "00";
        B <= "10";
        wait for 1 ns;

        -- A = 00, B = 11
        A <= "00";
        B <= "11";
        wait for 1 ns;


        -- A = 01
        A <= "01";
        B <= "00";
        wait for 1 ns;

        A <= "01";
        B <= "01";
        wait for 1 ns;

        A <= "01";
        B <= "10";
        wait for 1 ns;

        A <= "01";
        B <= "11";
        wait for 1 ns;


        -- A = 10
        A <= "10";
        B <= "00";
        wait for 1 ns;

        A <= "10";
        B <= "01";
        wait for 1 ns;

        A <= "10";
        B <= "10";
        wait for 1 ns;

        A <= "10";
        B <= "11";
        wait for 1 ns;


        -- A = 11
        A <= "11";
        B <= "00";
        wait for 1 ns;

        A <= "11";
        B <= "01";
        wait for 1 ns;

        A <= "11";
        B <= "10";
        wait for 1 ns;

        A <= "11";
        B <= "11";
        wait for 1 ns;

        assert false report "Comparator Test Finished";
        wait;

    end process;

end test;