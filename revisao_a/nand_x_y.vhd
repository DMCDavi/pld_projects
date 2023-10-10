LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nand_x_y IS
    PORT(
        x, y: IN BIT; 
        s: OUT BIT
    );
END nand_x_y;

ARCHITECTURE archi OF nand_x_y IS
BEGIN
    s <= x nand y;
END archi;
