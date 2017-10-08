library ieee;
use ieee.std_logic_1164.all;

entity fluxoDados is
generic(

	bits	:	integer := 8
	
	);
	
port( 

	in_a, in_b	:	in std_logic_vector(bits-1 downto 0);
	sel			:	in std_logic;
	ula_out		:	out std_logic_vector(bits-1 downto 0)
	
	);
	
end fluxoDados;

architecture rtl of fluxoDados is
begin
end rtl;
