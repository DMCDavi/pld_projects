library ieee;
use ieee.std_logic_1164.all;

entity and_vhdl is
Port(
	 a, b: in std_logic; 
	 s: out std_logic);
end and_vhdl;

architecture behavior of and_vhdl is

begin
    s <= a AND b;
end behavior;