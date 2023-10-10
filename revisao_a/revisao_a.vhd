LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY revisao_a IS
    PORT(
        a, b, c: IN BIT; 
        d, e, f: OUT BIT
    );
END revisao_a;

ARCHITECTURE arch OF revisao_a IS
    SIGNAL not_b, not_c, nand_b_c: BIT;

    COMPONENT nand_x_y
        PORT(
            x, y: IN BIT; 
            s: OUT BIT
        );
    END COMPONENT;
    
BEGIN

    not_b <= not b;
    not_c <= not c;

    u1: nand_x_y PORT MAP(
        x => not_b,
        y => not_c,
        s => nand_b_c
    );

    d <= (a nor not_b) xor (not nand_b_c);
    e <= not_b or nand_b_c;
    f <= nand_b_c xor (not_b and not_c);

END arch;
