library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pwm is
    Port ( clk     : in  STD_LOGIC;
           rst     : in  STD_LOGIC;
           x       : in  STD_LOGIC_VECTOR(2 downto 0);
           y       : out STD_LOGIC);
end pwm;

architecture behavioral of pwm is
signal counter: STD_LOGIC_VECTOR(2 downto 0) := "000";
begin

process(clk, rst)
begin
    if rst = '1' then
        counter <= "000";
    elsif rising_edge(clk) then
        if counter = "110" then
            counter <= "000";
        else
            counter <= counter + 1;
        end if;
    end if;
end process;

process(counter, x)
begin
    if counter < x then
        y <= '1';
    else
        y <= '0';
    end if;
end process;

end behavioral;
