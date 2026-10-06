library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator_2bit is
    port (
        A : in std_logic_vector(1 downto 0);
        B : in std_logic_vector(1 downto 0);
        GT : out std_logic;
        LT : out std_logic;
        EQ : out std_logic
    );
end comparator_2bit;

architecture behavioral of comparator_2bit is 
    begin
        -- A > B
        GT <= (A(1) and not B(1)) or 
            ((A(1) xnor B(1)) and A(0) and not B(0));
        -- A < B
        LT <= (not A(1) and B(1)) or
            ((A(1) xnor B(1)) and not A(0) and B(0));

        -- A = B
        EQ <= (A(1) xnor B(1)) and
            (A(0) xnor B(0));
    end behavioral;

