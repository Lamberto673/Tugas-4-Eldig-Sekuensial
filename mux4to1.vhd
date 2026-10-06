library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4to1 is
    port (
        I0 : in  std_logic;
        I1 : in  std_logic;
        I2 : in  std_logic;
        I3 : in  std_logic;
        S  : in  std_logic_vector(1 downto 0);
        Y  : out std_logic
    );
end mux4to1;

architecture behavioral of mux4to1 is
begin

    process(I0, I1, I2, I3, S)
    begin
        case S is
            when "00" =>
                Y <= I0;

            when "01" =>
                Y <= I1;

            when "10" =>
                Y <= I2;

            when "11" =>
                Y <= I3;

            when others =>
                Y <= 'X';
        end case;
    end process;

end behavioral;