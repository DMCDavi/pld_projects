library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_module is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR(2 downto 0));
end counter_module;

architecture Behavioral of counter_module is
    signal tmp_count : STD_LOGIC_VECTOR(2 downto 0) := "000";
begin
    process(clk, rst)
    begin
        if rst = '1' then
            tmp_count <= "000";
        elsif rising_edge(clk) then
            if tmp_count = "101" then -- quando alcançar 5, reinicie
                tmp_count <= "000";
            else
                tmp_count <= tmp_count + 1;
            end if;
        end if;
    end process;
    
    count <= tmp_count;

end Behavioral;