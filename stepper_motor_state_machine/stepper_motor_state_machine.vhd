library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity stepper_motor_state_machine is
    Port ( clk     : in  STD_LOGIC;
           rst     : in  STD_LOGIC;
           dir_btn : in  STD_LOGIC;
           A       : out STD_LOGIC;
           B       : out STD_LOGIC;
           C       : out STD_LOGIC;
           D       : out STD_LOGIC);
end stepper_motor_state_machine;

architecture behavioral of stepper_motor_state_machine is
	type state_type is (sA, sB, sC, sD);
	signal current_state, next_state: state_type;
	signal new_clk, dir: std_logic;
	component frequency_divider is
		port (
        clk: IN STD_LOGIC;
        div_out: OUT STD_LOGIC
		);
	end component;
begin

process(new_clk, rst)
begin
    if rst = '0' then
        current_state <= sA;
    elsif rising_edge(new_clk) then
        current_state <= next_state;
    end if;
end process;

process(dir_btn)
begin
    if falling_edge(dir_btn) then
        dir <= not dir;
    end if;
end process;

process(current_state, dir)
begin
    case current_state is
        when sA =>
            A <= '1'; B <= '0'; C <= '0'; D <= '0';
            if dir = '0' then
                next_state <= sB;
            else
                next_state <= sD;
            end if;

        when sB =>
            A <= '0'; B <= '1'; C <= '0'; D <= '0';
            if dir = '0' then
                next_state <= sC;
            else
                next_state <= sA;
            end if;

        when sC =>
            A <= '0'; B <= '0'; C <= '1'; D <= '0';
            if dir = '0' then
                next_state <= sD;
            else
                next_state <= sB;
            end if;

        when sD =>
            A <= '0'; B <= '0'; C <= '0'; D <= '1';
            if dir = '0' then
                next_state <= sA;
            else
                next_state <= sC;
            end if;
    end case;
end process;

f1: frequency_divider port map(
	clk => clk,
	div_out => new_clk
);

end behavioral;
