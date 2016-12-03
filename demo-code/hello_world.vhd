library ieee;
use ieee.std_logic_1164.all;

entity hello_world is
    port(
        clock, stdout   :   out std_logic;
        stdin           :   in std_logic    );
end hello_world;

architecture beh of hello_world is
    constant LIT0   :   std_logic_vector (0 to 103) := "01001000011001010110110001101100011011110010000001010111011011110111001001101100011001000010000100001010";
    signal clk      :   std_logic := '0';
begin
    -- clock pin!
    clk <= not clk after 1 ns;
    clock <= clk;

    process(clk) is
        variable i : integer := 0;
    begin
        if rising_edge(clk) and i < LIT0'length then
            stdout <= LIT0(i);
            i := i + 1;
        end if;
    end process;
end beh;
