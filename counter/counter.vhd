LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY counter IS
	PORT (clk : IN STD_LOGIC;
	digit : OUT INTEGER RANGE 0 TO 9);
END counter;

ARCHITECTURE counter OF counter IS
BEGIN
	count: PROCESS
		VARIABLE temp : INTEGER RANGE 0 TO 10;
	BEGIN
		WAIT UNTIL clk = '1';
		temp := temp + 1;
		IF(temp = 10) THEN temp := 0;
		END IF;
		digit <= temp;
	END PROCESS count;
END counter;