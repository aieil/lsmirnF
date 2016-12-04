process(clk) is
    variable i : integer := 0;
begin
    if rising_edge(clk) and i < {}'length then
        stdout <= {}(i);
        i := i+1;
    end if;
end process;
