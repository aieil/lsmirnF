function printf (
    s   :   std_logic_vector(0 to 1023);
    v   :   std_logic_vector(0 to 31))
    return std_logic is
        variable esc    :   std_logic   := '0';
        variable i      :   integer     := 0;
begin
    prl: loop
        exit prl when i > s'length or s(i to i+7) = "00000000";
        
        if s(i to i+7) = "01011100" then
            i = i + 8;
            exit prl when s(i to i+7) = "00110000";

            if (s(i to i+7) = "01101110") then
                printf("0001010" & (others => '0'), (others => '0'));
            end if;
        elsif s(i to i+7) = "00100101" then
            
