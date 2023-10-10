LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY revisao_b IS
	PORT(
		a, b, c: IN STD_LOGIC;
		d, e: OUT STD_LOGIC
	);
END revisao_b;

ARCHITECTURE arch OF revisao_b IS
BEGIN
	processo: PROCESS(a, b, c)
	VARIABLE not_a: STD_LOGIC;
	BEGIN
		not_a := NOT a;
		e <= (a XOR b) XOR c;
		d <= (not_a AND b) OR (not_a AND c) OR (b AND c);
	END PROCESS processo;
END arch;