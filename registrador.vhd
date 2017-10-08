library ieee;
use ieee.std_logic_1164.all;


entity registrador is
generic(

	bits	:	integer := 8
	);
	
port( 

	d			:	in std_logic_vector(bits-1 downto 0);
	clk		:	in std_logic;
	reset		:	in std_logic;
	enable	:	in std_logic;
	q			:	out std_logic_vector(bits-1 downto 0)
	);
	
end registrador;



architecture rtl of registrador is
begin
process (clk, reset)
begin
	-- Reset whenever the reset signal goes low, regardless of the clock
	if (reset = '0') then
	
		q <= (others => '0');
		
	-- If not resetting, update the register output on the clock's rising edge
	
	elsif (rising_edge(clk)) then
		if (enable = '1') then
			
			q <= d;
			
		end if;
	end if;
end process;
end rtl;