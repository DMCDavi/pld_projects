library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pwm is
    Port ( clk     : in  STD_LOGIC;
           rst     : in  STD_LOGIC;
           x      : in  STD_LOGIC_VECTOR;
           p     : out STD_LOGIC);
end pwm;

architecture behavioral of pwm is
	type STATE_TYPE is (s0,s1,s2,s3,s4,s5,s6);
	signal state: STATE_TYPE;
begin

process(clk, rst)
begin
    if rising_edge(clk) then
        case state is
			when s0=>	if x > 0
							state <= s1;
							p <= '1';
						else
							state <= s1;
							p <= '0';
			when s1=>	if x > 1
							state <= s2;
						else
							state <= s2;
							p <= '0';
			when s2=>	if x > 2
							state <= s3;
							p <= '1';
						else
							state <= s3;
							p <= '0';
			when s3=>	if x > 3
							state <= s4;
							p <= '1';
						else
							state <= s4;
							p <= '0';
		  when s4=>		if x > 4
							state <= s5;
							p <= '1';
						else
							state <= s5;
							p <= '0';
		  when s5=>		if x > 5
							state <= s6;
							p <= '1';
						else
							state <= s6;
							p <= '0';
		  when s6=>		if x > 6
							state <= s0;
							p <= '1';
						else
							state <= s0;
							p <= '0';
		  
		  
		  end case;
    end if;
end process;

end behavioral;
