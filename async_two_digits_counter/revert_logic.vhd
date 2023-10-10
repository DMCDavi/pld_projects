LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY revert_logic IS 
PORT (
    revert: IN STD_LOGIC;
    is_descending: INOUT STD_LOGIC
);
END revert_logic;

ARCHITECTURE archi OF revert_logic IS
BEGIN

PROCESS(revert)
VARIABLE revert_pressed: BOOLEAN := FALSE;
BEGIN

    IF (revert = '0' AND revert_pressed = FALSE) THEN
        revert_pressed := TRUE;
        is_descending <= NOT is_descending;

    ELSIF (revert = '1' AND revert_pressed = TRUE) THEN
        revert_pressed := FALSE;
    END IF;

END PROCESS;

END archi;