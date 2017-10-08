library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- use that, it's a better coding guideline


entity ula is
generic(

	bits	:	integer := 8
	
	);
	
port( 

	in_a, in_b	:	in std_logic_vector(bits-1 downto 0);
	sel			:	in std_logic;
	ula_out		:	out std_logic_vector(bits-1 downto 0)
	
	);
	
end ula;

architecture rtl of ula is
begin
	process(in_a, in_b, sel)
	begin

		case sel is
				when '0' => ula_out <= std_logic_vector(signed(in_a) + signed(in_b));
				when '1' => ula_out <= std_logic_vector(signed(in_a) - signed(in_b));
				when others => ula_out <= (others => '0');
		end case;
	
	end process;
end rtl;

