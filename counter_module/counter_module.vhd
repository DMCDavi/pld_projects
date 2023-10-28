library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_module is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           digit: out STD_LOGIC_VECTOR(0 TO 6));
end counter_module;

architecture Behavioral of counter_module is

    -- Definindo os estados possíveis
    type state_type is (STATE_0, STATE_1, STATE_2, STATE_3, STATE_4, STATE_5);
    signal current_state, next_state : state_type;

	 signal new_clk: std_logic;
	 signal count: INTEGER RANGE 0 TO 5 := 0; -- Sinal que armazena o dígito em número inteiro

	 TYPE segment_array IS ARRAY(0 TO 5) OF STD_LOGIC_VECTOR(6 DOWNTO 0); -- Define um tipo de array para representar segmentos.
	 CONSTANT segments: segment_array := (       -- Define constantes para representação de segmentos dos números de 0 a 5.
		"0000001", -- 0
		"1001111", -- 1
		"0010010", -- 2
		"0000110", -- 3
		"1001100", -- 4
		"0100100" -- 5
	 );
	 
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
            current_state <= STATE_0;
        elsif rising_edge(new_clk) then
            current_state <= next_state;
        end if;
    end process;

    -- Lógica de transição de estado
    process(current_state)
    begin
        case current_state is
            when STATE_0 =>
					 count <= 0;
                next_state <= STATE_1;
            when STATE_1 =>
					 count <= 1;
                next_state <= STATE_2;
            when STATE_2 =>
					 count <= 2;
                next_state <= STATE_3;
            when STATE_3 =>
					 count <= 3;
                next_state <= STATE_4;
            when STATE_4 =>
					 count <= 4;
                next_state <= STATE_5;
            when STATE_5 =>
					 count <= 5;
                next_state <= STATE_0;
            when others =>
					 count <= 0;
                next_state <= STATE_0;
        end case;
    end process;
	 
	 f1: frequency_divider port map(
			clk => clk,
			div_out => new_clk
	 );
	 
	 digit <= segments(count);

end Behavioral;
