library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8to1 is
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
end mux8to1;

architecture structural of mux8to1 is

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

    component mux2to1
        port (
            I0 : in  std_logic;
            I1 : in  std_logic;
            S  : in  std_logic;
            Y  : out std_logic
        );
    end component;

    signal Y0 : std_logic;
    signal Y1 : std_logic;

begin

    -- MUX 4:1 pertama
    MUX_A : mux4to1
        port map (
            I0 => I0,
            I1 => I1,
            I2 => I2,
            I3 => I3,
            S  => S(1 downto 0),
            Y  => Y0
        );

    -- MUX 4:1 kedua
    MUX_B : mux4to1
        port map (
            I0 => I4,
            I1 => I5,
            I2 => I6,
            I3 => I7,
            S  => S(1 downto 0),
            Y  => Y1
        );

    -- MUX 2:1 terakhir
    MUX_C : mux2to1
        port map (
            I0 => Y0,
            I1 => Y1,
            S  => S(2),
            Y  => Y
        );

end structural;