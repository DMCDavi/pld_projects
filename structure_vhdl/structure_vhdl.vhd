entity structure_vhdl is
	port(
		a, b, c, d in bit;
		s out bit
	);
end structure_vhdl

architecture arch of structure_vhdl is
	variable x bit;
	variable y bit;
	variable z bit;
	
	x <= a xor b;
	y <= c or d;
	z <= not x;
	s <= z and y;
end arch;