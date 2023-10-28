library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Still including this for possible arithmetic operations

entity pwm is
    Port ( clk     : in  STD_LOGIC;
           rst     : in  STD_LOGIC;
           x       : in  STD_LOGIC_VECTOR(0 to 2); -- Assuming 3-bit wide signal for x
           p       : out STD_LOGIC);
end pwm;

architecture behavioral of pwm is
    type STATE_TYPE is (s0, s1, s2, s3, s4, s5, s6);
    signal state: STATE_TYPE := s0; -- Providing a default state
begin

	process(clk, rst)
	begin
		 if rst = '0' then -- Reset condition
			  p <= '0';
		 elsif rising_edge(clk) then
			  case state is
					when s0 =>
						 if x < "111" then -- Comparing with STD_LOGIC_VECTOR values
							  state <= s1;
							  p <= '0';
						 else
							  state <= s1;
							  p <= '1';
						 end if;
						 
					when s1 =>
						 if x < "110" then
							  state <= s2;
							  p <= '0';
						 else
							  state <= s2;
							  p <= '1';
						 end if;

					when s2 =>
						 if x < "101" then
							  state <= s3;
							  p <= '0';
						 else
							  state <= s3;
							  p <= '1';
						 end if;

					when s3 =>
						 if x < "100" then
							  state <= s4;
							  p <= '0';
						 else
							  state <= s4;
							  p <= '1';
						 end if;

					when s4 =>
						 if x < "011" then
							  state <= s5;
							  p <= '0';
						 else
							  state <= s5;
							  p <= '1';
						 end if;

					when s5 =>
						 if x < "010" then
							  state <= s6;
							  p <= '0';
						 else
							  state <= s6;
							  p <= '1';
						 end if;

					when s6 =>
						 if x < "001" then
							  state <= s0;
							  p <= '0';
						 else
							  state <= s0;
							  p <= '1';
						 end if;

				  when others =>
						 state <= s0; -- Default to s0 for any unexpected state
						 p <= '1';
			  end case;
		 end if;
	end process;

end behavioral;