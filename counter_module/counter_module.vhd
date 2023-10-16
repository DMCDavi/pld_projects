library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_module is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR(2 downto 0));
end counter_module;

architecture Behavioral of counter_module is

    -- Definindo os estados possíveis
    type state_type is (STATE_0, STATE_1, STATE_2, STATE_3, STATE_4, STATE_5);
    signal current_state, next_state : state_type;

begin
    -- Processo da máquina de estado
    process(clk, rst)
    begin
        if rst = '1' then
            current_state <= STATE_0;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

    -- Lógica de transição de estado
    process(current_state)
    begin
        case current_state is
            when STATE_0 =>
                next_state <= STATE_1;
            when STATE_1 =>
                next_state <= STATE_2;
            when STATE_2 =>
                next_state <= STATE_3;
            when STATE_3 =>
                next_state <= STATE_4;
            when STATE_4 =>
                next_state <= STATE_5;
            when STATE_5 =>
                next_state <= STATE_0;
            when others =>
                next_state <= STATE_0;
        end case;
    end process;

    -- Lógica de saída
    process(current_state)
    begin
        case current_state is
            when STATE_0 =>
                count <= "000";
            when STATE_1 =>
                count <= "001";
            when STATE_2 =>
                count <= "010";
            when STATE_3 =>
                count <= "011";
            when STATE_4 =>
                count <= "100";
            when STATE_5 =>
                count <= "101";
            when others =>
                count <= "000";
        end case;
    end process;

end Behavioral;
