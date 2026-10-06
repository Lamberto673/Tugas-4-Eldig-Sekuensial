library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2to1 is
    port (
        I0 : in  std_logic;
        I1 : in  std_logic;
        S  : in  std_logic;
        Y  : out std_logic
    );
end mux2to1;

architecture behavioral of mux2to1 is
begin

    process(I0, I1, S)
    begin

        if S = '0' then
            Y <= I0;
        else
            Y <= I1;
        end if;

    end process;

end behavioral;