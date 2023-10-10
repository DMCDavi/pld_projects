LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY async_two_digits_counter IS
	port (
		clk: IN STD_LOGIC;               		  -- Sinal de relógio de entrada.
		reset: IN STD_LOGIC;                     -- Sinal de reset de entrada.
		revert: IN STD_LOGIC;                    -- Sinal de entrada para inverter a contagem.
		digit_one: OUT STD_LOGIC_VECTOR(0 TO 6); -- Saída para o primeiro dígito.
		digit_two: OUT STD_LOGIC_VECTOR(0 TO 6)  -- Saída para o segundo dígito.
	);
END async_two_digits_counter;

ARCHITECTURE arch OF async_two_digits_counter IS

TYPE segment_array IS ARRAY(0 TO 9) OF STD_LOGIC_VECTOR(6 DOWNTO 0); -- Define um tipo de array para representar segmentos.
CONSTANT segments: segment_array := (       -- Define constantes para representação de segmentos dos números de 0 a 9.
	"0000001", -- 0
	"1001111", -- 1
	"0010010", -- 2
	"0000110", -- 3
	"1001100", -- 4
	"0100100", -- 5
	"0100000", -- 6
	"0001111", -- 7
	"0000000", -- 8
	"0000100"  -- 9
);

SIGNAL is_descending: BOOLEAN := FALSE;          -- Sinal que determina a direção da contagem (ascendente ou descendente).
SIGNAL decimal, unit: INTEGER RANGE 0 TO 9 := 0; -- Sinais que armazenam os dígitos decimal e unitário.

BEGIN
	PROCESS(clk, reset)
		VARIABLE number: INTEGER RANGE 0 TO 99 := 0;           -- Variável que armazena o número completo com dois dígitos.
		VARIABLE iterations: INTEGER RANGE 0 TO 49999999 := 0; -- Variável que conta as iterações (usada para o divisor de frequência).
	BEGIN
		IF reset = '0' THEN                        -- Se o reset estiver ativo.
			iterations := 0;                        -- Reseta a variável de iterações.
			number := 0;                            -- Reseta o número.
			decimal <= 0;                           -- Reseta o dígito decimal.
			unit <= 0;                              -- Reseta o dígito unitário.
		ELSIF clk'EVENT AND clk = '1' THEN         -- Na borda de subida do relógio.
			IF iterations = 0 THEN                  -- Se for a primeira iteração.
				IF is_descending THEN            	 -- Se estiver contando em ordem decrescente.
					IF number = 0 THEN					 -- Se estiver em 0 volta para 99.
						number := 99;
					ELSE
						number := number - 1;		    -- Senão apenas decrementa o número.
					END IF;
				ELSE                               -- Se estiver contando em ordem crescente.
					number := (number + 1) MOD 100; -- Incrementa o número, e quando chegar em 99 volta para 0.
				END IF;

				decimal <= number / 10;         -- Atualiza o dígito decimal.
				unit <= number MOD 10;          -- Atualiza o dígito unitário.
			END IF;

			iterations := (iterations + 1) MOD 50000000; -- Incrementa contador de iterações até o limite do divisor de frequência.
		END IF;
	END PROCESS;

	PROCESS(revert)
	BEGIN
		IF revert'EVENT AND revert = '0' THEN    -- Se o botão de rever for apertado.
			is_descending <= NOT is_descending;   -- Inverte a direção da contagem.
		END IF;
	END PROCESS;

	digit_one <= segments(decimal);  -- Atualiza a saída do primeiro dígito baseado no valor de decimal.
	digit_two <= segments(unit);     -- Atualiza a saída do segundo dígito baseado no valor de unit.

END arch;
