library ieee;
use ieee.std_logic_1164.all;

entity xor_vhdl is
    Port(a, b: in std_logic; s: out std_logic);
end xor_vhdl;

architecture behavior of xor_vhdl is
begin
    s <= a XOR b;
end behavior;