LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY counter_logic IS 
	port (
		clk: IN STD_LOGIC;
		reset: IN STD_LOGIC;
		is_descending: IN STD_LOGIC;
		digit_one: OUT STD_LOGIC_VECTOR(0 TO 6);
		digit_two: OUT STD_LOGIC_VECTOR(0 TO 6)
	);
END counter_logic;

ARCHITECTURE arc OF counter_logic IS

	TYPE segment_array IS ARRAY(0 TO 9) OF STD_LOGIC_VECTOR(6 DOWNTO 0);
	CONSTANT segments: segment_array := (
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

BEGIN

	PROCESS(clk, reset)
		VARIABLE number: INTEGER RANGE 0 TO 99 := 0;
		VARIABLE iterations: INTEGER RANGE 0 TO 3 := 0;
		VARIABLE decimal, unit: INTEGER RANGE 0 TO 9 := 0;
	BEGIN

		IF (reset = '0') THEN

			iterations := 0;
			number := 0;
			decimal := 0;
			unit := 0;

		ELSIF (clk'EVENT AND clk = '1') THEN
			--digit_one <= segments(iterations);
			IF (iterations = 3) THEN
				--digit_one <= "1111111";
				IF (is_descending = '1') THEN
					--digit_one <= "0000000";
					IF (number = 0) THEN
						--digit_one <= "0000001";
						number := 99;
					ELSE
						--digit_one <= "1000000";
						number := number - 1;
					END IF;
				ELSE 
					--digit_one <= "0001000";
					number := (number + 1) MOD 100;
				END IF;

				decimal := number / 10;
				unit := number MOD 10;
			END IF;

			iterations := (iterations + 1) MOD 4;
		END IF;

		digit_one <= segments(decimal);
		digit_two <= segments(unit);

	END PROCESS;

END arc;
