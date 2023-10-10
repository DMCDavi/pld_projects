library ieee;
use ieee.std_logic_1164.all;

entity comparador is
    Port(a, b : in bit_vector(0 TO 4); s: out bit_vector(0 TO 1));
end comparador;

architecture behavior of comparador is
begin
	process_and_or : process(a,b)
	BEGIN
    IF a > b THEN
		s <= "00";
	 ELSIF a < b THEN
		s <= "01";
	 ELSE
		s <= "10";
	 END IF;
	 eND PROCESS process_and_or;
end behavior;